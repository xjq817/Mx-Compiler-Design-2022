package Backend;

import ASM.ASMBlock;
import ASM.ASMFunction;
import ASM.ASMGlobalBlock;
import ASM.Instruction.*;
import ASM.Operand.*;
import IR.IRBlock;
import IR.IRFunction;
import IR.IRGlobalBlock;
import IR.IRType.IRStructType;
import IR.IRType.IRVoidType;
import IR.IRValue.*;
import IR.IRVisitor;
import IR.Instruction.*;
import Util.error.ASMError;

import java.util.ArrayList;
import java.util.Objects;

public class ASMBuilder implements IRVisitor {

    public ASMBlock curBlock;
    public ASMGlobalBlock gBlock;
    public ASMFunction curFunction;

    int parameterSize = 2;

    ASMPhysicalRegister sp = new ASMPhysicalRegister("sp");
    ASMPhysicalRegister s0 = new ASMPhysicalRegister("s0");
    ASMPhysicalRegister ra = new ASMPhysicalRegister("ra");
    ASMPhysicalRegister a0 = new ASMPhysicalRegister("a0");
    ASMPhysicalRegister t0 = new ASMPhysicalRegister("t0");
    ASMPhysicalRegister t1 = new ASMPhysicalRegister("t1");
    ASMPhysicalRegister t2 = new ASMPhysicalRegister("t2");
    ASMPhysicalRegister t3 = new ASMPhysicalRegister("t3");

    public ASMBuilder(ASMGlobalBlock gBlock) {
        this.gBlock = gBlock;
        this.curBlock = null;
        this.curFunction = null;
    }

    void funcAlloc(ASMVirtualRegister reg) {
        //System.out.println("alloc:"+curFunction.name+" "+curFunction.allocSize);
        reg.isAlloc = true;
        reg.offset = curFunction.allocSize;
        curFunction.allocSize += 4;
    }

    String transOp(String op) {
        if (Objects.equals(op, "sub nsw")) return "sub";
        if (Objects.equals(op, "sdiv")) return "div";
        if (Objects.equals(op, "srem")) return "rem";
        if (Objects.equals(op, "shl nsw")) return "sll";
        if (Objects.equals(op, "ashr")) return "sra";
        return op;
    }

    ASMVirtualRegister transVReg(IRValue value) {
        if (value instanceof IRRegister) {
            IRRegister reg = (IRRegister) value;
            if (reg.isGlobal) {
                ASMVirtualRegister virtualReg = new ASMVirtualRegister("global_define");
                curBlock.instructions.add(new ASMLaInstruction(reg.name, virtualReg, curBlock));
                value.virtualReg = virtualReg;
            }
            if (value.virtualReg != null) return value.virtualReg;
            value.virtualReg = new ASMVirtualRegister(reg.toString());
            return value.virtualReg;
        }
        if (value instanceof IRConstString) {
            ASMVirtualRegister virtualReg = new ASMVirtualRegister("str_addr");
            curBlock.instructions.add(new ASMLaInstruction("str." + ((IRConstString) value).id, virtualReg, curBlock));
            return virtualReg;
        }
        ASMVirtualRegister virtualReg = new ASMVirtualRegister("const");
        int imm;
        if (value instanceof IRConstInt) imm = ((IRConstInt) value).value;
        else if (value instanceof IRConstBool) imm = ((IRConstBool) value).value ? 1 : 0;
        else if (value instanceof IRConstNull) imm = 0;
        else throw new ASMError("trans virtual register error.");
        curBlock.instructions.add(new ASMLiInstruction(virtualReg, new ASMImm(imm), curBlock));
        return virtualReg;
    }

    @Override
    public void visit(IRAllocaInstruction it) {
        ASMVirtualRegister rd = transVReg(it.allocaRegister);
        ASMVirtualRegister newReg = new ASMVirtualRegister("new_vir_reg");
        funcAlloc(newReg);
        curBlock.instructions.add(new ASMBinaryInstruction("addi", new ASMImm(newReg.offset), rd, sp, null, curBlock));
    }

    @Override
    public void visit(IRBrInstruction it) {
        ASMVirtualRegister rs1 = transVReg(it.condition);
        curBlock.instructions.add(new ASMBranchInstruction("beqz", it.elseBlock.label, rs1, curBlock));
    }

    @Override
    public void visit(IRCallInstruction it) {
        for (int i = 0; i < it.argumentValues.size(); i++) {
            ASMVirtualRegister virtualReg = transVReg(it.argumentValues.get(i));
            if (i < parameterSize)
                curBlock.instructions.add(new ASMMvInstruction(new ASMPhysicalRegister("a" + i), virtualReg, curBlock));
            else
                curBlock.instructions.add(new ASMStoreInstruction(4, virtualReg, s0, new ASMImm(-4 * (i + 1 - parameterSize)), curBlock));
        }
        if ((it.argumentValues.size() - parameterSize) * 4 > curFunction.parameterSize)
            curFunction.parameterSize = (it.argumentValues.size() - parameterSize) * 4;
        curBlock.instructions.add(new ASMCallInstruction(it.function.name, curBlock));
        if (!(it.type instanceof IRVoidType))
            curBlock.instructions.add(new ASMMvInstruction(transVReg(it.register), a0, curBlock));
    }

    @Override
    public void visit(IRLoadInstruction it) {
        ASMVirtualRegister rd, rs1;
        rd = transVReg(it.register);
        rs1 = transVReg(it.loadFrom);
        curBlock.instructions.add(new ASMLoadInstruction(4, rd, rs1, new ASMImm(0), curBlock));
    }

    @Override
    public void visit(IRRetInstruction it) {
        if (!(it.retType instanceof IRVoidType)) {
            ASMVirtualRegister rs1 = transVReg(it.retValue);
            curBlock.instructions.add(new ASMMvInstruction(a0, rs1, curBlock));
        }
    }

    @Override
    public void visit(IRStoreInstruction it) {
        ASMVirtualRegister rs1, rs2;
        rs1 = transVReg(it.storeVal);
        rs2 = transVReg(it.storeAddr);
        curBlock.instructions.add(new ASMStoreInstruction(4, rs1, rs2, new ASMImm(0), curBlock));
    }

    @Override
    public void visit(IRBinaryInstruction it) {
        ASMVirtualRegister rd, rs1, rs2;
        rd = transVReg(it.register);
        rs1 = transVReg(it.lhs);
        rs2 = transVReg(it.rhs);
        curBlock.instructions.add(new ASMBinaryInstruction(transOp(it.op), null, rd, rs1, rs2, curBlock));
    }

    @Override
    public void visit(IRIcmpInstruction it) {
        ASMVirtualRegister rd, rs1, rs2;
        rd = transVReg(it.register);
        rs1 = transVReg(it.lhs);
        rs2 = transVReg(it.rhs);
        if (Objects.equals(it.op, "slt")) {
            curBlock.instructions.add(new ASMCmpInstruction("slt", rd, rs1, rs2, curBlock));
        } else if (Objects.equals(it.op, "sle")) {
            curBlock.instructions.add(new ASMCmpInstruction("slt", rd, rs2, rs1, curBlock));
            curBlock.instructions.add(new ASMCmpInstruction("seqz", rd, rd, null, curBlock));
        } else if (Objects.equals(it.op, "sgt")) {
            curBlock.instructions.add(new ASMCmpInstruction("slt", rd, rs2, rs1, curBlock));
        } else if (Objects.equals(it.op, "sge")) {
            curBlock.instructions.add(new ASMCmpInstruction("slt", rd, rs1, rs2, curBlock));
            curBlock.instructions.add(new ASMCmpInstruction("seqz", rd, rd, null, curBlock));
        } else if (Objects.equals(it.op, "eq")) {
            curBlock.instructions.add(new ASMBinaryInstruction("xor", null, rd, rs1, rs2, curBlock));
            curBlock.instructions.add(new ASMCmpInstruction("seqz", rd, rd, null, curBlock));
        } else if (Objects.equals(it.op, "ne")) {
            curBlock.instructions.add(new ASMBinaryInstruction("xor", null, rd, rs1, rs2, curBlock));
            curBlock.instructions.add(new ASMCmpInstruction("snez", rd, rd, null, curBlock));
        }
    }

    @Override
    public void visit(IRTruncInstruction it) {
        ASMVirtualRegister rd, rs1;
        rd = transVReg(it.register);
        rs1 = transVReg(it.value);
        curBlock.instructions.add(new ASMMvInstruction(rd, rs1, curBlock));
    }

    @Override
    public void visit(IRZextInstruction it) {
        ASMVirtualRegister rd, rs1;
        rd = transVReg(it.register);
        rs1 = transVReg(it.value);
        curBlock.instructions.add(new ASMMvInstruction(rd, rs1, curBlock));
    }

    @Override
    public void visit(IRGetelementptrInstruction it) {
        ASMVirtualRegister rd, rs1, rs2, tmp;
        rd = transVReg(it.register);
        rs1 = transVReg(it.ptrValue);
        if (it.values.size() == 1) {
            rs2 = transVReg(it.values.get(0));
            tmp = new ASMVirtualRegister("tmp");
            curBlock.instructions.add(new ASMLiInstruction(tmp, new ASMImm(it.typeFrom.sizeof()), curBlock));
            curBlock.instructions.add(new ASMBinaryInstruction("mul", null, tmp, tmp, rs2, curBlock));
            curBlock.instructions.add(new ASMBinaryInstruction("add", null, rd, rs1, tmp, curBlock));
        } else {
            //the first value must be 0
            int id = ((IRConstInt) it.values.get(1)).value;
            int offset = 0;
            for (int i = 0; i < id; i++)
                offset += ((IRStructType) it.typeFrom).typeList.get(i).sizeof();
            curBlock.instructions.add(new ASMBinaryInstruction("addi", new ASMImm(offset), rd, rs1, null, curBlock));
        }
    }

    @Override
    public void visit(IRBitcastInstruction it) {
        ASMVirtualRegister rd, rs1;
        rd = transVReg(it.register);
        rs1 = transVReg(it.value);
        curBlock.instructions.add(new ASMMvInstruction(rd, rs1, curBlock));
    }

    @Override
    public void visit(IRBrLabelInstruction it) {
        curBlock.instructions.add(new ASMBranchInstruction("j", it.toBlock.label, null, curBlock));
    }

    ArrayList<ASMInstruction> newInst;

    boolean checkImm(int imm) {
        return -2048 <= imm && imm < 2048;
    }

    void stackLoad(ASMVirtualRegister reg, ASMPhysicalRegister t) {
        if (!reg.isAlloc) funcAlloc(reg);
        ASMImm imm = new ASMImm(reg.offset);
        //System.out.println(curFunction.name + " " + reg.offset);
        if (checkImm(reg.offset))
            newInst.add(new ASMLoadInstruction(4, t, sp, imm, curBlock));
        else {
            newInst.add(new ASMLiInstruction(t3, imm, curBlock));
            newInst.add(new ASMBinaryInstruction("add", null, t3, t3, sp, curBlock));
            newInst.add(new ASMLoadInstruction(4, t, t3, new ASMImm(0), curBlock));
        }
    }

    void stackStore(ASMVirtualRegister reg, ASMPhysicalRegister t) {
        if (!reg.isAlloc) funcAlloc(reg);
        ASMImm imm = new ASMImm(reg.offset);
        if (checkImm(reg.offset))
            newInst.add(new ASMStoreInstruction(4, t, sp, imm, curBlock));
        else {
            newInst.add(new ASMLiInstruction(t3, imm, curBlock));
            newInst.add(new ASMBinaryInstruction("add", null, t3, t3, sp, curBlock));
            newInst.add(new ASMStoreInstruction(4, t, t3, new ASMImm(0), curBlock));
        }
    }

    @Override
    public void visit(IRGlobalBlock it) {
        //trans IRInst to ASMInst with vReg
        it.strings.forEach((name, str) -> str.accept(this));
        it.irGlobalDefines.forEach((name, define) -> define.accept(this));
        it.functions.forEach((name, func) -> {
            if (!func.declare) {
                gBlock.functions.put(name, new ASMFunction(name));
                func.accept(this);
            }
        });
        //vReg->pReg
        it.functions.forEach((name, func) -> {
            if (!func.declare) {
                curFunction = gBlock.functions.get(name);
                //System.out.println(name + ":: " + curFunction.allocSize);
                curFunction.blocks.forEach(cur -> {
                    curBlock = cur;
                    newInst = new ArrayList<>();
                    cur.instructions.forEach(inst -> {
                        if (inst.rs1 instanceof ASMVirtualRegister) {
                            stackLoad((ASMVirtualRegister) inst.rs1, t1);
                            inst.rs1 = t1;
                        }
                        if (inst.rs2 instanceof ASMVirtualRegister) {
                            stackLoad((ASMVirtualRegister) inst.rs2, t2);
                            inst.rs2 = t2;
                        }
                        newInst.add(inst);
                        if (inst.rd instanceof ASMVirtualRegister) {
                            stackStore((ASMVirtualRegister) inst.rd, t0);
                            inst.rd = t0;
                        }
                    });
                    cur.instructions = newInst;
                });
            }
        });
        //s0 offset need to be allocSize
        it.functions.forEach((name, func) -> {
            if (!func.declare) {
                curFunction = gBlock.functions.get(name);
                int size = curFunction.allocSize + curFunction.parameterSize;
                //System.out.println(name + ": " + curFunction.allocSize + " " + curFunction.parameterSize);
                curBlock = curFunction.entryBlock;
                curBlock.instructions.get(0).imm.imm = -size;
                curBlock.instructions.get(3).imm.imm = size;
                curBlock = curFunction.returnBlock;
                curBlock.instructions.get(curBlock.instructions.size() - 2).imm.imm = size;
                curFunction.blocks.forEach(cur -> {
                    curBlock = cur;
                    newInst = new ArrayList<>();
                    cur.instructions.forEach(inst -> {
//                        if (inst.imm!=null)
//                            System.out.println(inst.imm.imm);
                        if (inst instanceof ASMBinaryInstruction
                                && Objects.equals(((ASMBinaryInstruction) inst).op, "addi")
                                && !checkImm(inst.imm.imm)) {
                            newInst.add(new ASMLiInstruction(t0, inst.imm, curBlock));
                            newInst.add(new ASMBinaryInstruction("add", null, inst.rd, inst.rs1, t0, curBlock));
                        } else newInst.add(inst);
                    });
                    cur.instructions = newInst;
                });
            }
        });
    }

    @Override
    public void visit(IRBlock it) {
        it.instructions.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(IRFunction it) {
        curFunction = gBlock.functions.get(it.name);
        it.blocks.forEach(cur -> {
            curBlock = new ASMBlock(curFunction, cur.label);
            curFunction.blocks.add(curBlock);
            if (Objects.equals(cur.label, it.name + ".entry")) {
                curFunction.entryBlock = curBlock;
                curBlock.instructions.add(new ASMBinaryInstruction("addi", new ASMImm(0), sp, sp, null, curBlock));
                curBlock.instructions.add(new ASMStoreInstruction(4, ra, sp, new ASMImm(4), curBlock));
                curBlock.instructions.add(new ASMStoreInstruction(4, s0, sp, new ASMImm(0), curBlock));
                curBlock.instructions.add(new ASMBinaryInstruction("addi", new ASMImm(0), s0, sp, null, curBlock));
                //parameter
                ASMVirtualRegister virS0 = new ASMVirtualRegister("vir_s0");
                for (int i = 0; i < it.parameterRegs.size(); i++) {
                    ASMVirtualRegister rd = transVReg(it.parameterRegs.get(i));
                    if (i < parameterSize)
                        curBlock.instructions.add(new ASMMvInstruction(rd, new ASMPhysicalRegister("a" + i), curBlock));
                    else {
                        if (i == parameterSize)
                            curBlock.instructions.add(new ASMLoadInstruction(4, virS0, sp, new ASMImm(0), curBlock));
                        curBlock.instructions.add(new ASMLoadInstruction(4, rd, virS0, new ASMImm(-4 * (i + 1 - parameterSize)), curBlock));
                        //curFunction.parameterSize += 4;
                    }
                }
            }
            cur.accept(this);
            if (Objects.equals(cur.label, it.name + ".return")) {
                curFunction.returnBlock = curBlock;
                curBlock.instructions.add(new ASMLoadInstruction(4, ra, sp, new ASMImm(4), curBlock));
                curBlock.instructions.add(new ASMLoadInstruction(4, s0, sp, new ASMImm(0), curBlock));
                curBlock.instructions.add(new ASMBinaryInstruction("addi", new ASMImm(0), sp, sp, null, curBlock));
                curBlock.instructions.add(new ASMRetInstruction(curBlock));
            }
        });
    }

    @Override
    public void visit(IRGlobalDefine it) {
        gBlock.globalDefines.add(new ASMGlobalDefine(it.name));
    }

    @Override
    public void visit(IRConstString it) {
        gBlock.constStrings.add(new ASMConstString(it.originStr, it.str, it.id));
    }

    @Override
    public void visit(IRStructType it) {
        //no need
    }
}

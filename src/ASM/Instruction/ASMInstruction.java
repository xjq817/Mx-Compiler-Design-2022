package ASM.Instruction;

import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

import java.util.HashSet;

abstract public class ASMInstruction {
    public ASMImm imm;
    public ASMRegister rd, rs1, rs2;
    public HashSet<ASMRegister> def, use;

    public ASMInstruction(ASMRegister rd, ASMRegister rs1, ASMRegister rs2, ASMImm imm) {
        this.imm = imm;
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.def = new HashSet<>();
        this.use = new HashSet<>();
        if (rd != null) def.add(rd);
        if (rs1 != null) use.add(rs1);
        if (rs2 != null) use.add(rs2);
    }

    abstract public String toString();
}

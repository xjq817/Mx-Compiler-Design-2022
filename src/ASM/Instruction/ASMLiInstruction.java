package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

public class ASMLiInstruction extends ASMInstruction {
    public ASMLiInstruction(ASMRegister rd, ASMImm imm, ASMBlock parentBlock) {
        super(parentBlock);
        this.imm = imm;
        this.rd = rd;
        this.rs1 = null;
        this.rs2 = null;
    }

    @Override
    public String toString() {
        return "\tli\t\t" + rd + ",\t" + imm;
    }
}

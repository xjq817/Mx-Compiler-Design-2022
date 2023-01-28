package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMRegister;

public class ASMMvInstruction extends ASMInstruction {
    public ASMMvInstruction(ASMRegister rd, ASMRegister rs1, ASMBlock parentBlock) {
        super(parentBlock);
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = null;
        this.imm = null;
    }

    @Override
    public String toString() {
        return "\tmv\t\t" + rd + ",\t" + rs1;
    }
}

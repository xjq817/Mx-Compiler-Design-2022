package ASM.Instruction;

import ASM.Operand.ASMRegister;

public class ASMMvInstruction extends ASMInstruction {
    public ASMMvInstruction(ASMRegister rd, ASMRegister rs1) {
        super(rd, rs1, null, null);
    }

    @Override
    public String toString() {
        return "\tmv\t\t" + rd + ",\t" + rs1;
    }
}

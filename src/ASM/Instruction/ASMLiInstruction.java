package ASM.Instruction;

import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

public class ASMLiInstruction extends ASMInstruction {
    public ASMLiInstruction(ASMRegister rd, ASMImm imm) {
        super(rd, null, null, imm);
    }

    @Override
    public String toString() {
        return "\tli\t\t" + rd + ",\t" + imm;
    }
}

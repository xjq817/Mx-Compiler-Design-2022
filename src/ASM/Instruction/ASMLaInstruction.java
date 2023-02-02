package ASM.Instruction;

import ASM.Operand.ASMRegister;

public class ASMLaInstruction extends ASMInstruction {
    public String name;

    public ASMLaInstruction(String name, ASMRegister rd) {
        super(rd, null, null, null);
        this.name = name;
    }

    @Override
    public String toString() {
        return "\tla\t\t" + rd + ",\t" + name;
    }
}

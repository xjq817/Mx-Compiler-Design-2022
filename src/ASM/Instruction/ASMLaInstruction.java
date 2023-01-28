package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMRegister;

public class ASMLaInstruction extends ASMInstruction {
    String name;

    public ASMLaInstruction(String name, ASMRegister rd, ASMBlock parentBlock) {
        super(parentBlock);
        this.name = name;
        this.imm = null;
        this.rd = rd;
        this.rs1 = null;
        this.rs2 = null;
    }

    @Override
    public String toString() {
        return "\tla\t\t" + rd + ",\t" + name;
    }
}

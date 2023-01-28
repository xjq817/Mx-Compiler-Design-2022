package ASM.Instruction;

import ASM.ASMBlock;

public class ASMRetInstruction extends ASMInstruction {
    public ASMRetInstruction(ASMBlock parentBlock) {
        super(parentBlock);
        this.imm = null;
        this.rd = null;
        this.rs1 = null;
        this.rs2 = null;
    }

    @Override
    public String toString(){
        return "\tret";
    }
}

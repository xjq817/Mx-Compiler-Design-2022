package ASM;

import ASM.Instruction.ASMInstruction;

import java.util.ArrayList;

public class ASMBlock {
    public String name;
    public ASMFunction parentFunction;
    public ArrayList<ASMInstruction> instructions;

    public ASMBlock(ASMFunction parentFunction, String labelName) {
        this.instructions = new ArrayList<>();
        this.name = labelName;
        this.parentFunction = parentFunction;
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

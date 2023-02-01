package ASM;

import ASM.Instruction.ASMInstruction;

import java.util.ArrayList;
import java.util.HashSet;

public class ASMBlock {
    public String name;
    public ASMFunction parentFunction;
    public ArrayList<ASMInstruction> instructions;
    public HashSet<ASMBlock> pred;
    public HashSet<ASMBlock> succ;

    public ASMBlock(ASMFunction parentFunction, String labelName) {
        this.instructions = new ArrayList<>();
        this.name = labelName;
        this.parentFunction = parentFunction;
        this.pred = new HashSet<>();
        this.succ = new HashSet<>();
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

package IR;

import IR.IRValue.IRLabel;
import IR.Instruction.IRAllocaInstruction;
import IR.Instruction.IRInstruction;

import java.util.ArrayList;

public class IRBlock {
    public IRFunction parentFunction;
    public IRLabel label;
    public ArrayList<IRInstruction> instructions;
    public ArrayList<IRBlock> successors;
    public ArrayList<IRAllocaInstruction> allocaIns;
    public IRInstruction exitInstruction;

    public IRBlock(IRFunction parentFunction, String labelName) {
        this.parentFunction = parentFunction;
        this.label = new IRLabel(parentFunction.name + "." + labelName, this);
        this.instructions = new ArrayList<>();
        this.successors = new ArrayList<>();
        this.allocaIns = new ArrayList<>();
        this.exitInstruction = null;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}

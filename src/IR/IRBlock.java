package IR;

import IR.Instruction.IRInstruction;

import java.util.ArrayList;

public class IRBlock {
    public IRFunction parentFunction;
    public String label;
    public ArrayList<IRInstruction> instructions;
    public IRInstruction exitInstruction;

    public IRBlock(IRFunction parentFunction, String labelName) {
        this.parentFunction = parentFunction;
        this.label = parentFunction.name + "." + labelName;
        this.instructions = new ArrayList<>();
        this.exitInstruction = null;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}

package IR.Instruction;

import IR.IRBlock;
import IR.IRVisitor;

public class IRBrLabelInstruction extends IRInstruction {
    public IRBlock toBlock;

    public IRBrLabelInstruction(IRBlock toBlock, IRBlock parentBlock) {
        super(parentBlock);
        this.toBlock = toBlock;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "br label " + toBlock.label;
    }
}
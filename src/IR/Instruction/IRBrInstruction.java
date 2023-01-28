package IR.Instruction;

import IR.IRBlock;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRBrInstruction extends IRInstruction {
    public IRValue condition;
    public IRBlock thenBlock;
    public IRBlock elseBlock;

    public IRBrInstruction(IRValue condition, IRBlock thenBlock, IRBlock elseBlock, IRBlock parentBlock) {
        super(parentBlock);
        this.condition = condition;
        this.thenBlock = thenBlock;
        this.elseBlock = elseBlock;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "br " + condition.type + " " + condition + ", label %" + thenBlock.label + ", label %" + elseBlock.label;
    }
}

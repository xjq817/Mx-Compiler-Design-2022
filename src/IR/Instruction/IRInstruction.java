package IR.Instruction;


import IR.IRBlock;
import IR.IRVisitor;

abstract public class IRInstruction {
    public IRBlock parentBlock;
    public boolean useAlign;

    public IRInstruction(IRBlock parentBlock) {
        this.parentBlock = parentBlock;
        this.useAlign = true;
    }

    abstract public void accept(IRVisitor visitor);

    abstract public String toString();
}

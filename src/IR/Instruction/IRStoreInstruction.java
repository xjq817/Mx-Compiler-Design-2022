package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRStoreInstruction extends IRInstruction {
    public IRType storeType;
    public IRValue storeFrom;
    public IRValue storeTo;

    public IRStoreInstruction(IRType storeType, IRValue storeFrom, IRValue storeTo, IRBlock parentBlock) {
        super(parentBlock);
        this.storeType = storeType;
        this.storeFrom = storeFrom;
        this.storeTo = storeTo;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "store " + storeType + " " + storeTo + ", " + storeType + "* " + storeFrom + ", align " + storeType.sizeof();
    }
}

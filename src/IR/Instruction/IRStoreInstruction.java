package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRStoreInstruction extends IRInstruction {
    public IRType storeType;
    public IRValue storeAddr;
    public IRValue storeVal;

    public IRStoreInstruction(IRType storeType, IRValue storeAddr, IRValue storeVal, IRBlock parentBlock) {
        super(parentBlock);
        this.storeType = storeType;
        this.storeAddr = storeAddr;
        this.storeVal = storeVal;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "store " + storeType + " " + storeVal + ", " + storeType + "* " + storeAddr + ", align " + storeType.sizeof();
    }
}

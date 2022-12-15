package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRType.IRVoidType;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRRetInstruction extends IRInstruction {
    public IRType retType;
    public IRValue retValue;

    public IRRetInstruction(IRType retType, IRValue retValue, IRBlock parentBlock) {
        super(parentBlock);
        this.retType = retType;
        this.retValue = retValue;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        if (retType instanceof IRVoidType) return "ret void";
        return "ret " + retType + " " + retValue;
    }
}

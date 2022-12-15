package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRBitcastInstruction extends IRInstruction {
    public IRRegister register;
    public IRValue value;
    public IRType typeTo;

    public IRBitcastInstruction(IRRegister register, IRValue value, IRType typeTo, IRBlock parentBlock) {
        super(parentBlock);
        this.register = register;
        this.value = value;
        this.typeTo = typeTo;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return register + " = bitcast " + value.type + " " + value + " to " + typeTo;
    }
}

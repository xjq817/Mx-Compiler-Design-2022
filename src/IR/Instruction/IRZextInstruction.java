package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRZextInstruction extends IRInstruction {
    public IRRegister register;
    public IRValue value;
    public IRType typeFrom;
    public IRType typeTo;

    public IRZextInstruction(IRRegister register, IRValue value, IRType typeFrom, IRType typeTo, IRBlock parentBlock) {
        super(parentBlock);
        this.register = register;
        this.value = value;
        this.typeFrom = typeFrom;
        this.typeTo = typeTo;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return register + " = zext " + typeFrom + " " + value + " to " + typeTo;
    }
}

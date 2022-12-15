package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRLoadInstruction extends IRInstruction {
    public IRRegister register;
    public IRType loadType;
    public IRValue loadFrom;

    public IRLoadInstruction(IRRegister register, IRType loadType, IRValue loadFrom, IRBlock parentBlock) {
        super(parentBlock);
        this.register = register;
        this.loadFrom = loadFrom;
        this.loadType = loadType;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return register + " = load " + loadType + ", " + loadFrom.type + " " + loadFrom + ", align " + loadType.sizeof();
    }
}

package IR.Instruction;

import IR.IRBlock;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRBinaryInstruction extends IRInstruction {
    public String op;
    public IRRegister register;
    public IRValue lhs;
    public IRValue rhs;

    public IRBinaryInstruction(String op, IRRegister register, IRValue lhs, IRValue rhs, IRBlock parentBlock) {
        super(parentBlock);
        this.op = op;
        this.register = register;
        this.lhs = lhs;
        this.rhs = rhs;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return register + " = " + op + " " + lhs.type + " " + lhs + ", " + rhs;
    }
}

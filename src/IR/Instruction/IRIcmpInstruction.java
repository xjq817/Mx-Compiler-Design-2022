package IR.Instruction;

import IR.IRBlock;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

public class IRIcmpInstruction extends IRInstruction {
    public IRRegister register;
    public String op;
    public IRValue lhs;
    public IRValue rhs;

    public IRIcmpInstruction(String op, IRRegister register, IRValue lhs, IRValue rhs, IRBlock parentBlock) {
        super(parentBlock);
        this.register = register;
        this.op = op;
        this.lhs = lhs;
        this.rhs = rhs;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return register + " = icmp " + op + " " + lhs.type + " " + lhs + ", " + rhs;
    }
}

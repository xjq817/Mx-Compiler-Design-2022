package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRRegister;
import IR.IRVisitor;

public class IRAllocaInstruction extends IRInstruction {
    public IRRegister allocaRegister;
    public IRType allocaType;

    public IRAllocaInstruction(IRRegister allocaRegister, IRType allocaType, IRBlock parentBlock) {
        super(parentBlock);
        this.allocaRegister = allocaRegister;
        this.allocaType = allocaType;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return allocaRegister + " = alloca " + allocaType + ", align " + allocaType.sizeof();
    }
}

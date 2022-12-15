package IR.Instruction;

import IR.IRBlock;
import IR.IRType.IRType;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

import java.util.ArrayList;

public class IRGetelementptrInstruction extends IRInstruction {
    public IRRegister register;
    public IRType typeFrom;
    public IRValue ptrValue;
    public ArrayList<IRValue> values;

    public IRGetelementptrInstruction(IRRegister register, IRType typeFrom, IRValue ptrValue, IRBlock parentBlock) {
        super(parentBlock);
        this.register = register;
        this.typeFrom = typeFrom;
        this.ptrValue = ptrValue;
        values = new ArrayList<>();
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(register).append(" = getelementptr inbounds ");
        builder.append(typeFrom).append(", ").append(ptrValue.type).append(" ").append(ptrValue);
        values.forEach(cur -> builder.append(", ").append(cur.type).append(" ").append(cur));
        return builder.toString();
    }
}

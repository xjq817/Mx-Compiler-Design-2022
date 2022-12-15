package IR.Instruction;

import IR.IRBlock;
import IR.IRFunction;
import IR.IRType.IRType;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;

import java.util.ArrayList;

public class IRCallInstruction extends IRInstruction {
    public IRRegister register;
    public IRType type;
    public IRFunction function;
    public ArrayList<IRValue> argumentValues;

    public IRCallInstruction(IRRegister register, IRType type, IRFunction function, IRBlock parentBlock) {
        super(parentBlock);
        this.register = register;
        this.type = type;
        this.function = function;
        argumentValues = new ArrayList<>();
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    String getParameterListToString() {
        StringBuilder builder = new StringBuilder();
        builder.append("(");
        for (int i = 0; i < argumentValues.size(); i++) {
            if (i != 0) builder.append(", ");
            builder.append(function.parameterTypes.get(i)).append(" ").append(argumentValues.get(i));
        }
        builder.append(")");
        return builder.toString();
    }

    @Override
    public String toString() {
        String str = "call " + type + " @" + function.name + getParameterListToString();
        if (register == null) return str;
        return register + " = " + str;
    }
}
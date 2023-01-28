package IR.IRValue;

import IR.IRType.IRIntType;
import IR.IRType.IRType;
import IR.IRVisitor;

public class IRGlobalDefine extends IRValue {
    public String name;
    public IRValue value;

    public IRGlobalDefine(String name, IRType type) {
        super(type);
        this.name = name;
        this.value = type.defaultValue();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        if (type instanceof IRIntType || type.isStringType() || type.isArrayType())
            return "@" + name + " = global " + type + " " + value + ", align " + type.sizeof();
        return "@" + name + " = common global " + type + " " + value + ", align " + type.sizeof();
    }
}

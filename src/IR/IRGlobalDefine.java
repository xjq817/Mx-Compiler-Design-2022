package IR;

import IR.IRType.IRIntType;
import IR.IRType.IRType;
import IR.IRValue.IRValue;

public class IRGlobalDefine {
    public String name;
    public IRType type;
    public IRValue value;

    public IRGlobalDefine(String name, IRType type) {
        this.name = name;
        this.type = type;
        this.value = type.defaultValue();
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString(){
        if (type instanceof IRIntType || type.isStringType() || type.isArrayType())
            return "@" + name + " = global " + type + " " + value + ", align " + type.sizeof();
        return "@" + name + " = common global " + type + " " + value + ", align " + type.sizeof();
    }
}

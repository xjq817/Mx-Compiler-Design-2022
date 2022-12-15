package IR.IRType;

import IR.IRValue.IRConstNull;
import IR.IRValue.IRValue;

public class IRPointType extends IRType {
    public IRType baseType;

    public IRPointType(IRType baseType) {
        this.baseType = baseType;
    }

    @Override
    public IRValue defaultValue() {
        return new IRConstNull();
    }

    @Override
    public int sizeof() {
        return 4;
    }

    @Override
    public String toString() {
        return baseType + "*";
    }
}

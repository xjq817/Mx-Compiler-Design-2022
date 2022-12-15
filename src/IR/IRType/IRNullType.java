package IR.IRType;

import IR.IRValue.IRValue;

public class IRNullType extends IRType {
    @Override
    public String toString() {
        return "null";
    }

    @Override
    public IRValue defaultValue() {
        return null;
    }

    @Override
    public int sizeof() {
        return 0;
    }
}

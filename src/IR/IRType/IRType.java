package IR.IRType;

import IR.IRValue.IRValue;

abstract public class IRType {
    abstract public IRValue defaultValue();

    abstract public int sizeof();

    abstract public String toString();

    public boolean isClassPtrType() {
        return this instanceof IRPointType && ((IRPointType) this).baseType instanceof IRStructType;
    }

    public boolean isStringType() {
        return this instanceof IRPointType && ((IRPointType) this).baseType instanceof IRIntType
                && ((IRIntType) ((IRPointType) this).baseType).bit == 8;
    }

    public boolean isArrayType() {
        return this instanceof IRPointType && !(((IRPointType) this).baseType instanceof IRStructType);
    }
}

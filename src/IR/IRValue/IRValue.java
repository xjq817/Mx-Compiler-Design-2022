package IR.IRValue;

import IR.IRType.IRType;

abstract public class IRValue {
    public IRType type;

    public IRValue(IRType type) {
        this.type = type;
    }
}

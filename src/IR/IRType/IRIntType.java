package IR.IRType;

import IR.IRValue.IRConstInt;
import IR.IRValue.IRValue;

public class IRIntType extends IRType {
    public int bit;

    public IRIntType(int bit) {
        this.bit = bit;
    }

    @Override
    public IRValue defaultValue() {
        return new IRConstInt(0);
    }

    @Override
    public int sizeof() {
        return 4;
    }

    @Override
    public String toString() {
        return "i" + this.bit;
    }
}

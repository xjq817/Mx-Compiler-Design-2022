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
        if (bit != 8) return 4;
        return 1;
    }

    @Override
    public String toString() {
        return "i" + this.bit;
    }
}

package IR.IRValue;

import IR.IRGlobalBlock;

public class IRConstInt extends IRConst {
    public int value;

    public IRConstInt(int value) {
        super(IRGlobalBlock.intType);
        this.value = value;
    }

    @Override
    public String toString() {
        return Integer.toString(value);
    }
}

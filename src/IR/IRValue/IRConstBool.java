package IR.IRValue;

import IR.IRGlobalBlock;

public class IRConstBool extends IRConst {
    public boolean value;

    public IRConstBool(boolean value) {
        super(IRGlobalBlock.boolType);
        this.value = value;
    }
}
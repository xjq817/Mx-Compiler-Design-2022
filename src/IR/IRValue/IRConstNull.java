package IR.IRValue;

import IR.IRGlobalBlock;

public class IRConstNull extends IRConst {
    public IRConstNull() {
        super(IRGlobalBlock.nullType);
    }
}
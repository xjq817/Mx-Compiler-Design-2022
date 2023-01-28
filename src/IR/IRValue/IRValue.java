package IR.IRValue;

import ASM.Operand.ASMVirtualRegister;
import IR.IRType.IRType;

abstract public class IRValue {
    public IRType type;
    public ASMVirtualRegister virtualReg;

    public IRValue(IRType type) {
        this.type = type;
        this.virtualReg = null;
    }
}

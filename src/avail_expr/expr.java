package avail_expr;

import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

abstract public class expr {
    public ASMRegister rs1;
    public ASMRegister rs2;
    public ASMImm imm;

    abstract public boolean equals(expr it);
    abstract public String toString();
}

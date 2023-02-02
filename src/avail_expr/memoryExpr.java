package avail_expr;

import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

public class memoryExpr extends expr {
    public int bit;

    public memoryExpr(int bit, ASMRegister rs1, ASMImm imm) {
        this.bit = bit;
        this.rs1 = rs1;
        this.rs2 = null;
        this.imm = imm;
    }

    @Override
    public boolean equals(expr it) {
        if (!(it instanceof memoryExpr)) return false;
        return ((memoryExpr) it).bit == bit && it.rs1 == rs1 && it.imm.imm == imm.imm;
    }

    @Override
    public String toString() {
        return bit + " " + rs1 + " " + imm.imm;
    }
}

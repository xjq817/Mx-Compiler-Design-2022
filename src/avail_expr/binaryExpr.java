package avail_expr;

import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

import java.util.Objects;

public class binaryExpr extends expr {
    String op;

    public binaryExpr(String op, ASMRegister rs1, ASMRegister rs2, ASMImm imm) {
        this.op = op;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.imm = imm;
    }

    @Override
    public boolean equals(expr it) {
        if (!(it instanceof binaryExpr)) return false;
        if (!Objects.equals(((binaryExpr) it).op, op)) return false;
        if (Objects.equals(op, "addi")) {
            return rs1 == it.rs1 && imm == it.imm;
        } else if (Objects.equals(op, "add")
                || Objects.equals(op, "mul")
                || Objects.equals(op, "and")
                || Objects.equals(op, "or")
                || Objects.equals(op, "xor")) {
            return (rs1 == it.rs1 && rs2 == it.rs2)
                    || (rs2 == it.rs1 && rs1 == it.rs2);

        } else {
            return rs1 == ((binaryExpr) it).rs1 && rs2 == ((binaryExpr) it).rs2;
        }
    }

    @Override
    public String toString() {
        return op + " " + rs1 + " " + rs2 + " " + imm;
    }

}

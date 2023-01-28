package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMRegister;

public class ASMBranchInstruction extends ASMInstruction {
    String op;
    String toBlock;

    public ASMBranchInstruction(String op, String toBlock, ASMRegister rs1, ASMBlock parentBlock) {
        super(parentBlock);
        this.op = op;
        this.toBlock = toBlock;
        this.rd = null;
        this.rs1 = rs1;
        this.rs2 = null;
        this.imm = null;
    }

    @Override
    public String toString() {
        if (rs1 == null) return "\t" + op + "\t\t." + toBlock;
        else return "\t" + op + "\t" + rs1 + ",\t." + toBlock;
    }
}

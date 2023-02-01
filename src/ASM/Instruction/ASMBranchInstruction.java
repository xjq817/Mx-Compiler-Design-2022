package ASM.Instruction;

import ASM.Operand.ASMRegister;

public class ASMBranchInstruction extends ASMInstruction {
    public String op;
    public String toBlock;

    public ASMBranchInstruction(String op, String toBlock, ASMRegister rs1) {
        super(null, rs1, null, null);
        this.op = op;
        this.toBlock = toBlock;
    }

    @Override
    public String toString() {
        if (rs1 == null) return "\t" + op + "\t\t." + toBlock;
        else return "\t" + op + "\t" + rs1 + ",\t." + toBlock;
    }
}

package ASM.Instruction;

import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

public class ASMStoreInstruction extends ASMInstruction {
    public int bit;

    public ASMStoreInstruction(int bit, ASMRegister rs1, ASMRegister rs2, ASMImm imm) {
        super(null, rs1, rs2, imm);
        this.bit = bit;
    }

    @Override
    public String toString() {
        if (bit == 1) return "\tsb\t\t" + rs1 + ",\t" + imm + "(" + rs2 + ")";
        if (bit == 2) return "\tsh\t\t" + rs1 + ",\t" + imm + "(" + rs2 + ")";
        return "\tsw\t\t" + rs1 + ",\t" + imm + "(" + rs2 + ")";
    }
}

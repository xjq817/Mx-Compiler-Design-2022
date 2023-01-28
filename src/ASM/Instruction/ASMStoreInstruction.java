package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

public class ASMStoreInstruction extends ASMInstruction {
    int bit;

    public ASMStoreInstruction(int bit, ASMRegister rs1, ASMRegister rs2, ASMImm imm, ASMBlock parentBlock) {
        super(parentBlock);
        this.bit = bit;
        this.rd = null;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.imm = imm;
    }

    @Override
    public String toString() {
        if (bit == 1) return "\tsb\t\t" + rs1 + ",\t" + imm + "(" + rs2 + ")";
        if (bit == 2) return "\tsh\t\t" + rs1 + ",\t" + imm + "(" + rs2 + ")";
        return "\tsw\t\t" + rs1 + ",\t" + imm + "(" + rs2 + ")";
    }
}

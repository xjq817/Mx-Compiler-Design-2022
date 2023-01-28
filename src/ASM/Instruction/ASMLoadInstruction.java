package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

public class ASMLoadInstruction extends ASMInstruction {
    int bit;

    public ASMLoadInstruction(int bit, ASMRegister rd, ASMRegister rs1, ASMImm imm, ASMBlock parentBlock) {
        super(parentBlock);
        this.rd = rd;
        this.rs1 = rs1;
        this.rs2 = null;
        this.imm = imm;
        this.bit = bit;
    }

    @Override
    public String toString() {
        if (bit == 1) return "\tlb\t\t" + rd + ",\t" + imm + "(" + rs1 + ")";
        if (bit == 2) return "\tlh\t\t" + rd + ",\t" + imm + "(" + rs1 + ")";
        return "\tlw\t\t" + rd + ",\t" + imm + "(" + rs1 + ")";
    }
}

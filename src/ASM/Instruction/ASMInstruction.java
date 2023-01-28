package ASM.Instruction;

import ASM.ASMBlock;
import ASM.Operand.ASMImm;
import ASM.Operand.ASMRegister;

abstract public class ASMInstruction {
    public ASMImm imm;
    public ASMRegister rd, rs1, rs2;
    public ASMBlock parentBlock;

    public ASMInstruction(ASMBlock parentBlock) {
        this.parentBlock = parentBlock;
    }

    abstract public String toString();
}

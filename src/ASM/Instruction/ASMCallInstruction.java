package ASM.Instruction;

import ASM.ASMBlock;

public class ASMCallInstruction extends ASMInstruction {
    String funcName;

    public ASMCallInstruction(String funcName, ASMBlock parentBlock) {
        super(parentBlock);
        this.funcName = funcName;
    }

    @Override
    public String toString() {
        return "\tcall\t" + funcName;
    }
}

package ASM.Instruction;

import ASM.ASMBlock;

public class ASMCallInstruction extends ASMInstruction {
    String funcName;

    public ASMCallInstruction(String funcName) {
        super(null, null, null, null);
        this.funcName = funcName;
    }

    @Override
    public String toString() {
        return "\tcall\t" + funcName;
    }
}

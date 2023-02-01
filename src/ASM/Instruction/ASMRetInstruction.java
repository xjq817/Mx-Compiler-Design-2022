package ASM.Instruction;

public class ASMRetInstruction extends ASMInstruction {
    public ASMRetInstruction() {
        super(null, null, null, null);
    }

    @Override
    public String toString() {
        return "\tret";
    }
}

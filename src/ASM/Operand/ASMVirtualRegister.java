package ASM.Operand;

public class ASMVirtualRegister extends ASMRegister {
    public String name;
    public int offset;
    public boolean isAlloc;

    public ASMVirtualRegister(String name) {
        this.name = name;
        this.offset = 0;
        this.isAlloc = false;
    }

    @Override
    public String toString() {
        return name;
    }
}

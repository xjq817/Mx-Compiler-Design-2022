package ASM.Operand;

public class ASMVirtualRegister extends ASMRegister {
    public String name;
    public int offset;
    public boolean isAlloc;
    public int id;

    public static int cnt = 0;

    public ASMVirtualRegister(String name) {
        this.name = name;
        this.offset = 0;
        this.isAlloc = false;
        this.id = ++cnt;
    }

    @Override
    public String toString() {
        return "%" + id;
    }
}

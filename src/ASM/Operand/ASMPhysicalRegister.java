package ASM.Operand;

public class ASMPhysicalRegister extends ASMRegister {
    String name;

    public ASMPhysicalRegister(String name) {
        this.name = name;
    }

    @Override
    public String toString(){
        return name;
    }
}

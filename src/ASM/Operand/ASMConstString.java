package ASM.Operand;

import ASM.ASMVisitor;

public class ASMConstString extends ASMOperand {
    public String originStr;
    public String str;
    public String name;

    public ASMConstString(String originStr, String str, int id) {
        this.originStr = originStr;
        this.str = str;
        this.name = "str." + id;
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

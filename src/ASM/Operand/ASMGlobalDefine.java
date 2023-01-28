package ASM.Operand;

import ASM.ASMVisitor;

public class ASMGlobalDefine extends ASMOperand {
    public String name;

    public ASMGlobalDefine(String name) {
        this.name = name;
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

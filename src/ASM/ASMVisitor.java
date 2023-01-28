package ASM;

import ASM.Operand.ASMConstString;
import ASM.Operand.ASMGlobalDefine;

public interface ASMVisitor {
    void visit(ASMGlobalBlock it);

    void visit(ASMFunction it);

    void visit(ASMBlock it);

    void visit(ASMGlobalDefine it);

    void visit(ASMConstString it);
}

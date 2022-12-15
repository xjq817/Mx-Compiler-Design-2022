package IR;

import IR.IRType.IRStructType;
import IR.IRValue.IRConstString;
import IR.Instruction.*;

public interface IRVisitor {
    void visit(IRAllocaInstruction it);

    void visit(IRBrInstruction it);

    void visit(IRCallInstruction it);

    void visit(IRLoadInstruction it);

    void visit(IRRetInstruction it);

    void visit(IRStoreInstruction it);

    void visit(IRBinaryInstruction it);

    void visit(IRIcmpInstruction it);

    void visit(IRTruncInstruction it);

    void visit(IRZextInstruction it);

    void visit(IRGetelementptrInstruction it);

    void visit(IRBitcastInstruction it);

    void visit(IRBrLabelInstruction it);

    void visit(IRGlobalBlock it);

    void visit(IRBlock it);

    void visit(IRFunction it);

    void visit(IRGlobalDefine it);

    void visit(IRConstString it);

    void visit(IRStructType it);
}

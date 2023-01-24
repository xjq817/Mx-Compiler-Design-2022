package Frontend;

import IR.*;
import IR.IRType.IRStructType;
import IR.IRValue.IRConstString;
import IR.Instruction.*;

import java.io.PrintStream;

public class IRPrinter implements IRVisitor {
    public PrintStream ps;

    public IRPrinter(PrintStream ps) {
        this.ps = ps;
    }

    @Override
    public void visit(IRAllocaInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRBrInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRCallInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRLoadInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRRetInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRStoreInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRBinaryInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRIcmpInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRTruncInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRZextInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRGetelementptrInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRBitcastInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRBrLabelInstruction it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRGlobalBlock it) {
        it.functions.forEach((name, func) -> {
            if (func.declare) func.accept(this);
        });
        ps.println();
        it.strings.forEach((name, cur) -> cur.accept(this));
        ps.println();
        it.classTypes.forEach(cur -> cur.accept(this));
        ps.println();
        it.irGlobalDefines.forEach((name, cur) -> cur.accept(this));
        ps.println();
        it.singleInitFunctions.forEach(cur -> cur.accept(this));
        ps.println();
        it.functions.forEach((name, func) -> {
            if (!func.declare) func.accept(this);
        });
    }

    @Override
    public void visit(IRBlock it) {
        ps.println(it.label.irPrint());
        it.instructions.forEach(cur -> {
            ps.print("\t");
            cur.accept(this);
        });
        ps.println();
    }

    @Override
    public void visit(IRFunction it) {
        if (it.declare) ps.println(it.getDeclare());
        else {
            ps.println(it.getFuncPrefix());
            it.blocks.forEach(cur -> cur.accept(this));
            ps.println("}");
            ps.println();
        }
    }

    @Override
    public void visit(IRGlobalDefine it) {
        ps.println(it.toString());
    }

    @Override
    public void visit(IRConstString it) {
        ps.println(it.irPrint());
    }

    @Override
    public void visit(IRStructType it) {
        ps.println(it.irPrint());
    }
}

package Backend;

import ASM.ASMBlock;
import ASM.ASMFunction;
import ASM.ASMGlobalBlock;
import ASM.ASMVisitor;
import ASM.Operand.ASMConstString;
import ASM.Operand.ASMGlobalDefine;

import java.io.PrintStream;

public class ASMPrinter implements ASMVisitor {
    public PrintStream ps;

    public ASMPrinter(PrintStream ps) {
        this.ps = ps;
    }

    @Override
    public void visit(ASMGlobalBlock it) {
        ps.println("\t.section\t.text");
        it.functions.forEach((name, func) -> func.accept(this));
        ps.println("\t.section\t.bss");
        it.globalDefines.forEach(cur -> cur.accept(this));
        ps.println("\t.section\t.rodata");
        it.constStrings.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(ASMFunction it) {
        ps.println("\t.globl\t" + it.name);
        ps.println("\t.p2align\t2");
        ps.println("\t.type\t" + it.name + ",@function\n");
        ps.println(it.name + ":");
        it.blocks.forEach(cur -> cur.accept(this));
        ps.println("\t.size\t" + it.name + ",\t.-" + it.name);
        ps.println();
    }

    @Override
    public void visit(ASMBlock it) {
        ps.println("." + it.name + ":");
        it.instructions.forEach(cur -> ps.println(cur.toString()));
    }

    @Override
    public void visit(ASMGlobalDefine it) {
        ps.println("\t.globl\t" + it.name);
        ps.println("\t.type\t" + it.name + ",@object");
        ps.println(it.name + ":");
        ps.println("\t.word\t0");
        ps.println("\t.size\t" + it.name + ",\t4");
        ps.println();
    }

    @Override
    public void visit(ASMConstString it) {
        ps.println("\t.globl\t" + it.name);
        ps.println("\t.type\t" + it.name + ",@object");
        ps.println(it.name + ":");
        ps.println("\t.string\t\"" + it.originStr + "\"");
        ps.println("\t.size\t" + it.name + ",\t" + (it.str.length() + 1));
        ps.println();
    }
}

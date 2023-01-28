package ASM;

import java.util.ArrayList;

public class ASMFunction {
    public String name;
    public ArrayList<ASMBlock> blocks;
    public ASMBlock entryBlock;
    public ASMBlock returnBlock;
    public int allocSize;
    public int parameterSize;

    public ASMFunction(String name) {
        this.name = name;
        this.blocks = new ArrayList<>();
        this.entryBlock = null;
        this.returnBlock = null;
        this.allocSize = 8;
        this.parameterSize = 0;
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

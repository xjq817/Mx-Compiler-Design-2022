package ASM;

import ASM.Operand.ASMVirtualRegister;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class ASMFunction {
    public String name;
    public ArrayList<ASMBlock> blocks;
    public ASMBlock entryBlock;
    public ASMBlock returnBlock;
    public int allocSize;
    public int parameterSize;
    public LinkedHashMap<String, ASMVirtualRegister> globalVars;
    public LinkedHashMap<String, ASMVirtualRegister> constStrings;

    public ASMFunction(String name) {
        this.name = name;
        this.blocks = new ArrayList<>();
        this.entryBlock = null;
        this.returnBlock = null;
        this.allocSize = 8;
        this.parameterSize = 0;
        this.globalVars = new LinkedHashMap<>();
        this.constStrings = new LinkedHashMap<>();
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

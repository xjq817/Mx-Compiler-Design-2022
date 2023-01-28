package ASM;

import ASM.Operand.ASMConstString;
import ASM.Operand.ASMGlobalDefine;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class ASMGlobalBlock {
    public ArrayList<ASMGlobalDefine> globalDefines;
    public ArrayList<ASMConstString> constStrings;
    public LinkedHashMap<String, ASMFunction> functions;

    public ASMGlobalBlock() {
        this.globalDefines = new ArrayList<>();
        this.constStrings = new ArrayList<>();
        this.functions = new LinkedHashMap<>();
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

package ASM;

import ASM.Operand.ASMConstString;
import ASM.Operand.ASMGlobalDefine;
import ASM.Operand.ASMPhysicalRegister;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class ASMGlobalBlock {
    public ArrayList<ASMGlobalDefine> globalDefines;
    public ArrayList<ASMConstString> constStrings;
    public LinkedHashMap<String, ASMFunction> functions;
    public ArrayList<ASMPhysicalRegister> physicalRegs;
    public LinkedHashMap<ASMPhysicalRegister, Integer> physicalRegIds;
    public ArrayList<ASMPhysicalRegister> caller;
    public ArrayList<ASMPhysicalRegister> callee;
    public ArrayList<Integer> okColor;

    public ASMGlobalBlock() {
        this.globalDefines = new ArrayList<>();
        this.constStrings = new ArrayList<>();
        this.functions = new LinkedHashMap<>();
        this.physicalRegs = new ArrayList<>();
        this.physicalRegIds = new LinkedHashMap<>();
        this.caller = new ArrayList<>();
        this.callee = new ArrayList<>();
        this.okColor = new ArrayList<>();

        physicalRegs.add(new ASMPhysicalRegister("zero"));
        physicalRegs.add(new ASMPhysicalRegister("ra"));
        physicalRegs.add(new ASMPhysicalRegister("sp"));
        physicalRegs.add(new ASMPhysicalRegister("gp"));
        physicalRegs.add(new ASMPhysicalRegister("tp"));
        for (int i = 0; i <= 2; i++) {
            ASMPhysicalRegister n = new ASMPhysicalRegister("t" + i);
            physicalRegs.add(n);
            caller.add(n);
            okColor.add(physicalRegs.size() - 1);
        }
        //physicalRegs.add(new ASMPhysicalRegister("s0"));
        for (int i = 0; i <= 1; i++) {
            ASMPhysicalRegister n = new ASMPhysicalRegister("s" + i);
            physicalRegs.add(n);
            callee.add(n);
            okColor.add(physicalRegs.size() - 1);
        }
        for (int i = 0; i <= 7; i++) {
            ASMPhysicalRegister n = new ASMPhysicalRegister("a" + i);
            physicalRegs.add(n);
            caller.add(n);
            okColor.add(physicalRegs.size() - 1);
        }
        for (int i = 2; i <= 11; i++) {
            ASMPhysicalRegister n = new ASMPhysicalRegister("s" + i);
            physicalRegs.add(n);
            callee.add(n);
            okColor.add(physicalRegs.size() - 1);
        }
        for (int i = 3; i <= 6; i++) {
            ASMPhysicalRegister n = new ASMPhysicalRegister("t" + i);
            physicalRegs.add(n);
            caller.add(n);
            okColor.add(physicalRegs.size() - 1);
        }

        for (int i = 0; i < physicalRegs.size(); i++)
            physicalRegIds.put(physicalRegs.get(i), i);
    }

    public void accept(ASMVisitor it) {
        it.visit(this);
    }
}

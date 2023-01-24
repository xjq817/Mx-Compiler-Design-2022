package IR;

import IR.IRType.IRType;
import IR.IRValue.IRRegister;

import java.util.ArrayList;

public class IRFunction {
    public String name;
    public IRType returnType;
    public ArrayList<IRRegister> parameterRegs;
    public ArrayList<IRType> parameterTypes;
    public ArrayList<String> parameterNames;
    public ArrayList<IRBlock> blocks;
    public IRBlock entryBlock;
    public IRBlock returnBlock;
    public IRRegister thisReg;
    public boolean declare;

    public IRFunction(String name) {
        this.name = name;
        this.returnType = null;
        this.parameterRegs = new ArrayList<>();
        this.parameterTypes = new ArrayList<>();
        this.parameterNames = new ArrayList<>();
        this.blocks = new ArrayList<>();
        this.entryBlock = new IRBlock(this, "entry");
        this.returnBlock = new IRBlock(this, "return");
        this.thisReg = null;
        this.declare = false;
    }

    public void addParameter(IRRegister reg, IRType type, String name) {
        parameterRegs.add(reg);
        parameterTypes.add(type);
        parameterNames.add(name);
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    String getParameterListToString(boolean isDeclare) {
        StringBuilder builder = new StringBuilder();
        builder.append("(");
        for (int i = 0; i < parameterRegs.size(); i++) {
            if (i != 0) builder.append(", ");
            builder.append(parameterTypes.get(i));
            if (!isDeclare) builder.append(" " + parameterRegs.get(i));
        }
        builder.append(")");
        return builder.toString();
    }

    public String getDeclare() {
        return "declare " + returnType.toString() + " @" + name + getParameterListToString(true) + " #0";
    }

    public String getFuncPrefix() {
        return "define " + returnType.toString() + " @" + name + getParameterListToString(false) + " #0 {";
    }
}

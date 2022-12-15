package Util.Scope;

import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import Util.Entity.VarEntity;
import Util.Type.Type;

import java.util.ArrayList;

public class FuncScope extends Scope {
    public ArrayList<VarEntity> parameters;
    public Type returnType;
    public boolean isLambda;

    public IRValue returnReg;
    public IRRegister thisPtrReg;

    public FuncScope(Type returnType, Scope parentScope) {
        super(parentScope);
        this.parameters = new ArrayList<>();
        this.returnType = returnType;
        this.isLambda = false;
        this.returnReg = null;
        this.thisPtrReg = null;
    }
}

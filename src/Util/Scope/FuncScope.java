package Util.Scope;

import Util.Entity.VarEntity;
import Util.Type.Type;

import java.util.ArrayList;

public class FuncScope extends Scope {
    public ArrayList<VarEntity> parameters;
    public Type returnType;
    public boolean isLambda;

    public FuncScope(Type returnType, Scope parentScope) {
        super(parentScope);
        this.parameters = new ArrayList<>();
        this.returnType = returnType;
        this.isLambda = false;
    }
}

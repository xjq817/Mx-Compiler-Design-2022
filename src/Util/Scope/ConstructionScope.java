package Util.Scope;

import IR.IRValue.IRRegister;

public class ConstructionScope extends Scope {
    public IRRegister thisPtr;

    public ConstructionScope(Scope parentScope) {
        super(parentScope);
        this.thisPtr = null;
    }
}

package Util.Scope;

import IR.IRValue.IRRegister;

public class ConstructionScope extends Scope {
    public IRRegister thisPtrReg;

    public ConstructionScope(Scope parentScope) {
        super(parentScope);
        this.thisPtrReg = null;
    }
}

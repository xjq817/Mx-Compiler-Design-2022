package Util.Scope;

import IR.IRBlock;

public class LoopScope extends Scope {
    public IRBlock conditionBlock;
    public IRBlock executionBlock;
    public IRBlock terminateBlock;

    public LoopScope(Scope parentScope) {
        super(parentScope);
        this.conditionBlock = null;
        this.executionBlock = null;
        this.terminateBlock = null;
    }
}

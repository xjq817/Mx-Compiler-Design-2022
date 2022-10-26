package Util.Entity;

import Util.Position;
import Util.Scope.FuncScope;

public class FuncEntity extends Entity {
    public FuncScope funcScope;

    public FuncEntity(FuncScope funcScope, String name, Position pos) {
        super(name, pos);
        this.funcScope = funcScope;
    }
}

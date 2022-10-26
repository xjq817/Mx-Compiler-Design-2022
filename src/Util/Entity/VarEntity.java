package Util.Entity;

import Util.Position;
import Util.Type.Type;

public class VarEntity extends Entity {
    public Type varType;

    public VarEntity(Type varType, String name, Position pos) {
        super(name, pos);
        this.varType = varType;
    }
}

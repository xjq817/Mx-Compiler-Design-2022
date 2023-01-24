package Util.Entity;

import IR.IRType.IRStructType;
import IR.IRValue.IRRegister;
import Util.Position;
import Util.Type.Type;

public class VarEntity extends Entity {
    public Type varType;
    public IRStructType classIRType;
    public int index;
    public IRRegister ptr;

    public VarEntity(Type varType, String name, Position pos) {
        super(name, pos);
        this.varType = varType;
        this.classIRType = null;
        this.index = -1;
        this.ptr = null;
    }
}

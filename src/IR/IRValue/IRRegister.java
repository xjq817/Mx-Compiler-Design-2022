package IR.IRValue;

import IR.IRType.IRType;

public class IRRegister extends IRValue {
    public static int regCnt = 0;
    public int id;
    public String name;
    public boolean isGlobal;

    public IRRegister(IRType type, String name) {
        super(type);
        this.id = regCnt++;
        this.name = name;
        this.isGlobal = false;
    }

    @Override
    public String toString() {
        if (isGlobal) return "@" + name;
//        return "%" + name + "_" + id;
        return "%" + id;
    }
}

package IR.IRValue;

import IR.IRType.IRType;

public class IRRegister extends IRValue {
    public static int regCnt = 0;
    public static int allocaCnt = 0;
    public int id;
    public String name;

    public IRRegister(IRType type, String name) {
        super(type);
        this.id = regCnt++;
        this.name = name;
    }
}

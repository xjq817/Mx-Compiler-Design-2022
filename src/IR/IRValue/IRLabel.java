package IR.IRValue;

import IR.IRBlock;

public class IRLabel extends IRValue {
    public String name;
    public IRBlock parentBlock;
    public int id;

    public IRLabel(String name, IRBlock parentBlock) {
        super(null);
        this.id = 0;
        this.name = name;
        this.parentBlock = parentBlock;
    }

    public String irPrint() {
        return name + ":";
    }

    @Override
    public String toString() {
        return "%" + name;
    }
}

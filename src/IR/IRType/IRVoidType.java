package IR.IRType;

import IR.IRValue.IRValue;
import Util.error.IRError;

public class IRVoidType extends IRType {
    @Override
    public String toString() {
        return "void";
    }

    @Override
    public IRValue defaultValue() {
        throw new IRError("get void default value");
    }

    @Override
    public int sizeof() {
        throw new IRError("get void sizeof");
    }
}
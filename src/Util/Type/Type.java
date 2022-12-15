package Util.Type;

import IR.IRGlobalBlock;
import IR.IRType.IRPointType;
import IR.IRType.IRStructType;
import IR.IRType.IRType;
import Util.Scope.ClassScope;

import java.util.Objects;

public class Type {
    public String name;
    public int layer;
    public ClassScope classScope;
    public IRStructType classType;

    public Type(String name) {
        this.name = name;
        this.layer = 0;
        this.classScope = null;
        this.classType = null;
    }

    public Type(Type type) {
        this.name = type.name;
        this.layer = type.layer;
        this.classScope = type.classScope;
        this.classType = null;
    }

    public boolean isEqual(Type type) {
        return Objects.equals(this.name, type.name) && Objects.equals(this.layer, type.layer);
    }

    public IRType toIRType(IRGlobalBlock gBlock) {
        if (layer > 0) {
            Type baseType = new Type(this);
            baseType.layer = 0;
            IRType baseIRType = baseType.toIRType(gBlock);
            for (int i = 0; i < layer; i++)
                baseIRType = new IRPointType(baseIRType);
            return baseIRType;
        }
        if (Objects.equals(name, "int")) return IRGlobalBlock.intType;
        if (Objects.equals(name, "bool")) return IRGlobalBlock.boolType;
        if (Objects.equals(name, "string")) return IRGlobalBlock.stringType;
        if (Objects.equals(name, "void")) return IRGlobalBlock.voidType;
        return new IRPointType(gBlock.types.get(name));
    }
}

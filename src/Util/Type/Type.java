package Util.Type;

import Util.Scope.ClassScope;

import java.util.Objects;

public class Type {
    public String name;
    public int layer;
    public ClassScope classScope;

    public Type(String name) {
        this.name = name;
        this.layer = 0;
        this.classScope = null;
    }

    public Type(Type type) {
        this.name = type.name;
        this.layer = type.layer;
        this.classScope = type.classScope;
    }

    public boolean isEqual(Type type) {
        return Objects.equals(this.name, type.name) && Objects.equals(this.layer, type.layer);
    }
}

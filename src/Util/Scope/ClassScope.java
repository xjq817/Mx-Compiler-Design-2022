package Util.Scope;

import Util.Entity.ConstructionEntity;

public class ClassScope extends Scope {
    public ConstructionEntity constructionEntity;
    public String name;

    public ClassScope(String name, Scope parentScope) {
        super(parentScope);
        this.name = name;
        this.constructionEntity = null;
    }
}

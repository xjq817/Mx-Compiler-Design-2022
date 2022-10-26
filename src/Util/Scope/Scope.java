package Util.Scope;

import Util.Entity.Entity;
import Util.Entity.FuncEntity;
import Util.Entity.VarEntity;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Objects;

abstract public class Scope {
    public LinkedHashMap<String, VarEntity> varEntities;
    public LinkedHashMap<String, FuncEntity> funcEntities;
    public Scope parentScope;
    public ArrayList<Scope> blockScopes;

    public Scope(Scope parentScope) {
        this.parentScope = parentScope;
        this.varEntities = new LinkedHashMap<>();
        this.funcEntities = new LinkedHashMap<>();
        this.blockScopes = new ArrayList<>();
    }

    public void insFunc(FuncEntity funcEntity) {
        funcEntities.put(funcEntity.name, funcEntity);
    }

    public VarEntity getVarEntity(String name) {
        if (this.varEntities.containsKey(name))
            return this.varEntities.get(name);
        if (this instanceof FuncScope) {
            for (int i = 0; i < ((FuncScope) this).parameters.size(); i++) {
                if (Objects.equals(((FuncScope) this).parameters.get(i).name, name))
                    return ((FuncScope) this).parameters.get(i);
            }
        }
        if (this.parentScope != null)
            return this.parentScope.getVarEntity(name);
        return null;
    }

    public FuncEntity getFuncEntity(String name) {
        if (this.funcEntities.containsKey(name))
            return this.funcEntities.get(name);
        if (this.parentScope != null)
            return this.parentScope.getFuncEntity(name);
        return null;
    }

    public Scope getFunctionScope() {
        if (this instanceof FuncScope) return (FuncScope) this;
        if (this instanceof ConstructionScope) return (ConstructionScope) this;
        if (this.parentScope != null)
            return this.parentScope.getFunctionScope();
        return null;
    }

    public ClassScope getClassScope() {
        if (this instanceof ClassScope) return (ClassScope) this;
        if (this.parentScope != null) return this.parentScope.getClassScope();
        return null;
    }

//    public Entity hasIdentifier(String name) {
//        if (this instanceof FuncScope) {
//            for (var cur : ((FuncScope) this).parameters) {
//                if (Objects.equals(cur.name, name)) return cur;
//            }
//        }
//        if (this.varEntities.containsKey(name)) return this.varEntities.get(name);
//        if (this.funcEntities.containsKey(name)) return this.funcEntities.get(name);
//        if (this.parentScope != null) return this.parentScope.hasIdentifier(name);
//        return null;
//    }

    public boolean isInLoopScope() {
        if (this instanceof LoopScope) return true;
        if (this.parentScope != null) return this.parentScope.isInLoopScope();
        return false;
    }
}

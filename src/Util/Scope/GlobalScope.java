package Util.Scope;

import Util.Entity.FuncEntity;
import Util.Entity.VarEntity;
import Util.Position;
import Util.Type.Type;
import Util.error.syntaxError;

import java.util.LinkedHashMap;

public class GlobalScope extends Scope {
    public LinkedHashMap<String, Type> types;

    public GlobalScope(Scope parentScope) {
        super(parentScope);
        types = new LinkedHashMap<>();

        Type intType = new Type("int");
        Type boolType = new Type("bool");
        Type nullType = new Type("null");
        Type voidType = new Type("void");
        FuncEntity function;
        Position nullPos = new Position(-1, -1);

        this.insType("int", intType);
        this.insType("bool", boolType);
        this.insType("null", nullType);
        this.insType("void", voidType);

        Type stringType = new Type("string");
        stringType.classScope=new ClassScope("string",null);
        function = new FuncEntity(new FuncScope(intType, null), "length", nullPos);
        stringType.classScope.insFunc(function);
        function = new FuncEntity(new FuncScope(stringType, null), "substring", nullPos);
        function.funcScope.parameters.add(new VarEntity(intType, "left", nullPos));
        function.funcScope.parameters.add(new VarEntity(intType, "right", nullPos));
        stringType.classScope.insFunc(function);
        function = new FuncEntity(new FuncScope(intType, null), "parseInt", nullPos);
        stringType.classScope.insFunc(function);
        function = new FuncEntity(new FuncScope(intType, null), "ord", nullPos);
        function.funcScope.parameters.add(new VarEntity(intType, "pos", nullPos));
        stringType.classScope.insFunc(function);
        this.insType("string", stringType);

        function = new FuncEntity(new FuncScope(voidType, null), "print", nullPos);
        function.funcScope.parameters.add(new VarEntity(stringType, "str", nullPos));
        this.insFunc(function);
        function = new FuncEntity(new FuncScope(voidType, null), "println", nullPos);
        function.funcScope.parameters.add(new VarEntity(stringType, "str", nullPos));
        this.insFunc(function);
        function = new FuncEntity(new FuncScope(voidType, null), "printInt", nullPos);
        function.funcScope.parameters.add(new VarEntity(intType, "n", nullPos));
        this.insFunc(function);
        function = new FuncEntity(new FuncScope(stringType, null), "getString", nullPos);
        this.insFunc(function);
        function = new FuncEntity(new FuncScope(intType, null), "getInt", nullPos);
        this.insFunc(function);
        function = new FuncEntity(new FuncScope(stringType, null), "toString", nullPos);
        function.funcScope.parameters.add(new VarEntity(intType, "i", nullPos));
        this.insFunc(function);
    }

    public void insType(String name, Type type) {
        if (this.types.containsKey(name))
            throw new syntaxError("insert type[" + name + "] again", new Position(-1, -1));
        this.types.put(name, type);
    }
}

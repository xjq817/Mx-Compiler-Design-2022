package IR;

import IR.IRType.*;
import IR.IRValue.IRConstString;
import IR.IRValue.IRGlobalDefine;
import Util.Scope.GlobalScope;
import Util.error.IRError;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class IRGlobalBlock {
    public LinkedHashMap<String, IRType> types;
    public LinkedHashMap<String, IRFunction> functions;
    public LinkedHashMap<String, IRConstString> strings;
    public ArrayList<IRStructType> classTypes;
    //public ArrayList<IRFunction> singleInitFunctions;
    int singleInitFuncNum;
    public LinkedHashMap<String, IRGlobalDefine> irGlobalDefines;

    public int stringNum;

    public static IRType boolType;
    public static IRType intType;
    public static IRType nullType;
    public static IRType voidType;
    public static IRType charType;
    public static IRType stringType;

    public IRGlobalBlock() {
        types = new LinkedHashMap<>();
        functions = new LinkedHashMap<>();
        strings = new LinkedHashMap<>();
        classTypes = new ArrayList<>();
        //singleInitFunctions = new ArrayList<>();
        irGlobalDefines = new LinkedHashMap<>();

        stringNum = 0;
        singleInitFuncNum = 0;

        types.put("bool", boolType = new IRIntType(1));
        types.put("char", charType = new IRIntType(8));
        types.put("int", intType = new IRIntType(32));
        types.put("null", nullType = new IRNullType());
        types.put("void", voidType = new IRVoidType());
        types.put("string", stringType = new IRPointType(IRGlobalBlock.charType));

    }

    public void addString(String str) {
        if (!strings.containsKey(str))
            strings.put(str, new IRConstString(str, stringNum++));
    }

    public void initFunction(GlobalScope gScope) {
        IRFunction print = new IRFunction("print");
        print.declare = true;
        print.returnType = IRGlobalBlock.voidType;
        print.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("print", print);
        gScope.getFuncEntity("print").irFunction = print;

        IRFunction println = new IRFunction("println");
        println.declare = true;
        println.returnType = IRGlobalBlock.voidType;
        println.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("println", println);
        gScope.getFuncEntity("println").irFunction = println;

        IRFunction printInt = new IRFunction("printInt");
        printInt.declare = true;
        printInt.returnType = IRGlobalBlock.voidType;
        printInt.addParameter(null, IRGlobalBlock.intType, "");
        functions.put("printInt", printInt);
        gScope.getFuncEntity("printInt").irFunction = printInt;

        IRFunction printlnInt = new IRFunction("printlnInt");
        printlnInt.declare = true;
        printlnInt.returnType = IRGlobalBlock.voidType;
        printlnInt.addParameter(null, IRGlobalBlock.intType, "");
        functions.put("printlnInt", printlnInt);
        gScope.getFuncEntity("printlnInt").irFunction = printlnInt;

        IRFunction getInt = new IRFunction("getInt");
        getInt.declare = true;
        getInt.returnType = IRGlobalBlock.intType;
        functions.put("getInt", getInt);
        gScope.getFuncEntity("getInt").irFunction = getInt;

        IRFunction getString = new IRFunction("getString");
        getString.declare = true;
        getString.returnType = IRGlobalBlock.stringType;
        functions.put("getString", getString);
        gScope.getFuncEntity("getString").irFunction = getString;

        IRFunction toString = new IRFunction("toString");
        toString.declare = true;
        toString.returnType = IRGlobalBlock.stringType;
        toString.addParameter(null, IRGlobalBlock.intType, "");
        functions.put("toString", toString);
        gScope.getFuncEntity("toString").irFunction = toString;

        IRFunction stringSlt = new IRFunction("__string_slt");
        stringSlt.declare = true;
        stringSlt.returnType = IRGlobalBlock.charType;
        stringSlt.addParameter(null, IRGlobalBlock.stringType, "");
        stringSlt.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_slt", stringSlt);

        IRFunction stringSle = new IRFunction("__string_sle");
        stringSle.declare = true;
        stringSle.returnType = IRGlobalBlock.charType;
        stringSle.addParameter(null, IRGlobalBlock.stringType, "");
        stringSle.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_sle", stringSle);

        IRFunction stringSgt = new IRFunction("__string_sgt");
        stringSgt.declare = true;
        stringSgt.returnType = IRGlobalBlock.charType;
        stringSgt.addParameter(null, IRGlobalBlock.stringType, "");
        stringSgt.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_sgt", stringSgt);

        IRFunction stringSge = new IRFunction("__string_sge");
        stringSge.declare = true;
        stringSge.returnType = IRGlobalBlock.charType;
        stringSge.addParameter(null, IRGlobalBlock.stringType, "");
        stringSge.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_sge", stringSge);

        IRFunction stringEq = new IRFunction("__string_eq");
        stringEq.declare = true;
        stringEq.returnType = IRGlobalBlock.charType;
        stringEq.addParameter(null, IRGlobalBlock.stringType, "");
        stringEq.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_eq", stringEq);

        IRFunction stringNe = new IRFunction("__string_ne");
        stringNe.declare = true;
        stringNe.returnType = IRGlobalBlock.charType;
        stringNe.addParameter(null, IRGlobalBlock.stringType, "");
        stringNe.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_ne", stringNe);

        IRFunction mergeString = new IRFunction("__merge_string");
        mergeString.declare = true;
        mergeString.returnType = IRGlobalBlock.stringType;
        mergeString.addParameter(null, IRGlobalBlock.stringType, "");
        mergeString.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__merge_string", mergeString);

        IRFunction mallocFunc = new IRFunction("__malloc");
        mallocFunc.declare = true;
        mallocFunc.returnType = IRGlobalBlock.stringType;
        mallocFunc.addParameter(null, IRGlobalBlock.intType, "");
        functions.put("__malloc", mallocFunc);

        IRFunction stringLength = new IRFunction("__string_length");
        stringLength.declare = true;
        stringLength.returnType = IRGlobalBlock.intType;
        stringLength.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_length", stringLength);

        IRFunction stringSubstring = new IRFunction("__string_substring");
        stringSubstring.declare = true;
        stringSubstring.returnType = IRGlobalBlock.stringType;
        stringSubstring.addParameter(null, IRGlobalBlock.stringType, "");
        stringSubstring.addParameter(null, IRGlobalBlock.intType, "");
        stringSubstring.addParameter(null, IRGlobalBlock.intType, "");
        functions.put("__string_substring", stringSubstring);

        IRFunction stringParseInt = new IRFunction("__string_parseInt");
        stringParseInt.declare = true;
        stringParseInt.returnType = IRGlobalBlock.intType;
        stringParseInt.addParameter(null, IRGlobalBlock.stringType, "");
        functions.put("__string_parseInt", stringParseInt);

        IRFunction stringOrd = new IRFunction("__string_ord");
        stringOrd.declare = true;
        stringOrd.returnType = IRGlobalBlock.intType;
        stringOrd.addParameter(null, IRGlobalBlock.stringType, "");
        stringOrd.addParameter(null, IRGlobalBlock.intType, "");
        functions.put("__string_ord", stringOrd);
    }

    public void addFunction(IRFunction function) {
        if (functions.containsKey(function.name))
            throw new IRError("already haven this function:" + function.name);
        functions.put(function.name, function);
    }

    public IRFunction newSingleInitFunction() {
        String name = "__global_init_" + singleInitFuncNum;
        IRFunction function = new IRFunction(name);
        function.returnType = IRGlobalBlock.voidType;
        singleInitFuncNum = singleInitFuncNum + 1;
        functions.put(name, function);
        return function;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}

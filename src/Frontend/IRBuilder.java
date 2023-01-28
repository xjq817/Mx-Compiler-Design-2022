package Frontend;

import IR.IRBlock;
import IR.IRFunction;
import IR.IRGlobalBlock;
import IR.IRType.*;
import IR.IRValue.*;
import IR.Instruction.*;
import Util.Entity.VarEntity;
import Util.Position;
import Util.Scope.*;
import Util.Type.Type;
import ast.ASTNode;
import ast.ASTVisitor;
import ast.RootNode;
import ast.def.*;
import ast.expr.*;
import ast.expr.primary.*;
import ast.stmt.*;
import ast.type.TypeNode;

import java.util.ArrayList;
import java.util.Objects;

public class IRBuilder implements ASTVisitor {
    public IRGlobalBlock gBlock;
    public IRBlock curBlock;
    public IRFunction curFunction;

    public GlobalScope gScope;
    public Scope curScope;

    public int labelCnt;

    public IRBuilder(GlobalScope gScope, IRGlobalBlock gBlock) {
        this.gScope = gScope;
        this.curScope = gScope;
        this.gBlock = gBlock;
        this.gBlock.initFunction(this.gScope);
        this.labelCnt = 0;
        this.curBlock = null;
        this.curFunction = null;
    }

    public void completeBlock(IRInstruction exitInstruction) {
        //when a block is completed
        //exitIns is always ret or br or brLabel
        if (exitInstruction != null)
            curBlock.exitInstruction = exitInstruction;
        curBlock.instructions.add(curBlock.exitInstruction);
        curFunction.blocks.add(curBlock);
    }

    IRRegister getIdentifierPtr(IdentifierPrimaryNode it) {
//        if (it.pos.row() == 53 && it.pos.col() == 7) {
//            System.out.println("fuck");
//        }
        VarEntity entity = it.varEntity;

        //not in class: varEntity recorded the register
        if (entity.classIRType == null) return entity.ptr;

        //in class: need to find class's thisReg, and then use getelementptr to find the varReg
        Scope methodScope = curScope.getFunctionScope();
        IRRegister thisPtrReg;
        if (methodScope instanceof FuncScope)
            thisPtrReg = ((FuncScope) methodScope).thisPtr;
        else thisPtrReg = ((ConstructionScope) methodScope).thisPtr;
        // thisPtr is class**, need to load to thisReg
        IRStructType classIRType = entity.classIRType;
        IRRegister thisReg = new IRRegister(new IRPointType(classIRType), "this_reg");
        curBlock.instructions.add(new IRLoadInstruction(thisReg, new IRPointType(classIRType), thisPtrReg, curBlock));

        IRType varType = entity.varType.toIRType(gBlock);
        IRRegister varReg = new IRRegister(new IRPointType(varType), "var_reg");

        IRGetelementptrInstruction ins = new IRGetelementptrInstruction(varReg, classIRType, thisReg, curBlock);
        ins.values.add(new IRConstInt(0));
        ins.values.add(new IRConstInt(entity.index));
        curBlock.instructions.add(ins);

        return varReg;
    }

    @Override
    public void visit(RootNode it) {
        //1. add classType
        //2. for every class, we need to solve every construction, functions and variables
        //   for construction and functions, we need to add a parameter: thisPtr
        //   for variables, we need to add to classIRType
        //3. add functions' parameters
        //4. accept varDefNode to solve globalDefine
        //5. accept classes and functions to solve details
        it.defs.forEach(cur -> {
            if (cur instanceof ClassDefNode) {
                String className = ((ClassDefNode) cur).name.name;
                IRStructType classType = new IRStructType(className);
                gBlock.classTypes.add(classType);
                gBlock.types.put(className, classType);
                Type classTypeInScope = gScope.types.get(className);
                classTypeInScope.classType = classType;
            }
        });

        it.defs.forEach(cur -> {
            if (cur instanceof ClassDefNode) {
                String className = ((ClassDefNode) cur).name.name;
                IRStructType classType = (IRStructType) gBlock.types.get(className);
                Type classTypeInScope = gScope.types.get(className);

                if (((ClassDefNode) cur).constructions.size() > 0) {
                    //create a construction irfunction: class.__cons(thisPtr){...}
                    IRFunction construction = new IRFunction(className + ".__cons");
                    construction.returnType = IRGlobalBlock.voidType;
                    IRRegister thisPtr = new IRRegister(new IRPointType(classType), "__this_ptr");
                    construction.addParameter(thisPtr, new IRPointType(classType), "__this_ptr");
                    //add a varEntity in scope to represent thisPtr
                    VarEntity thisEntity = new VarEntity(classTypeInScope, "__this_ptr", new Position(-1, -1));
                    classTypeInScope.classScope.constructionEntity.constructionScope.varEntities.put("__this_ptr", thisEntity);
                    gBlock.addFunction(construction);
                }

                ((ClassDefNode) cur).functions.forEach(func -> {
                    //create a function irfunction: class.functionName(thisPtr){...}
                    IRFunction function = new IRFunction(className + "." + func.name.name);
                    function.returnType = func.type.transType(gScope).toIRType(gBlock);
                    IRRegister.regCnt = 0;
                    IRRegister thisPtr = new IRRegister(new IRPointType(classType), "__this_ptr");
                    function.addParameter(thisPtr, new IRPointType(classType), "__this_ptr");
                    VarEntity thisEntity = new VarEntity(classTypeInScope, "__this_ptr", new Position(-1, -1));
                    gScope.types.get(className).classScope.funcEntities.get(func.name.name).funcScope.varEntities.put("__this_ptr", thisEntity);
                    func.parameters.forEach(parameter -> {
                        IRType parameterType = parameter.type.transType(gScope).toIRType(gBlock);
                        IRRegister parameterReg = new IRRegister(parameterType, parameter.iden.name);
                        function.addParameter(parameterReg, parameterType, parameter.iden.name);
                    });
                    gBlock.addFunction(function);
                    classTypeInScope.classScope.funcEntities.get(func.name.name).irFunction = function;
                });

                ((ClassDefNode) cur).variables.forEach(vars -> {
                    IRType varType = vars.type.transType(gScope).toIRType(gBlock);
                    vars.variables.forEach(var -> {
                        classType.addMember(var.name.name, varType);
                        VarEntity varEntity = classTypeInScope.classScope.varEntities.get(var.name.name);
                        varEntity.classIRType = classType;
                        varEntity.index = classType.memberNumber - 1;
                    });
                });
            }
        });

        it.defs.forEach(cur -> {
            if (cur instanceof FuncDefNode) {
                IRFunction function = new IRFunction(((FuncDefNode) cur).name.name);
                function.returnType = ((FuncDefNode) cur).type.transType(gScope).toIRType(gBlock);
                IRRegister.regCnt = 0;
                ((FuncDefNode) cur).parameters.forEach(parameter -> {
                    IRType parameterType = parameter.type.transType(gScope).toIRType(gBlock);
                    IRRegister parameterReg = new IRRegister(parameterType, parameter.iden.name);
                    function.addParameter(parameterReg, parameterType, parameter.iden.name);
                });
                gBlock.addFunction(function);
                gScope.getFuncEntity(((FuncDefNode) cur).name.name).irFunction = function;
            }
        });

        it.defs.forEach(cur -> {
            if (cur instanceof VarDefNode) cur.accept(this);
        });

        it.defs.forEach(cur -> {
            if (cur instanceof ClassDefNode) cur.accept(this);
        });

        it.defs.forEach(cur -> {
            if (cur instanceof FuncDefNode) cur.accept(this);
        });

    }

    @Override
    public void visit(IfStmtNode it) {
        //need to check condition, so accept condition to add ins
        it.condition.accept(this);
        //add a if block
        int id = labelCnt++;
        IRBlock trueBlock = new IRBlock(curFunction, id + "_if_true");
        IRBlock falseBlock = new IRBlock(curFunction, id + "_if_false");
        IRBlock terminateBlock = new IRBlock(curFunction, id + "_if_terminate");
        if (it.falseStmt != null)
            completeBlock(new IRBrInstruction(it.condition.register, trueBlock, falseBlock, curBlock));
        else completeBlock(new IRBrInstruction(it.condition.register, trueBlock, terminateBlock, curBlock));
        //solve trueStmt
        curBlock = trueBlock;
        curScope = curScope.blockScopes.get(it.scopeId);
        it.trueStmt.accept(this);
        curScope = curScope.parentScope;
        //maybe in trueBlock, it had a retIns
        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(terminateBlock, curBlock);
        completeBlock(null);

        if (it.falseStmt != null) {
            curBlock = falseBlock;
            curScope = curScope.blockScopes.get(it.elseScopeId);
            it.falseStmt.accept(this);
            curScope = curScope.parentScope;
            if (curBlock.exitInstruction == null)
                curBlock.exitInstruction = new IRBrLabelInstruction(terminateBlock, curBlock);
            completeBlock(null);
        }
        curBlock = terminateBlock;
    }

    @Override
    public void visit(BlockStmtNode it) {
        this.curScope = this.curScope.blockScopes.get(it.scopeId);
        it.stmts.forEach(cur -> cur.accept(this));
        this.curScope = this.curScope.parentScope;
    }

    @Override
    public void visit(BreakStmtNode it) {
        LoopScope loopScope = curScope.getLoopScope();
        curBlock.exitInstruction = new IRBrLabelInstruction(loopScope.terminateBlock, curBlock);
    }

    @Override
    public void visit(ContinueStmtNode it) {
        LoopScope loopScope = curScope.getLoopScope();
        IRBlock exitBlock;
        //maybe it had no executionBlock
        if (loopScope.executionBlock != null)
            exitBlock = loopScope.executionBlock;
        else exitBlock = loopScope.conditionBlock;
        curBlock.exitInstruction = new IRBrLabelInstruction(exitBlock, curBlock);
    }

    @Override
    public void visit(ExprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(EmptyStmtNode it) {
        //I like this node
    }

    @Override
    public void visit(ReturnStmtNode it) {
        if (it.expr != null) {
            it.expr.accept(this);
            FuncScope funcScope = (FuncScope) curScope.getFunctionScope();
            curBlock.instructions.add(
                    new IRStoreInstruction(curFunction.returnType, funcScope.returnPtr, it.expr.register, curBlock));
        }
        curBlock.exitInstruction = new IRBrLabelInstruction(curFunction.returnBlock, curBlock);
    }

    @Override
    public void visit(WhileStmtNode it) {
        //add a whileBlock
        int id = labelCnt++;
        IRBlock conditionBlock = new IRBlock(curFunction, id + "_while_condition");
        IRBlock loopBlock = new IRBlock(curFunction, id + "_while_loop");
        IRBlock terminateBlock = new IRBlock(curFunction, id + "_while_terminate");
        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));

        curBlock = conditionBlock;
        it.condition.accept(this);
        IRValue conditionReg = it.condition.register;
        completeBlock(new IRBrInstruction(conditionReg, loopBlock, terminateBlock, curBlock));
        curBlock = loopBlock;
        curScope = curScope.blockScopes.get(it.scopeId);
        //need to get loopScope to record conditionBlock and terminateBlock when meet breakStmt or continueStmt
        LoopScope loopScope = (LoopScope) curScope;
        loopScope.conditionBlock = conditionBlock;
        loopScope.terminateBlock = terminateBlock;
        it.thenStmt.accept(this);

        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(conditionBlock, curBlock);
        completeBlock(null);
        curBlock = terminateBlock;
        curScope = curScope.parentScope;
    }

    @Override
    public void visit(ForStmtNode it) {
        //add a forBlock
        int id = labelCnt++;
        IRBlock conditionBlock = new IRBlock(curFunction, id + "_for_condition");
        IRBlock loopBlock = new IRBlock(curFunction, id + "_for_loop");
        IRBlock terminateBlock = new IRBlock(curFunction, id + "_for_terminate");
        IRBlock executionBlock = new IRBlock(curFunction, id + "_for_execution");
        curScope = curScope.blockScopes.get(it.scopeId);

        LoopScope loopScope = (LoopScope) curScope;
        loopScope.conditionBlock = conditionBlock;
        loopScope.terminateBlock = terminateBlock;
        if (it.execution != null) loopScope.executionBlock = executionBlock;

        if (it.forInitStmt != null) it.forInitStmt.accept(this);
        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));

        curBlock = conditionBlock;
        IRValue conditionReg;
        if (it.condition != null) {
            it.condition.accept(this);
            conditionReg = it.condition.register;
        } else conditionReg = new IRConstBool(true);
        completeBlock(new IRBrInstruction(conditionReg, loopBlock, terminateBlock, curBlock));

        curBlock = loopBlock;
        it.thenStmt.accept(this);
        if (it.execution != null) {
            if (curBlock.exitInstruction == null)
                curBlock.exitInstruction = new IRBrLabelInstruction(executionBlock, curBlock);
            completeBlock(null);
            curBlock = executionBlock;
            it.execution.accept(this);
        }
        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(conditionBlock, curBlock);
        completeBlock(null);
        curBlock = terminateBlock;
        curScope = curScope.parentScope;
    }

    @Override
    public void visit(AssignExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        //find the leftValueNode
        ASTNode leftValueNode = it.getLeftValue();
        IRRegister curReg;
        IRType curType;
        if (leftValueNode instanceof IdentifierPrimaryNode)
            curReg = getIdentifierPtr((IdentifierPrimaryNode) leftValueNode);
        else curReg = ((LeftValueExprNode) leftValueNode).leftValueRegister;
        curType = ((ExprNode) leftValueNode).type.toIRType(gBlock);
        curBlock.instructions.add(new IRStoreInstruction(curType, curReg, it.rhs.register, curBlock));
        //it.register store the value, not the ptr
        it.register = it.rhs.register;
    }

    @Override
    public void visit(BinaryExprNode it) {
        //&& and ||
        if (Objects.equals(it.op, "&&") || Objects.equals(it.op, "||")) {
            boolean isOr = Objects.equals(it.op, "||");
            //phi is used to store the path of logic value
            IRRegister phi = new IRRegister(new IRPointType(IRGlobalBlock.boolType), "phi");
            curBlock.instructions.add(new IRAllocaInstruction(phi, IRGlobalBlock.boolType, curBlock));
            //add a ifBlock
            it.lhs.accept(this);
            int id = labelCnt++;
            IRBlock rhsBlock = new IRBlock(curFunction, id + "_" + (isOr ? "or_" : "and_") + "rhs_block");
            IRBlock terminateBlock = new IRBlock(curFunction, id + "_" + (isOr ? "or_" : "and_") + "terminate_block");
            curBlock.instructions.add(new IRStoreInstruction(IRGlobalBlock.boolType, phi, it.lhs.register, curBlock));

            if (isOr) completeBlock(new IRBrInstruction(it.lhs.register, terminateBlock, rhsBlock, curBlock));
            else completeBlock(new IRBrInstruction(it.lhs.register, rhsBlock, terminateBlock, curBlock));

            curBlock = rhsBlock;
            it.rhs.accept(this);

            IRRegister res = new IRRegister(IRGlobalBlock.boolType, "res");
            curBlock.instructions.add(new IRBinaryInstruction(isOr ? "or" : "and", res, it.lhs.register, it.rhs.register, curBlock));
            curBlock.instructions.add(new IRStoreInstruction(IRGlobalBlock.boolType, phi, res, curBlock));
            completeBlock(new IRBrLabelInstruction(terminateBlock, curBlock));

            curBlock = terminateBlock;
            IRRegister ret = new IRRegister(IRGlobalBlock.boolType, "ret");
            curBlock.instructions.add(new IRLoadInstruction(ret, IRGlobalBlock.boolType, phi, curBlock));
            it.register = ret;

            return;
        }
        //other op
        it.lhs.accept(this);
        IRValue lhsReg = it.lhs.register;
        it.rhs.accept(this);
        IRValue rhsReg = it.rhs.register;

        Type intType = this.gScope.types.get("int");
        Type boolType = this.gScope.types.get("bool");
        Type stringType = this.gScope.types.get("string");
        IRType type = it.type.toIRType(gBlock);

        IRRegister reg = new IRRegister(type, "res");
        String op = null;
        if (type instanceof IRIntType) {
            if (((IRIntType) type).bit == 32) {
                if (Objects.equals(it.op, "+")) op = "add";
                else if (Objects.equals(it.op, "-")) op = "sub nsw";
                else if (Objects.equals(it.op, "*")) op = "mul";
                else if (Objects.equals(it.op, "/")) op = "sdiv";
                else if (Objects.equals(it.op, "%")) op = "srem";
                else if (Objects.equals(it.op, "<<")) op = "shl nsw";
                else if (Objects.equals(it.op, ">>")) op = "ashr";
                else if (Objects.equals(it.op, "&")) op = "and";
                else if (Objects.equals(it.op, "^")) op = "xor";
                else if (Objects.equals(it.op, "|")) op = "or";
                curBlock.instructions.add(new IRBinaryInstruction(op, reg, lhsReg, rhsReg, curBlock));
                it.register = reg;
            } else {
                if (it.lhs.type.isEqual(intType)) {
                    if (Objects.equals(it.op, "<")) op = "slt";
                    else if (Objects.equals(it.op, "<=")) op = "sle";
                    else if (Objects.equals(it.op, ">")) op = "sgt";
                    else if (Objects.equals(it.op, ">=")) op = "sge";
                    else if (Objects.equals(it.op, "==")) op = "eq";
                    else if (Objects.equals(it.op, "!=")) op = "ne";
                    curBlock.instructions.add(new IRIcmpInstruction(op, reg, lhsReg, rhsReg, curBlock));
                    it.register = reg;
                } else if (it.lhs.type.isEqual(stringType)) {
                    //string compare need builtin function
                    IRFunction cmpFunction = null;
                    IRRegister regRet = new IRRegister(IRGlobalBlock.charType, "res_char");
                    if (Objects.equals(it.op, "<")) cmpFunction = gBlock.functions.get("__string_slt");
                    else if (Objects.equals(it.op, "<=")) cmpFunction = gBlock.functions.get("__string_sle");
                    else if (Objects.equals(it.op, ">")) cmpFunction = gBlock.functions.get("__string_sgt");
                    else if (Objects.equals(it.op, ">=")) cmpFunction = gBlock.functions.get("__string_sge");
                    else if (Objects.equals(it.op, "==")) cmpFunction = gBlock.functions.get("__string_eq");
                    else if (Objects.equals(it.op, "!=")) cmpFunction = gBlock.functions.get("__string_ne");
                    IRCallInstruction ins = new IRCallInstruction(regRet, IRGlobalBlock.charType, cmpFunction, curBlock);
                    ins.argumentValues.add(lhsReg);
                    ins.argumentValues.add(rhsReg);
                    curBlock.instructions.add(ins);
                    IRRegister regRes = new IRRegister(IRGlobalBlock.boolType, "res_bool");
                    curBlock.instructions.add(new IRTruncInstruction(regRes, regRet, IRGlobalBlock.boolType, curBlock));
                    it.register = regRes;
                } else {
                    //contain bool and null
                    if (Objects.equals(it.op, "==")) op = "eq";
                    else if (Objects.equals(it.op, "!=")) op = "ne";
                    curBlock.instructions.add(new IRIcmpInstruction(op, reg, lhsReg, rhsReg, curBlock));
                    it.register = reg;
                }
            }
        } else {
            //str1+str2
            IRFunction function = gBlock.functions.get("__merge_string");
            IRCallInstruction ins = new IRCallInstruction(reg, IRGlobalBlock.stringType, function, curBlock);
            ins.argumentValues.add(lhsReg);
            ins.argumentValues.add(rhsReg);
            curBlock.instructions.add(ins);
            it.register = reg;
        }
    }

    @Override
    public void visit(CellExprNode it) {
        it.expr.accept(this);
        IRValue exprReg = it.expr.register;
        IRType type = it.type.toIRType(gBlock);
        IRRegister reg = new IRRegister(type, "res");

        if (((IRIntType) type).bit == 1) {
            IRBinaryInstruction ins = new IRBinaryInstruction("xor", reg, exprReg, new IRConstBool(true), curBlock);
            curBlock.instructions.add(ins);
            it.register = reg;
        } else {
            if (Objects.equals(it.op, "++") || Objects.equals(it.op, "--")) {
                ASTNode leftValueNode = it.expr.getLeftValue();
                IRRegister curReg;
                IRType curType;
                if (leftValueNode instanceof IdentifierPrimaryNode) {
                    curReg = getIdentifierPtr((IdentifierPrimaryNode) leftValueNode);
                    curType = ((IdentifierPrimaryNode) leftValueNode).type.toIRType(gBlock);
                } else {
                    curReg = ((LeftValueExprNode) leftValueNode).leftValueRegister;
                    curType = ((LeftValueExprNode) leftValueNode).type.toIRType(gBlock);
                }
                IRConstInt val = new IRConstInt(Objects.equals(it.op, "++") ? 1 : -1);
                curBlock.instructions.add(new IRBinaryInstruction("add", reg, exprReg, val, curBlock));
                curBlock.instructions.add(new IRStoreInstruction(curType, curReg, reg, curBlock));
            } else {
                String op = null;
                int val = 0;
                if (Objects.equals(it.op, "+")) op = "add";
                else if (Objects.equals(it.op, "-")) op = "sub nsw";
                else if (Objects.equals(it.op, "~")) {
                    op = "xor";
                    val = -1;
                }
                IRBinaryInstruction ins = new IRBinaryInstruction(op, reg, new IRConstInt(val), exprReg, curBlock);
                curBlock.instructions.add(ins);
            }
            it.register = reg;
        }
    }

    @Override
    public void visit(SufCellExprNode it) {
        it.expr.accept(this);
        IRValue exprReg = it.expr.register;
        IRType type = it.type.toIRType(gBlock);
        //first use value, then add or sub 1, so need tmp to store the value now
        IRRegister tmp = new IRRegister(type, "tmp");
        IRRegister reg = new IRRegister(type, "res");

        ASTNode leftValueNode = it.expr.getLeftValue();
        IRRegister curReg;
        IRType curType;
        if (leftValueNode instanceof IdentifierPrimaryNode) {
            curReg = getIdentifierPtr((IdentifierPrimaryNode) leftValueNode);
            curType = ((IdentifierPrimaryNode) leftValueNode).type.toIRType(gBlock);
        } else {
            curReg = ((LeftValueExprNode) leftValueNode).leftValueRegister;
            curType = ((LeftValueExprNode) leftValueNode).type.toIRType(gBlock);
        }
        curBlock.instructions.add(new IRLoadInstruction(tmp, type, curReg, curBlock));
        IRConstInt val = new IRConstInt(Objects.equals(it.op, "++") ? 1 : -1);
        curBlock.instructions.add(new IRBinaryInstruction("add", reg, exprReg, val, curBlock));
        curBlock.instructions.add(new IRStoreInstruction(curType, curReg, reg, curBlock));
        it.register = tmp;
    }

    @Override
    public void visit(ArrayExprNode it) {
        it.id.accept(this);
        IRValue id = it.id.register;
        it.name.accept(this);
        //it must be a ptr
        IRRegister array = (IRRegister) it.name.register;
        IRPointType arrayType = (IRPointType) array.type;
        IRType baseType = arrayType.baseType;
        IRRegister arrayIdPtr = new IRRegister(arrayType, "array_id_ptr");
        IRGetelementptrInstruction ins = new IRGetelementptrInstruction(arrayIdPtr, baseType, array, curBlock);
        //array[id]:array+id so: getEle array, id
        ins.values.add(id);
        curBlock.instructions.add(ins);
        it.leftValueRegister = arrayIdPtr;
        IRRegister reg = new IRRegister(baseType, "res_array");
        curBlock.instructions.add(new IRLoadInstruction(reg, baseType, arrayIdPtr, curBlock));
        it.register = reg;
    }

    @Override
    public void visit(FuncExprNode it) {
        IRFunction irFunction;
        IRCallInstruction callIns;
        //function may in the class
        if (it.function instanceof ObjectExprNode) {
            ExprNode exprNode = ((ObjectExprNode) it.function).expr;
            exprNode.accept(this);
            IRType objType = exprNode.type.toIRType(gBlock);
            //check str.length() and so on
            if (objType.isStringType()) {
                IRType retType = null;
                String funcName = null;
                String name = ((ObjectExprNode) it.function).iden.name;
                IRValue strPtr = exprNode.register;
                if (Objects.equals("length", name)) {
                    retType = IRGlobalBlock.intType;
                    funcName = "__string_length";
                }
                if (Objects.equals("substring", name)) {
                    retType = IRGlobalBlock.stringType;
                    funcName = "__string_substring";
                }
                if (Objects.equals("parseInt", name)) {
                    retType = IRGlobalBlock.intType;
                    funcName = "__string_parseInt";
                }
                if (Objects.equals("ord", name)) {
                    retType = IRGlobalBlock.intType;
                    funcName = "__string_ord";
                }
                irFunction = gBlock.functions.get(funcName);
                callIns = new IRCallInstruction(null, retType, irFunction, curBlock);
                callIns.argumentValues.add(strPtr);
            }
            //arr.size() arr is a ptr and *arr is not a class
            else if (objType instanceof IRPointType && !(((IRPointType) objType).baseType instanceof IRStructType)) {
                IRRegister arrLenPtr = new IRRegister(new IRPointType(IRGlobalBlock.intType), "arr_len_ptr");
                IRRegister arrPtr = (IRRegister) ((ObjectExprNode) it.function).expr.register;
                IRRegister arrToInt = new IRRegister(new IRPointType(IRGlobalBlock.intType), "arr_to_int");
                curBlock.instructions.add(new IRBitcastInstruction(arrToInt, arrPtr, new IRPointType(IRGlobalBlock.intType), curBlock));
                //size is recorded in *(arr-1)
                IRGetelementptrInstruction getPtrIns = new IRGetelementptrInstruction(arrLenPtr, IRGlobalBlock.intType, arrToInt, curBlock);
                getPtrIns.values.add(new IRConstInt(-1));
                curBlock.instructions.add(getPtrIns);
                IRRegister arrLen = new IRRegister(IRGlobalBlock.intType, "arr_len");
                curBlock.instructions.add(new IRLoadInstruction(arrLen, IRGlobalBlock.intType, arrLenPtr, curBlock));
                it.register = arrLen;
                return;
            } else {
                //function in the class
                assert objType instanceof IRPointType;
                IRStructType memType = (IRStructType) ((IRPointType) objType).baseType;
                irFunction = gBlock.functions.get(memType.className + "." + ((ObjectExprNode) it.function).iden.name);
                callIns = new IRCallInstruction(null, it.function.type.toIRType(gBlock), irFunction, curBlock);
                //add thisPtr
                callIns.argumentValues.add(((ObjectExprNode) it.function).expr.register);
            }
        } else {
            irFunction = curScope.getFuncEntity(((IdentifierPrimaryNode) it.function).name).irFunction;
            callIns = new IRCallInstruction(null, it.function.type.toIRType(gBlock), irFunction, curBlock);
            //inside class to class function self!! so add thisPtr
            if (!Objects.equals(((IdentifierPrimaryNode) it.function).name, irFunction.name)) {
                ThisPrimaryNode thisPrimaryNode = new ThisPrimaryNode(new Position(-1, -1));
                thisPrimaryNode.accept(this);
                callIns.argumentValues.add(thisPrimaryNode.register);
            }
        }
        //add arguments
        it.arguments.forEach(cur -> {
            cur.accept(this);
            callIns.argumentValues.add(cur.register);
        });
        if (!(irFunction.returnType instanceof IRVoidType)) {
            IRRegister ret = new IRRegister(irFunction.returnType, "ret");
            callIns.register = ret;
            it.register = ret;
        }
        curBlock.instructions.add(callIns);
    }

    @Override
    public void visit(LambdaExprNode it) {
        //I like this node
    }

    @Override
    public void visit(IntPrimaryNode it) {
        it.register = new IRConstInt(it.value);
    }

    @Override
    public void visit(BoolPrimaryNode it) {
        it.register = new IRConstBool(it.value);
    }

    @Override
    public void visit(NullPrimaryNode it) {
        it.register = new IRConstNull();
    }

    @Override
    public void visit(ThisPrimaryNode it) {
        //to load thisPtr
        Scope methodScope = curScope.getFunctionScope();
        IRRegister thisPtr;
        if (methodScope instanceof FuncScope)
            thisPtr = ((FuncScope) methodScope).thisPtr;
        else thisPtr = ((ConstructionScope) methodScope).thisPtr;
        IRType thisType = ((IRPointType) thisPtr.type).baseType;
        IRRegister thisNewPtr = new IRRegister(thisType, "this_ptr");
        curBlock.instructions.add(new IRLoadInstruction(thisNewPtr, thisType, thisPtr, curBlock));
        it.register = thisNewPtr;
    }

    @Override
    public void visit(StringPrimaryNode it) {
        it.register = new IRConstString(it.value, gBlock.strings.get(it.value).id);
    }

    @Override
    public void visit(IdentifierPrimaryNode it) {
        //only variable
        IRRegister identPtr = getIdentifierPtr(it);
//        if (identPtr == null) {
//            System.out.println("fuck");
//        }
        IRType identType = ((IRPointType) identPtr.type).baseType;
        IRRegister identReg = new IRRegister(identType, "identifier_register");
        curBlock.instructions.add(new IRLoadInstruction(identReg, identType, identPtr, curBlock));
        it.register = identReg;
    }

    @Override
    public void visit(ParameterNode it) {
        //no need to visit it
    }

    @Override
    public void visit(ObjectExprNode it) {
        it.expr.accept(this);
        //expr must class, so it's type must class*
        IRPointType classPtrType = (IRPointType) it.expr.type.toIRType(gBlock);
        IRStructType baseType = (IRStructType) classPtrType.baseType;
        IRRegister reg = (IRRegister) it.expr.register;

        IRType memberType = it.type.toIRType(gBlock);
        IRRegister classMemberPtr = new IRRegister(new IRPointType(memberType), "class_member_ptr");
        int id = baseType.memberIds.get(it.iden.name);
        IRGetelementptrInstruction ins = new IRGetelementptrInstruction(classMemberPtr, baseType, reg, curBlock);
        ins.values.add(new IRConstInt(0));
        ins.values.add(new IRConstInt(id));
        curBlock.instructions.add(ins);

        IRRegister classMember = new IRRegister(memberType, "class_member");
        curBlock.instructions.add(new IRLoadInstruction(classMember, memberType, classMemberPtr, curBlock));
        it.register = classMember;
        it.leftValueRegister = classMemberPtr;
    }

    ArrayList<IRValue> layerReg = new ArrayList<>();

    IRRegister getNewArray(IRType newType, int pos) {
        //malloc 4*len+4 size, 4 to store len
        //arr: len(arr-1), arr, ...
        IRValue lenReg = layerReg.get(pos);
        IRRegister arrSizeReg = new IRRegister(IRGlobalBlock.intType, "arr_size_reg");
        curBlock.instructions.add(new IRBinaryInstruction("mul", arrSizeReg, lenReg, new IRConstInt(4), curBlock));
        IRRegister mallocSize = new IRRegister(IRGlobalBlock.intType, "malloc_size");
        curBlock.instructions.add(new IRBinaryInstruction("add", mallocSize, arrSizeReg, new IRConstInt(4), curBlock));
        IRFunction mallocFunc = gBlock.functions.get("__malloc");
        IRRegister mallocPtr = new IRRegister(IRGlobalBlock.stringType, "malloc_ptr");
        IRCallInstruction callIns = new IRCallInstruction(mallocPtr, IRGlobalBlock.stringType, mallocFunc, curBlock);
        callIns.argumentValues.add(mallocSize);
        curBlock.instructions.add(callIns);

        IRRegister lenPtr = new IRRegister(new IRPointType(IRGlobalBlock.intType), "arr_len_ptr");
        curBlock.instructions.add(new IRBitcastInstruction(lenPtr, mallocPtr, new IRPointType(IRGlobalBlock.intType), curBlock));
        curBlock.instructions.add(new IRStoreInstruction(IRGlobalBlock.intType, lenPtr, lenReg, curBlock));
        //find first ptr: lenPtr+4
        IRRegister arrCharPtr = new IRRegister(new IRPointType(IRGlobalBlock.charType), "arr_char_ptr");
        IRGetelementptrInstruction getPtrIns1 = new IRGetelementptrInstruction(arrCharPtr, IRGlobalBlock.charType, mallocPtr, curBlock);
        getPtrIns1.values.add(new IRConstInt(4));
        curBlock.instructions.add(getPtrIns1);

        IRRegister arrPtr = new IRRegister(new IRPointType(newType), "arr_ptr");
        curBlock.instructions.add(new IRBitcastInstruction(arrPtr, arrCharPtr, new IRPointType(newType), curBlock));
        if (pos == layerReg.size() - 1) return arrPtr;
        //use forBlock to complete new arr
        IRRegister iterPtr = new IRRegister(new IRPointType(new IRPointType(newType)), "iter_ptr");
        curBlock.instructions.add(new IRAllocaInstruction(iterPtr, new IRPointType(newType), curBlock));
        curBlock.instructions.add(new IRStoreInstruction(new IRPointType(newType), iterPtr, arrPtr, curBlock));
        IRRegister endPtr = new IRRegister(new IRPointType(newType), "end_ptr");
        IRGetelementptrInstruction getPtrIns2 = new IRGetelementptrInstruction(endPtr, newType, arrPtr, curBlock);
        getPtrIns2.values.add(lenReg);
        curBlock.instructions.add(getPtrIns2);

        int id = labelCnt++;
        IRBlock conditionBlock = new IRBlock(curFunction, id + "_get_new_array_condition");
        IRBlock loopBlock = new IRBlock(curFunction, id + "_get_new_array_loop");
        IRBlock terminateBlock = new IRBlock(curFunction, id + "_get_new_array_terminate");
        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));

        curBlock = conditionBlock;
        IRRegister iterTmpPtr = new IRRegister(new IRPointType(newType), "iter_tmp_ptr");
        curBlock.instructions.add(new IRLoadInstruction(iterTmpPtr, new IRPointType(newType), iterPtr, curBlock));
        IRRegister cmp = new IRRegister(IRGlobalBlock.boolType, "cmp_iter_end");
        curBlock.instructions.add(new IRIcmpInstruction("ne", cmp, iterTmpPtr, endPtr, curBlock));
        completeBlock(new IRBrInstruction(cmp, loopBlock, terminateBlock, curBlock));
        //store the lower layer ptr
        curBlock = loopBlock;
        IRRegister arrValReg = getNewArray(((IRPointType) newType).baseType, pos + 1);
        curBlock.instructions.add(new IRStoreInstruction(newType, iterTmpPtr, arrValReg, curBlock));

        IRRegister nextIterPtr = new IRRegister(new IRPointType(newType), "next_iter_ptr");
        IRGetelementptrInstruction getPtrIns3 = new IRGetelementptrInstruction(nextIterPtr, newType, iterTmpPtr, curBlock);
        getPtrIns3.values.add(new IRConstInt(1));
        curBlock.instructions.add(getPtrIns3);
        curBlock.instructions.add(new IRStoreInstruction(new IRPointType(newType), iterPtr, nextIterPtr, curBlock));
        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));

        curBlock = terminateBlock;
        return arrPtr;
    }

    @Override
    public void visit(NewTypeExprNode it) {
        //new class()
        if (it.newType.layer == 0) {
            IRPointType classPtrType = (IRPointType) it.newType.transType(gScope).toIRType(gBlock);
            IRStructType classType = (IRStructType) classPtrType.baseType;
            IRFunction mallocFunc = gBlock.functions.get("__malloc");
            IRRegister mallocPtr = new IRRegister(IRGlobalBlock.stringType, "malloc_ptr");
            IRCallInstruction callIns = new IRCallInstruction(mallocPtr, IRGlobalBlock.stringType, mallocFunc, curBlock);
            callIns.argumentValues.add(new IRConstInt(classType.sizeof()));
            curBlock.instructions.add(callIns);

            IRRegister newClassReg = new IRRegister(classPtrType, "new_class_reg");
            curBlock.instructions.add(new IRBitcastInstruction(newClassReg, mallocPtr, classPtrType, curBlock));

            IRFunction construction = gBlock.functions.get(it.newType.name + ".__cons");
            if (construction != null) {
                IRCallInstruction callConsIns = new IRCallInstruction(null, IRGlobalBlock.voidType, construction, curBlock);
                callConsIns.argumentValues.add(newClassReg);
                curBlock.instructions.add(callConsIns);
            }
            it.register = newClassReg;
        } else {
            Type type = new Type(it.newType.transType(gScope));
            type.layer--;
            IRType newType = type.toIRType(gBlock);
            it.exprs.forEach(cur -> {
                cur.accept(this);
                layerReg.add(cur.register);
            });
            IRRegister res = getNewArray(newType, 0);
            layerReg.clear();
            it.register = res;
        }
    }

    @Override
    public void visit(ClassDefNode it) {
        curScope = gScope.types.get(it.name.name).classScope;
        it.constructions.forEach(cur -> cur.accept(this));
        it.functions.forEach(cur -> cur.accept(this));
        curScope = curScope.parentScope;
    }

    @Override
    public void visit(ConstructionDefNode it) {
        curScope = ((ClassScope) curScope).constructionEntity.constructionScope;
        String consName = it.name.name + ".__cons";
        curFunction = gBlock.functions.get(consName);
        curBlock = curFunction.entryBlock;
        //it already had thisPtr
        IRRegister.regCnt = 1;

        IRType type = curFunction.parameterTypes.get(0);
        IRRegister thisPtr = new IRRegister(new IRPointType(type), "this_ptr");
        ((ConstructionScope) curScope).thisPtr = thisPtr;
        VarEntity entity = curScope.getVarEntity(curFunction.parameterNames.get(0));
        entity.ptr = thisPtr;
        curFunction.thisReg = curFunction.parameterRegs.get(0);
        curBlock.instructions.add(new IRAllocaInstruction(thisPtr, type, curBlock));
        curBlock.instructions.add(new IRStoreInstruction(type, thisPtr, curFunction.parameterRegs.get(0), curBlock));
        it.stmts.forEach(cur -> cur.accept(this));

        curFunction.returnBlock.exitInstruction = new IRRetInstruction(IRGlobalBlock.voidType, null, curFunction.returnBlock);
        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(curFunction.returnBlock, curBlock);
        completeBlock(null);
        curBlock = curFunction.returnBlock;
        completeBlock(null);
        curScope = curScope.parentScope;
        curFunction = null;
        curBlock = null;
    }

    @Override
    public void visit(VarDefNode it) {
        it.variables.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(SingleVarDefNode it) {
        IRType varIRType = it.name.type.toIRType(gBlock);
        //globalDefine
        if (curScope instanceof GlobalScope) {
            IRRegister varPtr = new IRRegister(new IRPointType(varIRType), it.name.name);
            varPtr.isGlobal = true;
            gScope.varEntities.get(it.name.name).ptr = varPtr;
            if (it.expr != null) {
                IRFunction initFunction = gBlock.newSingleInitFunction();

                IRBlock mainEntryBlock = gBlock.functions.get("main").entryBlock;
                IRCallInstruction ins = new IRCallInstruction(null, IRGlobalBlock.voidType, initFunction, mainEntryBlock);
                mainEntryBlock.instructions.add(ins);

                curFunction = initFunction;
                curBlock = initFunction.entryBlock;
                IRRegister.regCnt = 0;
                it.expr.accept(this);
                IRValue var = it.expr.register;
                curBlock.instructions.add(new IRStoreInstruction(varIRType, varPtr, var, curBlock));
                completeBlock(new IRBrLabelInstruction(initFunction.returnBlock, curBlock));

                curBlock = curFunction.returnBlock;
                completeBlock(new IRRetInstruction(IRGlobalBlock.voidType, null, curFunction.returnBlock));

                curFunction = null;
                curBlock = null;
            }
            IRGlobalDefine define = new IRGlobalDefine(it.name.name, varIRType);
            gBlock.irGlobalDefines.put(it.name.name, define);
        } else {
            IRRegister varPtr;
            if (varIRType.isClassPtrType()) {
                if (it.expr != null) {
                    varPtr = new IRRegister(new IRPointType(varIRType), "alloca_" + it.name.name);
                    curBlock.instructions.add(new IRAllocaInstruction(varPtr, varIRType, curBlock));
                    it.expr.accept(this);
                    IRValue val = it.expr.register;
                    curBlock.instructions.add(new IRStoreInstruction(varIRType, varPtr, val, curBlock));
                } else {
                    IRRegister mallocPtr = new IRRegister(IRGlobalBlock.stringType, "class_malloc_ptr");
                    IRCallInstruction callIns = new IRCallInstruction(mallocPtr, IRGlobalBlock.stringType, gBlock.functions.get("__malloc"), curBlock);
                    IRStructType classType = (IRStructType) ((IRPointType) varIRType).baseType;
                    callIns.argumentValues.add(new IRConstInt(classType.sizeof()));
                    curBlock.instructions.add(callIns);

                    IRRegister classPtr = new IRRegister(varIRType, "class_ptr");
                    curBlock.instructions.add(new IRBitcastInstruction(classPtr, mallocPtr, varIRType, curBlock));

                    varPtr = new IRRegister(new IRPointType(varIRType), "alloca_" + it.name.name);
                    curBlock.instructions.add(new IRAllocaInstruction(varPtr, varIRType, curBlock));
                    curBlock.instructions.add(new IRStoreInstruction(varIRType, varPtr, classPtr, curBlock));
                }
            } else {
                varPtr = new IRRegister(new IRPointType(varIRType), "alloca_" + it.name.name);
                curBlock.instructions.add(new IRAllocaInstruction(varPtr, varIRType, curBlock));
                IRValue value;
                if (it.expr != null) {
                    it.expr.accept(this);
                    value = it.expr.register;
                } else value = varIRType.defaultValue();
                curBlock.instructions.add(new IRStoreInstruction(varIRType, varPtr, value, curBlock));
            }
            curScope.varEntities.get(it.name.name).ptr = varPtr;
        }
    }

    @Override
    public void visit(FuncDefNode it) {
        String funcName;
        ClassScope classScope = curScope.getClassScope();
        if (classScope == null) funcName = it.name.name;
        else funcName = classScope.name + "." + it.name.name;

        curFunction = gBlock.functions.get(funcName);
        curBlock = curFunction.entryBlock;
        curScope = curScope.funcEntities.get(it.name.name).funcScope;
        IRRegister.regCnt = curFunction.parameterTypes.size();

        for (int i = 0; i < curFunction.parameterTypes.size(); i++) {
            IRType parameterType = curFunction.parameterTypes.get(i);
            IRRegister parameterPtr = new IRRegister(new IRPointType(parameterType), "parameter_ptr");
            VarEntity varEntity = curScope.getVarEntity(curFunction.parameterNames.get(i));
            varEntity.ptr = parameterPtr;
            curBlock.instructions.add(new IRAllocaInstruction(parameterPtr, parameterType, curBlock));
            if (classScope != null && i == 0)
                ((FuncScope) curScope).thisPtr = parameterPtr;
        }

        for (int i = 0; i < curFunction.parameterTypes.size(); i++) {
            IRType parameterType = curFunction.parameterTypes.get(i);
            VarEntity varEntity = curScope.getVarEntity(curFunction.parameterNames.get(i));
            IRRegister parameterReg = curFunction.parameterRegs.get(i);
            curBlock.instructions.add(new IRStoreInstruction(parameterType, varEntity.ptr, parameterReg, curBlock));
            if (classScope != null && i == 0)
                curFunction.thisReg = parameterReg;
        }

        IRType returnType = it.type.transType(gScope).toIRType(gBlock);
        if (returnType instanceof IRVoidType) {
            it.stmts.forEach(cur -> cur.accept(this));
            curFunction.returnBlock.exitInstruction = new IRRetInstruction(IRGlobalBlock.voidType, null, curFunction.returnBlock);
        } else {
            IRRegister returnPtr = new IRRegister(new IRPointType(returnType), "return_ptr");
            curBlock.instructions.add(new IRAllocaInstruction(returnPtr, returnType, curBlock));
            ((FuncScope) curScope).returnPtr = returnPtr;
            if (Objects.equals(funcName, "main"))
                curBlock.instructions.add(new IRStoreInstruction(returnType, returnPtr, new IRConstInt(0), curBlock));
            it.stmts.forEach(cur -> cur.accept(this));
            IRRegister returnVal = new IRRegister(returnType, "return_val");
            curFunction.returnBlock.instructions.add(new IRLoadInstruction(returnVal, returnType, returnPtr, curFunction.returnBlock));
            curFunction.returnBlock.exitInstruction = new IRRetInstruction(returnType, returnVal, curFunction.returnBlock);
        }

        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(curFunction.returnBlock, curBlock);
        completeBlock(null);
        curBlock = curFunction.returnBlock;
        completeBlock(null);
        curScope = curScope.parentScope;
        curFunction = null;
        curBlock = null;
    }

    @Override
    public void visit(TypeNode it) {
        //I like this node
    }
}

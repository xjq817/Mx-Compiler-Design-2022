package Frontend;

import IR.IRBlock;
import IR.IRFunction;
import IR.IRGlobalBlock;
import IR.IRGlobalDefine;
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
        if (exitInstruction != null)
            curBlock.exitInstruction = exitInstruction;
        curBlock.instructions.add(curBlock.exitInstruction);
        curFunction.blocks.add(curBlock);
    }

    IRRegister getIdentifierPtr(IdentifierPrimaryNode it) {
        VarEntity entity = curScope.varEntities.get(it.name);
        if (entity.classIRType == null) return entity.register;
        IRStructType classIRType = entity.classIRType;
        IRType varType = entity.varType.toIRType(gBlock);
        IRRegister varPtr = new IRRegister(new IRPointType(varType), "var_ptr");
        Scope methodScope = curScope.getFunctionScope();
        IRRegister thisPtrReg;
        if (methodScope instanceof FuncScope)
            thisPtrReg = ((FuncScope) methodScope).thisPtrReg;
        else thisPtrReg = ((ConstructionScope) methodScope).thisPtrReg;
        IRRegister thisNewPtrReg = new IRRegister(new IRPointType(classIRType), "this_ptr");
        curBlock.instructions.add(new IRLoadInstruction(thisNewPtrReg, new IRPointType(classIRType), thisPtrReg, curBlock));
        IRGetelementptrInstruction ins = new IRGetelementptrInstruction(varPtr, classIRType, thisNewPtrReg, curBlock);
        ins.values.add(new IRConstInt(0));
        ins.values.add(new IRConstInt(entity.index));
        curBlock.instructions.add(ins);
        return varPtr;
    }

    @Override
    public void visit(RootNode it) {
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
                ((ClassDefNode) cur).constructions.forEach(cons -> {
                    IRFunction construction = new IRFunction(className + ".__cons");
                    construction.returnType = IRGlobalBlock.voidType;
                    IRRegister reg = new IRRegister(new IRPointType(classType), "__this_ptr");
                    construction.addParameter(reg, new IRPointType(classType), "__this_ptr");
                    VarEntity thisPtr = new VarEntity(classTypeInScope, "__this_ptr", new Position(-1, -1));
                    classTypeInScope.classScope.constructionEntity.constructionScope.varEntities.put("__this_ptr", thisPtr);
                    gBlock.addFunction(construction);
                });
                ((ClassDefNode) cur).functions.forEach(func -> {
//                    FuncEntity funcEntity = classTypeInScope.classScope.funcEntities.get(func.name.name);
//                    funcEntity.funcScope.parameters.forEach(varEntity -> );
                    IRFunction function = new IRFunction(className + "." + func.name.name);
                    function.returnType = func.type.transType(gScope).toIRType(gBlock);
                    IRRegister.regCnt = 0;
                    IRRegister reg = new IRRegister(new IRPointType(classType), "__this_ptr");
                    function.addParameter(reg, new IRPointType(classType), "__this_ptr");
                    VarEntity thisPtr = new VarEntity(classTypeInScope, "__this_ptr", new Position(-1, -1));
                    gScope.types.get(className).classScope.funcEntities.get(func.name.name).funcScope.varEntities.put("__this_ptr", thisPtr);
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
                        //set visited?
                    });
                });
            }
        });

        it.defs.forEach(cur -> {
            if (cur instanceof FuncDefNode) {
//                FuncEntity
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

        curFunction = gBlock.initFunction;
        curBlock = curFunction.entryBLock;
        gBlock.singleInitFunctions.forEach(cur ->
                curBlock.instructions.add(new IRCallInstruction(null, IRGlobalBlock.voidType, cur, curBlock)));
        completeBlock(new IRBrLabelInstruction(curFunction.returnBlock, curBlock));
        curBlock = curFunction.returnBlock;
        completeBlock(new IRRetInstruction(IRGlobalBlock.voidType, null, curBlock));
        curFunction = null;
        curBlock = null;

        it.defs.forEach(cur -> {
            if (cur instanceof ClassDefNode) cur.accept(this);
        });
        it.defs.forEach(cur -> {
            if (cur instanceof FuncDefNode) cur.accept(this);
        });
    }

    @Override
    public void visit(IfStmtNode it) {
        it.condition.accept(this);
        int id = labelCnt++;
        IRBlock trueBlock = new IRBlock(curFunction, id + ": if_true");
        IRBlock falseBlock = new IRBlock(curFunction, id + ": if_false");
        IRBlock terminateBlock = new IRBlock(curFunction, id + ": if_terminate");
        IRBlock elseBlock;
        if (it.falseStmt != null) elseBlock = falseBlock;
        else elseBlock = terminateBlock;
        completeBlock(new IRBrInstruction(it.condition.register, trueBlock, elseBlock, curBlock));
        curBlock = trueBlock;
        curScope = curScope.blockScopes.get(it.scopeId);
        it.trueStmt.accept(this);
        curScope = curScope.parentScope;
        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(terminateBlock, curBlock);
        completeBlock(null);
        if (it.falseStmt != null) {
            curBlock = falseBlock;
            curScope = curScope.blockScopes.get(it.elseScopeId);
            it.trueStmt.accept(this);
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

    }

    @Override
    public void visit(ReturnStmtNode it) {
        if (it.expr != null) {
            it.expr.accept(this);
            FuncScope funcScope = (FuncScope) curScope.getFunctionScope();
            curBlock.instructions.add(
                    new IRStoreInstruction(curFunction.returnType, funcScope.returnReg, it.expr.register, curBlock));
        }
        curBlock.exitInstruction = new IRBrLabelInstruction(curFunction.returnBlock, curBlock);
    }

    @Override
    public void visit(WhileStmtNode it) {
        int id = labelCnt++;
        IRBlock conditionBlock = new IRBlock(curFunction, id + ": while_condition");
        IRBlock loopBlock = new IRBlock(curFunction, id + ": while_loop");
        IRBlock terminateBlock = new IRBlock(curFunction, id + ": while_terminate");
        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));
        curBlock = conditionBlock;
        LoopScope loopScope = (LoopScope) curScope;
        loopScope.conditionBlock = conditionBlock;
        loopScope.terminateBlock = terminateBlock;
        it.condition.accept(this);
        IRValue conditionReg = it.condition.register;
        completeBlock(new IRBrInstruction(conditionReg, loopBlock, terminateBlock, curBlock));
        curBlock = loopBlock;
        curScope = curScope.blockScopes.get(it.scopeId);
        it.thenStmt.accept(this);
        curScope = curScope.parentScope;
        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(conditionBlock, curBlock);
        completeBlock(null);
        curBlock = terminateBlock;
    }

    @Override
    public void visit(ForStmtNode it) {
        int id = labelCnt++;
        IRBlock conditionBlock = new IRBlock(curFunction, id + ": for_condition");
        IRBlock loopBlock = new IRBlock(curFunction, id + ": for_loop");
        IRBlock terminateBlock = new IRBlock(curFunction, id + ": for_terminate");
        curScope = curScope.blockScopes.get(it.scopeId);
        LoopScope loopScope = (LoopScope) curScope;
        loopScope.conditionBlock = conditionBlock;
        loopScope.terminateBlock = terminateBlock;
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
            IRBlock executionBlock = new IRBlock(curFunction, id + ": for_execution");
            loopScope.executionBlock = executionBlock;
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
        IRValue lhsReg = it.lhs.register;
        it.rhs.accept(this);
        IRValue rhsReg = it.rhs.register;
        ASTNode leftValueNode = it.getLeftValue();
        IRRegister curReg;
        IRType curType;
        if (leftValueNode instanceof IdentifierPrimaryNode) {
            curReg = getIdentifierPtr((IdentifierPrimaryNode) leftValueNode);
            curType = ((IdentifierPrimaryNode) leftValueNode).type.toIRType(gBlock);
        } else {
            curReg = ((LeftValueExprNode) leftValueNode).leftValueRegister;
            curType = ((LeftValueExprNode) leftValueNode).type.toIRType(gBlock);
        }
        curBlock.instructions.add(new IRStoreInstruction(curType, it.rhs.register, curReg, curBlock));
        it.register = it.rhs.register;
    }

    @Override
    public void visit(BinaryExprNode it) {
        if (Objects.equals(it.op, "&&") || Objects.equals(it.op, "||")) {
            IRRegister phi = new IRRegister(new IRPointType(IRGlobalBlock.boolType), "phi");
            curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(phi, IRGlobalBlock.boolType, curFunction.entryBLock));

            it.lhs.accept(this);
            IRBlock lhsBlock = curBlock;
            int id = labelCnt++;
            IRBlock rhsBlock = new IRBlock(curFunction, id + ": " + it.op + "rhs_block");
            IRBlock terminateBlock = new IRBlock(curFunction, id + ": " + it.op + "terminate_block");
            boolean isOr = Objects.equals(it.op, "||");

            if (isOr) completeBlock(new IRBrInstruction(it.lhs.register, terminateBlock, rhsBlock, curBlock));
            else completeBlock(new IRBrInstruction(it.lhs.register, rhsBlock, terminateBlock, curBlock));

            curBlock = rhsBlock;
            it.rhs.accept(this);

            IRRegister res = new IRRegister(IRGlobalBlock.boolType, "res");
            curBlock.instructions.add(new IRBinaryInstruction(isOr ? "or" : "and", res, it.lhs.register, it.rhs.register, curBlock));
            curBlock.instructions.add(new IRStoreInstruction(IRGlobalBlock.boolType, res, phi, curBlock));
            completeBlock(new IRBrLabelInstruction(terminateBlock, curBlock));

            curBlock = terminateBlock;
            IRRegister ret = new IRRegister(IRGlobalBlock.boolType, "ret");
            curBlock.instructions.add(new IRLoadInstruction(ret, IRGlobalBlock.boolType, phi, curBlock));
            it.register = ret;

            return;
        }
        it.lhs.accept(this);
        IRValue lhsReg = it.lhs.register;
        it.rhs.accept(this);
        IRValue rhsReg = it.rhs.register;
        Type intType = this.gScope.types.get("int");
        Type boolType = this.gScope.types.get("bool");
        IRType type = it.type.toIRType(gBlock);
        if (type instanceof IRIntType) {
            if (((IRIntType) type).bit == 32) {
                IRRegister reg = new IRRegister(type, "res_int");
                String op = null;
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
                    IRRegister reg = new IRRegister(type, "res_bool");
                    String op = null;
                    if (Objects.equals(it.op, "<")) op = "slt";
                    else if (Objects.equals(it.op, "<=")) op = "sle";
                    else if (Objects.equals(it.op, ">")) op = "sgt";
                    else if (Objects.equals(it.op, ">=")) op = "sge";
                    else if (Objects.equals(it.op, "==")) op = "eq";
                    else if (Objects.equals(it.op, "!=")) op = "ne";
                    curBlock.instructions.add(new IRIcmpInstruction(op, reg, lhsReg, rhsReg, curBlock));
                    it.register = reg;
                } else if (it.lhs.type.isEqual(boolType)) {
                    IRRegister reg = new IRRegister(type, "res_bool");
                    String op = null;
                    if (Objects.equals(it.op, "==")) op = "eq";
                    else if (Objects.equals(it.op, "!=")) op = "ne";
                    curBlock.instructions.add(new IRIcmpInstruction(op, reg, lhsReg, rhsReg, curBlock));
                    it.register = reg;
                } else {
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
                }
            }
        } else {
            IRRegister reg = new IRRegister(type, "res_string");
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
        if (((IRIntType) type).bit == 1) {
            IRRegister reg = new IRRegister(type, "res_bool");
            IRBinaryInstruction ins = new IRBinaryInstruction("xor", reg, exprReg, new IRConstBool(true), curBlock);
            curBlock.instructions.add(ins);
            it.register = reg;
        } else {
            if (Objects.equals(it.op, "++") || Objects.equals(it.op, "--")) {
                ASTNode leftValueNode = it.getLeftValue();
                IRRegister curReg;
                IRType curType;
                IRRegister res = new IRRegister(type, "res");
                if (leftValueNode instanceof IdentifierPrimaryNode) {
                    curReg = getIdentifierPtr((IdentifierPrimaryNode) leftValueNode);
                    curType = ((IdentifierPrimaryNode) leftValueNode).type.toIRType(gBlock);
                } else {
                    curReg = ((LeftValueExprNode) leftValueNode).leftValueRegister;
                    curType = ((LeftValueExprNode) leftValueNode).type.toIRType(gBlock);
                }
                IRConstInt val = new IRConstInt(Objects.equals(it.op, "++") ? 1 : -1);
                curBlock.instructions.add(new IRBinaryInstruction("add", res, exprReg, val, curBlock));
                curBlock.instructions.add(new IRStoreInstruction(curType, res, curReg, curBlock));
                it.register = res;
            } else {
                String op = null;
                int val = 0;
                if (Objects.equals(it.op, "+")) op = "add";
                else if (Objects.equals(it.op, "-")) op = "sub nsw";
                else if (Objects.equals(it.op, "~")) {
                    op = "xor";
                    val = -1;
                }
                IRRegister reg = new IRRegister(type, "res_cell_int");
                IRBinaryInstruction ins = new IRBinaryInstruction(op, reg, exprReg, new IRConstInt(val), curBlock);
                curBlock.instructions.add(ins);
                it.register = reg;
            }
        }
    }

    @Override
    public void visit(SufCellExprNode it) {
        it.expr.accept(this);
        IRValue exprReg = it.expr.register;
        IRType type = it.type.toIRType(gBlock);
        IRRegister tmp = new IRRegister(type, "tmp");
        IRRegister res = new IRRegister(type, "res");
        ASTNode leftValueNode = it.getLeftValue();
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
        curBlock.instructions.add(new IRBinaryInstruction("add", res, exprReg, val, curBlock));
        curBlock.instructions.add(new IRStoreInstruction(curType, res, curReg, curBlock));
        it.register = tmp;
    }

    @Override
    public void visit(ArrayExprNode it) {
        it.id.accept(this);
        IRValue id = it.id.register;
        it.name.accept(this);
        IRRegister array = (IRRegister) it.name.register;
        IRPointType arrayType = (IRPointType) array.type;
        IRType baseType = arrayType.baseType;
        IRRegister arrayIdPtr = new IRRegister(arrayType, "array_id_ptr");
        IRGetelementptrInstruction ins = new IRGetelementptrInstruction(arrayIdPtr, baseType, array, curBlock);
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
        if (it.function instanceof ObjectExprNode) {
            ExprNode exprNode = ((ObjectExprNode) it.function).expr;
            exprNode.accept(this);
            IRType objType = exprNode.type.toIRType(gBlock);
            if (objType.isStringType()) {
                IRType retType = null;
                String funcName = null;
                IRValue strPtr = exprNode.register;
                if (Objects.equals("length", ((ObjectExprNode) it.function).iden.name)) {
                    retType = IRGlobalBlock.intType;
                    funcName = "__string_length";
                }
                if (Objects.equals("substring", ((ObjectExprNode) it.function).iden.name)) {
                    retType = IRGlobalBlock.stringType;
                    funcName = "__string_substring";
                }
                if (Objects.equals("parseInt", ((ObjectExprNode) it.function).iden.name)) {
                    retType = IRGlobalBlock.intType;
                    funcName = "__string_parseInt";
                }
                if (Objects.equals("ord", ((ObjectExprNode) it.function).iden.name)) {
                    retType = IRGlobalBlock.intType;
                    funcName = "__string_ord";
                }
                irFunction = gBlock.functions.get(funcName);
                callIns = new IRCallInstruction(null, retType, irFunction, curBlock);
                callIns.argumentValues.add(strPtr);
            } else if (objType instanceof IRPointType && !(((IRPointType) objType).baseType instanceof IRStructType)) {
                IRRegister arrLenPtr = new IRRegister(new IRPointType(IRGlobalBlock.intType), "arr_len_ptr");
                IRRegister arrPtr = (IRRegister) ((ObjectExprNode) it.function).expr.register;
                IRRegister arrToInt = new IRRegister(new IRPointType(IRGlobalBlock.intType), "arr_to_int");
                curBlock.instructions.add(new IRBitcastInstruction(arrToInt, arrPtr, new IRPointType(IRGlobalBlock.intType), curBlock));
                IRGetelementptrInstruction getPtrIns = new IRGetelementptrInstruction(arrLenPtr, IRGlobalBlock.intType, arrToInt, curBlock);
                getPtrIns.values.add(new IRConstInt(-1));
                curBlock.instructions.add(getPtrIns);
                IRRegister arrLen = new IRRegister(IRGlobalBlock.intType, "arr_len");
                curBlock.instructions.add(new IRLoadInstruction(arrLen, IRGlobalBlock.intType, arrLenPtr, curBlock));
                it.register = arrLen;
                return;
            } else {
                assert objType instanceof IRPointType;
                IRStructType memType = (IRStructType) ((IRPointType) objType).baseType;
                irFunction = gBlock.functions.get(memType.className + "." + ((ObjectExprNode) it.function).iden.name);
                callIns = new IRCallInstruction(null, it.function.type.toIRType(gBlock), irFunction, curBlock);
                callIns.argumentValues.add(((ObjectExprNode) it.function).expr.register);
            }
        } else {
            irFunction = curScope.getFuncEntity(((IdentifierPrimaryNode) it.function).name).irFunction;
            callIns = new IRCallInstruction(null, it.function.type.toIRType(gBlock), irFunction, curBlock);
            if (!Objects.equals(((IdentifierPrimaryNode) it.function).name, irFunction.name)) {
                //inside class to class function self!!
                ThisPrimaryNode thisPrimaryNode = new ThisPrimaryNode(new Position(-1, -1));
                thisPrimaryNode.accept(this);
                callIns.argumentValues.add(thisPrimaryNode.register);
            }
        }
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
        IRRegister thisPtr = curFunction.thisPtr;
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
        //only var
        IRRegister identPtr = getIdentifierPtr(it);
        IRType identType = ((IRPointType) identPtr.type).baseType;
        IRRegister identReg = new IRRegister(identType, "identifier_register");
        curBlock.instructions.add(new IRLoadInstruction(identReg, identType, identPtr, curBlock));
        it.register = identReg;
    }

    @Override
    public void visit(ParameterNode it) {

    }

    @Override
    public void visit(ObjectExprNode it) {
        it.expr.accept(this);
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
        IRRegister obj = new IRRegister(memberType, "class_member");
        curBlock.instructions.add(new IRLoadInstruction(obj, memberType, classMemberPtr, curBlock));
        it.register = obj;
        it.leftValueRegister = classMemberPtr;
    }

    ArrayList<IRValue> layerReg = new ArrayList<>();

    IRRegister getNewArray(IRType newType, int pos) {
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

        IRRegister arrLenPtr = new IRRegister(new IRPointType(IRGlobalBlock.intType), "arr_len_ptr");
        curBlock.instructions.add(new IRBitcastInstruction(arrLenPtr, mallocPtr, new IRPointType(IRGlobalBlock.intType), curBlock));
        curBlock.instructions.add(new IRStoreInstruction(IRGlobalBlock.intType, lenReg, arrLenPtr, curBlock));

        IRRegister arrCharPtr = new IRRegister(new IRPointType(IRGlobalBlock.charType), "arr_char_ptr");
        IRGetelementptrInstruction getPtrIns1 = new IRGetelementptrInstruction(arrCharPtr, IRGlobalBlock.charType, mallocPtr, curBlock);
        getPtrIns1.values.add(new IRConstInt(4));
        curBlock.instructions.add(getPtrIns1);
        IRRegister arrPtr = new IRRegister(new IRPointType(newType), "arr_ptr");
        curBlock.instructions.add(new IRBitcastInstruction(arrPtr, arrCharPtr, new IRPointType(newType), curBlock));
        if (pos == layerReg.size() - 1) return arrPtr;

        int id = labelCnt++;
        IRRegister iterPtr = new IRRegister(new IRPointType(newType), "iter_ptr");
        curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(iterPtr, new IRPointType(newType), curFunction.entryBLock));
        curBlock.instructions.add(new IRStoreInstruction(new IRPointType(newType), arrPtr, iterPtr, curBlock));
        IRRegister endPtr = new IRRegister(new IRPointType(newType), "end_ptr");
        IRGetelementptrInstruction getPtrIns2 = new IRGetelementptrInstruction(endPtr, newType, arrPtr, curBlock);
        getPtrIns2.values.add(lenReg);
        curBlock.instructions.add(getPtrIns2);

        IRBlock conditionBlock = new IRBlock(curFunction, id + ": get_new_array_condition");
        IRBlock loopBlock = new IRBlock(curFunction, id + ": get_new_array_loop");
        IRBlock terminateBlock = new IRBlock(curFunction, id + ": get_new_array_terminate");

        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));
        curBlock = conditionBlock;

        IRRegister iterTmpPtr = new IRRegister(new IRPointType(newType), "iter_tmp_ptr");
        curBlock.instructions.add(new IRLoadInstruction(iterTmpPtr, new IRPointType(newType), iterPtr, curBlock));
        IRRegister cmp = new IRRegister(IRGlobalBlock.boolType, "cmp_iter_end");
        curBlock.instructions.add(new IRIcmpInstruction("ne", cmp, iterTmpPtr, endPtr, curBlock));
        completeBlock(new IRBrInstruction(cmp, loopBlock, terminateBlock, curBlock));
        curBlock = loopBlock;

        IRRegister arrValReg = getNewArray(((IRPointType) newType).baseType, pos + 1);
        curBlock.instructions.add(new IRStoreInstruction(newType, arrValReg, iterTmpPtr, curBlock));

        IRRegister nextIterPtr = new IRRegister(new IRPointType(newType), "next_iter_ptr");
        IRGetelementptrInstruction getPtrIns3 = new IRGetelementptrInstruction(nextIterPtr, newType, iterTmpPtr, curBlock);
        getPtrIns3.values.add(new IRConstInt(1));
        curBlock.instructions.add(getPtrIns3);
        curBlock.instructions.add(new IRStoreInstruction(new IRPointType(newType), nextIterPtr, iterPtr, curBlock));
        completeBlock(new IRBrLabelInstruction(conditionBlock, curBlock));
        curBlock = terminateBlock;

        return arrPtr;
    }

    @Override
    public void visit(NewTypeExprNode it) {
        if (it.newType.layer == 0) {
            IRPointType classPtrType = (IRPointType) it.newType.transType(gScope).toIRType(gBlock);
            IRStructType classType = (IRStructType) classPtrType.baseType;
            IRFunction mallocFunc = gBlock.functions.get("__malloc");
            IRRegister mallocPtr = new IRRegister(IRGlobalBlock.stringType, "malloc_ptr");
            IRCallInstruction callIns = new IRCallInstruction(mallocPtr, IRGlobalBlock.stringType, mallocFunc, curBlock);
            callIns.argumentValues.add(new IRConstInt(classType.sizeof()));
            IRRegister newClassReg = new IRRegister(classPtrType, "new_class_reg");
            curBlock.instructions.add(new IRBitcastInstruction(newClassReg, mallocPtr, classPtrType, curBlock));
            IRFunction construction = gBlock.functions.get(it.newType.name + ".__cons");
            IRCallInstruction callConsIns = new IRCallInstruction(null, IRGlobalBlock.voidType, construction, curBlock);
            callConsIns.argumentValues.add(newClassReg);
            curBlock.instructions.add(callConsIns);
            it.register = newClassReg;
        } else {
            IRType newType = it.newType.transType(gScope).toIRType(gBlock);
            for (int i = 0; i < it.newType.layer; i++) newType = new IRPointType(newType);
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
        curBlock = curFunction.entryBLock;
        IRRegister.regCnt = 1;
        IRType parameterType = curFunction.parameterTypes.get(0);
        IRRegister parameterReg = new IRRegister(new IRPointType(parameterType), "parameter");
        ((ConstructionScope) curScope).thisPtrReg = parameterReg;
        VarEntity parameterEntity = curScope.getVarEntity(curFunction.parameterNames.get(0));
        parameterEntity.register = parameterReg;
        curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(parameterReg, parameterType, curFunction.entryBLock));
        curBlock.instructions.add(new IRStoreInstruction(parameterType, curFunction.parameterRegs.get(0), parameterReg, curBlock));
        it.stmts.forEach(cur -> cur.accept(this));
        curFunction.returnBlock.exitInstruction = new IRRetInstruction(IRGlobalBlock.voidType, null, curFunction.returnBlock);
        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(curFunction.returnBlock, curBlock);
        curScope = curScope.parentScope;
        completeBlock(null);
        curFunction.returnBlock.instructions.add(curFunction.returnBlock.exitInstruction);
        curFunction.blocks.add(curFunction.returnBlock);
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
        //set visited
        if (curScope instanceof GlobalScope) {
            IRRegister varReg = new IRRegister(new IRPointType(varIRType), it.name.name);
            IRGlobalDefine define = new IRGlobalDefine(it.name.name, varIRType);
            gScope.varEntities.get(it.name.name).register = varReg;
            if (it.expr != null) {
                IRFunction initFunction = gBlock.newSingleInitFunction();
                curFunction = initFunction;
                curBlock = initFunction.entryBLock;
                IRRegister.regCnt = 0;
                IRRegister.allocaCnt = 0;
                it.expr.accept(this);
                IRValue irValue = it.expr.register;
                curBlock.instructions.add(new IRStoreInstruction(varIRType, irValue, varReg, curBlock));
                completeBlock(new IRBrLabelInstruction(initFunction.returnBlock, curBlock));
                curFunction.returnBlock.exitInstruction =
                        new IRRetInstruction(IRGlobalBlock.voidType, null, curFunction.returnBlock);
                curFunction.returnBlock.instructions.add(curFunction.returnBlock.exitInstruction);
                curFunction.blocks.add(curFunction.returnBlock);
                curFunction = null;
                curBlock = null;
            }
            gBlock.irGlobalDefines.put(it.name.name, define);
        } else {
            IRRegister varReg;
            if (varIRType.isClassPtrType()) {
                if (it.expr != null) {
                    varReg = new IRRegister(new IRPointType(varIRType), "alloca_" + it.name.name);
                    curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(varReg, varIRType, curFunction.entryBLock));
                    it.expr.accept(this);
                    IRValue initVal = it.expr.register;
                    curBlock.instructions.add(new IRStoreInstruction(varIRType, initVal, varReg, curBlock));
                } else {
                    IRRegister classPtr = new IRRegister(IRGlobalBlock.stringType, "class_malloc_ptr");
                    IRCallInstruction callIns = new IRCallInstruction(classPtr, IRGlobalBlock.stringType, gBlock.functions.get("__malloc"), curBlock);
                    IRStructType classType = (IRStructType) ((IRPointType) varIRType).baseType;
                    callIns.argumentValues.add(new IRConstInt(classType.sizeof()));
                    curBlock.instructions.add(callIns);
                    IRRegister classReg = new IRRegister(varIRType, "class_reg");
                    curBlock.instructions.add(new IRBitcastInstruction(classReg, classPtr, varIRType, curBlock));
                    varReg = new IRRegister(new IRPointType(varIRType), "alloca_" + it.name.name);
                    curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(varReg, varIRType, curFunction.entryBLock));
                    curBlock.instructions.add(new IRStoreInstruction(varIRType, classReg, varReg, curBlock));
                }
            } else {
                varReg = new IRRegister(new IRPointType(varIRType), "alloca_" + it.name.name);
                curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(varReg, varIRType, curFunction.entryBLock));
                IRValue initVal;
                if (it.expr != null) {
                    it.expr.accept(this);
                    initVal = it.expr.register;
                } else initVal = varIRType.defaultValue();
                curBlock.instructions.add(new IRStoreInstruction(varIRType, initVal, varReg, curBlock));
            }
            curScope.varEntities.get(it.name.name).register = varReg;
        }
    }

    @Override
    public void visit(FuncDefNode it) {
        String funcName;
        ClassScope classScope = curScope.getClassScope();
        if (classScope == null) funcName = it.name.name;
        else funcName = classScope.name + "." + it.name.name;

        curFunction = gBlock.functions.get(funcName);
        curBlock = curFunction.entryBLock;
        curScope = curScope.funcEntities.get(it.name.name).funcScope;
        IRRegister.regCnt = it.parameters.size();

        for (int i = 0; i < it.parameters.size(); i++) {
            IRType parameterType = curFunction.parameterTypes.get(i);
            IRRegister parameterReg = new IRRegister(new IRPointType(parameterType), "parameter_reg");
            VarEntity varEntity = curScope.getVarEntity(curFunction.parameterNames.get(i));
            varEntity.register = parameterReg;
            if (classScope != null && i == 0)
                ((FuncScope) curScope).thisPtrReg = parameterReg;
        }

        for (int i = 0; i < it.parameters.size(); i++) {
            IRType parameterType = curFunction.parameterTypes.get(i);
            VarEntity varEntity = curScope.getVarEntity(curFunction.parameterNames.get(i));
            IRRegister funcParameterReg = curFunction.parameterRegs.get(i);
            curBlock.instructions.add(new IRStoreInstruction(parameterType, varEntity.register, funcParameterReg, curBlock));
            if (classScope != null && i == 0)
                curFunction.thisPtr = funcParameterReg;
        }

        IRType returnType = it.type.transType(gScope).toIRType(gBlock);
        if (returnType instanceof IRVoidType) {
            it.stmts.forEach(cur -> cur.accept(this));
            curFunction.returnBlock.exitInstruction = new IRRetInstruction(IRGlobalBlock.voidType, null, curFunction.returnBlock);
        } else {
            IRRegister returnPtr = new IRRegister(returnType, "return_ptr");
            curFunction.entryBLock.allocaIns.add(new IRAllocaInstruction(returnPtr, returnType, curFunction.entryBLock));
            ((FuncScope) curScope).returnReg = returnPtr;
            it.stmts.forEach(cur -> cur.accept(this));
            //return?
            IRRegister returnVal = new IRRegister(returnType, "return_val");
            curFunction.returnBlock.instructions.add(new IRLoadInstruction(returnVal, returnType, returnPtr, curFunction.returnBlock));
            curFunction.returnBlock.exitInstruction = new IRRetInstruction(returnType, returnVal, curFunction.returnBlock);
        }

        if (curBlock.exitInstruction == null)
            curBlock.exitInstruction = new IRBrLabelInstruction(curFunction.returnBlock, curBlock);
        curScope = curScope.parentScope;
        completeBlock(null);
        curFunction.returnBlock.instructions.add(curFunction.returnBlock.exitInstruction);
        curFunction.blocks.add(curFunction.returnBlock);
        curFunction = null;
        curBlock = null;
    }

    @Override
    public void visit(TypeNode it) {

    }
}

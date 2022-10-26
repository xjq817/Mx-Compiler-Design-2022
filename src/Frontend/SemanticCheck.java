package Frontend;

import Util.Entity.FuncEntity;
import Util.Entity.VarEntity;
import Util.Scope.*;
import Util.Type.Type;
import Util.error.semanticError;
import ast.ASTVisitor;
import ast.RootNode;
import ast.def.*;
import ast.expr.*;
import ast.expr.primary.*;
import ast.stmt.*;
import ast.type.TypeNode;

import java.util.Objects;

public class SemanticCheck implements ASTVisitor {
    public GlobalScope gScope;
    public Scope curScope;

    public SemanticCheck(GlobalScope globalScope) {
        this.curScope = globalScope;
        this.gScope = globalScope;
    }

    @Override
    public void visit(RootNode it) {
        it.defs.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(IfStmtNode it) {
        it.condition.accept(this);
        if (!it.condition.type.isEqual(this.gScope.types.get("bool")))
            throw new semanticError("if condition is not bool", it.pos);
        this.curScope = new BlockScope(this.curScope);
        this.curScope.parentScope.blockScopes.add(this.curScope);
        it.trueStmt.accept(this);
        this.curScope = this.curScope.parentScope;
        this.curScope.blockScopes.remove(this.curScope.blockScopes.size() - 1);
        if (it.falseStmt != null) {
            this.curScope = new BlockScope(this.curScope);
            this.curScope.parentScope.blockScopes.add(this.curScope);
            it.falseStmt.accept(this);
            this.curScope = this.curScope.parentScope;
            this.curScope.blockScopes.remove(this.curScope.blockScopes.size() - 1);
        }
    }

    @Override
    public void visit(BlockStmtNode it) {
        this.curScope = new BlockScope(this.curScope);
        this.curScope.parentScope.blockScopes.add(this.curScope);
        it.stmts.forEach(cur -> cur.accept(this));
        this.curScope = this.curScope.parentScope;
        this.curScope.blockScopes.remove(this.curScope.blockScopes.size() - 1);
    }

    @Override
    public void visit(BreakStmtNode it) {
        if (!curScope.isInLoopScope())
            throw new semanticError("break not in loopScope", it.pos);
    }

    @Override
    public void visit(ContinueStmtNode it) {
        if (!curScope.isInLoopScope())
            throw new semanticError("continue not in loopScope", it.pos);
    }

    @Override
    public void visit(ExprStmtNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(EmptyStmtNode it) {

    }

    @Override
    public void visit(TypeNode it) {
        it.transType(this.gScope);
    }

    @Override
    public void visit(VarDefNode it) {
        it.type.accept(this);
        it.variables.forEach(cur -> {
            cur.name.type = it.type.transType(this.gScope);
            cur.accept(this);
            VarEntity varEntity = new VarEntity(it.type.transType(this.gScope), cur.name.name, cur.pos);
            curScope.varEntities.put(cur.name.name, varEntity);
        });
    }

    @Override
    public void visit(ForStmtNode it) {
        this.curScope = new LoopScope(this.curScope);
        this.curScope.parentScope.blockScopes.add(this.curScope);
        if (it.forInitStmt != null)
            it.forInitStmt.accept(this);
        if (it.condition != null) {
            it.condition.accept(this);
            if (!it.condition.type.isEqual(this.gScope.types.get("bool")))
                throw new semanticError("for condition is not a bool expression", it.pos);
        }
        if (it.execution != null)
            it.execution.accept(this);
        it.thenStmt.accept(this);
        this.curScope = this.curScope.parentScope;
        this.curScope.blockScopes.remove(this.curScope.blockScopes.size() - 1);
    }

    @Override
    public void visit(FuncDefNode it) {
        if (!this.curScope.funcEntities.containsKey(it.name.name))
            throw new semanticError("cannot find this function", it.pos);
        FuncEntity funcEntity = this.curScope.funcEntities.get(it.name.name);
        this.curScope = funcEntity.funcScope;
        it.stmts.forEach(cur -> cur.accept(this));
        this.curScope = this.curScope.parentScope;
    }

    @Override
    public void visit(CellExprNode it) {
        it.expr.accept(this);
        if (Objects.equals(it.op, "++") || Objects.equals(it.op, "--")) {
            if (!it.expr.type.isEqual(this.gScope.types.get("int")))
                throw new semanticError("cell op:" + it.op + ", and exprType is not int", it.pos);
            if (!it.expr.isLeftValue)
                throw new semanticError("cell op:" + it.op + ", and expr is not isLeftValue", it.pos);
        } else if (Objects.equals(it.op, "!")) {
            if (!it.expr.type.isEqual(this.gScope.types.get("bool")))
                throw new semanticError("cell op:" + it.op + ", and exprType is not bool", it.pos);
        } else {
            if (!it.expr.type.isEqual(this.gScope.types.get("int")))
                throw new semanticError("cell op:" + it.op + ", and exprType is not int", it.pos);
        }
        it.type = it.expr.type;
    }

    @Override
    public void visit(ClassDefNode it) {
        this.curScope = this.gScope.types.get(it.name.name).classScope;
        it.constructions.forEach(cur -> cur.accept(this));
        it.variables.forEach(cur -> cur.accept(this));
        it.functions.forEach(cur -> cur.accept(this));
        this.curScope = this.curScope.parentScope;
    }

    @Override
    public void visit(FuncExprNode it) {
        it.function.accept(this);
        it.arguments.forEach(cur -> cur.accept(this));
        FuncEntity funcEntity = null;
        if (it.function instanceof IdentifierPrimaryNode) {
            ClassScope classScope = this.curScope.getClassScope();
            if (classScope != null) {
                if (classScope.funcEntities.containsKey(((IdentifierPrimaryNode) it.function).name)) {
                    funcEntity = classScope.funcEntities.get(((IdentifierPrimaryNode) it.function).name);
                    if (funcEntity.funcScope.parameters.size() != it.arguments.size())
                        funcEntity = null;
                    else {
                        for (int i = 0; i < it.arguments.size(); i++) {
                            if (!it.arguments.get(i).type.isEqual(this.gScope.types.get("null"))
                                    || funcEntity.funcScope.parameters.get(i).varType.isEqual(this.gScope.types.get("int"))
                                    || funcEntity.funcScope.parameters.get(i).varType.isEqual(this.gScope.types.get("bool"))) {
                                if (!funcEntity.funcScope.parameters.get(i).varType.isEqual(it.arguments.get(i).type)) {
                                    funcEntity = null;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            if (funcEntity == null) {
                if (this.gScope.funcEntities.containsKey(((IdentifierPrimaryNode) it.function).name)) {
                    funcEntity = this.gScope.funcEntities.get(((IdentifierPrimaryNode) it.function).name);
                    if (funcEntity.funcScope.parameters.size() != it.arguments.size())
                        funcEntity = null;
                    else {
                        for (int i = 0; i < it.arguments.size(); i++) {
                            if (!it.arguments.get(i).type.isEqual(this.gScope.types.get("null"))
                                    || funcEntity.funcScope.parameters.get(i).varType.isEqual(this.gScope.types.get("int"))
                                    || funcEntity.funcScope.parameters.get(i).varType.isEqual(this.gScope.types.get("bool"))) {
                                if (!funcEntity.funcScope.parameters.get(i).varType.isEqual(it.arguments.get(i).type)) {
                                    funcEntity = null;
                                    break;
                                }
                            }
                        }
                    }
                }
                if (funcEntity == null) throw new semanticError("cannot find this functionDef", it.pos);
            }
        } else if (it.function instanceof ObjectExprNode) {
            Type type = ((ObjectExprNode) it.function).expr.type;
            String name = ((ObjectExprNode) it.function).iden.name;
            if (type.layer == 0) {
                if (type.classScope.funcEntities.containsKey(name)) {
                    funcEntity = type.classScope.funcEntities.get(name);
                } else throw new semanticError("classScope has not this function", it.pos);
            } else {
                if (Objects.equals(name, "size") && it.arguments.size() == 0) {
                    it.type = this.gScope.types.get("int");
                    return;
                } else throw new semanticError("after arrayType dot should be size()", it.pos);
            }
        }
        if (funcEntity == null) throw new semanticError("cannot find this functionDef", it.pos);
        it.type = funcEntity.funcScope.returnType;
    }

    @Override
    public void visit(ArrayExprNode it) {
        it.name.accept(this);
        it.id.accept(this);
        if (!it.id.type.isEqual(this.gScope.types.get("int")))
            throw new semanticError("array index should be int", it.pos);
        it.type = new Type(it.name.type);
        if (!this.gScope.types.containsKey(it.type.name))
            throw new semanticError("there is not this type: " + it.type.name, it.pos);
        it.type.layer--;
        if (it.type.layer < 0)
            throw new semanticError("layer exceed TypeLayer: " + it.type.name, it.pos);
    }

    @Override
    public void visit(ParameterNode it) {

    }

    @Override
    public void visit(WhileStmtNode it) {
        this.curScope = new LoopScope(this.curScope);
        this.curScope.parentScope.blockScopes.add(this.curScope);
        it.condition.accept(this);
        if (!it.condition.type.isEqual(this.gScope.types.get("bool")))
            throw new semanticError("while condition is not a bool expression", it.pos);
        it.thenStmt.accept(this);
        this.curScope = this.curScope.parentScope;
        this.curScope.blockScopes.remove(this.curScope.blockScopes.size() - 1);
    }

    @Override
    public void visit(AssignExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        if (!it.lhs.isLeftValue)
            throw new semanticError("assign Lhs is not leftValue", it.pos);
        Type lType = it.lhs.type;
        Type rType = it.rhs.type;
        if (rType.isEqual(this.gScope.types.get("null"))
                && !lType.isEqual(this.gScope.types.get("int"))
                && !lType.isEqual(this.gScope.types.get("bool")))
            it.type = new Type(lType);
        else {
            if (Objects.equals(lType.name, rType.name)
                    && lType.layer == rType.layer)
                it.type = new Type(rType);
            else throw new semanticError("assign LhsType and rhsType are not same", it.pos);
        }
    }

    @Override
    public void visit(BinaryExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
        Type lType = it.lhs.type;
        Type rType = it.rhs.type;
        Type intType = this.gScope.types.get("int");
        Type stringType = this.gScope.types.get("string");
        Type nullType = this.gScope.types.get("null");
        Type boolType = this.gScope.types.get("bool");
        if (Objects.equals(it.op, "*") || Objects.equals(it.op, "/")
                || Objects.equals(it.op, "%") || Objects.equals(it.op, "-")
                || Objects.equals(it.op, "<<") || Objects.equals(it.op, ">>")
                || Objects.equals(it.op, "&") || Objects.equals(it.op, "^")
                || Objects.equals(it.op, "|")) {
            if (!lType.isEqual(intType) || !rType.isEqual(intType))
                throw new semanticError("lhs and rhs in op:[" + it.op + "] are not int", it.pos);
            it.type = intType;
        } else if (Objects.equals(it.op, "+")) {
            if (lType.isEqual(stringType) && rType.isEqual(stringType))
                it.type = stringType;
            else if (lType.isEqual(intType) && rType.isEqual(intType))
                it.type = intType;
            else throw new semanticError("lhs and rhs in op:[" + it.op + "] are not int or string", it.pos);
        } else if (Objects.equals(it.op, "<") || Objects.equals(it.op, "<=")
                || Objects.equals(it.op, ">") || Objects.equals(it.op, ">=")) {
            if (lType.isEqual(stringType) && rType.isEqual(stringType))
                it.type = boolType;
            else if (lType.isEqual(intType) && rType.isEqual(intType))
                it.type = boolType;
            else throw new semanticError("lhs and rhs in op:[" + it.op + "] are not int or string", it.pos);
        } else if (Objects.equals(it.op, "==") || Objects.equals(it.op, "!=")) {
            if (!lType.isEqual(nullType) && !rType.isEqual(nullType)) {
                if (lType.isEqual(stringType) && rType.isEqual(stringType))
                    it.type = boolType;
                else if (lType.isEqual(intType) && rType.isEqual(intType))
                    it.type = boolType;
                else if (lType.isEqual(boolType) && rType.isEqual(boolType))
                    it.type = boolType;
                else throw new semanticError("lhs and rhs in op:[" + it.op + "] are not int or string or bool", it.pos);
            } else it.type = boolType;
        } else if (Objects.equals(it.op, "&&") || Objects.equals(it.op, "||")) {
            if (!lType.isEqual(nullType) && !rType.isEqual(nullType)) {
                if (lType.isEqual(boolType) && rType.isEqual(boolType))
                    it.type = boolType;
                else throw new semanticError("lhs and rhs in op:[" + it.op + "] are not bool", it.pos);
            }
        }
    }

    @Override
    public void visit(IntPrimaryNode it) {
        it.type = this.gScope.types.get("int");
    }

    @Override
    public void visit(LambdaExprNode it) {
        it.type = new Type(this.gScope.types.get("null"));
        this.curScope = new FuncScope(null, this.curScope);
        ((FuncScope) this.curScope).isLambda = true;
        if (it.parameters.size() != it.exprs.size())
            throw new semanticError("lambdaExpr: number of parameters and arguments are not same", it.pos);
        for (int i = 0; i < it.parameters.size(); i++) {
            ParameterNode cur = it.parameters.get(i);
            VarEntity varEntity = new VarEntity(cur.type.transType(this.gScope), cur.iden.name, cur.pos);
            ((FuncScope) curScope).parameters.add(varEntity);
            it.exprs.get(i).accept(this);
            Type type = it.exprs.get(i).type;
            if (type.isEqual(this.gScope.types.get("null"))) continue;
            if (!type.isEqual(it.parameters.get(i).type.transType(this.gScope)))
                throw new semanticError("lambda parameter is not same type with argument", it.pos);
        }
        it.stmts.forEach(cur -> cur.accept(this));
        it.type = ((FuncScope) this.curScope).returnType;
        this.curScope = this.curScope.parentScope;
    }

    @Override
    public void visit(ObjectExprNode it) {
        it.expr.accept(this);
        if (it.expr.type.layer == 0) {
            Scope classScope = it.expr.type.classScope;
            if (classScope == null) classScope = this.gScope;
            if (it.iden.isVar) {
                if (!classScope.varEntities.containsKey(it.iden.name))
                    throw new semanticError("class has not this variable", it.pos);
                it.type = new Type(classScope.varEntities.get(it.iden.name).varType);
            } else {
                if (!classScope.funcEntities.containsKey(it.iden.name))
                    throw new semanticError("class has not this functions", it.pos);
                it.type = new Type(classScope.funcEntities.get(it.iden.name).funcScope.returnType);
            }
        } else {
            if (!Objects.equals(it.iden.name, "size"))
                throw new semanticError("ObjectExpr type is array type and iden is not size", it.pos);
        }

    }

    @Override
    public void visit(ReturnStmtNode it) {
        Scope scope = this.curScope.getFunctionScope();
        if (scope == null)
            throw new semanticError("returnStmt is not in function", it.pos);
        if (it.expr != null)
            it.expr.accept(this);
        if (scope instanceof ConstructionScope && it.expr != null)
            throw new semanticError("construction should not return expr", it.pos);
        if (scope instanceof FuncScope) {
            FuncScope funcScope = (FuncScope) scope;
            if (funcScope.isLambda) {
                if (it.expr != null) {
                    if (it.expr.type.isEqual(this.gScope.types.get("null"))) {
                        if (funcScope.returnType.isEqual(this.gScope.types.get("int"))
                                || funcScope.returnType.isEqual(this.gScope.types.get("bool"))) {
                            throw new semanticError("int or bool function return null", it.pos);
                        }
                    } else {
                        if (funcScope.returnType.isEqual(this.gScope.types.get("null")))
                            funcScope.returnType = it.expr.type;
                        else if (!funcScope.returnType.isEqual(it.expr.type))
                            throw new semanticError("return exprType is not same with function returnType", it.pos);
                    }
                } else funcScope.returnType = this.gScope.types.get("void");
            } else {
                if (it.expr != null) {
                    if (it.expr.type.isEqual(this.gScope.types.get("null"))){
                        if (funcScope.returnType.isEqual(this.gScope.types.get("int"))
                                || funcScope.returnType.isEqual(this.gScope.types.get("bool"))) {
                            throw new semanticError("int or bool function return null", it.pos);
                        }
                    }
                    else if (!funcScope.returnType.isEqual(it.expr.type))
                        throw new semanticError("return exprType is not same with function returnType", it.pos);
                } else if (!funcScope.returnType.isEqual(this.gScope.types.get("void")))
                    throw new semanticError("return exprType is not same with function returnType", it.pos);
            }
        }
    }

    @Override
    public void visit(BoolPrimaryNode it) {
        it.type = this.gScope.types.get("bool");
    }

    @Override
    public void visit(NewTypeExprNode it) {
        it.type = it.newType.transType(this.gScope);
    }

    @Override
    public void visit(NullPrimaryNode it) {
        it.type = this.gScope.types.get("null");
    }

    @Override
    public void visit(SufCellExprNode it) {
        it.expr.accept(this);
        if (!it.expr.type.isEqual(this.gScope.types.get("int")))
            throw new semanticError("suf cell op:" + it.op + ", and exprType is not int", it.pos);
        if (!it.expr.isLeftValue)
            throw new semanticError("suf cell op:" + it.op + ", and expr is not isLeftValue", it.pos);
        it.type = it.expr.type;
    }

    @Override
    public void visit(ThisPrimaryNode it) {
        ClassScope classScope = this.curScope.getClassScope();
        if (classScope == null)
            throw new semanticError("thisPrimary not in classScope", it.pos);
        it.type = this.gScope.types.get(classScope.name);
    }

    @Override
    public void visit(SingleVarDefNode it) {
        if (curScope.varEntities.containsKey(it.name.name) && !(curScope instanceof ClassScope))
            throw new semanticError("curScope has this name: " + it.name.name, it.pos);
        if (it.expr != null) {
            it.expr.accept(this);
            if (!it.expr.type.isEqual(this.gScope.types.get("null"))
                    || it.name.type.isEqual(this.gScope.types.get("int"))
                    || it.name.type.isEqual(this.gScope.types.get("bool"))) {
                if (!Objects.equals(it.expr.type.name, it.name.type.name))
                    throw new semanticError("singleVarDef exprType is not same with idenType", it.pos);
                if (it.expr.type.layer != it.name.type.layer)
                    throw new semanticError("singleVarDef exprLayer is greater than idenLayer", it.pos);
            }
        }
    }

    @Override
    public void visit(StringPrimaryNode it) {
        it.type = this.gScope.types.get("string");
    }

    @Override
    public void visit(ConstructionDefNode it) {
        if (!(this.curScope instanceof ClassScope))
            throw new semanticError("construction not in classScope", it.pos);
        if (!Objects.equals(((ClassScope) this.curScope).name, it.name.name))
            throw new semanticError("construction name is not same with class name", it.pos);
        this.curScope = ((ClassScope) this.curScope).constructionEntity.constructionScope;
        it.stmts.forEach(cur -> cur.accept(this));
        this.curScope = this.curScope.parentScope;
    }

    @Override
    public void visit(IdentifierPrimaryNode it) {
        if (!curScope.hasIdentifier(it.name))
            throw new semanticError("undefined identifier", it.pos);
        if (it.isVar) {
            VarEntity varEntity = curScope.getVarEntity(it.name);
            if (varEntity == null) throw new semanticError("cannot find this var: " + it.name, it.pos);
            it.type = varEntity.varType;
        } else if (it.isFunc) {
            FuncEntity funcEntity = curScope.getFuncEntity(it.name);
            if (funcEntity == null) throw new semanticError("cannot find this func: " + it.name, it.pos);
            it.type = funcEntity.funcScope.returnType;
        } else throw new semanticError("identifier neither variable nor function.", it.pos);
    }
}
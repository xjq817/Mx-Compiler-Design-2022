package Frontend;

import Util.Entity.ConstructionEntity;
import Util.Entity.FuncEntity;
import Util.Entity.VarEntity;
import Util.Position;
import Util.Scope.*;
import Util.Type.Type;
import Util.error.syntaxError;
import ast.ASTVisitor;
import ast.RootNode;
import ast.def.*;
import ast.expr.*;
import ast.expr.primary.*;
import ast.stmt.*;
import ast.type.TypeNode;

public class SymbolCollector implements ASTVisitor {
    public GlobalScope gScope;
    public Scope curScope;
    public boolean firstTime;

    public SymbolCollector(GlobalScope gScope) {
        this.gScope = gScope;
        this.curScope = gScope;
        this.firstTime = false;
    }

    @Override
    public void visit(RootNode it) {
        this.firstTime = true;
        it.defs.forEach(cur -> cur.accept(this));
        this.firstTime = false;
        it.defs.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(IfStmtNode it) {

    }

    @Override
    public void visit(TypeNode it) {

    }

    @Override
    public void visit(VarDefNode it) {

    }

    @Override
    public void visit(ForStmtNode it) {

    }

    @Override
    public void visit(FuncDefNode it) {
        if (firstTime) {
            if (gScope.types.containsKey(it.name.name))
                throw new syntaxError("function's name: " + it.name.name + " has appeared from classTypes.", it.pos);
            if (curScope.funcEntities.containsKey(it.name.name))
                throw new syntaxError("function: " + it.name.name + " has appeared.", it.pos);
            FuncEntity funcEntity = new FuncEntity(new FuncScope(null, curScope), it.name.name, it.pos);
            curScope.funcEntities.put(it.name.name, funcEntity);
        } else {
            FuncEntity funcEntity = curScope.funcEntities.get(it.name.name);
            funcEntity.funcScope.returnType = it.type.transType(gScope);
            it.parameters.forEach(cur -> {
                VarEntity varEntity = new VarEntity(cur.type.transType(gScope), cur.iden.name, cur.pos);
                funcEntity.funcScope.parameters.add(varEntity);
            });
        }
    }

    @Override
    public void visit(CellExprNode it) {

    }

    @Override
    public void visit(ClassDefNode it) {
        if (curScope != gScope)
            throw new syntaxError("define class not in global scope", it.pos);
        if (firstTime) {
            if (gScope.types.containsKey(it.name.name))
                throw new syntaxError("there exists more classes with same name", it.pos);
            curScope = new ClassScope(it.name.name, gScope);
            Type type = new Type(it.name.name);
            it.functions.forEach(cur -> cur.accept(this));
            it.constructions.forEach(cur -> cur.accept(this));
            type.classScope = (ClassScope) curScope;
            gScope.types.put(it.name.name, type);
            curScope = gScope;
        } else {
            Type type = gScope.types.get(it.name.name);
            curScope = type.classScope;
            curScope.varEntities.put("this", new VarEntity(type, "this", new Position(-1, -1)));
            it.variables.forEach(cur -> {
                cur.variables.forEach(vari -> {
                    VarEntity varEntity = new VarEntity(cur.type.transType(gScope), vari.name.name, vari.pos);
                    curScope.varEntities.put(vari.name.name, varEntity);
                });
            });
            it.functions.forEach(cur -> cur.accept(this));
            curScope = gScope;
        }
    }

    @Override
    public void visit(ExprStmtNode it) {

    }

    @Override
    public void visit(FuncExprNode it) {

    }

    @Override
    public void visit(ArrayExprNode it) {

    }

    @Override
    public void visit(BlockStmtNode it) {

    }

    @Override
    public void visit(BreakStmtNode it) {

    }

    @Override
    public void visit(EmptyStmtNode it) {

    }

    @Override
    public void visit(ParameterNode it) {

    }

    @Override
    public void visit(WhileStmtNode it) {

    }

    @Override
    public void visit(AssignExprNode it) {

    }

    @Override
    public void visit(BinaryExprNode it) {

    }

    @Override
    public void visit(IntPrimaryNode it) {

    }

    @Override
    public void visit(LambdaExprNode it) {

    }

    @Override
    public void visit(ObjectExprNode it) {

    }

    @Override
    public void visit(ReturnStmtNode it) {

    }

    @Override
    public void visit(BoolPrimaryNode it) {

    }

    @Override
    public void visit(NewTypeExprNode it) {

    }

    @Override
    public void visit(NullPrimaryNode it) {

    }

    @Override
    public void visit(SufCellExprNode it) {

    }

    @Override
    public void visit(ThisPrimaryNode it) {

    }

    @Override
    public void visit(ContinueStmtNode it) {

    }

    @Override
    public void visit(SingleVarDefNode it) {

    }

    @Override
    public void visit(StringPrimaryNode it) {

    }

    @Override
    public void visit(ConstructionDefNode it) {
        if (!(this.curScope instanceof ClassScope))
            throw new syntaxError("currentScope: " + curScope.toString() + " is not ConstructionScope", it.pos);
        if (((ClassScope) this.curScope).constructionEntity != null)
            throw new syntaxError("classScope has construction", it.pos);
        ConstructionEntity constructionEntity = new ConstructionEntity(it.name.name, it.pos);
        constructionEntity.constructionScope = new ConstructionScope(this.curScope);
        ((ClassScope) this.curScope).constructionEntity = constructionEntity;
    }

    @Override
    public void visit(IdentifierPrimaryNode it) {

    }
}

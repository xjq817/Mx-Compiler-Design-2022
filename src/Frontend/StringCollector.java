package Frontend;

import IR.IRGlobalBlock;
import ast.ASTVisitor;
import ast.RootNode;
import ast.def.*;
import ast.expr.*;
import ast.expr.primary.*;
import ast.stmt.*;
import ast.type.TypeNode;

public class StringCollector implements ASTVisitor {
    public IRGlobalBlock gBlock;

    public StringCollector(IRGlobalBlock gBlock) {
        this.gBlock = gBlock;
    }

    @Override
    public void visit(RootNode it) {
        it.defs.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(IfStmtNode it) {
        it.condition.accept(this);
        it.trueStmt.accept(this);
        if (it.falseStmt != null)
            it.falseStmt.accept(this);
    }

    @Override
    public void visit(BlockStmtNode it) {
        it.stmts.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(BreakStmtNode it) {

    }

    @Override
    public void visit(ContinueStmtNode it) {

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
        if (it.expr != null)
            it.expr.accept(this);
    }

    @Override
    public void visit(WhileStmtNode it) {
        it.condition.accept(this);
        it.thenStmt.accept(this);
    }

    @Override
    public void visit(ForStmtNode it) {
        if (it.forInitStmt != null)
            it.forInitStmt.accept(this);
        if (it.condition != null)
            it.condition.accept(this);
        if (it.execution != null)
            it.execution.accept(this);
        it.thenStmt.accept(this);
    }

    @Override
    public void visit(AssignExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
    }

    @Override
    public void visit(BinaryExprNode it) {
        it.lhs.accept(this);
        it.rhs.accept(this);
    }

    @Override
    public void visit(CellExprNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(SufCellExprNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(ArrayExprNode it) {
        it.name.accept(this);
        it.id.accept(this);
    }

    @Override
    public void visit(FuncExprNode it) {
        it.function.accept(this);
        it.arguments.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(LambdaExprNode it) {

    }

    @Override
    public void visit(IntPrimaryNode it) {

    }

    @Override
    public void visit(BoolPrimaryNode it) {

    }

    @Override
    public void visit(NullPrimaryNode it) {

    }

    @Override
    public void visit(ThisPrimaryNode it) {

    }

    @Override
    public void visit(StringPrimaryNode it) {
        gBlock.addString(it.value);
    }

    @Override
    public void visit(IdentifierPrimaryNode it) {

    }

    @Override
    public void visit(ParameterNode it) {

    }

    @Override
    public void visit(ObjectExprNode it) {
        it.expr.accept(this);
    }

    @Override
    public void visit(NewTypeExprNode it) {

    }

    @Override
    public void visit(ClassDefNode it) {
        it.variables.forEach(cur -> cur.accept(this));
        it.functions.forEach(cur -> cur.accept(this));
        it.constructions.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(ConstructionDefNode it) {
        it.stmts.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(VarDefNode it) {
        it.variables.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(SingleVarDefNode it) {
        if (it.expr != null)
            it.expr.accept(this);
    }

    @Override
    public void visit(FuncDefNode it) {
        it.stmts.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(TypeNode it) {

    }
}

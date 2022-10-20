package ast;

import ast.def.ParameterNode;
import ast.expr.*;
import ast.expr.primary.*;
import ast.stmt.*;

public interface ASTVisitor {
    void visit(RootNode it);

    void visit(IfStmtNode it);

    void visit(BlockStmtNode it);

    void visit(BreakStmtNode it);

    void visit(ContinueStmtNode it);

    void visit(ExprStmtNode it);

    void visit(EmptyStmtNode it);

    void visit(ReturnStmtNode it);

    void visit(WhileStmtNode it);

    void visit(ForStmtNode it);

    void visit(AssignExprNode it);

    void visit(BinaryExprNode it);

    void visit(CellExprNode it);

    void visit(SufCellExprNode it);

    void visit(ArrayExprNode it);

    void visit(FuncExprNode it);

    void visit(LambdaExprNode it);

    void visit(IntPrimaryNode it);

    void visit(BoolPrimaryNode it);

    void visit(NullPrimaryNode it);

    void visit(ThisPrimaryNode it);

    void visit(StringPrimaryNode it);

    void visit(IdentifierPrimaryNode it);

    void visit(ParameterNode it);
}

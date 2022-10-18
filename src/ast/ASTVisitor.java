package ast;

import ast.expr.*;
import ast.stmt.*;

public interface ASTVisitor {
    void visit(RootNode it);

    void visit(FnNode it);

    void visit(arrayExprNode it);

    void visit(atomExprNode it);

    void visit(binaryExprNode it);

    void visit(bracketExprNode it);

    void visit(cellExprNode it);

    void visit(funcExprNode it);

    void visit(lamdaExprNode it);

    void visit(objectExprNode it);

    void visit(BlockStmtNode it);

    void visit(BreakStmtNode it);

    void visit(ContinueStmtNode it);

    void visit(ExprStmtNode it);

    void visit(ForStmtNode it);

    void visit(IfStmtNode it);

    void visit(ReturnStmtNode it);

    void visit(VarDefStmtNode it);

    void visit(WhileStmtNode it);

}

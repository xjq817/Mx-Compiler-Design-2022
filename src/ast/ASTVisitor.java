package ast;

import ast.expr.*;
import ast.stmt.*;

public interface ASTVisitor {
    void visit(RootNode it);

    void visit(arrayExprNode it);

    void visit(atomExprNode it);

    void visit(binaryExprNode it);

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

    void visit(WhileStmtNode it);

    void visit(VarDefNode it);

    void visit(ClassDefNode it);

    void visit(FuncDefNode it);

    void visit(ForInitNode it);

    void visit(classCstrDefNode it);

    void visit(assignExprNode it);

    void visit(sufCellExprNode it);

    void visit(newExprNode it);
}

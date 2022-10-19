package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class WhileStmtNode extends StmtNode {
    public ExprNode condition;
    public StmtNode thenStmt;

    public WhileStmtNode(ExprNode condition, StmtNode thenStmt, Position pos) {
        super(pos);
        this.condition = condition;
        this.thenStmt = thenStmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

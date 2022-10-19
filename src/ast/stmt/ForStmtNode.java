package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.ForInitNode;
import ast.expr.ExprNode;

public class ForStmtNode extends StmtNode {
    public ForInitNode forInit;
    public ExprNode condition, execution;
    public StmtNode thenStmt;

    public ForStmtNode(ForInitNode forInit, ExprNode condition,
                       ExprNode execution, StmtNode thenStmt, Position pos) {
        super(pos);
        this.forInit = forInit;
        this.condition = condition;
        this.execution = execution;
        this.thenStmt = thenStmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

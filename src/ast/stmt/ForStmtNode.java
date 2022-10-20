package ast.stmt;

import Util.Position;
import ast.ASTNode;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class ForStmtNode extends StmtNode {
    public ASTNode forInitStmt;
    public ExprNode condition, execution;
    public StmtNode thenStmt;

    public ForStmtNode(StmtNode thenStmt, Position pos) {
        super(pos);
        this.forInitStmt = null;
        this.condition = null;
        this.execution = null;
        this.thenStmt = thenStmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

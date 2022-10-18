package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class ForStmtNode extends StmtNode {
    public ExprNode initialization, condition, execution;
    public StmtNode thenStmt;

    public ForStmtNode(ExprNode initialization, ExprNode condition,
                       ExprNode execution, StmtNode thenStmt, Position pos) {
        super(pos);
        this.initialization = initialization;
        this.condition = condition;
        this.execution = execution;
        this.thenStmt = thenStmt;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

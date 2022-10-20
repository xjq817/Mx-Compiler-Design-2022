package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class ReturnStmtNode extends StmtNode {
    public ExprNode expr;

    public ReturnStmtNode(Position pos) {
        super(pos);
        this.expr = null;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

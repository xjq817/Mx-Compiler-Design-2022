package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class ExprStmtNode extends StmtNode {
    public ExprNode expr;

    public ExprStmtNode(ExprNode expr, Position pos) {
        super(pos);
        this.expr = expr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

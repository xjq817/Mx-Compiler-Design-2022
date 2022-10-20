package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class SufCellExprNode extends ExprNode {
    public ExprNode expr;
    public String op;

    public SufCellExprNode(ExprNode expr, String op, Position pos) {
        super(false, pos);
        this.expr = expr;
        this.op = op;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

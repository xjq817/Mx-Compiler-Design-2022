package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class assignExprNode extends ExprNode{
    public ExprNode lhs, rhs;

    public assignExprNode(ExprNode lhs, ExprNode rhs, Position pos) {
        super(pos);
        this.lhs = lhs;
        this.rhs = rhs;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

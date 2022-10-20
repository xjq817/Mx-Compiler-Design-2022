package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class BinaryExprNode extends ExprNode{
    public ExprNode lhs;
    public ExprNode rhs;
    public String op;

    public BinaryExprNode(ExprNode lhs, ExprNode rhs, String op, Position pos) {
        super(false,pos);
        this.lhs = lhs;
        this.rhs = rhs;
        this.op = op;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

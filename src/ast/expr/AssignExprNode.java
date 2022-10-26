package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class AssignExprNode extends ExprNode {
    public ExprNode lhs;
    public ExprNode rhs;
    public String op;

    public AssignExprNode(ExprNode lhs, ExprNode rhs, String op, Position pos) {
        super(true,pos);
        this.lhs = lhs;
        this.rhs = rhs;
        this.op = op;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

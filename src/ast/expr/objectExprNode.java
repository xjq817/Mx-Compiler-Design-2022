package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class objectExprNode extends ExprNode{
    public ExprNode expr;
    public String name;

    public objectExprNode(ExprNode expr, String name, Position pos) {
        super(pos);
        this.expr = expr;
        this.name = name;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class atomExprNode extends ExprNode{
    public String name;

    public atomExprNode(String name, Position pos) {
        super(pos);
        this.name=name;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

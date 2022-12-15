package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class ArrayExprNode extends LeftValueExprNode {
    public ExprNode name;
    public ExprNode id;

    public ArrayExprNode(ExprNode name, ExprNode id, Position pos) {
        super(true, pos);
        this.name = name;
        this.id = id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
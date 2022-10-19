package ast.expr;

import Util.Position;
import Util.Type;
import ast.ASTVisitor;

public class binaryExprNode extends ExprNode{
    public ExprNode lhs, rhs;

    public String opType;

    public binaryExprNode(ExprNode lhs, ExprNode rhs, String opType, Type intType, Position pos) {
        super(pos);
        this.lhs = lhs;
        this.rhs = rhs;
        this.opType = opType;
        type = intType;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

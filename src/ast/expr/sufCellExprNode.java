package ast.expr;

import Util.Position;
import Util.Type;
import ast.ASTVisitor;

public class sufCellExprNode extends ExprNode{
    public ExprNode rhs;

    public String opType;

    public sufCellExprNode(ExprNode rhs, String opType, Type intType, Position pos) {
        super(pos);
        this.rhs = rhs;
        this.opType = opType;
        type = intType;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

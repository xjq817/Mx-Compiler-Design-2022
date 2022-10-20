package ast.expr;

import Util.Position;
import ast.ASTVisitor;

public class FuncExprNode extends ExprNode {
    public ExprNode function;

    public FuncExprNode(ExprNode function,Position pos) {
        super(false, pos);
        this.function=function;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
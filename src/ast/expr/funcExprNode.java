package ast.expr;

import Util.Position;
import ast.ASTVisitor;

import java.util.ArrayList;

public class funcExprNode extends ExprNode{
    public ExprNode expr;
    public ArrayList<ExprNode> exprList;

    public funcExprNode(ExprNode expr, Position pos) {
        super(pos);
        this.expr=expr;
        this.exprList=new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

package ast.expr;

import Util.Position;
import ast.ASTVisitor;

import java.util.ArrayList;

public class arrayExprNode extends ExprNode{
    public ArrayList<ExprNode> exprList;

    public arrayExprNode(Position pos) {
        super(pos);
        this.exprList=new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

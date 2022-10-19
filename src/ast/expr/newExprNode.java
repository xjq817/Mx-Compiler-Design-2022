package ast.expr;

import Util.Position;
import ast.ASTVisitor;

import java.util.ArrayList;

public class newExprNode extends ExprNode{
    public ArrayList<ExprNode> exprList;
    public int layer;

    public newExprNode(int layer,Position pos) {
        super(pos);
        this.layer=layer;
        this.exprList=new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

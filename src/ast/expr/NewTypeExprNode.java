package ast.expr;

import Util.Position;
import ast.ASTVisitor;
import ast.type.TypeNode;

import java.util.ArrayList;

public class NewTypeExprNode extends ExprNode {
    public TypeNode type;
    public int layer;
    public ArrayList<ExprNode> exprs;

    public NewTypeExprNode(TypeNode type, Position pos) {
        super(false, pos);
        this.type = type;
        this.layer = 0;
        this.exprs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

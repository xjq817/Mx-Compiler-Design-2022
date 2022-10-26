package ast.expr;

import Util.Position;
import ast.ASTVisitor;
import ast.type.TypeNode;

import java.util.ArrayList;

public class NewTypeExprNode extends ExprNode {
    public TypeNode newType;
    public ArrayList<ExprNode> exprs;

    public NewTypeExprNode(TypeNode newType, Position pos) {
        super(false, pos);
        this.newType = newType;
        this.exprs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

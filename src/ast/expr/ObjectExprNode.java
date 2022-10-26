package ast.expr;

import Util.Position;
import Util.Type.Type;
import ast.ASTVisitor;
import ast.expr.primary.IdentifierPrimaryNode;

public class ObjectExprNode extends ExprNode {

    public ExprNode expr;
    public IdentifierPrimaryNode iden;


    public ObjectExprNode(ExprNode expr, IdentifierPrimaryNode iden, Position pos) {
        super(expr.isLeftValue, pos);
        this.expr = expr;
        this.iden = iden;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

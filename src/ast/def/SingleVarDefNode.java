package ast.def;

import IR.IRType.IRType;
import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;
import ast.expr.primary.IdentifierPrimaryNode;

public class SingleVarDefNode extends DefNode {
    public IdentifierPrimaryNode name;
    public ExprNode expr;

    public SingleVarDefNode(IdentifierPrimaryNode name, Position pos) {
        super(pos);
        this.name = name;
        this.expr = null;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
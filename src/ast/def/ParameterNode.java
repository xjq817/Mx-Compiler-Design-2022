package ast.def;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.primary.IdentifierPrimaryNode;
import ast.type.TypeNode;

public class ParameterNode extends DefNode {
    public TypeNode type;
    public IdentifierPrimaryNode iden;

    public ParameterNode(TypeNode type, IdentifierPrimaryNode iden, Position pos) {
        super(pos);
        this.type = type;
        this.iden = iden;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

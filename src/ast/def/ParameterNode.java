package ast.def;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.primary.IdentifierPrimaryNode;
import ast.type.TypeNode;

public class ParameterNode extends DefNode {
    public TypeNode type;
    public IdentifierPrimaryNode identifier;

    public ParameterNode(TypeNode type, IdentifierPrimaryNode identifier, Position pos) {
        super(pos);
        this.type = type;
        this.identifier = identifier;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

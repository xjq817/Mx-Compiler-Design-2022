package ast.expr.primary;

import Util.Position;
import ast.ASTVisitor;

public class IdentifierPrimaryNode extends PrimaryNode {
    public String name;
    public boolean isVar;
    public boolean isFunc;

    public IdentifierPrimaryNode(String name, boolean isVar, boolean isFunc, Position pos) {
        super(isVar, pos);
        this.name = name;
        this.isVar = isVar;
        this.isFunc = isFunc;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

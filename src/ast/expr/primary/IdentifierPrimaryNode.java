package ast.expr.primary;

import Util.Entity.VarEntity;
import Util.Position;
import ast.ASTVisitor;

public class IdentifierPrimaryNode extends PrimaryNode {
    public String name;
    public boolean isVar;
    public boolean isFunc;
    public VarEntity varEntity;

    public IdentifierPrimaryNode(String name, boolean isVar, boolean isFunc, Position pos) {
        super(isVar, pos);
        this.name = name;
        this.isVar = isVar;
        this.isFunc = isFunc;
        this.varEntity = null;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

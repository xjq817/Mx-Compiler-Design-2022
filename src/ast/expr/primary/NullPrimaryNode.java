package ast.expr.primary;

import Util.Position;
import ast.ASTVisitor;

public class NullPrimaryNode extends PrimaryNode {

    public NullPrimaryNode(Position pos) {
        super(false, pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

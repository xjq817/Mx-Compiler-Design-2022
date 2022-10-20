package ast.expr.primary;

import Util.Position;
import ast.expr.ExprNode;

public abstract class PrimaryNode extends ExprNode {
    public PrimaryNode(boolean isLeftValue, Position pos) {
        super(isLeftValue, pos);
    }
}

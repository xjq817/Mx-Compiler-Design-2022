package ast.expr;

import Util.Position;
import Util.Type.Type;
import ast.ASTNode;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public boolean isLeftValue;

    public ExprNode(boolean isLeftValue, Position pos) {
        super(pos);
        this.isLeftValue = isLeftValue;
        type = null;
    }
}

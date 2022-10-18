package ast.expr;

import MIR.entity;
import Util.Position;
import Util.Type;
import ast.ASTNode;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public entity val;

    public ExprNode(Position pos) {
        super(pos);
    }

    public boolean isAssignable() {
        return false;
    }
}


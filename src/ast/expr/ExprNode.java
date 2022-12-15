package ast.expr;

import IR.IRValue.IRValue;
import Util.Position;
import Util.Type.Type;
import Util.error.IRError;
import ast.ASTNode;
import ast.expr.primary.IdentifierPrimaryNode;

import java.util.Objects;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public boolean isLeftValue;
    public IRValue register;

    public ExprNode(boolean isLeftValue, Position pos) {
        super(pos);
        this.isLeftValue = isLeftValue;
        this.type = null;
        this.register = null;
    }

    public ASTNode getLeftValue(){
        if (this instanceof IdentifierPrimaryNode) return this;
        if (this instanceof ArrayExprNode) return this;
        if (this instanceof ObjectExprNode) return this;
        if (this instanceof AssignExprNode) return ((AssignExprNode) this).lhs.getLeftValue();
        if (this instanceof CellExprNode)
            if (Objects.equals(((CellExprNode) this).op,"++")
                || Objects.equals(((CellExprNode) this).op,"--"))
            return ((CellExprNode) this).expr.getLeftValue();
        throw new IRError("get null left value");
    }
}

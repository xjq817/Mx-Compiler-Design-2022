package ast.expr;

import IR.IRValue.IRRegister;
import Util.Position;

abstract public class LeftValueExprNode extends ExprNode {
    public IRRegister leftValueRegister;

    public LeftValueExprNode(boolean isLeftValue, Position pos) {
        super(isLeftValue, pos);
        this.leftValueRegister = null;
    }
}

package ast.expr.primary;

import Util.Position;
import ast.ASTVisitor;

public class StringPrimaryNode extends PrimaryNode {
    public String value;

    public StringPrimaryNode(String value, Position pos) {
        super(false, pos);
        this.value = value;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

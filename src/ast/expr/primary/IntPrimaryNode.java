package ast.expr.primary;

import Util.Position;
import ast.ASTVisitor;

public class IntPrimaryNode extends PrimaryNode{
    public int value;

    public IntPrimaryNode(String value,Position pos){
        super(false,pos);
        this.value=Integer.parseInt(value);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

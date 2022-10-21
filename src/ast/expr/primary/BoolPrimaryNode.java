package ast.expr.primary;

import Util.Position;
import ast.ASTVisitor;

import java.util.Objects;

public class BoolPrimaryNode extends PrimaryNode{
    public boolean value;

    public BoolPrimaryNode(boolean value, Position pos){
        super(false,pos);
        this.value= value;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

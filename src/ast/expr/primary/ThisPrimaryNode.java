package ast.expr.primary;

import Util.Position;
import ast.ASTVisitor;

public class ThisPrimaryNode extends PrimaryNode{

    public ThisPrimaryNode(Position pos){
        super(false,pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

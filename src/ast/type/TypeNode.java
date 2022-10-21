package ast.type;

import Util.Position;
import ast.ASTNode;
import ast.ASTVisitor;

public class TypeNode extends ASTNode {
    public String name;
    public int layer;

    public TypeNode(String name, Position pos) {
        super(pos);
        this.name = name;
        this.layer = 0;
    }

    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}

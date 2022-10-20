package ast.type;

import Util.Position;
import ast.ASTNode;

public abstract class TypeNode extends ASTNode {
    public String name;

    public TypeNode(String name, Position pos) {
        super(pos);
        this.name = name;
    }
}

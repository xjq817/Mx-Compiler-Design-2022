package ast;

import Util.Position;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<ASTNode> defList;

    public RootNode(Position pos) {
        super(pos);
        this.defList=new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

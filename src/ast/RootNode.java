package ast;

public class RootNode extends ASTNode {

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

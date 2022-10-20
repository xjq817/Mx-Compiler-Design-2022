package ast.stmt;

import Util.Position;
import ast.ASTVisitor;

public class EmptyStmtNode extends StmtNode {
    public EmptyStmtNode(Position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

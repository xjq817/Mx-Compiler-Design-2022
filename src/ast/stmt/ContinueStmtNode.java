package ast.stmt;

import Util.Position;
import ast.ASTVisitor;

public class ContinueStmtNode extends StmtNode {

    public ContinueStmtNode(Position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

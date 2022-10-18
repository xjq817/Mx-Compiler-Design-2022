package ast.stmt;

import Util.Position;
import ast.ASTNode;

public abstract class StmtNode extends ASTNode {
    public StmtNode(Position pos) {
        super(pos);
    }
}

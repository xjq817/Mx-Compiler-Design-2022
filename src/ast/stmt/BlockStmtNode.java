package ast.stmt;

import Util.Position;
import ast.ASTVisitor;

import java.util.ArrayList;

public class BlockStmtNode extends StmtNode {
    public ArrayList<StmtNode> stmts;

    public BlockStmtNode(Position pos) {
        super(pos);
        this.stmts = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

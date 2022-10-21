package ast.def;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.primary.IdentifierPrimaryNode;
import ast.stmt.StmtNode;

import java.util.ArrayList;

public class ConstructionDefNode extends DefNode {
    public IdentifierPrimaryNode name;
    public ArrayList<StmtNode> stmts;

    public ConstructionDefNode(IdentifierPrimaryNode name, Position pos) {
        super(pos);
        this.name = name;
        this.stmts = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

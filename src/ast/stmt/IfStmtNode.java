package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class IfStmtNode extends StmtNode {
    public ExprNode condition;
    public StmtNode trueStmt, falseStmt;
    public int elseScopeId;

    public IfStmtNode(ExprNode condition, Position pos) {
        super(pos);
        this.condition = condition;
        this.trueStmt = null;
        this.falseStmt = null;
        this.elseScopeId = -1;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

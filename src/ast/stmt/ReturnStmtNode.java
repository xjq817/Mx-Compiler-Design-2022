package ast.stmt;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.ExprNode;

public class ReturnStmtNode extends StmtNode {
    public ExprNode value;

    public ReturnStmtNode(ExprNode value, Position pos) {
        super(pos);
        this.value = value;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

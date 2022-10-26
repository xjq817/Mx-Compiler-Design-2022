package ast.expr;

import Util.Position;
import ast.ASTVisitor;

import java.util.Objects;

public class CellExprNode extends ExprNode {
    public ExprNode expr;
    public String op;

    public CellExprNode(ExprNode expr, String op, Position pos) {
        super(Objects.equals(op, "++") || Objects.equals(op, "--"), pos);
        this.expr = expr;
        this.op = op;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

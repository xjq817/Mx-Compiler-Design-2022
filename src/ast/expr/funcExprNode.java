package ast.expr;

import Util.Position;
import ast.ASTVisitor;

import java.util.ArrayList;

public class FuncExprNode extends ExprNode {
    public ExprNode function;
    public ArrayList<ExprNode> arguments;

    public FuncExprNode(ExprNode function, Position pos) {
        super(false, pos);
        this.function = function;
        this.arguments = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
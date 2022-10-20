package ast.expr;

import Util.Position;
import ast.ASTVisitor;
import ast.def.ParameterNode;
import ast.stmt.StmtNode;

import java.util.ArrayList;

public class LambdaExprNode extends ExprNode {
    public ArrayList<ParameterNode> parameters;
    public ArrayList<StmtNode> stmts;
    public ArrayList<ExprNode> exprs;

    public LambdaExprNode(Position pos) {
        super(false, pos);
        this.parameters = new ArrayList<>();
        this.stmts = new ArrayList<>();
        this.exprs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
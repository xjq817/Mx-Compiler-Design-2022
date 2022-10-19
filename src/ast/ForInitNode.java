package ast;

import Util.Position;
import ast.expr.ExprNode;

public class ForInitNode extends ASTNode{
    public VarDefNode initVarDef;
    public ExprNode initExpr;

    public ForInitNode(VarDefNode initVarDef, ExprNode initExpr, Position pos) {
        super(pos);
        this.initVarDef = initVarDef;
        this.initExpr = initExpr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

package ast.expr;

import Util.Position;
import Util.Type;
import ast.ASTVisitor;
import ast.stmt.BlockStmtNode;
import org.antlr.v4.runtime.misc.Pair;

import java.util.ArrayList;

public class lamdaExprNode extends ExprNode{
    public boolean isAnd;
    public ArrayList<Pair<Type,String>> funcList;
    public BlockStmtNode suite;

    public lamdaExprNode(boolean isAnd,BlockStmtNode suite, Position pos) {
        super(pos);
        this.isAnd=isAnd;
        this.funcList=new ArrayList<>();
        this.suite=suite;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

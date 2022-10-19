package ast;

import Util.Position;
import Util.Type;
import ast.expr.ExprNode;
import org.antlr.v4.runtime.misc.Pair;

import java.util.ArrayList;

public class VarDefNode extends ASTNode{
    public Type returnType;

    public String name;

    public ArrayList<Pair<String, ExprNode>> varList;

    public VarDefNode(Type returnType, String name, Position pos){
        super(pos);
        this.returnType=returnType;
        this.name=name;
        this.varList=new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}

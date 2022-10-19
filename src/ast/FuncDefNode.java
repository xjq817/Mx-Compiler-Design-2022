package ast;

import Util.Position;
import Util.Type;
import org.antlr.v4.runtime.misc.Pair;

import java.util.ArrayList;

public class FuncDefNode extends ASTNode{
    public Type returnType;

    public String name;

    public ArrayList<Pair<Type,String>> funcList;

    public FuncDefNode(Type returnType,String name,Position pos){
        super(pos);
        this.returnType=returnType;
        this.name=name;
        this.funcList=new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}

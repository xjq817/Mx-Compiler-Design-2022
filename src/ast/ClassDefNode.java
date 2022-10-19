package ast;

import Util.Position;

import java.util.ArrayList;

public class ClassDefNode extends ASTNode {
    public String name;
    public ArrayList<VarDefNode> varDefs;
    public ArrayList<classCstrDefNode> classCstrDefs;
    public ArrayList<FuncDefNode> funcDefs;

    public ClassDefNode(String name, Position pos) {
        super(pos);
        this.name = name;
        this.varDefs=new ArrayList<>();
        this.classCstrDefs=new ArrayList<>();
        this.funcDefs = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

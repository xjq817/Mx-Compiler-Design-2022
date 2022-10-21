package ast.def;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.primary.IdentifierPrimaryNode;
import ast.stmt.StmtNode;
import ast.type.TypeNode;

import java.util.ArrayList;
import java.util.Objects;

public class FuncDefNode extends DefNode {
    public TypeNode type;
    public IdentifierPrimaryNode name;
    public ArrayList<ParameterNode> parameters;
    public ArrayList<StmtNode> stmts;

    public FuncDefNode(TypeNode type, IdentifierPrimaryNode name, Position pos) {
        super(pos);
        this.type = type;
        this.name = name;
        this.parameters = new ArrayList<>();
        this.stmts = new ArrayList<>();
    }

    public boolean isMain(){
        return Objects.equals(name.name,"main") && Objects.equals(type.name,"int") && parameters.size()==0;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
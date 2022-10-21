package ast.def;

import Util.Position;
import ast.ASTVisitor;
import ast.expr.primary.IdentifierPrimaryNode;

import java.util.ArrayList;

public class ClassDefNode extends DefNode {
    public IdentifierPrimaryNode name;
    public ArrayList<ConstructionDefNode> constructions;
    public ArrayList<FuncDefNode> functions;
    public ArrayList<VarDefNode> variables;

    public ClassDefNode(IdentifierPrimaryNode name, Position pos) {
        super(pos);
        this.name = name;
        this.constructions = new ArrayList<>();
        this.functions = new ArrayList<>();
        this.variables = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

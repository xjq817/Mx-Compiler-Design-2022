package ast.def;

import Util.Position;
import ast.ASTVisitor;
import ast.type.TypeNode;

import java.util.ArrayList;

public class VarDefNode extends DefNode {
    public TypeNode type;
    public ArrayList<SingleVarDefNode> variables;

    public VarDefNode(TypeNode type, Position pos) {
        super(pos);
        this.type = type;
        this.variables = new ArrayList<>();
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

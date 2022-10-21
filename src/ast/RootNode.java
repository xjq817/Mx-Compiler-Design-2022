package ast;

import Util.Position;
import ast.def.DefNode;
import ast.def.FuncDefNode;
import gen.MxParser;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<ASTNode> defs;
    public boolean inValid;
    public boolean hasMain;

    public RootNode(Position pos) {
        super(pos);
        this.hasMain = false;
        this.inValid = false;
        this.defs = new ArrayList<>();
    }

    public void add(DefNode def) {
        defs.add(def);
        if (def instanceof FuncDefNode && ((FuncDefNode) def).isMain()) {
            if (this.hasMain) {
                this.inValid = true;
            } else {
                this.hasMain = true;
            }
        }
    }

    public void finishBuild() {
        if (!this.hasMain) inValid = true;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

package ast;

import Util.Position;
import Util.error.syntaxError;
import ast.def.DefNode;
import ast.def.FuncDefNode;

import java.util.ArrayList;

public class RootNode extends ASTNode {
    public ArrayList<ASTNode> defs;
    public boolean hasMain;

    public RootNode(Position pos) {
        super(pos);
        this.hasMain = false;
        this.defs = new ArrayList<>();
    }

    public void add(DefNode def) {
        defs.add(def);
        if (def instanceof FuncDefNode && ((FuncDefNode) def).isMain()) {
            if (this.hasMain) {
                throw new syntaxError("program has more main", this.pos);
            } else {
                this.hasMain = true;
            }
        }
    }

    public void finishBuild() {
        if (!this.hasMain)
            throw new syntaxError("program has not main", this.pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}

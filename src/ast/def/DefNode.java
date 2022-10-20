package ast.def;

import Util.Position;
import ast.stmt.StmtNode;

public abstract class DefNode extends StmtNode {
    public DefNode(Position pos){
        super(pos);
    }
}

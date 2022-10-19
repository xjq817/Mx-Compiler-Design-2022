package ast;

import Util.Position;
import ast.stmt.BlockStmtNode;

import java.util.ArrayList;

public class classCstrDefNode extends ASTNode{

    public String name;

    public BlockStmtNode suite;

    public classCstrDefNode(String name,BlockStmtNode suite, Position pos){
        super(pos);
        this.name=name;
        this.suite=suite;
    }

    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}

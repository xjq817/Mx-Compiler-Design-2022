package ast.type;

import Util.Position;
import Util.Scope.ClassScope;
import Util.Scope.GlobalScope;
import Util.Type.Type;
import Util.error.syntaxError;
import ast.ASTNode;
import ast.ASTVisitor;

public class TypeNode extends ASTNode {
    public String name;
    public int layer;

    public TypeNode(String name, Position pos) {
        super(pos);
        this.name = name;
        this.layer = 0;
    }

    public Type transType(GlobalScope gScope){
        if (!gScope.types.containsKey(this.name))
            throw new syntaxError("GlobalScope has not this type:"+this.name,this.pos);
        Type type=new Type(gScope.types.get(this.name));
        type.layer=this.layer;
        return type;
    }

    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}

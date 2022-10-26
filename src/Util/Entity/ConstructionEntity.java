package Util.Entity;

import Util.Position;
import Util.Scope.ConstructionScope;

public class ConstructionEntity extends Entity {
    public ConstructionScope constructionScope;

    public ConstructionEntity(String name, Position pos) {
        super(name, pos);
        this.constructionScope = null;
    }
}

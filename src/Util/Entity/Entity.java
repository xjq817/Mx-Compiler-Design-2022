package Util.Entity;

import Util.Position;

abstract public class Entity {
    public Position pos;
    public String name;

    public Entity(String name, Position pos) {
        this.name = name;
        this.pos = pos;
    }

}

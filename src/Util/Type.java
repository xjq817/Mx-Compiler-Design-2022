package Util;

import org.antlr.v4.runtime.misc.Pair;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Vector;

public class Type {
    public int layer = 0;

    public String name;

    public Position pos;

    public boolean isLeftValue;

    public Type(String name, int layer, boolean isLeftValue, Position pos) {
        this.isLeftValue = isLeftValue;
        this.name = name;
        this.layer = layer;
        this.pos = pos;
    }
}

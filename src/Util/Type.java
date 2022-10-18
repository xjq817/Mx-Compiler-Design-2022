package Util;

import org.antlr.v4.runtime.misc.Pair;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Vector;

public class Type {
    public boolean isInt = false, isBool = false, isString = false, isVoid = false;

    String name = null;

    public HashMap<String, Type> members = null;

    public HashMap<String, Pair<Type, Vector<Type>>> functionMembers = null;

    public HashSet<Pair<Type, Vector<Type>>> conStrMembers = null;
}

package Util.error;
import Util.Position;

abstract public class error extends RuntimeException {
    private final Position pos;
    private final String message;

    public error(String msg, Position pos) {
        this.pos = pos;
        this.message = msg;
    }

    public String toString() {
        return message + ": " + pos.toString();
    }
}

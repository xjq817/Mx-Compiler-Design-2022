package Util.error;

import Util.Position;

public class IRError extends error {
    public IRError(String msg) {
        super("IRError: " + msg, new Position(-1,-1));
    }
}
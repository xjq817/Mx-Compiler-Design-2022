package Util.error;

import Util.Position;

public class ASMError extends error {
    public ASMError(String msg) {
        super("ASMError: " + msg, new Position(-1,-1));
    }
}
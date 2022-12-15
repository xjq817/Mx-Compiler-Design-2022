package IR.IRValue;

import IR.IRGlobalBlock;
import IR.IRVisitor;

public class IRConstString extends IRConst {
    public String str;
    public String originStr;
    public int id;
    public int length;

    public IRConstString(String str, int id) {
        super(IRGlobalBlock.stringType);
        this.originStr = str;
        this.id = id;
        this.str = trans(str);
        this.length = this.str.length();
    }

    public String trans(String str) {
        return str.replace("\\\\", "\\")
                .replace("\\n", "\n")
                .replace("\\t", "\t")
                .replace("\\\"", "\"");
    }

    public String toPrint(String str) {
        return str.replace("\\", "\\5C")
                .replace("\n", "\\0A")
                .replace("\t", "\\09")
                .replace("\"", "\\22");
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    public String irPrint() {
        return "@.str." + id + " = private unnamed_addr constant [" + length + " x i8] c\"" + str + "\\00\"";
    }

    @Override
    public String toString() {
        return "getelementptr inbounds ([" + length + " x i8], [" + length + " x i8]* " +
                "@.str." + id + ", i32 0, i32 0)";
    }
}

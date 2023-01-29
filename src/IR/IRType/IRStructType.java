package IR.IRType;

import IR.IRValue.IRInitial;
import IR.IRValue.IRValue;
import IR.IRVisitor;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class IRStructType extends IRType {
    public String className;
    public LinkedHashMap<String, IRType> memberTypes;
    public LinkedHashMap<String, Integer> memberIds;
    public ArrayList<IRType> typeList;
    public int memberNumber;

    public IRStructType(String className) {
        this.className = className;
        memberTypes = new LinkedHashMap<>();
        memberIds = new LinkedHashMap<>();
        memberNumber = 0;
        typeList = new ArrayList<>();
    }

    public void addMember(String memberName, IRType memberType) {
        memberTypes.put(memberName, memberType);
        memberIds.put(memberName, memberNumber++);
        typeList.add(memberType);
    }

    @Override
    public IRValue defaultValue() {
        return new IRInitial(this);
    }

    @Override
    public int sizeof() {
        AtomicInteger sum = new AtomicInteger();
        memberTypes.forEach((name, type) -> sum.addAndGet(type.sizeof()));
        return sum.get();
//        int size = 1;
//        while (size < sum.get()) size <<= 1;
//        return size;
    }

    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "%class." + className;
    }

    public String irPrint() {
        StringBuilder builder = new StringBuilder();
        builder.append("type { ");
        var iter = memberTypes.entrySet().iterator();
        boolean isFirst = true;
        while (iter.hasNext()) {
            var entry = iter.next();
            if (!isFirst) builder.append(", ");
            else isFirst = false;
            builder.append(entry.getValue().toString());
        }
        builder.append(" }");
        return "%class." + className + " = " + builder;
    }

}

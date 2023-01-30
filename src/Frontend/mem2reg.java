package Frontend;

import IR.IRBlock;
import IR.IRFunction;
import IR.IRGlobalBlock;
import IR.IRType.IRStructType;
import IR.IRValue.IRConstString;
import IR.IRValue.IRGlobalDefine;
import IR.IRValue.IRRegister;
import IR.IRValue.IRValue;
import IR.IRVisitor;
import IR.Instruction.*;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Objects;

public class mem2reg implements IRVisitor {
    public IRFunction curFunction;
    public IRBlock curBlock;

    ArrayList<IRInstruction> newInst;
    LinkedHashMap<String, IRRegister> tmpMap;

    IRValue find(IRValue value) {
        if (value instanceof IRRegister)
            if (tmpMap.containsKey(value.toString()))
                return tmpMap.get(value.toString());
        return value;
    }

    @Override
    public void visit(IRAllocaInstruction it) {
        IRRegister tmp = new IRRegister(it.allocaType, "__tmp");
        tmp.isTmp = true;
        tmpMap.put(it.allocaRegister.toString(), tmp);
    }

    @Override
    public void visit(IRBrInstruction it) {
        it.condition = find(it.condition);
        newInst.add(it);
    }

    @Override
    public void visit(IRCallInstruction it) {
        ArrayList<IRValue> newValues = new ArrayList<>();
        for (int i = 0; i < it.argumentValues.size(); i++)
            newValues.add(find(it.argumentValues.get(i)));
        it.argumentValues = newValues;
        newInst.add(it);
    }

    @Override
    public void visit(IRLoadInstruction it) {
        if (it.loadFrom instanceof IRRegister && tmpMap.containsKey(it.loadFrom.toString())) {
            IRRegister tmp = tmpMap.get(it.loadFrom.toString());
            IRRegister newTmp = new IRRegister(tmp.type, "__tmp");
            newTmp.isTmp = true;
            tmpMap.put(it.register.toString(), newTmp);
            newInst.add(new IRStoreInstruction(tmp.type, newTmp, tmp, curBlock));
        } else newInst.add(it);
    }

    @Override
    public void visit(IRRetInstruction it) {
        it.retValue = find(it.retValue);
        newInst.add(it);
    }

    @Override
    public void visit(IRStoreInstruction it) {
        it.storeVal = find(it.storeVal);
        it.storeAddr = find(it.storeAddr);
        newInst.add(it);
    }

    @Override
    public void visit(IRBinaryInstruction it) {
        it.lhs = find(it.lhs);
        it.rhs = find(it.rhs);
        newInst.add(it);
    }

    @Override
    public void visit(IRIcmpInstruction it) {
        it.lhs = find(it.lhs);
        it.rhs = find(it.rhs);
        newInst.add(it);
    }

    @Override
    public void visit(IRTruncInstruction it) {
        it.value = find(it.value);
        newInst.add(it);
    }

    @Override
    public void visit(IRZextInstruction it) {
        it.value = find(it.value);
        newInst.add(it);
    }

    @Override
    public void visit(IRGetelementptrInstruction it) {
        it.ptrValue = find(it.ptrValue);
        ArrayList<IRValue> newValues = new ArrayList<>();
        for (int i = 0; i < it.values.size(); i++)
            newValues.add(find(it.values.get(i)));
        it.values = newValues;
        newInst.add(it);
    }

    @Override
    public void visit(IRBitcastInstruction it) {
        it.value = find(it.value);
        newInst.add(it);
    }

    @Override
    public void visit(IRBrLabelInstruction it) {
        newInst.add(it);
    }

    @Override
    public void visit(IRGlobalBlock it) {
        it.functions.forEach((name, func) -> func.accept(this));
    }

    @Override
    public void visit(IRBlock it) {
        curBlock = it;
        newInst = new ArrayList<>();
        it.instructions.forEach(inst -> inst.accept(this));
        it.instructions = newInst;
    }

    @Override
    public void visit(IRFunction it) {
        curFunction = it;
        tmpMap = new LinkedHashMap<>();
        it.blocks.forEach(cur -> cur.accept(this));
    }

    @Override
    public void visit(IRGlobalDefine it) {

    }

    @Override
    public void visit(IRConstString it) {

    }

    @Override
    public void visit(IRStructType it) {

    }
}

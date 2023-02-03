package Backend;

import ASM.ASMBlock;
import ASM.ASMFunction;
import ASM.ASMGlobalBlock;
import ASM.Instruction.*;
import ASM.Operand.ASMImm;
import ASM.Operand.ASMPhysicalRegister;
import ASM.Operand.ASMRegister;
import ASM.Operand.ASMVirtualRegister;
import org.antlr.v4.runtime.misc.Pair;

import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class GraphColoring {
    public ASMGlobalBlock gBlock;
    public ASMFunction curFunction;
    public ASMBlock curBlock;

    public int K;

    public HashMap<String, ASMBlock> blocks;

    public HashMap<ASMBlock, HashSet<ASMRegister>> blockDef;
    public HashMap<ASMBlock, HashSet<ASMRegister>> blockUse;
    public HashMap<ASMBlock, HashSet<ASMRegister>> blockIn;
    public HashMap<ASMBlock, HashSet<ASMRegister>> blockOut;

    public Stack<ASMRegister> selectStack;

    public HashSet<ASMRegister> spilledNodes;
    public HashSet<ASMRegister> simplifyWorklist;
    public HashSet<ASMRegister> freezeWorklist;
    public HashSet<ASMRegister> spillWorklist;
    public HashSet<ASMRegister> initial;
    public HashSet<ASMRegister> precolored;
    public HashSet<ASMRegister> coalescedNodes;
    public HashSet<ASMRegister> coloredNodes;
    public HashSet<ASMRegister> spilledCreated;

    public HashMap<ASMRegister, Integer> color;
    public HashMap<ASMRegister, Integer> degree;

    public HashSet<Pair<ASMRegister, ASMRegister>> adjSet;

    public HashMap<ASMRegister, ASMRegister> alias;

    public HashMap<ASMRegister, HashSet<ASMRegister>> adjList;

    public HashMap<ASMRegister, HashSet<ASMMvInstruction>> moveList;

    public HashSet<ASMMvInstruction> coalescedMoves;
    public HashSet<ASMMvInstruction> constrainedMoves;
    public HashSet<ASMMvInstruction> frozenMoves;
    public HashSet<ASMMvInstruction> worklistMoves;
    public HashSet<ASMMvInstruction> activeMoves;

    void init() {
        K = gBlock.okColor.size();

        blocks = new HashMap<>();

        blockDef = new HashMap<>();
        blockUse = new HashMap<>();
        blockIn = new HashMap<>();
        blockOut = new HashMap<>();

        selectStack = new Stack<>();

        spilledNodes = new HashSet<>();
        simplifyWorklist = new HashSet<>();
        freezeWorklist = new HashSet<>();
        spillWorklist = new HashSet<>();
        initial = new HashSet<>();
        precolored = new HashSet<>();
        coalescedNodes = new HashSet<>();
        coloredNodes = new HashSet<>();
        spilledCreated = new HashSet<>();

        color = new LinkedHashMap<>();
        degree = new HashMap<>();

        adjSet = new HashSet<>();

        alias = new HashMap<>();

        adjList = new HashMap<>();

        moveList = new HashMap<>();

        coalescedMoves = new HashSet<>();
        constrainedMoves = new HashSet<>();
        frozenMoves = new HashSet<>();
        worklistMoves = new HashSet<>();
        activeMoves = new HashSet<>();

        for (int i = 0; i < 32; i++) {
            ASMPhysicalRegister n = gBlock.physicalRegs.get(i);
            precolored.add(n);
            color.put(n, i);
            degree.put(n, 1 << 30);
            alias.put(n, n);
            adjList.put(n, new HashSet<>());
            moveList.put(n, new HashSet<>());
        }
    }

    void LivenessAnalysis() {
        curFunction.blocks.forEach(block -> {
            block.instructions.forEach(inst -> {
                if (inst instanceof ASMBranchInstruction)
                    block.succ.add(blocks.get(((ASMBranchInstruction) inst).toBlock));
            });
        });

        curFunction.blocks.forEach(block -> {
            HashSet<ASMRegister> def = new HashSet<>();
            HashSet<ASMRegister> use = new HashSet<>();
            block.instructions.forEach(inst -> {
                inst.use.forEach(n -> {
                    if (!def.contains(n)) use.add(n);
                });
                def.addAll(inst.def);
            });
            blockDef.put(block, def);
            blockUse.put(block, use);
            blockIn.put(block, use);
            blockOut.put(block, new HashSet<>());
        });

        while (true) {
            AtomicBoolean flag = new AtomicBoolean(true);

            curFunction.blocks.forEach(block -> {
                HashSet<ASMRegister> in = blockIn.get(block);
                HashSet<ASMRegister> out = blockOut.get(block);
                int inSize = in.size(), outSize = out.size();
                out.removeAll(blockDef.get(block));
                in.addAll(out);
                block.succ.forEach(succ -> out.addAll(blockIn.get(succ)));
                if (inSize != in.size() || outSize != out.size())
                    flag.set(false);
            });

            if (flag.get()) break;
        }
    }

    void AddEdge(ASMRegister u, ASMRegister v) {
        if (u != v && !adjSet.contains(new Pair<>(u, v))) {
            adjSet.add(new Pair<>(u, v));
            adjSet.add(new Pair<>(v, u));
            if (!precolored.contains(u)) {
                adjList.get(u).add(v);
                degree.replace(u, degree.get(u) + 1);
            }
            if (!precolored.contains(v)) {
                adjList.get(v).add(u);
                degree.replace(v, degree.get(v) + 1);
            }
        }
    }

    void Build() {
        while (true) {
            init();
            curFunction.blocks.forEach(block -> {
                curBlock = block;
                block.pred = new HashSet<>();
                block.succ = new HashSet<>();
                blocks.put(block.name, block);
                block.instructions.forEach(inst -> {
                    initial.addAll(inst.def);
                    initial.addAll(inst.use);
                });
            });
            initial.removeAll(precolored);
            initial.forEach(n -> {
                color.put(n, null);
                degree.put(n, 0);
                alias.put(n, n);
                adjList.put(n, new HashSet<>());
                moveList.put(n, new HashSet<>());
            });
            LivenessAnalysis();

            AtomicBoolean flag = new AtomicBoolean(true);
            //*
            curFunction.blocks.forEach(block -> {
                curBlock = block;
                HashSet<ASMRegister> live = new HashSet<>(blockOut.get(block));
                ArrayList<ASMInstruction> newInst = new ArrayList<>();
                for (int i = block.instructions.size() - 1; i >= 0; i--) {
                    ASMInstruction inst = block.instructions.get(i);
                    if (inst.isRemain || inst.rd == null || live.contains(inst.rd)) {
                        live.removeAll(inst.def);
                        live.addAll(inst.use);
                        newInst.add(inst);
                    }
                }
                flag.set(flag.get() & (newInst.size() == block.instructions.size()));
                block.instructions.clear();
                for (int i = newInst.size() - 1; i >= 0; i--)
                    block.instructions.add(newInst.get(i));
            });
            //*/
            if (flag.get()) break;
        }
        curFunction.blocks.forEach(block -> {
            HashSet<ASMRegister> live = new HashSet<>(blockOut.get(block));
            for (int i = block.instructions.size() - 1; i >= 0; i--) {
                ASMInstruction inst = block.instructions.get(i);
                if (inst instanceof ASMMvInstruction) {
                    live.removeAll(inst.use);
                    inst.def.forEach(n -> moveList.get(n).add((ASMMvInstruction) inst));
                    inst.use.forEach(n -> moveList.get(n).add((ASMMvInstruction) inst));
                    worklistMoves.add((ASMMvInstruction) inst);
                }
                live.addAll(inst.def);
                live.add(gBlock.physicalRegs.get(0));
                for (ASMRegister n : live)
                    for (ASMRegister m : inst.def)
                        AddEdge(n, m);
                live.removeAll(inst.def);
                live.addAll(inst.use);
            }
        });
    }

    HashSet<ASMRegister> Adjacent(ASMRegister n) {
        HashSet<ASMRegister> ret = new HashSet<>(adjList.get(n));
        selectStack.forEach(ret::remove);
        ret.removeAll(coalescedNodes);
        return ret;
    }

    HashSet<ASMMvInstruction> NodeMoves(ASMRegister n) {
        HashSet<ASMMvInstruction> ret = new HashSet<>(activeMoves);
        ret.addAll(worklistMoves);
        ret.retainAll(moveList.get(n));
        return ret;
    }

    boolean MoveRelated(ASMRegister n) {
        return NodeMoves(n).size() > 0;
    }

    void MakeWorklist() {
        initial.forEach(n -> {
            if (degree.get(n) >= K)
                spillWorklist.add(n);
            else if (MoveRelated(n))
                freezeWorklist.add(n);
            else simplifyWorklist.add(n);
        });
    }

    void EnableMoves(HashSet<ASMRegister> nodes) {
        nodes.forEach(n -> {
            HashSet<ASMMvInstruction> moves = NodeMoves(n);
            moves.forEach(m -> {
                if (activeMoves.contains(m)) {
                    activeMoves.remove(m);
                    worklistMoves.add(m);
                }
            });
        });
    }

    void DecrementDegree(ASMRegister m) {
        int d = degree.get(m);
        degree.replace(m, d - 1);
        if (d == K) {
            HashSet<ASMRegister> nodes = new HashSet<>(Adjacent(m));
            nodes.add(m);
            EnableMoves(nodes);
            spillWorklist.remove(m);
            if (MoveRelated(m)) freezeWorklist.add(m);
            else simplifyWorklist.add(m);
        }
    }

    void Simplify() {
        ASMRegister n = simplifyWorklist.iterator().next();
        simplifyWorklist.remove(n);
        selectStack.push(n);
        HashSet<ASMRegister> link = Adjacent(n);
        link.forEach(this::DecrementDegree);
    }

    ASMRegister GetAlias(ASMRegister n) {
        if (coalescedNodes.contains(n)) {
            alias.replace(n, GetAlias(alias.get(n)));
            return alias.get(n);
        }
        return n;
    }

    void AddWorkList(ASMRegister u) {
        if (!precolored.contains(u) && !MoveRelated(u)
                && degree.get(u) < K) {
            freezeWorklist.remove(u);
            simplifyWorklist.add(u);
        }
    }

    boolean OK(ASMRegister t, ASMRegister r) {
        return degree.get(t) < K || precolored.contains(t)
                || adjSet.contains(new Pair<>(t, r));
    }

    boolean Conservative(HashSet<ASMRegister> nodes) {
        AtomicInteger k = new AtomicInteger();
        nodes.forEach(n -> {
            if (degree.get(n) >= K) k.getAndIncrement();
        });
        return k.get() < K;
    }

    void Combine(ASMRegister u, ASMRegister v) {
        if (freezeWorklist.contains(v))
            freezeWorklist.remove(v);
        else spillWorklist.remove(v);
        coalescedNodes.add(v);
        alias.replace(v, u);
        moveList.get(u).addAll(moveList.get(v));
        HashSet<ASMRegister> tmp = new HashSet<>();
        tmp.add(v);
        EnableMoves(tmp);
        tmp = Adjacent(v);
        tmp.forEach(t -> {
            AddEdge(t, u);
            DecrementDegree(t);
        });
        if (degree.get(u) >= K && freezeWorklist.contains(u)) {
            freezeWorklist.remove(u);
            spillWorklist.add(u);
        }
    }

    void Coalesce() {
        ASMMvInstruction m = worklistMoves.iterator().next();
        ASMRegister x = GetAlias(m.rd);
        ASMRegister y = GetAlias(m.rs1);
        ASMRegister u, v;
        if (precolored.contains(y)) {
            u = y;
            v = x;
        } else {
            u = x;
            v = y;
        }
        worklistMoves.remove(m);
        if (u == v) {
            coalescedMoves.add(m);
            AddWorkList(u);
        } else if (precolored.contains(v) || adjSet.contains(new Pair<>(u, v))) {
            constrainedMoves.add(m);
            AddWorkList(u);
            AddWorkList(v);
        } else {
            AtomicBoolean flag = new AtomicBoolean(true);
            HashSet<ASMRegister> adjV = Adjacent(v);
            adjV.forEach(t -> flag.set(flag.get() & OK(t, u)));
            HashSet<ASMRegister> nodes = new HashSet<>(Adjacent(u));
            nodes.addAll(Adjacent(v));
            if ((precolored.contains(u) && flag.get()) ||
                    (!precolored.contains(u) && Conservative(nodes))) {
                coalescedMoves.add(m);
                Combine(u, v);
                AddWorkList(u);
            } else activeMoves.add(m);
        }
    }

    void FreezeMoves(ASMRegister u) {
        HashSet<ASMMvInstruction> moves = NodeMoves(u);
        moves.forEach(m -> {
            ASMRegister x = m.rd;
            ASMRegister y = m.rs1;
            ASMRegister v;
            if (GetAlias(y) == GetAlias(u))
                v = GetAlias(x);
            else v = GetAlias(y);
            activeMoves.remove(m);
            frozenMoves.add(m);
            if (NodeMoves(v).size() == 0 && degree.get(v) < K) {
                freezeWorklist.remove(v);
                simplifyWorklist.add(v);
            }
        });
    }

    void Freeze() {
        ASMRegister u = freezeWorklist.iterator().next();
        freezeWorklist.remove(u);
        simplifyWorklist.add(u);
        FreezeMoves(u);
    }

    void SelectSpill() {
        final ASMRegister[] m = {spillWorklist.iterator().next()};
        final int[] de = {-1};
        spillWorklist.forEach(n -> {
            if (!spilledCreated.contains(n) && degree.get(n) > de[0]) {
                m[0] = n;
                de[0] = degree.get(n);
            }
        });
        spillWorklist.remove(m[0]);
        simplifyWorklist.add(m[0]);
        FreezeMoves(m[0]);
    }

    void AssignColors() {
        while (!selectStack.isEmpty()) {
            ASMRegister n = selectStack.pop();
            ArrayList<Integer> okColors = new ArrayList<>(gBlock.okColor);
            HashSet<ASMRegister> colored = new HashSet<>(coloredNodes);
            colored.addAll(precolored);
            adjList.get(n).forEach(w -> {
                if (colored.contains(GetAlias(w)))
                    okColors.remove(color.get(GetAlias(w)));
            });
            if (okColors.isEmpty()) spilledNodes.add(n);
            else {
                coloredNodes.add(n);
                color.replace(n, okColors.get(0));
            }
        }

        coalescedNodes.forEach(n -> color.replace(n, color.get(GetAlias(n))));
    }

    void funcAlloc(ASMVirtualRegister reg) {
        reg.isAlloc = true;
        reg.offset = curFunction.allocSize;
        curFunction.allocSize += 4;
    }

    ArrayList<ASMInstruction> insts;

    boolean checkImm(int imm) {
        return -2048 <= imm && imm < 2048;
    }

    ASMRegister CreateLoad(ASMRegister n) {
        ASMVirtualRegister tmp = new ASMVirtualRegister("tmp");
        spilledCreated.add(tmp);
        if (n instanceof ASMVirtualRegister) {
            if (!((ASMVirtualRegister) n).isAlloc)
                funcAlloc((ASMVirtualRegister) n);
            ASMPhysicalRegister sp = gBlock.physicalRegs.get(2);
            int imm = ((ASMVirtualRegister) n).offset;
            if (checkImm(imm))
                insts.add(new ASMLoadInstruction(4, tmp, sp, new ASMImm(imm)));
            else {
                ASMVirtualRegister tmpLi = new ASMVirtualRegister("tmp_li");
                spilledCreated.add(tmpLi);
                insts.add(new ASMLiInstruction(tmpLi, new ASMImm(imm)));
                insts.add(new ASMBinaryInstruction("add", null, tmpLi, tmpLi, sp));
                insts.add(new ASMLoadInstruction(4, tmp, tmpLi, new ASMImm(0)));
            }
        }
        return tmp;
    }

    ASMRegister CreateStore(ASMRegister n) {
        ASMVirtualRegister tmp = new ASMVirtualRegister("tmp");
        spilledCreated.add(tmp);
        if (n instanceof ASMVirtualRegister) {
            if (!((ASMVirtualRegister) n).isAlloc)
                funcAlloc((ASMVirtualRegister) n);
            ASMPhysicalRegister sp = gBlock.physicalRegs.get(2);
            int imm = ((ASMVirtualRegister) n).offset;
            if (checkImm(imm))
                insts.add(new ASMStoreInstruction(4, tmp, sp, new ASMImm(imm)));
            else {
                ASMVirtualRegister tmpLi = new ASMVirtualRegister("tmp_li");
                spilledCreated.add(tmpLi);
                insts.add(new ASMLiInstruction(tmpLi, new ASMImm(imm)));
                insts.add(new ASMBinaryInstruction("add", null, tmpLi, tmpLi, sp));
                insts.add(new ASMStoreInstruction(4, tmp, tmpLi, new ASMImm(0)));
            }
        }
        return tmp;
    }

    void RewriteProgram() {
        curFunction.blocks.forEach(block -> {
            curBlock = block;
            insts = new ArrayList<>();
            block.instructions.forEach(inst -> {
                HashMap<ASMRegister, ASMRegister> map = new HashMap<>();
                inst.use.forEach(n -> {
                    if (spilledNodes.contains(n))
                        map.put(n, CreateLoad(n));
                });
                map.forEach((n, m) -> {
                    if (inst.rs1 == n) inst.rs1 = m;
                    if (inst.rs2 == n) inst.rs2 = m;
                    inst.use.remove(n);
                    inst.use.add(m);
                });
                insts.add(inst);
                map.clear();
                inst.def.forEach(n -> {
                    if (spilledNodes.contains(n))
                        map.put(n, CreateStore(n));
                });
                map.forEach((n, m) -> {
                    if (inst.rd == n) inst.rd = m;
                    inst.def.remove(n);
                    inst.def.add(m);
                });
            });
            block.instructions = insts;
        });
    }

    void visit(ASMFunction it) {
        curFunction = it;
        while (true) {

            Build();
            MakeWorklist();
            while (true) {
                if (!simplifyWorklist.isEmpty()) Simplify();
                else if (!worklistMoves.isEmpty()) Coalesce();
                else if (!freezeWorklist.isEmpty()) Freeze();
                else if (!spillWorklist.isEmpty()) SelectSpill();
                else break;
            }
            AssignColors();
            //System.out.println(spilledNodes.size());
            if (!spilledNodes.isEmpty())
                RewriteProgram();
            else break;
        }
    }

    public void visit(ASMGlobalBlock it) {
        gBlock = it;
        it.functions.forEach((name, func) -> {
            visit(func);
            func.blocks.forEach(block -> {
                ArrayList<ASMInstruction> newInst = new ArrayList<>();
                block.instructions.forEach(inst -> {
                    if (inst.rs1 instanceof ASMVirtualRegister)
                        inst.rs1 = it.physicalRegs.get(color.get(inst.rs1));
                    if (inst.rs2 instanceof ASMVirtualRegister)
                        inst.rs2 = it.physicalRegs.get(color.get(inst.rs2));
                    if (inst.rd instanceof ASMVirtualRegister)
                        inst.rd = it.physicalRegs.get(color.get(inst.rd));
                    if (!(inst instanceof ASMMvInstruction && inst.rd == inst.rs1))
                        newInst.add(inst);
                });
                block.instructions = newInst;
            });
        });

    }

}

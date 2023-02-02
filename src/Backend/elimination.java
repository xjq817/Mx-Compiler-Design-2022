package Backend;

import ASM.ASMBlock;
import ASM.ASMFunction;
import ASM.ASMGlobalBlock;
import ASM.Instruction.*;
import ASM.Operand.ASMVirtualRegister;
import avail_expr.binaryExpr;
import avail_expr.expr;

import java.util.HashMap;
import java.util.HashSet;

public class elimination {
    ASMGlobalBlock gBlock;
    ASMBlock curBlock;
    ASMFunction curFunction;

    HashMap<String, ASMBlock> blocks;

    HashSet<expr> allExpr;

    HashMap<ASMBlock, HashSet<expr>> blockGen;
    HashMap<ASMBlock, HashSet<expr>> blockKill;
    HashMap<ASMBlock, HashSet<expr>> blockIn;
    HashMap<ASMBlock, HashSet<expr>> blockOut;

    HashMap<ASMInstruction, expr> instExpr;

    int dfsCnt = 0;

    HashMap<ASMBlock, Integer> visit;

    void init() {
        blocks = new HashMap<>();

        allExpr = new HashSet<>();

        blockGen = new HashMap<>();
        blockKill = new HashMap<>();
        blockIn = new HashMap<>();
        blockOut = new HashMap<>();

        instExpr = new HashMap<>();

        visit = new HashMap<>();
    }

    void dfs(ASMBlock block, ASMVirtualRegister n, expr expr, int m) {
        if (visit.get(block) == dfsCnt) return;
        visit.replace(block, dfsCnt);
        if (block != curBlock) m = block.instructions.size() - 1;
        for (int i = m; i >= 0; i--) {
            ASMInstruction inst = block.instructions.get(i);
            if (instExpr.containsKey(inst) && instExpr.get(inst).equals(expr)) {
                block.instructions.add(i + 1, new ASMMvInstruction(inst.rd, n));
                inst.def.remove(inst.rd);
                inst.def.add(n);
                inst.rd = n;
                instExpr.replace(inst, expr);
                return;
            }
        }
        for (ASMBlock pred : block.pred)
            dfs(pred, n, expr, m);
    }

    void visit(ASMFunction it) {
        curFunction = it;
        init();
        it.blocks.forEach(block -> {
            blocks.put(block.name, block);
            block.pred = new HashSet<>();
            block.succ = new HashSet<>();
            visit.put(block, -1);
        });
        it.blocks.forEach(block -> {
            block.instructions.forEach(inst -> {
                if (inst instanceof ASMBranchInstruction)
                    blocks.get(((ASMBranchInstruction) inst).toBlock).pred.add(block);
            });
        });
        it.blocks.forEach(block -> {
            block.instructions.forEach(inst -> {
                expr expr = null;
                if (inst instanceof ASMBinaryInstruction)
                    expr = new binaryExpr(((ASMBinaryInstruction) inst).op, inst.rs1, inst.rs2, inst.imm);
                else if (inst instanceof ASMCmpInstruction)
                    expr = new binaryExpr(((ASMCmpInstruction) inst).op, inst.rs1, inst.rs2, inst.imm);
                if (expr != null) {
                    allExpr.add(expr);
                    instExpr.put(inst, expr);
                }
            });
        });
        it.blocks.forEach(block -> {
            HashSet<expr> gen = new HashSet<>();
            HashSet<expr> kill = new HashSet<>();

            for (int i = 0; i < block.instructions.size(); i++) {
                ASMInstruction inst = block.instructions.get(i);
                if (instExpr.containsKey(inst))
                    gen.add(instExpr.get(inst));
                gen.removeIf(expr -> inst.def.contains(expr.rs1) || inst.def.contains(expr.rs2));

                if (instExpr.containsKey(inst))
                    kill.remove(instExpr.get(inst));
                for (expr expr : allExpr)
                    if (inst.def.contains(expr.rs1) || inst.def.contains(expr.rs2))
                        kill.add(expr);
            }

            blockGen.put(block, gen);
            blockKill.put(block, kill);
            if (block == it.entryBlock)
                blockOut.put(block, new HashSet<>());
            else blockOut.put(block, new HashSet<>(allExpr));
            blockIn.put(block, new HashSet<>());
        });
        while (true) {
            boolean flag = true;
            for (ASMBlock block : it.blocks) {
                if (block != it.entryBlock) {
                    HashSet<expr> in = blockIn.get(block);
                    int inSize = in.size();
                    in.addAll(allExpr);
                    for (ASMBlock pred : block.pred)
                        in.retainAll(blockOut.get(pred));
                    HashSet<expr> out = blockOut.get(block);
                    int outSize = out.size();
                    out.clear();
                    out.addAll(in);
                    out.removeAll(blockKill.get(block));
                    out.addAll(blockGen.get(block));
                    if (in.size() != inSize || out.size() != outSize) flag = false;
                    blockIn.replace(block, in);
                    blockOut.replace(block, out);
                }
            }
            if (flag) break;
        }
        it.blocks.forEach(block -> {
            HashSet<expr> gen = new HashSet<>(blockIn.get(block));
            curBlock = block;
//            System.out.println("********************************");
//            System.out.println(block.name + ":");
//            System.out.println("in:");
//            for (expr expr : blockIn.get(block)) System.out.println(expr);
//            System.out.println("out");
//            for (expr expr : blockOut.get(block)) System.out.println(expr);
//            System.out.println("gen:");
//            for (expr expr : blockGen.get(block)) System.out.println(expr);
//            System.out.println("kill");
//            for (expr expr : blockKill.get(block)) System.out.println(expr);
//            if (Objects.equals(block.name, "main.0_for_execution")) {
//                System.out.println("fuck");
//            }
            for (int i = 0; i < block.instructions.size(); i++) {
                ASMInstruction inst = block.instructions.get(i);
                if (!instExpr.containsKey(inst)) continue;
                expr expr = instExpr.get(inst);
                if (gen.contains(expr)) {
                    ASMVirtualRegister n = new ASMVirtualRegister("eliminate");
                    block.instructions.set(i, new ASMMvInstruction(inst.rd, n));
                    dfsCnt++;
                    dfs(block, n, expr, i);
                }
                gen.add(expr);
                ASMInstruction finalInst = inst;
                gen.removeIf(e -> e.rs1 == finalInst.rd || e.rs2 == finalInst.rd);
            }
        });
    }

    public void visit(ASMGlobalBlock it) {
        gBlock = it;
        it.functions.forEach((name, func) -> visit(func));
    }
}

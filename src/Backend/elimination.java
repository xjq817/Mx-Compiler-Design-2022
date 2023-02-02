package Backend;

import ASM.ASMBlock;
import ASM.ASMFunction;
import ASM.ASMGlobalBlock;
import ASM.Instruction.*;
import ASM.Operand.ASMImm;
import ASM.Operand.ASMVirtualRegister;
import avail_expr.binaryExpr;
import avail_expr.expr;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;

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
            for (int i = block.instructions.size() - 1; i >= 0; i--) {
                ASMInstruction inst = block.instructions.get(i);
                if (inst.rd != null)
                    for (expr expr : allExpr) {
                        if (expr.rs1 == inst.rd || expr.rs2 == inst.rd)
                            kill.add(expr);
                    }
                if (instExpr.containsKey(inst)) {
                    if (!kill.contains(instExpr.get(inst)))
                        gen.add(instExpr.get(inst));
                }

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
            HashMap<ASMBlock,HashSet<expr>> newBlockIn=new HashMap<>();
            HashMap<ASMBlock,HashSet<expr>> newBlockOut=new HashMap<>();
            for (ASMBlock block : it.blocks) {
                newBlockIn.put(block,blockIn.get(block));
                newBlockOut.put(block,blockOut.get(block));
                if (block != it.entryBlock) {
                    HashSet<expr> in = newBlockIn.get(block);
                    in.removeAll(blockKill.get(block));
                    in.addAll(blockGen.get(block));
                    HashSet<expr> out = newBlockOut.get(block);
                    out.addAll(in);
                    in.clear();
                    in.addAll(allExpr);
                    for (ASMBlock pred : block.pred)
                        in.retainAll(blockOut.get(pred));
                    if (blockOut.get(block).size() != out.size())
                        flag = false;
                    blockIn.replace(block, in);
                    blockOut.replace(block, out);
                }
            }
            if (flag) break;
        }
        it.blocks.forEach(block -> {
            HashSet<expr> gen = new HashSet<>(blockIn.get(block));
            for (int i = 0; i < block.instructions.size(); i++) {
                ASMInstruction inst = block.instructions.get(i);
                if (!instExpr.containsKey(inst)) continue;
                expr expr = instExpr.get(inst);
                if (gen.contains(expr)) {
                    ASMVirtualRegister n = new ASMVirtualRegister("eliminate");
                    inst = new ASMMvInstruction(inst.rd, n);
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

package Frontend;

import Util.Position;
import Util.Type;
import Util.globalScope;
import ast.*;
import gen.MxBaseVisitor;
import gen.MxParser;
import org.antlr.v4.runtime.ParserRuleContext;

public class ASTBuilder extends MxBaseVisitor<ASTNode> {
    private globalScope gScope;

    public ASTBuilder(globalScope gScope) {
        this.gScope = gScope;
    }

    Type intType, boolType, StringType, VoidType;

    @Override
    public ASTNode visitProgram(MxParser.ProgramContext ctx) {
        RootNode root = new RootNode(new Position(ctx));
        for (var def : ctx.children)
            if (def instanceof MxParser.ClassDefContext) {
                root.defList.add((ASTNode) visit(def));
            } else if (def instanceof MxParser.FuncDefContext) {
                root.defList.add((ASTNode) visit(def));
            } else if (def instanceof MxParser.VarDefContext) {
                root.defList.add((ASTNode) visit(def));
            }
        return root;
    }

    @Override
    public ASTNode visitClassDef(MxParser.ClassDefContext ctx) {
        ClassDefNode classDef = new ClassDefNode(ctx.Identifier().toString(), new Position(ctx));
        for (var def : ctx.children)
            if (def instanceof MxParser.ClassConstructionDefContext) {
                classDef.classCstrDefs.add((classCstrDefNode) visit(def));
            } else if (def instanceof MxParser.FuncDefContext) {
                classDef.funcDefs.add((FuncDefNode) visit(def));
            } else if (def instanceof MxParser.VarDefContext) {
                classDef.varDefs.add((VarDefNode) visit(def));
            }
        return classDef;
    }

    @Override
    public ASTNode visitFuncDef(MxParser.FuncDefContext ctx) {
        int layer=0;
        if (ctx.type() != null) {
            for (var op:ctx.type().children){
                if (op instanceof MxParser.) layer++;
            }
        } else {

        }
    }
}

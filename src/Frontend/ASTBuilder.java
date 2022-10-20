package Frontend;

import Util.Position;
import ast.ASTNode;
import ast.RootNode;
import ast.def.*;
import ast.expr.*;
import ast.stmt.*;
import gen.MxBaseVisitor;
import gen.MxParser;

public class ASTBuilder extends MxBaseVisitor<ASTNode> {

    @Override
    public ASTNode visitProgram(MxParser.ProgramContext ctx) {
        RootNode ret = new RootNode(new Position(ctx));
        for (var def : ctx.children) {
            if (def instanceof MxParser.ClassDefContext) {
                ret.add((ASTNode) visit(def));
            } else if (def instanceof MxParser.FuncDefContext) {
                ret.add((ASTNode) visit(def));
            } else if (def instanceof MxParser.VarDefContext) {
                ret.add((ASTNode) visit(def));
            }
        }
        ret.finishBuild();
        return ret;
    }

    @Override
    public ASTNode visitIfStmt(MxParser.IfStmtContext ctx) {
        ExprNode conditionExpression = (ExprNode) visit(ctx.expression());
        IfStmtNode ret = new IfStmtNode(conditionExpression, new Position(ctx));
        ret.trueStmt = (StmtNode) visit(ctx.truestmt);
        if (ctx.falsestmt != null) {
            ret.falseStmt = (StmtNode) visit(ctx.falsestmt);
            ret.hasElse = true;
        }
        return ret;
    }

    @Override
    public ASTNode visitBlock(MxParser.BlockContext ctx) {
        BlockStmtNode ret = new BlockStmtNode(new Position(ctx));
        if (ctx.suite().statement() != null) {
            ctx.suite().statement().forEach(cur -> {
                StmtNode stmt = (StmtNode) visit(cur);
                ret.stmts.add(stmt);
            });
        }
        return ret;
    }

    @Override
    public ASTNode visitBreakStmt(MxParser.BreakStmtContext ctx) {
        return new BreakStmtNode(new Position(ctx));
    }

    @Override
    public ASTNode visitContinueStmt(MxParser.ContinueStmtContext ctx) {
        return new ContinueStmtNode(new Position(ctx));
    }

    @Override
    public ASTNode visitPureExprStmt(MxParser.PureExprStmtContext ctx) {
        return new ExprStmtNode((ExprNode) visit(ctx.expression()), new Position(ctx));
    }

    @Override
    public ASTNode visitEmptyStmt(MxParser.EmptyStmtContext ctx) {
        return new EmptyStmtNode(new Position(ctx));
    }

    @Override
    public ASTNode visitReturnStmt(MxParser.ReturnStmtContext ctx) {
        ReturnStmtNode ret = new ReturnStmtNode(new Position(ctx));
        if (ctx.expression() != null)
            ret.expr = (ExprNode) visit(ctx.expression());
        return ret;
    }

    @Override
    public ASTNode visitWhileStmt(MxParser.WhileStmtContext ctx) {
        ExprNode condition = (ExprNode) visit(ctx.expression());
        StmtNode thenStmt = (StmtNode) visit(ctx.statement());
        return new WhileStmtNode(condition, thenStmt, new Position(ctx));
    }

    @Override
    public ASTNode visitForInitStmt(MxParser.ForInitStmtContext ctx) {
        if (ctx.varDef() != null) return visit(ctx.varDef());
        if (ctx.expression() != null) return visit(ctx.expression());
        return null;
    }

    @Override
    public ASTNode visitForStmt(MxParser.ForStmtContext ctx) {
        ForStmtNode ret = new ForStmtNode((StmtNode) visit(ctx.statement()), new Position(ctx));
        if (ctx.condition != null) ret.condition = (ExprNode) visit(ctx.condition);
        if (ctx.execution != null) ret.execution = (ExprNode) visit(ctx.execution);
        ret.forInitStmt = visitForInitStmt(ctx.forInitStmt());
        return ret;
    }

    @Override
    public ASTNode visitAssignExpr(MxParser.AssignExprContext ctx){
        ExprNode lhs=(ExprNode) visit(ctx.lhs);
        ExprNode rhs=(ExprNode) visit(ctx.rhs);
        String op=ctx.op.getText();
        return new AssignExprNode(lhs,rhs,op,new Position(ctx));
    }

    @Override
    public ASTNode visitBinaryExpr(MxParser.BinaryExprContext ctx){
        ExprNode lhs=(ExprNode) visit(ctx.lhs);
        ExprNode rhs=(ExprNode) visit(ctx.rhs);
        String op=ctx.op.getText();
        return new BinaryExprNode(lhs,rhs,op,new Position(ctx));
    }

    @Override
    public ASTNode visitCellExpr(MxParser.CellExprContext ctx){
        ExprNode expr=(ExprNode) visit(ctx.expression());
        String op=ctx.op.getText();
        return new CellExprNode(expr,op,new Position(ctx));
    }

    @Override
    public ASTNode visitSufCellExpr(MxParser.SufCellExprContext ctx){
        ExprNode expr=(ExprNode) visit(ctx.expression());
        String op=ctx.op.getText();
        return new SufCellExprNode(expr,op,new Position(ctx));
    }

    @Override
    public ASTNode visitArrayExpr(MxParser.ArrayExprContext ctx){
        ExprNode name=(ExprNode) visit(ctx.name);
        ExprNode id=(ExprNode) visit(ctx.id);
        return new ArrayExprNode(name,id,new Position(ctx));
    }

    @Override
    public ASTNode visitFuncExpr(MxParser.FuncExprContext ctx){
        FuncExprNode ret=new FuncExprNode((ExprNode) visit(ctx.expression()),new Position(ctx));

        return ret;
    }/////////////////

    @Override
    public ASTNode visitLambdaExpr(MxParser.LambdaExprContext ctx){
        LambdaExprNode ret=new LambdaExprNode(new Position(ctx));
        if (ctx.parameterList()!=null){
            ctx.parameterList().parameter().forEach(cur->{
                ret.parameters.add((ParameterNode) visit(cur));
            });
        }
        return ret;
    }/////////////////


}

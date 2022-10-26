package Frontend;

import Util.Position;
import Util.error.internalError;
import ast.ASTNode;
import ast.RootNode;
import ast.def.*;
import ast.expr.*;
import ast.expr.primary.*;
import ast.stmt.*;
import ast.type.TypeNode;
import gen.MxBaseVisitor;
import gen.MxParser;

import java.util.Objects;

public class ASTBuilder extends MxBaseVisitor<ASTNode> {

    @Override
    public ASTNode visitProgram(MxParser.ProgramContext ctx) {
        RootNode ret = new RootNode(new Position(ctx));
        for (var cur : ctx.children) {
            if (cur instanceof MxParser.ClassDefContext) {
                ret.add((ClassDefNode) visit(cur));
            } else if (cur instanceof MxParser.FuncDefContext) {
                ret.add((FuncDefNode) visit(cur));
            } else if (cur instanceof MxParser.VarDefContext) {
                ret.add((VarDefNode) visit(cur));
            }
        }
        ret.finishBuild();
        return ret;
    }

    @Override
    public ASTNode visitClassDef(MxParser.ClassDefContext ctx) {
        IdentifierPrimaryNode iden = new IdentifierPrimaryNode(ctx.Identifier().getText(),
                false, false, new Position(ctx));
        ClassDefNode ret = new ClassDefNode(iden, new Position(ctx));
        for (var cur : ctx.children) {
            if (cur instanceof MxParser.ConstructionDefContext) {
                ret.constructions.add((ConstructionDefNode) visit(cur));
            } else if (cur instanceof MxParser.FuncDefContext) {
                ret.functions.add((FuncDefNode) visit(cur));
            } else if (cur instanceof MxParser.VarDefContext) {
                ret.variables.add((VarDefNode) visit(cur));
            }
        }
        return ret;
    }

    @Override
    public ASTNode visitConstructionDef(MxParser.ConstructionDefContext ctx) {
        IdentifierPrimaryNode iden = new IdentifierPrimaryNode(ctx.Identifier().getText(),
                false, true, new Position(ctx));
        ConstructionDefNode ret = new ConstructionDefNode(iden, new Position(ctx));
        if (ctx.suite().statement() != null) {
            ctx.suite().statement().forEach(cur -> {
                StmtNode stmt = (StmtNode) visit(cur);
                ret.stmts.add(stmt);
            });
        }
        return ret;
    }

    @Override
    public ASTNode visitVarDef(MxParser.VarDefContext ctx) {
        VarDefNode ret = new VarDefNode((TypeNode) visit(ctx.type()), new Position(ctx));
        ctx.singleVarDef().forEach(cur -> {
            SingleVarDefNode singleVarDefNode=(SingleVarDefNode) visit(cur);
            ret.variables.add(singleVarDefNode);
        });
        return ret;
    }

    @Override
    public ASTNode visitSingleVarDef(MxParser.SingleVarDefContext ctx) {
        IdentifierPrimaryNode iden = new IdentifierPrimaryNode(ctx.Identifier().getText(),
                true, false, new Position(ctx));
        SingleVarDefNode ret = new SingleVarDefNode(iden, new Position(ctx));
        if (ctx.expression() != null)
            ret.expr = (ExprNode) visit(ctx.expression());
        return ret;
    }

    @Override
    public ASTNode visitFuncDef(MxParser.FuncDefContext ctx) {
        TypeNode type = (TypeNode) visit(ctx.returnType());
        IdentifierPrimaryNode iden = new IdentifierPrimaryNode(ctx.Identifier().getText(),
                false, true, new Position(ctx));
        FuncDefNode ret = new FuncDefNode(type, iden, new Position(ctx));
        if (ctx.parameterList() != null) {
            ctx.parameterList().parameter().forEach(cur -> {
                ret.parameters.add((ParameterNode) visit(cur));
            });
        }
        if (ctx.suite().statement() != null) {
            ctx.suite().statement().forEach(cur -> {
                ret.stmts.add((StmtNode) visit(cur));
            });
        }
        return ret;
    }

    @Override
    public ASTNode visitReturnType(MxParser.ReturnTypeContext ctx) {
        if (ctx.Void() != null)
            return new TypeNode("void", new Position(ctx));
        return visit(ctx.type());
    }

    @Override
    public ASTNode visitParameter(MxParser.ParameterContext ctx) {
        TypeNode type = (TypeNode) visit(ctx.type());
        IdentifierPrimaryNode iden = new IdentifierPrimaryNode(ctx.Identifier().getText(),
                true, false, new Position(ctx));
        return new ParameterNode(type, iden, new Position(ctx));
    }

    @Override
    public ASTNode visitType(MxParser.TypeContext ctx) {
        TypeNode type = (TypeNode) visit(ctx.singleType());
        for (var cur : ctx.getText().toCharArray()) {
            if (Objects.equals(cur, '[')) type.layer++;
        }
        return type;
    }

    @Override
    public ASTNode visitSingleType(MxParser.SingleTypeContext ctx) {
        if (ctx.Identifier() != null)
            return new TypeNode(ctx.Identifier().getText(), new Position(ctx));
        return new TypeNode(ctx.primitiveType().getText(), new Position(ctx));
    }

    @Override
    public ASTNode visitIfStmt(MxParser.IfStmtContext ctx) {
        ExprNode conditionExpression = (ExprNode) visit(ctx.expression());
        IfStmtNode ret = new IfStmtNode(conditionExpression, new Position(ctx));
        ret.trueStmt = (StmtNode) visit(ctx.truestmt);
        if (ctx.falsestmt != null)
            ret.falseStmt = (StmtNode) visit(ctx.falsestmt);
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
    public ASTNode visitVardefStmt(MxParser.VardefStmtContext ctx) {
        return visit(ctx.varDef());
    }

    @Override
    public ASTNode visitAssignExpr(MxParser.AssignExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.lhs);
        ExprNode rhs = (ExprNode) visit(ctx.rhs);
        String op = ctx.op.getText();
        return new AssignExprNode(lhs, rhs, op, new Position(ctx));
    }

    @Override
    public ASTNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.lhs);
        ExprNode rhs = (ExprNode) visit(ctx.rhs);
        String op = ctx.op.getText();
        return new BinaryExprNode(lhs, rhs, op, new Position(ctx));
    }

    @Override
    public ASTNode visitCellExpr(MxParser.CellExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expression());
        String op = ctx.op.getText();
        return new CellExprNode(expr, op, new Position(ctx));
    }

    @Override
    public ASTNode visitSufCellExpr(MxParser.SufCellExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expression());
        String op = ctx.op.getText();
        return new SufCellExprNode(expr, op, new Position(ctx));
    }

    @Override
    public ASTNode visitArrayExpr(MxParser.ArrayExprContext ctx) {
        ExprNode name = (ExprNode) visit(ctx.name);
        ExprNode id = (ExprNode) visit(ctx.id);
        return new ArrayExprNode(name, id, new Position(ctx));
    }

    @Override
    public ASTNode visitFuncExpr(MxParser.FuncExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expression());
        if (expr instanceof ObjectExprNode) {
            ((ObjectExprNode) expr).iden.isVar = false;
            ((ObjectExprNode) expr).iden.isFunc = true;
        } else if (expr instanceof IdentifierPrimaryNode) {
            ((IdentifierPrimaryNode) expr).isVar = false;
            ((IdentifierPrimaryNode) expr).isFunc = true;
        } else throw new internalError("functionExpr is invalid", new Position(ctx));
        FuncExprNode ret = new FuncExprNode(expr, new Position(ctx));
        if (ctx.argumentList() != null) {
            ctx.argumentList().expression().forEach(cur -> {
                ret.arguments.add((ExprNode) visit(cur));
            });
        }
        return ret;
    }

    @Override
    public ASTNode visitLambdaExpr(MxParser.LambdaExprContext ctx) {
        LambdaExprNode ret = new LambdaExprNode(new Position(ctx));
        if (ctx.parameterList() != null) {
            ctx.parameterList().parameter().forEach(cur -> {
                ret.parameters.add((ParameterNode) visit(cur));
            });
        }
        if (ctx.suite().statement() != null) {
            ctx.suite().statement().forEach(cur -> {
                ret.stmts.add((StmtNode) visit(cur));
            });
        }
        if (ctx.argumentList() != null) {
            ctx.argumentList().expression().forEach(cur -> {
                ret.exprs.add((ExprNode) visit(cur));
            });
        }
        return ret;
    }

    @Override
    public ASTNode visitAtomExpr(MxParser.AtomExprContext ctx) {
        return visit(ctx.primary());
    }

    @Override
    public ASTNode visitNewTypeExpr(MxParser.NewTypeExprContext ctx) {
        return visit(ctx.newType());
    }

    @Override
    public ASTNode visitObjectExpr(MxParser.ObjectExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expression());
        String str = ctx.Identifier().getText();
        IdentifierPrimaryNode iden = new IdentifierPrimaryNode(str, true, false, new Position(ctx));
        return new ObjectExprNode(expr, iden, new Position(ctx));
    }

    @Override
    public ASTNode visitPrimary(MxParser.PrimaryContext ctx) {
        if (ctx.expression() != null) return visit(ctx.expression());
        if (ctx.literal() != null) return visit(ctx.literal());
        if (ctx.This() != null) return new ThisPrimaryNode(new Position(ctx));
        return new IdentifierPrimaryNode(ctx.Identifier().getText(), true, false, new Position(ctx));
    }

    @Override
    public ASTNode visitNewArrayExpr(MxParser.NewArrayExprContext ctx) {
        TypeNode newType = (TypeNode) visit(ctx.singleType());
        NewTypeExprNode ret = new NewTypeExprNode(newType, new Position(ctx));
        ret.newType.layer = 1;
        ctx.expression().forEach(cur -> {
            ret.exprs.add((ExprNode) visit(cur));
            ret.newType.layer--;
        });
        for (var cur : ctx.getText().toCharArray()) {
            if (Objects.equals(cur, '[')) ret.newType.layer++;
        }
        return ret;
    }

    @Override
    public ASTNode visitNewObjExpr(MxParser.NewObjExprContext ctx) {
        return new NewTypeExprNode((TypeNode) visit(ctx.singleType()), new Position(ctx));
    }

    @Override
    public ASTNode visitLiteral(MxParser.LiteralContext ctx) {
        if (ctx.DecimalInteger() != null)
            return new IntPrimaryNode(ctx.DecimalInteger().getText(), new Position(ctx));
        if (ctx.Null() != null)
            return new NullPrimaryNode(new Position(ctx));
        if (ctx.StringConst() != null) {
            int len = ctx.StringConst().getText().length();
            String str = ctx.StringConst().getText().substring(1, len - 1);
            return new StringPrimaryNode(str, new Position(ctx));
        }
        if (ctx.True() != null)
            return new BoolPrimaryNode(true, new Position(ctx));
        return new BoolPrimaryNode(false, new Position(ctx));
    }

}

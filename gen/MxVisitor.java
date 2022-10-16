// Generated from C:/Users/Lenovo/Desktop/useforgit/Mx-Compiler-Design-2022\Mx.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#mainFn}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMainFn(MxParser.MainFnContext ctx);
	/**
	 * Visit a parse tree produced by the {@code singleVarDef}
	 * labeled alternative in {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSingleVarDef(MxParser.SingleVarDefContext ctx);
	/**
	 * Visit a parse tree produced by the {@code arrayVarDef}
	 * labeled alternative in {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayVarDef(MxParser.ArrayVarDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDef(MxParser.ClassDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#function}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunction(MxParser.FunctionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#lamdaExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLamdaExpr(MxParser.LamdaExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#functionList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionList(MxParser.FunctionListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuite(MxParser.SuiteContext ctx);
	/**
	 * Visit a parse tree produced by the {@code block}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code vardefStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVardefStmt(MxParser.VardefStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStmt(MxParser.IfStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStmt(MxParser.WhileStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStmt(MxParser.ForStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnStmt(MxParser.ReturnStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code pureExprStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPureExprStmt(MxParser.PureExprStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEmptyStmt(MxParser.EmptyStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code nullptr}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNullptr(MxParser.NullptrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newArray}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewArray(MxParser.NewArrayContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newElement}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewElement(MxParser.NewElementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code funcExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncExpr(MxParser.FuncExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code muldivExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMuldivExpr(MxParser.MuldivExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code equExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEquExpr(MxParser.EquExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code negativeExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNegativeExpr(MxParser.NegativeExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code preself}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPreself(MxParser.PreselfContext ctx);
	/**
	 * Visit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code addsubExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddsubExpr(MxParser.AddsubExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code bitExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitExpr(MxParser.BitExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code sufself}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSufself(MxParser.SufselfContext ctx);
	/**
	 * Visit a parse tree produced by the {@code logicExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicExpr(MxParser.LogicExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code sizerlsExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSizerlsExpr(MxParser.SizerlsExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code initExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitExpr(MxParser.InitExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#functionExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionExpr(MxParser.FunctionExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#meminitList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMeminitList(MxParser.MeminitListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#memfuncList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemfuncList(MxParser.MemfuncListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary(MxParser.PrimaryContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#arrayElement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayElement(MxParser.ArrayElementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classMem}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassMem(MxParser.ClassMemContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#literal}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLiteral(MxParser.LiteralContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(MxParser.TypeContext ctx);
}
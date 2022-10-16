// Generated from C:/Users/Lenovo/Desktop/useforgit/Mx-Compiler-Design-2022\Mx.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxParser}.
 */
public interface MxListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#mainFn}.
	 * @param ctx the parse tree
	 */
	void enterMainFn(MxParser.MainFnContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#mainFn}.
	 * @param ctx the parse tree
	 */
	void exitMainFn(MxParser.MainFnContext ctx);
	/**
	 * Enter a parse tree produced by the {@code singleVarDef}
	 * labeled alternative in {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 */
	void enterSingleVarDef(MxParser.SingleVarDefContext ctx);
	/**
	 * Exit a parse tree produced by the {@code singleVarDef}
	 * labeled alternative in {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 */
	void exitSingleVarDef(MxParser.SingleVarDefContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayVarDef}
	 * labeled alternative in {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 */
	void enterArrayVarDef(MxParser.ArrayVarDefContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayVarDef}
	 * labeled alternative in {@link MxParser#varDef}.
	 * @param ctx the parse tree
	 */
	void exitArrayVarDef(MxParser.ArrayVarDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classDef}.
	 * @param ctx the parse tree
	 */
	void enterClassDef(MxParser.ClassDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classDef}.
	 * @param ctx the parse tree
	 */
	void exitClassDef(MxParser.ClassDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#function}.
	 * @param ctx the parse tree
	 */
	void enterFunction(MxParser.FunctionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#function}.
	 * @param ctx the parse tree
	 */
	void exitFunction(MxParser.FunctionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#lamdaExpr}.
	 * @param ctx the parse tree
	 */
	void enterLamdaExpr(MxParser.LamdaExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#lamdaExpr}.
	 * @param ctx the parse tree
	 */
	void exitLamdaExpr(MxParser.LamdaExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#functionList}.
	 * @param ctx the parse tree
	 */
	void enterFunctionList(MxParser.FunctionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#functionList}.
	 * @param ctx the parse tree
	 */
	void exitFunctionList(MxParser.FunctionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 */
	void enterSuite(MxParser.SuiteContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 */
	void exitSuite(MxParser.SuiteContext ctx);
	/**
	 * Enter a parse tree produced by the {@code block}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MxParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by the {@code block}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MxParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by the {@code vardefStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterVardefStmt(MxParser.VardefStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code vardefStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitVardefStmt(MxParser.VardefStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(MxParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(MxParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(MxParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(MxParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(MxParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(MxParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(MxParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(MxParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code pureExprStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterPureExprStmt(MxParser.PureExprStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code pureExprStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitPureExprStmt(MxParser.PureExprStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterEmptyStmt(MxParser.EmptyStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitEmptyStmt(MxParser.EmptyStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code nullptr}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 */
	void enterNullptr(MxParser.NullptrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code nullptr}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 */
	void exitNullptr(MxParser.NullptrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newArray}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 */
	void enterNewArray(MxParser.NewArrayContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newArray}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 */
	void exitNewArray(MxParser.NewArrayContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newElement}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 */
	void enterNewElement(MxParser.NewElementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newElement}
	 * labeled alternative in {@link MxParser#initializationExpression}.
	 * @param ctx the parse tree
	 */
	void exitNewElement(MxParser.NewElementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code funcExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFuncExpr(MxParser.FuncExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code funcExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFuncExpr(MxParser.FuncExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code muldivExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMuldivExpr(MxParser.MuldivExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code muldivExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMuldivExpr(MxParser.MuldivExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code equExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterEquExpr(MxParser.EquExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code equExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitEquExpr(MxParser.EquExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code negativeExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNegativeExpr(MxParser.NegativeExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code negativeExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNegativeExpr(MxParser.NegativeExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code preself}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPreself(MxParser.PreselfContext ctx);
	/**
	 * Exit a parse tree produced by the {@code preself}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPreself(MxParser.PreselfContext ctx);
	/**
	 * Enter a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code addsubExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAddsubExpr(MxParser.AddsubExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code addsubExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAddsubExpr(MxParser.AddsubExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code bitExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBitExpr(MxParser.BitExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code bitExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBitExpr(MxParser.BitExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code sufself}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSufself(MxParser.SufselfContext ctx);
	/**
	 * Exit a parse tree produced by the {@code sufself}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSufself(MxParser.SufselfContext ctx);
	/**
	 * Enter a parse tree produced by the {@code logicExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogicExpr(MxParser.LogicExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code logicExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogicExpr(MxParser.LogicExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code sizerlsExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSizerlsExpr(MxParser.SizerlsExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code sizerlsExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSizerlsExpr(MxParser.SizerlsExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code initExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterInitExpr(MxParser.InitExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code initExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitInitExpr(MxParser.InitExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#functionExpr}.
	 * @param ctx the parse tree
	 */
	void enterFunctionExpr(MxParser.FunctionExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#functionExpr}.
	 * @param ctx the parse tree
	 */
	void exitFunctionExpr(MxParser.FunctionExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#meminitList}.
	 * @param ctx the parse tree
	 */
	void enterMeminitList(MxParser.MeminitListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#meminitList}.
	 * @param ctx the parse tree
	 */
	void exitMeminitList(MxParser.MeminitListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#memfuncList}.
	 * @param ctx the parse tree
	 */
	void enterMemfuncList(MxParser.MemfuncListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#memfuncList}.
	 * @param ctx the parse tree
	 */
	void exitMemfuncList(MxParser.MemfuncListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#primary}.
	 * @param ctx the parse tree
	 */
	void enterPrimary(MxParser.PrimaryContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#primary}.
	 * @param ctx the parse tree
	 */
	void exitPrimary(MxParser.PrimaryContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#arrayElement}.
	 * @param ctx the parse tree
	 */
	void enterArrayElement(MxParser.ArrayElementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#arrayElement}.
	 * @param ctx the parse tree
	 */
	void exitArrayElement(MxParser.ArrayElementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classMem}.
	 * @param ctx the parse tree
	 */
	void enterClassMem(MxParser.ClassMemContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classMem}.
	 * @param ctx the parse tree
	 */
	void exitClassMem(MxParser.ClassMemContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(MxParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(MxParser.LiteralContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(MxParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(MxParser.TypeContext ctx);
}
// Generated from C:/Users/Lenovo/Desktop/useforgit/Mx-Compiler-Design-2022\Mx.g4 by ANTLR 4.10.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.10.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, LogicConst=5, Int=6, Bool=7, String=8, 
		If=9, Else=10, Return=11, Struct=12, Void=13, New=14, Class=15, Null=16, 
		True=17, False=18, This=19, For=20, While=21, Break=22, Continue=23, Less=24, 
		LessEqual=25, Greater=26, GreaterEqual=27, Equal=28, NotEqual=29, Plus=30, 
		Minus=31, Mul=32, Div=33, Mod=34, AndAnd=35, OrOr=36, Not=37, LeftShift=38, 
		RightShift=39, And=40, Or=41, Invert=42, Xor=43, Assign=44, Autoplus=45, 
		Autominus=46, Obj=47, LeftParen=48, RightParen=49, LeftBracket=50, RightBracket=51, 
		LeftBrace=52, RightBrace=53, Semi=54, Comma=55, Identifier=56, StringConst=57, 
		DecimalInteger=58, Whitespace=59, Newline=60, LineComment=61;
	public static final int
		RULE_program = 0, RULE_mainFn = 1, RULE_varDef = 2, RULE_classDef = 3, 
		RULE_function = 4, RULE_lamdaExpr = 5, RULE_functionList = 6, RULE_suite = 7, 
		RULE_statement = 8, RULE_initializationExpression = 9, RULE_expression = 10, 
		RULE_functionExpr = 11, RULE_meminitList = 12, RULE_memfuncList = 13, 
		RULE_primary = 14, RULE_arrayElement = 15, RULE_classMem = 16, RULE_literal = 17, 
		RULE_type = 18;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "mainFn", "varDef", "classDef", "function", "lamdaExpr", "functionList", 
			"suite", "statement", "initializationExpression", "expression", "functionExpr", 
			"meminitList", "memfuncList", "primary", "arrayElement", "classMem", 
			"literal", "type"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'main'", "'()'", "'[]'", "'->'", null, "'int'", "'bool'", "'string'", 
			"'if'", "'else'", "'return'", "'struct'", "'void'", "'new'", "'class'", 
			"'null'", "'true'", "'false'", "'this'", "'for'", "'while'", "'break'", 
			"'continue'", "'<'", "'<='", "'>'", "'>='", "'=='", "'!='", "'+'", "'-'", 
			"'*'", "'/'", "'%'", "'&&'", "'||'", "'!'", "'<<'", "'>>'", "'&'", "'|'", 
			"'~'", "'^'", "'='", "'++'", "'--'", "'.'", "'('", "')'", "'['", "']'", 
			"'{'", "'}'", "';'", "','"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, "LogicConst", "Int", "Bool", "String", 
			"If", "Else", "Return", "Struct", "Void", "New", "Class", "Null", "True", 
			"False", "This", "For", "While", "Break", "Continue", "Less", "LessEqual", 
			"Greater", "GreaterEqual", "Equal", "NotEqual", "Plus", "Minus", "Mul", 
			"Div", "Mod", "AndAnd", "OrOr", "Not", "LeftShift", "RightShift", "And", 
			"Or", "Invert", "Xor", "Assign", "Autoplus", "Autominus", "Obj", "LeftParen", 
			"RightParen", "LeftBracket", "RightBracket", "LeftBrace", "RightBrace", 
			"Semi", "Comma", "Identifier", "StringConst", "DecimalInteger", "Whitespace", 
			"Newline", "LineComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public MainFnContext mainFn() {
			return getRuleContext(MainFnContext.class,0);
		}
		public List<ClassDefContext> classDef() {
			return getRuleContexts(ClassDefContext.class);
		}
		public ClassDefContext classDef(int i) {
			return getRuleContext(ClassDefContext.class,i);
		}
		public List<VarDefContext> varDef() {
			return getRuleContexts(VarDefContext.class);
		}
		public VarDefContext varDef(int i) {
			return getRuleContext(VarDefContext.class,i);
		}
		public List<FunctionContext> function() {
			return getRuleContexts(FunctionContext.class);
		}
		public FunctionContext function(int i) {
			return getRuleContext(FunctionContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(43);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					setState(41);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
					case 1:
						{
						setState(38);
						classDef();
						}
						break;
					case 2:
						{
						setState(39);
						varDef();
						}
						break;
					case 3:
						{
						setState(40);
						function();
						}
						break;
					}
					} 
				}
				setState(45);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			}
			setState(46);
			mainFn();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MainFnContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxParser.Int, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public TerminalNode EOF() { return getToken(MxParser.EOF, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public MainFnContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mainFn; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterMainFn(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitMainFn(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitMainFn(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MainFnContext mainFn() throws RecognitionException {
		MainFnContext _localctx = new MainFnContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_mainFn);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48);
			match(Int);
			setState(49);
			match(T__0);
			setState(53);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__1:
				{
				setState(50);
				match(T__1);
				}
				break;
			case LeftParen:
				{
				setState(51);
				match(LeftParen);
				setState(52);
				match(RightParen);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(55);
			suite();
			setState(56);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDefContext extends ParserRuleContext {
		public VarDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDef; }
	 
		public VarDefContext() { }
		public void copyFrom(VarDefContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ArrayVarDefContext extends VarDefContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public MeminitListContext meminitList() {
			return getRuleContext(MeminitListContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxParser.Semi, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public ArrayVarDefContext(VarDefContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterArrayVarDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitArrayVarDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitArrayVarDef(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class SingleVarDefContext extends VarDefContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public MeminitListContext meminitList() {
			return getRuleContext(MeminitListContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxParser.Semi, 0); }
		public SingleVarDefContext(VarDefContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSingleVarDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSingleVarDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSingleVarDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDefContext varDef() throws RecognitionException {
		VarDefContext _localctx = new VarDefContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDef);
		int _la;
		try {
			setState(73);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				_localctx = new SingleVarDefContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(58);
				type();
				setState(59);
				meminitList();
				setState(60);
				match(Semi);
				}
				break;
			case 2:
				_localctx = new ArrayVarDefContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(62);
				type();
				setState(66); 
				_errHandler.sync(this);
				_la = _input.LA(1);
				do {
					{
					setState(66);
					_errHandler.sync(this);
					switch (_input.LA(1)) {
					case LeftBracket:
						{
						setState(63);
						match(LeftBracket);
						setState(64);
						match(RightBracket);
						}
						break;
					case T__2:
						{
						setState(65);
						match(T__2);
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					}
					setState(68); 
					_errHandler.sync(this);
					_la = _input.LA(1);
				} while ( _la==T__2 || _la==LeftBracket );
				setState(70);
				meminitList();
				setState(71);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDefContext extends ParserRuleContext {
		public TerminalNode Class() { return getToken(MxParser.Class, 0); }
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TerminalNode LeftBrace() { return getToken(MxParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxParser.RightBrace, 0); }
		public TerminalNode Semi() { return getToken(MxParser.Semi, 0); }
		public List<VarDefContext> varDef() {
			return getRuleContexts(VarDefContext.class);
		}
		public VarDefContext varDef(int i) {
			return getRuleContext(VarDefContext.class,i);
		}
		public List<FunctionContext> function() {
			return getRuleContexts(FunctionContext.class);
		}
		public FunctionContext function(int i) {
			return getRuleContext(FunctionContext.class,i);
		}
		public ClassDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClassDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClassDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitClassDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassDefContext classDef() throws RecognitionException {
		ClassDefContext _localctx = new ClassDefContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_classDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			match(Class);
			setState(76);
			match(Identifier);
			setState(77);
			match(LeftBrace);
			setState(82);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Identifier))) != 0)) {
				{
				setState(80);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
				case 1:
					{
					setState(78);
					varDef();
					}
					break;
				case 2:
					{
					setState(79);
					function();
					}
					break;
				}
				}
				setState(84);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(85);
			match(RightBrace);
			setState(86);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public FunctionListContext functionList() {
			return getRuleContext(FunctionListContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode Void() { return getToken(MxParser.Void, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public FunctionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_function; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunction(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFunction(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionContext function() throws RecognitionException {
		FunctionContext _localctx = new FunctionContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_function);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(98);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
			case 1:
				{
				setState(88);
				type();
				setState(94);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__2 || _la==LeftBracket) {
					{
					setState(92);
					_errHandler.sync(this);
					switch (_input.LA(1)) {
					case LeftBracket:
						{
						setState(89);
						match(LeftBracket);
						setState(90);
						match(RightBracket);
						}
						break;
					case T__2:
						{
						setState(91);
						match(T__2);
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					}
					setState(96);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case 2:
				{
				setState(97);
				match(Void);
				}
				break;
			}
			setState(100);
			match(Identifier);
			setState(106);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LeftParen:
				{
				setState(101);
				match(LeftParen);
				setState(102);
				functionList();
				setState(103);
				match(RightParen);
				}
				break;
			case T__1:
				{
				setState(105);
				match(T__1);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(108);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LamdaExprContext extends ParserRuleContext {
		public TerminalNode LeftBracket() { return getToken(MxParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxParser.RightBracket, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public FunctionListContext functionList() {
			return getRuleContext(FunctionListContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public TerminalNode And() { return getToken(MxParser.And, 0); }
		public LamdaExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lamdaExpr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterLamdaExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitLamdaExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitLamdaExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LamdaExprContext lamdaExpr() throws RecognitionException {
		LamdaExprContext _localctx = new LamdaExprContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_lamdaExpr);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(110);
			match(LeftBracket);
			setState(112);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==And) {
				{
				setState(111);
				match(And);
				}
			}

			setState(114);
			match(RightBracket);
			setState(115);
			match(LeftParen);
			setState(116);
			functionList();
			setState(117);
			match(RightParen);
			setState(118);
			match(T__3);
			setState(119);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionListContext extends ParserRuleContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public List<TerminalNode> Identifier() { return getTokens(MxParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxParser.Identifier, i);
		}
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxParser.Comma, i);
		}
		public FunctionListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunctionList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunctionList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFunctionList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionListContext functionList() throws RecognitionException {
		FunctionListContext _localctx = new FunctionListContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_functionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(148);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(121);
				type();
				setState(127);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__2 || _la==LeftBracket) {
					{
					setState(125);
					_errHandler.sync(this);
					switch (_input.LA(1)) {
					case LeftBracket:
						{
						setState(122);
						match(LeftBracket);
						setState(123);
						match(RightBracket);
						}
						break;
					case T__2:
						{
						setState(124);
						match(T__2);
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					}
					setState(129);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(130);
				match(Identifier);
				setState(145);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(131);
					match(Comma);
					setState(132);
					type();
					setState(138);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__2 || _la==LeftBracket) {
						{
						setState(136);
						_errHandler.sync(this);
						switch (_input.LA(1)) {
						case LeftBracket:
							{
							setState(133);
							match(LeftBracket);
							setState(134);
							match(RightBracket);
							}
							break;
						case T__2:
							{
							setState(135);
							match(T__2);
							}
							break;
						default:
							throw new NoViableAltException(this);
						}
						}
						setState(140);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(141);
					match(Identifier);
					}
					}
					setState(147);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SuiteContext extends ParserRuleContext {
		public TerminalNode LeftBrace() { return getToken(MxParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxParser.RightBrace, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public SuiteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_suite; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSuite(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSuite(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSuite(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SuiteContext suite() throws RecognitionException {
		SuiteContext _localctx = new SuiteContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(150);
			match(LeftBrace);
			setState(154);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << If) | (1L << Return) | (1L << New) | (1L << Null) | (1L << This) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Semi) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
				{
				{
				setState(151);
				statement();
				}
				}
				setState(156);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(157);
			match(RightBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	 
		public StatementContext() { }
		public void copyFrom(StatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ForStmtContext extends StatementContext {
		public StatementContext trueStmt;
		public TerminalNode For() { return getToken(MxParser.For, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public List<TerminalNode> Semi() { return getTokens(MxParser.Semi); }
		public TerminalNode Semi(int i) {
			return getToken(MxParser.Semi, i);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ForStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterForStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitForStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitForStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class WhileStmtContext extends StatementContext {
		public StatementContext trueStmt;
		public TerminalNode While() { return getToken(MxParser.While, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public WhileStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterWhileStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitWhileStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitWhileStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class IfStmtContext extends StatementContext {
		public StatementContext trueStmt;
		public StatementContext falseStmt;
		public TerminalNode If() { return getToken(MxParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxParser.Else, 0); }
		public IfStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterIfStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitIfStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitIfStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class EmptyStmtContext extends StatementContext {
		public TerminalNode Semi() { return getToken(MxParser.Semi, 0); }
		public EmptyStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterEmptyStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitEmptyStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitEmptyStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BlockContext extends StatementContext {
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public BlockContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitBlock(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ReturnStmtContext extends StatementContext {
		public TerminalNode Return() { return getToken(MxParser.Return, 0); }
		public TerminalNode Semi() { return getToken(MxParser.Semi, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterReturnStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitReturnStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitReturnStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class VardefStmtContext extends StatementContext {
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public VardefStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVardefStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVardefStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitVardefStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PureExprStmtContext extends StatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxParser.Semi, 0); }
		public PureExprStmtContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterPureExprStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitPureExprStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitPureExprStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_statement);
		int _la;
		try {
			setState(200);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				_localctx = new BlockContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(159);
				suite();
				}
				break;
			case 2:
				_localctx = new VardefStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(160);
				varDef();
				}
				break;
			case 3:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(161);
				match(If);
				setState(162);
				match(LeftParen);
				setState(163);
				expression(0);
				setState(164);
				match(RightParen);
				setState(165);
				((IfStmtContext)_localctx).trueStmt = statement();
				setState(168);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
				case 1:
					{
					setState(166);
					match(Else);
					setState(167);
					((IfStmtContext)_localctx).falseStmt = statement();
					}
					break;
				}
				}
				break;
			case 4:
				_localctx = new WhileStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(170);
				match(While);
				setState(171);
				match(LeftParen);
				setState(172);
				expression(0);
				setState(173);
				match(RightParen);
				setState(174);
				((WhileStmtContext)_localctx).trueStmt = statement();
				}
				break;
			case 5:
				_localctx = new ForStmtContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(176);
				match(For);
				setState(177);
				match(LeftParen);
				setState(179);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << New) | (1L << Null) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
					{
					setState(178);
					expression(0);
					}
				}

				setState(181);
				match(Semi);
				setState(183);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << New) | (1L << Null) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
					{
					setState(182);
					expression(0);
					}
				}

				setState(185);
				match(Semi);
				setState(187);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << New) | (1L << Null) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
					{
					setState(186);
					expression(0);
					}
				}

				setState(189);
				match(RightParen);
				setState(190);
				((ForStmtContext)_localctx).trueStmt = statement();
				}
				break;
			case 6:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(191);
				match(Return);
				setState(193);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << New) | (1L << Null) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
					{
					setState(192);
					expression(0);
					}
				}

				setState(195);
				match(Semi);
				}
				break;
			case 7:
				_localctx = new PureExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(196);
				expression(0);
				setState(197);
				match(Semi);
				}
				break;
			case 8:
				_localctx = new EmptyStmtContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(199);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class InitializationExpressionContext extends ParserRuleContext {
		public InitializationExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_initializationExpression; }
	 
		public InitializationExpressionContext() { }
		public void copyFrom(InitializationExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class NewArrayContext extends InitializationExpressionContext {
		public TerminalNode New() { return getToken(MxParser.New, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public NewArrayContext(InitializationExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNewArray(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNewArray(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNewArray(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NewElementContext extends InitializationExpressionContext {
		public TerminalNode New() { return getToken(MxParser.New, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public NewElementContext(InitializationExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNewElement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNewElement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNewElement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NullptrContext extends InitializationExpressionContext {
		public TerminalNode Null() { return getToken(MxParser.Null, 0); }
		public NullptrContext(InitializationExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNullptr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNullptr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNullptr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InitializationExpressionContext initializationExpression() throws RecognitionException {
		InitializationExpressionContext _localctx = new InitializationExpressionContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_initializationExpression);
		int _la;
		try {
			int _alt;
			setState(222);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,30,_ctx) ) {
			case 1:
				_localctx = new NullptrContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(202);
				match(Null);
				}
				break;
			case 2:
				_localctx = new NewArrayContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(203);
				match(New);
				setState(204);
				type();
				setState(211); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						setState(211);
						_errHandler.sync(this);
						switch (_input.LA(1)) {
						case LeftBracket:
							{
							setState(205);
							match(LeftBracket);
							setState(207);
							_errHandler.sync(this);
							_la = _input.LA(1);
							if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << New) | (1L << Null) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
								{
								setState(206);
								expression(0);
								}
							}

							setState(209);
							match(RightBracket);
							}
							break;
						case T__2:
							{
							setState(210);
							match(T__2);
							}
							break;
						default:
							throw new NoViableAltException(this);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(213); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 3:
				_localctx = new NewElementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(215);
				match(New);
				setState(216);
				type();
				setState(220);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
				case 1:
					{
					setState(217);
					match(T__1);
					}
					break;
				case 2:
					{
					setState(218);
					match(LeftParen);
					setState(219);
					match(RightParen);
					}
					break;
				}
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class FuncExprContext extends ExpressionContext {
		public FunctionExprContext functionExpr() {
			return getRuleContext(FunctionExprContext.class,0);
		}
		public FuncExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFuncExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFuncExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFuncExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MuldivExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Mul() { return getToken(MxParser.Mul, 0); }
		public TerminalNode Div() { return getToken(MxParser.Div, 0); }
		public TerminalNode Mod() { return getToken(MxParser.Mod, 0); }
		public MuldivExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterMuldivExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitMuldivExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitMuldivExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class EquExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Equal() { return getToken(MxParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(MxParser.NotEqual, 0); }
		public EquExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterEquExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitEquExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitEquExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NegativeExprContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Not() { return getToken(MxParser.Not, 0); }
		public TerminalNode Invert() { return getToken(MxParser.Invert, 0); }
		public TerminalNode Minus() { return getToken(MxParser.Minus, 0); }
		public NegativeExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterNegativeExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitNegativeExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitNegativeExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PreselfContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Autoplus() { return getToken(MxParser.Autoplus, 0); }
		public TerminalNode Autominus() { return getToken(MxParser.Autominus, 0); }
		public PreselfContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterPreself(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitPreself(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitPreself(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AtomExprContext extends ExpressionContext {
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public AtomExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterAtomExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitAtomExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitAtomExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AddsubExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Plus() { return getToken(MxParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxParser.Minus, 0); }
		public AddsubExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterAddsubExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitAddsubExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitAddsubExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BitExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode LeftShift() { return getToken(MxParser.LeftShift, 0); }
		public TerminalNode RightShift() { return getToken(MxParser.RightShift, 0); }
		public TerminalNode And() { return getToken(MxParser.And, 0); }
		public TerminalNode Or() { return getToken(MxParser.Or, 0); }
		public TerminalNode Xor() { return getToken(MxParser.Xor, 0); }
		public BitExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterBitExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitBitExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitBitExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class SufselfContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Autoplus() { return getToken(MxParser.Autoplus, 0); }
		public TerminalNode Autominus() { return getToken(MxParser.Autominus, 0); }
		public SufselfContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSufself(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSufself(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSufself(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LogicExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode AndAnd() { return getToken(MxParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(MxParser.OrOr, 0); }
		public LogicExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterLogicExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitLogicExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitLogicExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class SizerlsExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Less() { return getToken(MxParser.Less, 0); }
		public TerminalNode LessEqual() { return getToken(MxParser.LessEqual, 0); }
		public TerminalNode Greater() { return getToken(MxParser.Greater, 0); }
		public TerminalNode GreaterEqual() { return getToken(MxParser.GreaterEqual, 0); }
		public SizerlsExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSizerlsExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSizerlsExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSizerlsExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class InitExprContext extends ExpressionContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public MeminitListContext meminitList() {
			return getRuleContext(MeminitListContext.class,0);
		}
		public InitExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterInitExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitInitExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitInitExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AssignExprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Assign() { return getToken(MxParser.Assign, 0); }
		public AssignExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterAssignExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitAssignExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitAssignExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 20;
		enterRecursionRule(_localctx, 20, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(234);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
			case 1:
				{
				_localctx = new AtomExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(225);
				primary();
				}
				break;
			case 2:
				{
				_localctx = new InitExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(226);
				type();
				setState(227);
				meminitList();
				}
				break;
			case 3:
				{
				_localctx = new FuncExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(229);
				functionExpr();
				}
				break;
			case 4:
				{
				_localctx = new NegativeExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(230);
				((NegativeExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Minus) | (1L << Not) | (1L << Invert))) != 0)) ) {
					((NegativeExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(231);
				expression(10);
				}
				break;
			case 5:
				{
				_localctx = new PreselfContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(232);
				((PreselfContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==Autoplus || _la==Autominus) ) {
					((PreselfContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(233);
				expression(8);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(261);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(259);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,32,_ctx) ) {
					case 1:
						{
						_localctx = new MuldivExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(236);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(237);
						((MuldivExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mul) | (1L << Div) | (1L << Mod))) != 0)) ) {
							((MuldivExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(238);
						expression(8);
						}
						break;
					case 2:
						{
						_localctx = new AddsubExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(239);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(240);
						((AddsubExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Plus || _la==Minus) ) {
							((AddsubExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(241);
						expression(7);
						}
						break;
					case 3:
						{
						_localctx = new SizerlsExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(242);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(243);
						((SizerlsExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Less) | (1L << LessEqual) | (1L << Greater) | (1L << GreaterEqual))) != 0)) ) {
							((SizerlsExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(244);
						expression(6);
						}
						break;
					case 4:
						{
						_localctx = new EquExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(245);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(246);
						((EquExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Equal || _la==NotEqual) ) {
							((EquExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(247);
						expression(5);
						}
						break;
					case 5:
						{
						_localctx = new LogicExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(248);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(249);
						((LogicExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==AndAnd || _la==OrOr) ) {
							((LogicExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(250);
						expression(4);
						}
						break;
					case 6:
						{
						_localctx = new BitExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(251);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(252);
						((BitExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LeftShift) | (1L << RightShift) | (1L << And) | (1L << Or) | (1L << Xor))) != 0)) ) {
							((BitExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(253);
						expression(3);
						}
						break;
					case 7:
						{
						_localctx = new AssignExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(254);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(255);
						match(Assign);
						setState(256);
						expression(1);
						}
						break;
					case 8:
						{
						_localctx = new SufselfContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(257);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(258);
						((SufselfContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Autoplus || _la==Autominus) ) {
							((SufselfContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(263);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class FunctionExprContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public MemfuncListContext memfuncList() {
			return getRuleContext(MemfuncListContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public FunctionExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionExpr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunctionExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunctionExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFunctionExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionExprContext functionExpr() throws RecognitionException {
		FunctionExprContext _localctx = new FunctionExprContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_functionExpr);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(264);
			match(Identifier);
			setState(270);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LeftParen:
				{
				setState(265);
				match(LeftParen);
				setState(266);
				memfuncList();
				setState(267);
				match(RightParen);
				}
				break;
			case T__1:
				{
				setState(269);
				match(T__1);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MeminitListContext extends ParserRuleContext {
		public List<TerminalNode> Identifier() { return getTokens(MxParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxParser.Identifier, i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxParser.Comma, i);
		}
		public List<TerminalNode> Assign() { return getTokens(MxParser.Assign); }
		public TerminalNode Assign(int i) {
			return getToken(MxParser.Assign, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public MeminitListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_meminitList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterMeminitList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitMeminitList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitMeminitList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MeminitListContext meminitList() throws RecognitionException {
		MeminitListContext _localctx = new MeminitListContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_meminitList);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(272);
			match(Identifier);
			setState(275);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,35,_ctx) ) {
			case 1:
				{
				setState(273);
				match(Assign);
				setState(274);
				expression(0);
				}
				break;
			}
			}
			setState(285);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,37,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(277);
					match(Comma);
					{
					setState(278);
					match(Identifier);
					setState(281);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,36,_ctx) ) {
					case 1:
						{
						setState(279);
						match(Assign);
						setState(280);
						expression(0);
						}
						break;
					}
					}
					}
					} 
				}
				setState(287);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,37,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MemfuncListContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxParser.Comma, i);
		}
		public MemfuncListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_memfuncList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterMemfuncList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitMemfuncList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitMemfuncList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MemfuncListContext memfuncList() throws RecognitionException {
		MemfuncListContext _localctx = new MemfuncListContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_memfuncList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(288);
			expression(0);
			setState(293);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(289);
				match(Comma);
				setState(290);
				expression(0);
				}
				}
				setState(295);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PrimaryContext extends ParserRuleContext {
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public InitializationExpressionContext initializationExpression() {
			return getRuleContext(InitializationExpressionContext.class,0);
		}
		public LamdaExprContext lamdaExpr() {
			return getRuleContext(LamdaExprContext.class,0);
		}
		public ArrayElementContext arrayElement() {
			return getRuleContext(ArrayElementContext.class,0);
		}
		public ClassMemContext classMem() {
			return getRuleContext(ClassMemContext.class,0);
		}
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public PrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterPrimary(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitPrimary(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitPrimary(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrimaryContext primary() throws RecognitionException {
		PrimaryContext _localctx = new PrimaryContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_primary);
		try {
			setState(306);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,39,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(296);
				match(LeftParen);
				setState(297);
				expression(0);
				setState(298);
				match(RightParen);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(300);
				initializationExpression();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(301);
				lamdaExpr();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(302);
				arrayElement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(303);
				classMem();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(304);
				literal();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(305);
				match(Identifier);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArrayElementContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ArrayElementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayElement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterArrayElement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitArrayElement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitArrayElement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArrayElementContext arrayElement() throws RecognitionException {
		ArrayElementContext _localctx = new ArrayElementContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_arrayElement);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(308);
			match(Identifier);
			setState(315); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					setState(315);
					_errHandler.sync(this);
					switch (_input.LA(1)) {
					case LeftBracket:
						{
						setState(309);
						match(LeftBracket);
						setState(311);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << New) | (1L << Null) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << Minus) | (1L << Not) | (1L << Invert) | (1L << Autoplus) | (1L << Autominus) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Identifier) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) {
							{
							setState(310);
							expression(0);
							}
						}

						setState(313);
						match(RightBracket);
						}
						break;
					case T__2:
						{
						setState(314);
						match(T__2);
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(317); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,42,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassMemContext extends ParserRuleContext {
		public List<TerminalNode> Identifier() { return getTokens(MxParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxParser.Identifier, i);
		}
		public List<FunctionExprContext> functionExpr() {
			return getRuleContexts(FunctionExprContext.class);
		}
		public FunctionExprContext functionExpr(int i) {
			return getRuleContext(FunctionExprContext.class,i);
		}
		public List<ArrayElementContext> arrayElement() {
			return getRuleContexts(ArrayElementContext.class);
		}
		public ArrayElementContext arrayElement(int i) {
			return getRuleContext(ArrayElementContext.class,i);
		}
		public List<TerminalNode> Obj() { return getTokens(MxParser.Obj); }
		public TerminalNode Obj(int i) {
			return getToken(MxParser.Obj, i);
		}
		public ClassMemContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classMem; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClassMem(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClassMem(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitClassMem(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassMemContext classMem() throws RecognitionException {
		ClassMemContext _localctx = new ClassMemContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_classMem);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(322);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,43,_ctx) ) {
			case 1:
				{
				setState(319);
				match(Identifier);
				}
				break;
			case 2:
				{
				setState(320);
				functionExpr();
				}
				break;
			case 3:
				{
				setState(321);
				arrayElement();
				}
				break;
			}
			setState(330); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(324);
					match(Obj);
					setState(328);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,44,_ctx) ) {
					case 1:
						{
						setState(325);
						match(Identifier);
						}
						break;
					case 2:
						{
						setState(326);
						functionExpr();
						}
						break;
					case 3:
						{
						setState(327);
						arrayElement();
						}
						break;
					}
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(332); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,45,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LiteralContext extends ParserRuleContext {
		public TerminalNode DecimalInteger() { return getToken(MxParser.DecimalInteger, 0); }
		public TerminalNode LogicConst() { return getToken(MxParser.LogicConst, 0); }
		public TerminalNode StringConst() { return getToken(MxParser.StringConst, 0); }
		public TerminalNode This() { return getToken(MxParser.This, 0); }
		public TerminalNode Continue() { return getToken(MxParser.Continue, 0); }
		public TerminalNode Break() { return getToken(MxParser.Break, 0); }
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitLiteral(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitLiteral(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_literal);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(334);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LogicConst) | (1L << This) | (1L << Break) | (1L << Continue) | (1L << StringConst) | (1L << DecimalInteger))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxParser.Int, 0); }
		public TerminalNode Bool() { return getToken(MxParser.Bool, 0); }
		public TerminalNode String() { return getToken(MxParser.String, 0); }
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(336);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Identifier))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 10:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 7);
		case 1:
			return precpred(_ctx, 6);
		case 2:
			return precpred(_ctx, 5);
		case 3:
			return precpred(_ctx, 4);
		case 4:
			return precpred(_ctx, 3);
		case 5:
			return precpred(_ctx, 2);
		case 6:
			return precpred(_ctx, 1);
		case 7:
			return precpred(_ctx, 9);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001=\u0153\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0001\u0000\u0001\u0000\u0001\u0000\u0005\u0000*\b\u0000\n\u0000\f\u0000"+
		"-\t\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0003\u00016\b\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0002\u0001\u0002\u0001\u0002\u0004\u0002C\b\u0002\u000b\u0002"+
		"\f\u0002D\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u0002J\b\u0002\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0005\u0003Q\b"+
		"\u0003\n\u0003\f\u0003T\t\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0005\u0004]\b\u0004\n\u0004"+
		"\f\u0004`\t\u0004\u0001\u0004\u0003\u0004c\b\u0004\u0001\u0004\u0001\u0004"+
		"\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0003\u0004k\b\u0004"+
		"\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0003\u0005q\b\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0005\u0006"+
		"~\b\u0006\n\u0006\f\u0006\u0081\t\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0005\u0006\u0089\b\u0006\n"+
		"\u0006\f\u0006\u008c\t\u0006\u0001\u0006\u0001\u0006\u0005\u0006\u0090"+
		"\b\u0006\n\u0006\f\u0006\u0093\t\u0006\u0003\u0006\u0095\b\u0006\u0001"+
		"\u0007\u0001\u0007\u0005\u0007\u0099\b\u0007\n\u0007\f\u0007\u009c\t\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0003\b\u00a9\b\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\b\u00b4\b\b\u0001\b\u0001"+
		"\b\u0003\b\u00b8\b\b\u0001\b\u0001\b\u0003\b\u00bc\b\b\u0001\b\u0001\b"+
		"\u0001\b\u0001\b\u0003\b\u00c2\b\b\u0001\b\u0001\b\u0001\b\u0001\b\u0001"+
		"\b\u0003\b\u00c9\b\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0003\t\u00d0"+
		"\b\t\u0001\t\u0001\t\u0004\t\u00d4\b\t\u000b\t\f\t\u00d5\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0003\t\u00dd\b\t\u0003\t\u00df\b\t\u0001\n"+
		"\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0003\n\u00eb\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0005\n\u0104"+
		"\b\n\n\n\f\n\u0107\t\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0003\u000b\u010f\b\u000b\u0001\f\u0001\f\u0001"+
		"\f\u0003\f\u0114\b\f\u0001\f\u0001\f\u0001\f\u0001\f\u0003\f\u011a\b\f"+
		"\u0005\f\u011c\b\f\n\f\f\f\u011f\t\f\u0001\r\u0001\r\u0001\r\u0005\r\u0124"+
		"\b\r\n\r\f\r\u0127\t\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0003\u000e\u0133\b\u000e\u0001\u000f\u0001\u000f\u0001\u000f\u0003\u000f"+
		"\u0138\b\u000f\u0001\u000f\u0001\u000f\u0004\u000f\u013c\b\u000f\u000b"+
		"\u000f\f\u000f\u013d\u0001\u0010\u0001\u0010\u0001\u0010\u0003\u0010\u0143"+
		"\b\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0003\u0010\u0149"+
		"\b\u0010\u0004\u0010\u014b\b\u0010\u000b\u0010\f\u0010\u014c\u0001\u0011"+
		"\u0001\u0011\u0001\u0012\u0001\u0012\u0001\u0012\u0000\u0001\u0014\u0013"+
		"\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a"+
		"\u001c\u001e \"$\u0000\n\u0003\u0000\u001f\u001f%%**\u0001\u0000-.\u0001"+
		"\u0000 \"\u0001\u0000\u001e\u001f\u0001\u0000\u0018\u001b\u0001\u0000"+
		"\u001c\u001d\u0001\u0000#$\u0002\u0000&)++\u0004\u0000\u0005\u0005\u0013"+
		"\u0013\u0016\u00179:\u0002\u0000\u0006\b88\u0187\u0000+\u0001\u0000\u0000"+
		"\u0000\u00020\u0001\u0000\u0000\u0000\u0004I\u0001\u0000\u0000\u0000\u0006"+
		"K\u0001\u0000\u0000\u0000\bb\u0001\u0000\u0000\u0000\nn\u0001\u0000\u0000"+
		"\u0000\f\u0094\u0001\u0000\u0000\u0000\u000e\u0096\u0001\u0000\u0000\u0000"+
		"\u0010\u00c8\u0001\u0000\u0000\u0000\u0012\u00de\u0001\u0000\u0000\u0000"+
		"\u0014\u00ea\u0001\u0000\u0000\u0000\u0016\u0108\u0001\u0000\u0000\u0000"+
		"\u0018\u0110\u0001\u0000\u0000\u0000\u001a\u0120\u0001\u0000\u0000\u0000"+
		"\u001c\u0132\u0001\u0000\u0000\u0000\u001e\u0134\u0001\u0000\u0000\u0000"+
		" \u0142\u0001\u0000\u0000\u0000\"\u014e\u0001\u0000\u0000\u0000$\u0150"+
		"\u0001\u0000\u0000\u0000&*\u0003\u0006\u0003\u0000\'*\u0003\u0004\u0002"+
		"\u0000(*\u0003\b\u0004\u0000)&\u0001\u0000\u0000\u0000)\'\u0001\u0000"+
		"\u0000\u0000)(\u0001\u0000\u0000\u0000*-\u0001\u0000\u0000\u0000+)\u0001"+
		"\u0000\u0000\u0000+,\u0001\u0000\u0000\u0000,.\u0001\u0000\u0000\u0000"+
		"-+\u0001\u0000\u0000\u0000./\u0003\u0002\u0001\u0000/\u0001\u0001\u0000"+
		"\u0000\u000001\u0005\u0006\u0000\u000015\u0005\u0001\u0000\u000026\u0005"+
		"\u0002\u0000\u000034\u00050\u0000\u000046\u00051\u0000\u000052\u0001\u0000"+
		"\u0000\u000053\u0001\u0000\u0000\u000067\u0001\u0000\u0000\u000078\u0003"+
		"\u000e\u0007\u000089\u0005\u0000\u0000\u00019\u0003\u0001\u0000\u0000"+
		"\u0000:;\u0003$\u0012\u0000;<\u0003\u0018\f\u0000<=\u00056\u0000\u0000"+
		"=J\u0001\u0000\u0000\u0000>B\u0003$\u0012\u0000?@\u00052\u0000\u0000@"+
		"C\u00053\u0000\u0000AC\u0005\u0003\u0000\u0000B?\u0001\u0000\u0000\u0000"+
		"BA\u0001\u0000\u0000\u0000CD\u0001\u0000\u0000\u0000DB\u0001\u0000\u0000"+
		"\u0000DE\u0001\u0000\u0000\u0000EF\u0001\u0000\u0000\u0000FG\u0003\u0018"+
		"\f\u0000GH\u00056\u0000\u0000HJ\u0001\u0000\u0000\u0000I:\u0001\u0000"+
		"\u0000\u0000I>\u0001\u0000\u0000\u0000J\u0005\u0001\u0000\u0000\u0000"+
		"KL\u0005\u000f\u0000\u0000LM\u00058\u0000\u0000MR\u00054\u0000\u0000N"+
		"Q\u0003\u0004\u0002\u0000OQ\u0003\b\u0004\u0000PN\u0001\u0000\u0000\u0000"+
		"PO\u0001\u0000\u0000\u0000QT\u0001\u0000\u0000\u0000RP\u0001\u0000\u0000"+
		"\u0000RS\u0001\u0000\u0000\u0000SU\u0001\u0000\u0000\u0000TR\u0001\u0000"+
		"\u0000\u0000UV\u00055\u0000\u0000VW\u00056\u0000\u0000W\u0007\u0001\u0000"+
		"\u0000\u0000X^\u0003$\u0012\u0000YZ\u00052\u0000\u0000Z]\u00053\u0000"+
		"\u0000[]\u0005\u0003\u0000\u0000\\Y\u0001\u0000\u0000\u0000\\[\u0001\u0000"+
		"\u0000\u0000]`\u0001\u0000\u0000\u0000^\\\u0001\u0000\u0000\u0000^_\u0001"+
		"\u0000\u0000\u0000_c\u0001\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000"+
		"ac\u0005\r\u0000\u0000bX\u0001\u0000\u0000\u0000ba\u0001\u0000\u0000\u0000"+
		"bc\u0001\u0000\u0000\u0000cd\u0001\u0000\u0000\u0000dj\u00058\u0000\u0000"+
		"ef\u00050\u0000\u0000fg\u0003\f\u0006\u0000gh\u00051\u0000\u0000hk\u0001"+
		"\u0000\u0000\u0000ik\u0005\u0002\u0000\u0000je\u0001\u0000\u0000\u0000"+
		"ji\u0001\u0000\u0000\u0000kl\u0001\u0000\u0000\u0000lm\u0003\u000e\u0007"+
		"\u0000m\t\u0001\u0000\u0000\u0000np\u00052\u0000\u0000oq\u0005(\u0000"+
		"\u0000po\u0001\u0000\u0000\u0000pq\u0001\u0000\u0000\u0000qr\u0001\u0000"+
		"\u0000\u0000rs\u00053\u0000\u0000st\u00050\u0000\u0000tu\u0003\f\u0006"+
		"\u0000uv\u00051\u0000\u0000vw\u0005\u0004\u0000\u0000wx\u0003\u000e\u0007"+
		"\u0000x\u000b\u0001\u0000\u0000\u0000y\u007f\u0003$\u0012\u0000z{\u0005"+
		"2\u0000\u0000{~\u00053\u0000\u0000|~\u0005\u0003\u0000\u0000}z\u0001\u0000"+
		"\u0000\u0000}|\u0001\u0000\u0000\u0000~\u0081\u0001\u0000\u0000\u0000"+
		"\u007f}\u0001\u0000\u0000\u0000\u007f\u0080\u0001\u0000\u0000\u0000\u0080"+
		"\u0082\u0001\u0000\u0000\u0000\u0081\u007f\u0001\u0000\u0000\u0000\u0082"+
		"\u0091\u00058\u0000\u0000\u0083\u0084\u00057\u0000\u0000\u0084\u008a\u0003"+
		"$\u0012\u0000\u0085\u0086\u00052\u0000\u0000\u0086\u0089\u00053\u0000"+
		"\u0000\u0087\u0089\u0005\u0003\u0000\u0000\u0088\u0085\u0001\u0000\u0000"+
		"\u0000\u0088\u0087\u0001\u0000\u0000\u0000\u0089\u008c\u0001\u0000\u0000"+
		"\u0000\u008a\u0088\u0001\u0000\u0000\u0000\u008a\u008b\u0001\u0000\u0000"+
		"\u0000\u008b\u008d\u0001\u0000\u0000\u0000\u008c\u008a\u0001\u0000\u0000"+
		"\u0000\u008d\u008e\u00058\u0000\u0000\u008e\u0090\u0001\u0000\u0000\u0000"+
		"\u008f\u0083\u0001\u0000\u0000\u0000\u0090\u0093\u0001\u0000\u0000\u0000"+
		"\u0091\u008f\u0001\u0000\u0000\u0000\u0091\u0092\u0001\u0000\u0000\u0000"+
		"\u0092\u0095\u0001\u0000\u0000\u0000\u0093\u0091\u0001\u0000\u0000\u0000"+
		"\u0094y\u0001\u0000\u0000\u0000\u0094\u0095\u0001\u0000\u0000\u0000\u0095"+
		"\r\u0001\u0000\u0000\u0000\u0096\u009a\u00054\u0000\u0000\u0097\u0099"+
		"\u0003\u0010\b\u0000\u0098\u0097\u0001\u0000\u0000\u0000\u0099\u009c\u0001"+
		"\u0000\u0000\u0000\u009a\u0098\u0001\u0000\u0000\u0000\u009a\u009b\u0001"+
		"\u0000\u0000\u0000\u009b\u009d\u0001\u0000\u0000\u0000\u009c\u009a\u0001"+
		"\u0000\u0000\u0000\u009d\u009e\u00055\u0000\u0000\u009e\u000f\u0001\u0000"+
		"\u0000\u0000\u009f\u00c9\u0003\u000e\u0007\u0000\u00a0\u00c9\u0003\u0004"+
		"\u0002\u0000\u00a1\u00a2\u0005\t\u0000\u0000\u00a2\u00a3\u00050\u0000"+
		"\u0000\u00a3\u00a4\u0003\u0014\n\u0000\u00a4\u00a5\u00051\u0000\u0000"+
		"\u00a5\u00a8\u0003\u0010\b\u0000\u00a6\u00a7\u0005\n\u0000\u0000\u00a7"+
		"\u00a9\u0003\u0010\b\u0000\u00a8\u00a6\u0001\u0000\u0000\u0000\u00a8\u00a9"+
		"\u0001\u0000\u0000\u0000\u00a9\u00c9\u0001\u0000\u0000\u0000\u00aa\u00ab"+
		"\u0005\u0015\u0000\u0000\u00ab\u00ac\u00050\u0000\u0000\u00ac\u00ad\u0003"+
		"\u0014\n\u0000\u00ad\u00ae\u00051\u0000\u0000\u00ae\u00af\u0003\u0010"+
		"\b\u0000\u00af\u00c9\u0001\u0000\u0000\u0000\u00b0\u00b1\u0005\u0014\u0000"+
		"\u0000\u00b1\u00b3\u00050\u0000\u0000\u00b2\u00b4\u0003\u0014\n\u0000"+
		"\u00b3\u00b2\u0001\u0000\u0000\u0000\u00b3\u00b4\u0001\u0000\u0000\u0000"+
		"\u00b4\u00b5\u0001\u0000\u0000\u0000\u00b5\u00b7\u00056\u0000\u0000\u00b6"+
		"\u00b8\u0003\u0014\n\u0000\u00b7\u00b6\u0001\u0000\u0000\u0000\u00b7\u00b8"+
		"\u0001\u0000\u0000\u0000\u00b8\u00b9\u0001\u0000\u0000\u0000\u00b9\u00bb"+
		"\u00056\u0000\u0000\u00ba\u00bc\u0003\u0014\n\u0000\u00bb\u00ba\u0001"+
		"\u0000\u0000\u0000\u00bb\u00bc\u0001\u0000\u0000\u0000\u00bc\u00bd\u0001"+
		"\u0000\u0000\u0000\u00bd\u00be\u00051\u0000\u0000\u00be\u00c9\u0003\u0010"+
		"\b\u0000\u00bf\u00c1\u0005\u000b\u0000\u0000\u00c0\u00c2\u0003\u0014\n"+
		"\u0000\u00c1\u00c0\u0001\u0000\u0000\u0000\u00c1\u00c2\u0001\u0000\u0000"+
		"\u0000\u00c2\u00c3\u0001\u0000\u0000\u0000\u00c3\u00c9\u00056\u0000\u0000"+
		"\u00c4\u00c5\u0003\u0014\n\u0000\u00c5\u00c6\u00056\u0000\u0000\u00c6"+
		"\u00c9\u0001\u0000\u0000\u0000\u00c7\u00c9\u00056\u0000\u0000\u00c8\u009f"+
		"\u0001\u0000\u0000\u0000\u00c8\u00a0\u0001\u0000\u0000\u0000\u00c8\u00a1"+
		"\u0001\u0000\u0000\u0000\u00c8\u00aa\u0001\u0000\u0000\u0000\u00c8\u00b0"+
		"\u0001\u0000\u0000\u0000\u00c8\u00bf\u0001\u0000\u0000\u0000\u00c8\u00c4"+
		"\u0001\u0000\u0000\u0000\u00c8\u00c7\u0001\u0000\u0000\u0000\u00c9\u0011"+
		"\u0001\u0000\u0000\u0000\u00ca\u00df\u0005\u0010\u0000\u0000\u00cb\u00cc"+
		"\u0005\u000e\u0000\u0000\u00cc\u00d3\u0003$\u0012\u0000\u00cd\u00cf\u0005"+
		"2\u0000\u0000\u00ce\u00d0\u0003\u0014\n\u0000\u00cf\u00ce\u0001\u0000"+
		"\u0000\u0000\u00cf\u00d0\u0001\u0000\u0000\u0000\u00d0\u00d1\u0001\u0000"+
		"\u0000\u0000\u00d1\u00d4\u00053\u0000\u0000\u00d2\u00d4\u0005\u0003\u0000"+
		"\u0000\u00d3\u00cd\u0001\u0000\u0000\u0000\u00d3\u00d2\u0001\u0000\u0000"+
		"\u0000\u00d4\u00d5\u0001\u0000\u0000\u0000\u00d5\u00d3\u0001\u0000\u0000"+
		"\u0000\u00d5\u00d6\u0001\u0000\u0000\u0000\u00d6\u00df\u0001\u0000\u0000"+
		"\u0000\u00d7\u00d8\u0005\u000e\u0000\u0000\u00d8\u00dc\u0003$\u0012\u0000"+
		"\u00d9\u00dd\u0005\u0002\u0000\u0000\u00da\u00db\u00050\u0000\u0000\u00db"+
		"\u00dd\u00051\u0000\u0000\u00dc\u00d9\u0001\u0000\u0000\u0000\u00dc\u00da"+
		"\u0001\u0000\u0000\u0000\u00dc\u00dd\u0001\u0000\u0000\u0000\u00dd\u00df"+
		"\u0001\u0000\u0000\u0000\u00de\u00ca\u0001\u0000\u0000\u0000\u00de\u00cb"+
		"\u0001\u0000\u0000\u0000\u00de\u00d7\u0001\u0000\u0000\u0000\u00df\u0013"+
		"\u0001\u0000\u0000\u0000\u00e0\u00e1\u0006\n\uffff\uffff\u0000\u00e1\u00eb"+
		"\u0003\u001c\u000e\u0000\u00e2\u00e3\u0003$\u0012\u0000\u00e3\u00e4\u0003"+
		"\u0018\f\u0000\u00e4\u00eb\u0001\u0000\u0000\u0000\u00e5\u00eb\u0003\u0016"+
		"\u000b\u0000\u00e6\u00e7\u0007\u0000\u0000\u0000\u00e7\u00eb\u0003\u0014"+
		"\n\n\u00e8\u00e9\u0007\u0001\u0000\u0000\u00e9\u00eb\u0003\u0014\n\b\u00ea"+
		"\u00e0\u0001\u0000\u0000\u0000\u00ea\u00e2\u0001\u0000\u0000\u0000\u00ea"+
		"\u00e5\u0001\u0000\u0000\u0000\u00ea\u00e6\u0001\u0000\u0000\u0000\u00ea"+
		"\u00e8\u0001\u0000\u0000\u0000\u00eb\u0105\u0001\u0000\u0000\u0000\u00ec"+
		"\u00ed\n\u0007\u0000\u0000\u00ed\u00ee\u0007\u0002\u0000\u0000\u00ee\u0104"+
		"\u0003\u0014\n\b\u00ef\u00f0\n\u0006\u0000\u0000\u00f0\u00f1\u0007\u0003"+
		"\u0000\u0000\u00f1\u0104\u0003\u0014\n\u0007\u00f2\u00f3\n\u0005\u0000"+
		"\u0000\u00f3\u00f4\u0007\u0004\u0000\u0000\u00f4\u0104\u0003\u0014\n\u0006"+
		"\u00f5\u00f6\n\u0004\u0000\u0000\u00f6\u00f7\u0007\u0005\u0000\u0000\u00f7"+
		"\u0104\u0003\u0014\n\u0005\u00f8\u00f9\n\u0003\u0000\u0000\u00f9\u00fa"+
		"\u0007\u0006\u0000\u0000\u00fa\u0104\u0003\u0014\n\u0004\u00fb\u00fc\n"+
		"\u0002\u0000\u0000\u00fc\u00fd\u0007\u0007\u0000\u0000\u00fd\u0104\u0003"+
		"\u0014\n\u0003\u00fe\u00ff\n\u0001\u0000\u0000\u00ff\u0100\u0005,\u0000"+
		"\u0000\u0100\u0104\u0003\u0014\n\u0001\u0101\u0102\n\t\u0000\u0000\u0102"+
		"\u0104\u0007\u0001\u0000\u0000\u0103\u00ec\u0001\u0000\u0000\u0000\u0103"+
		"\u00ef\u0001\u0000\u0000\u0000\u0103\u00f2\u0001\u0000\u0000\u0000\u0103"+
		"\u00f5\u0001\u0000\u0000\u0000\u0103\u00f8\u0001\u0000\u0000\u0000\u0103"+
		"\u00fb\u0001\u0000\u0000\u0000\u0103\u00fe\u0001\u0000\u0000\u0000\u0103"+
		"\u0101\u0001\u0000\u0000\u0000\u0104\u0107\u0001\u0000\u0000\u0000\u0105"+
		"\u0103\u0001\u0000\u0000\u0000\u0105\u0106\u0001\u0000\u0000\u0000\u0106"+
		"\u0015\u0001\u0000\u0000\u0000\u0107\u0105\u0001\u0000\u0000\u0000\u0108"+
		"\u010e\u00058\u0000\u0000\u0109\u010a\u00050\u0000\u0000\u010a\u010b\u0003"+
		"\u001a\r\u0000\u010b\u010c\u00051\u0000\u0000\u010c\u010f\u0001\u0000"+
		"\u0000\u0000\u010d\u010f\u0005\u0002\u0000\u0000\u010e\u0109\u0001\u0000"+
		"\u0000\u0000\u010e\u010d\u0001\u0000\u0000\u0000\u010f\u0017\u0001\u0000"+
		"\u0000\u0000\u0110\u0113\u00058\u0000\u0000\u0111\u0112\u0005,\u0000\u0000"+
		"\u0112\u0114\u0003\u0014\n\u0000\u0113\u0111\u0001\u0000\u0000\u0000\u0113"+
		"\u0114\u0001\u0000\u0000\u0000\u0114\u011d\u0001\u0000\u0000\u0000\u0115"+
		"\u0116\u00057\u0000\u0000\u0116\u0119\u00058\u0000\u0000\u0117\u0118\u0005"+
		",\u0000\u0000\u0118\u011a\u0003\u0014\n\u0000\u0119\u0117\u0001\u0000"+
		"\u0000\u0000\u0119\u011a\u0001\u0000\u0000\u0000\u011a\u011c\u0001\u0000"+
		"\u0000\u0000\u011b\u0115\u0001\u0000\u0000\u0000\u011c\u011f\u0001\u0000"+
		"\u0000\u0000\u011d\u011b\u0001\u0000\u0000\u0000\u011d\u011e\u0001\u0000"+
		"\u0000\u0000\u011e\u0019\u0001\u0000\u0000\u0000\u011f\u011d\u0001\u0000"+
		"\u0000\u0000\u0120\u0125\u0003\u0014\n\u0000\u0121\u0122\u00057\u0000"+
		"\u0000\u0122\u0124\u0003\u0014\n\u0000\u0123\u0121\u0001\u0000\u0000\u0000"+
		"\u0124\u0127\u0001\u0000\u0000\u0000\u0125\u0123\u0001\u0000\u0000\u0000"+
		"\u0125\u0126\u0001\u0000\u0000\u0000\u0126\u001b\u0001\u0000\u0000\u0000"+
		"\u0127\u0125\u0001\u0000\u0000\u0000\u0128\u0129\u00050\u0000\u0000\u0129"+
		"\u012a\u0003\u0014\n\u0000\u012a\u012b\u00051\u0000\u0000\u012b\u0133"+
		"\u0001\u0000\u0000\u0000\u012c\u0133\u0003\u0012\t\u0000\u012d\u0133\u0003"+
		"\n\u0005\u0000\u012e\u0133\u0003\u001e\u000f\u0000\u012f\u0133\u0003 "+
		"\u0010\u0000\u0130\u0133\u0003\"\u0011\u0000\u0131\u0133\u00058\u0000"+
		"\u0000\u0132\u0128\u0001\u0000\u0000\u0000\u0132\u012c\u0001\u0000\u0000"+
		"\u0000\u0132\u012d\u0001\u0000\u0000\u0000\u0132\u012e\u0001\u0000\u0000"+
		"\u0000\u0132\u012f\u0001\u0000\u0000\u0000\u0132\u0130\u0001\u0000\u0000"+
		"\u0000\u0132\u0131\u0001\u0000\u0000\u0000\u0133\u001d\u0001\u0000\u0000"+
		"\u0000\u0134\u013b\u00058\u0000\u0000\u0135\u0137\u00052\u0000\u0000\u0136"+
		"\u0138\u0003\u0014\n\u0000\u0137\u0136\u0001\u0000\u0000\u0000\u0137\u0138"+
		"\u0001\u0000\u0000\u0000\u0138\u0139\u0001\u0000\u0000\u0000\u0139\u013c"+
		"\u00053\u0000\u0000\u013a\u013c\u0005\u0003\u0000\u0000\u013b\u0135\u0001"+
		"\u0000\u0000\u0000\u013b\u013a\u0001\u0000\u0000\u0000\u013c\u013d\u0001"+
		"\u0000\u0000\u0000\u013d\u013b\u0001\u0000\u0000\u0000\u013d\u013e\u0001"+
		"\u0000\u0000\u0000\u013e\u001f\u0001\u0000\u0000\u0000\u013f\u0143\u0005"+
		"8\u0000\u0000\u0140\u0143\u0003\u0016\u000b\u0000\u0141\u0143\u0003\u001e"+
		"\u000f\u0000\u0142\u013f\u0001\u0000\u0000\u0000\u0142\u0140\u0001\u0000"+
		"\u0000\u0000\u0142\u0141\u0001\u0000\u0000\u0000\u0143\u014a\u0001\u0000"+
		"\u0000\u0000\u0144\u0148\u0005/\u0000\u0000\u0145\u0149\u00058\u0000\u0000"+
		"\u0146\u0149\u0003\u0016\u000b\u0000\u0147\u0149\u0003\u001e\u000f\u0000"+
		"\u0148\u0145\u0001\u0000\u0000\u0000\u0148\u0146\u0001\u0000\u0000\u0000"+
		"\u0148\u0147\u0001\u0000\u0000\u0000\u0149\u014b\u0001\u0000\u0000\u0000"+
		"\u014a\u0144\u0001\u0000\u0000\u0000\u014b\u014c\u0001\u0000\u0000\u0000"+
		"\u014c\u014a\u0001\u0000\u0000\u0000\u014c\u014d\u0001\u0000\u0000\u0000"+
		"\u014d!\u0001\u0000\u0000\u0000\u014e\u014f\u0007\b\u0000\u0000\u014f"+
		"#\u0001\u0000\u0000\u0000\u0150\u0151\u0007\t\u0000\u0000\u0151%\u0001"+
		"\u0000\u0000\u0000.)+5BDIPR\\^bjp}\u007f\u0088\u008a\u0091\u0094\u009a"+
		"\u00a8\u00b3\u00b7\u00bb\u00c1\u00c8\u00cf\u00d3\u00d5\u00dc\u00de\u00ea"+
		"\u0103\u0105\u010e\u0113\u0119\u011d\u0125\u0132\u0137\u013b\u013d\u0142"+
		"\u0148\u014c";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
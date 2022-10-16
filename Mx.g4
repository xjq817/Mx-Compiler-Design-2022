grammar Mx;

program: (classDef|varDef|function)* mainFn;

mainFn: 'int' 'main' ('()'|'(' ')') suite EOF;

varDef
    : type meminitList ';'                                  #singleVarDef
    | type ('[' ']'|'[]')+ meminitList ';'                  #arrayVarDef
    ;
classDef : Class Identifier '{' (varDef|function)* '}'';';

function : (type ('[' ']'|'[]')* |Void)? Identifier ('(' functionList ')'|'()') suite ;

lamdaExpr : '[' '&'? ']' '(' functionList ')' '->' suite;

functionList : (type ('[' ']'|'[]')* Identifier (',' type ('[' ']'|'[]')* Identifier)* )? ;

suite : '{' statement* '}';

statement
    : suite                                                            #block
    | varDef                                                           #vardefStmt
    | If '(' expression ')' trueStmt=statement
        (Else falseStmt=statement)?                                    #ifStmt
    | While '(' expression ')' trueStmt=statement                      #whileStmt
    | For '(' expression? ';' expression?
        ';' expression? ')' trueStmt=statement                         #forStmt
    | Return expression? ';'                                           #returnStmt
    | expression ';'                                                   #pureExprStmt
    | ';'                                                              #emptyStmt
    ;

initializationExpression
    : Null                                                  #nullptr
    | New type ('[' expression? ']'|'[]')+                  #newArray
    | New type ('()'|'('')')?                               #newElement
    ;

expression
    : primary                                                       #atomExpr
    | type meminitList                                              #initExpr
    | functionExpr                                                  #funcExpr
    | op=('!'|'~'|'-') expression                                   #negativeExpr
    | expression op=('++' | '--')                                   #sufself
    | op=('++' | '--') expression                                   #preself
    | expression op=('*' | '/' | '%') expression                    #muldivExpr
    | expression op=('+' | '-') expression                          #addsubExpr
    | expression op=('<'|'<='|'>'|'>=') expression                  #sizerlsExpr
    | expression op=('==' | '!=' ) expression                       #equExpr
    | expression op=('&&' | '||')  expression                       #logicExpr
    | expression op=('<<' | '>>' | '&' | '|' | '^') expression      #bitExpr
    | <assoc=right> expression '=' expression                       #assignExpr
    ;

functionExpr : Identifier ('(' memfuncList ')'|'()') ;

meminitList: <assoc=right>(Identifier ('=' expression)?) (',' <assoc=right>(Identifier ('=' expression)?) )* ;

memfuncList: expression (',' expression )*  ;

primary
    : '(' expression ')'
    | initializationExpression
    | lamdaExpr
    | arrayElement
    | classMem
    | literal
    | Identifier
    ;

arrayElement : Identifier ('[' expression? ']'|'[]')+ ;



classMem
    : (Identifier | functionExpr | arrayElement) ('.' (Identifier | functionExpr | arrayElement))+ ;

literal
    : DecimalInteger
    | LogicConst
    | StringConst
    | This
    | Continue
    | Break
    ;

type : Int | Bool | String | Identifier;

LogicConst
    : True
    | False
    ;

Int : 'int';
Bool : 'bool';
String : 'string';
If : 'if';
Else : 'else';
Return : 'return';
Struct : 'struct';
Void : 'void';
New : 'new';
Class : 'class';
Null : 'null';
True : 'true';
False : 'false';
This : 'this';
For : 'for';
While : 'while';
Break : 'break';
Continue : 'continue';

Less : '<';
LessEqual : '<=';
Greater : '>';
GreaterEqual : '>=';
Equal : '==';
NotEqual : '!=';

Plus : '+';
Minus : '-';
Mul : '*';
Div : '/';
Mod : '%';

AndAnd : '&&';
OrOr : '||';
Not : '!';

LeftShift : '<<';
RightShift : '>>';
And : '&';
Or : '|';
Invert : '~';
Xor : '^';

Assign : '=';

Autoplus : '++';
Autominus : '--';

Obj : '.';
LeftParen : '(';
RightParen : ')';
LeftBracket : '[';
RightBracket : ']';
LeftBrace : '{';
RightBrace : '}';
Semi : ';';
Comma : ',';

Identifier : ('_'|[a-zA-Z])([0-9a-zA-Z]|'_')*;

StringConst
    : '"' (ESC | .)*? '"'
    ;
fragment
ESC
    : '\\"'
    | '\\\\'
    | '\\n'
    ;

DecimalInteger
    : [1-9] [0-9]*
    | '0'
    ;

Whitespace
    :   [ \t]+
        -> skip
    ;

Newline
    :   (   '\r' '\n'?
        |   '\n'
        )
        -> skip
    ;

LineComment
    :   '//' ~[\r\n]*
        -> skip
    ;
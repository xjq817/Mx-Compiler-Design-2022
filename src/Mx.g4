grammar Mx;

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

Dot : '.';
Arrow : '->';

LeftParen : '(';
RightParen : ')';
LeftBracket : '[';
RightBracket : ']';
LeftBrace : '{';
RightBrace : '}';

Semi : ';';
Comma : ',';

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
This : 'this';
For : 'for';
While : 'while';
Break : 'break';
Continue : 'continue';

Null : 'null';
True : 'true';
False : 'false';
StringConst : '"' ('\\"'| '\\\\' | '\\n' | .)*? '"' ;
DecimalInteger : [1-9] [0-9]* | '0' ;

Identifier : ('_'|[a-zA-Z])([0-9a-zA-Z]|'_')*;
Whitespace : [ \t]+ -> skip;
Newline : ( '\r' '\n'? | '\n' ) -> skip;
BlockComment : '/*' .*? '*/' -> skip;
LineComment : '//' ~[\r\n]* -> skip;

program: (classDef|varDef|funcDef)* EOF;

funcDef : (type | Void)? Identifier '(' functionList? ')' suite;

functionList : type Identifier (',' type Identifier)*;

varDef : type memberInit (',' memberInit)* ';';

memberInit: <assoc=right>(Identifier ('=' expression)?);

type : singleType ('[' ']')*;

singleType : primitiveType | Identifier;

primitiveType : Int | Bool | String;

classDef : Class Identifier '{' (varDef|funcDef|classConstructionDef)* '}' ';';

classConstructionDef : Identifier '(' ')' suite;

lamdaExpression : '[' '&'? ']' '(' functionList? ')' '->' suite;

suite : '{' statement* '}';

statement
    : suite                                                            #block
    | varDef                                                           #vardefStmt
    | If '(' expression ')' trueStmt=statement
        (Else falseStmt=statement)?                                    #ifStmt
    | While '(' expression ')' trueStmt=statement                      #whileStmt
    | For '(' (varDef | (expression? ';')) expression?
        ';' expression? ')' trueStmt=statement                         #forStmt
    | Break ';'                                                        #breakStmt
    | Continue ';'                                                     #continueStmt
    | Return expression? ';'                                           #returnStmt
    | expression ';'                                                   #pureExprStmt
    | ';'                                                              #emptyStmt
    ;

expression
    : primary                                                       #atomExpr
    | '(' expression ')'                                            #bracketExpr
    | lamdaExpression                                               #lamdaExpr
    | expression op=('++' | '--')                                   #cellExpr
    | expression '(' memberFunc? ')'                                #funcExpr
    | expression '[' expression ']'                                 #arrayExpr
    | expression '.' expression                                     #objectExpr
    | <assoc=right> op=('++' | '--') expression                     #cellExpr
    | <assoc=right> op=('!'|'~'|'+'|'-') expression                 #cellExpr
    | expression op=('*' | '/' | '%') expression                    #binaryExpr
    | expression op=('+' | '-') expression                          #binaryExpr
    | expression op=('<<' | '>>') expression                        #binaryExpr
    | expression op=('<' | '<=' | '>' | '>=') expression            #binaryExpr
    | expression op=('==' | '!=' ) expression                       #binaryExpr
    | expression '&' expression                                     #binaryExpr
    | expression '^' expression                                     #binaryExpr
    | expression '|' expression                                     #binaryExpr
    | expression '&&' expression                                    #binaryExpr
    | expression '||' expression                                    #binaryExpr
    | <assoc=right> expression '=' expression                       #binaryExpr
    ;

memberFunc : expression (',' expression )*;

primary
    : DecimalInteger
    | True
    | False
    | Null
    | StringConst
    | This
    | Identifier
    | New singleType ('[' expression? ']')*
    | New singleType '('  ')'
    ;


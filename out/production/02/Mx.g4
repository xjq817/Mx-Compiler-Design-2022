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

classDef : Class Identifier '{' (varDef|funcDef|constructionDef)* '}' ';';

constructionDef : Identifier '(' ')' suite;

varDef : type singleVarDef (',' singleVarDef)* ';';

singleVarDef: Identifier ('=' expression)?;

funcDef : returnType Identifier '(' parameterList? ')' suite;

returnType : type | Void;

parameterList : parameter (',' parameter)*;

parameter : type Identifier;

type : singleType ('[' ']')*;

singleType : primitiveType | Identifier;

primitiveType : Int | Bool | String;

suite : '{' statement* '}';

forInitStmt: (expression? ';') | varDef ;

statement
    : suite                                                            #block
    | varDef                                                           #vardefStmt
    | If '(' expression ')' truestmt=statement
        (Else falsestmt=statement)?                                    #ifStmt
    | While '(' expression ')' statement                               #whileStmt
    | For '(' forInitStmt condition=expression? ';'
        execution=expression? ')' statement                            #forStmt
    | Break ';'                                                        #breakStmt
    | Continue ';'                                                     #continueStmt
    | Return expression? ';'                                           #returnStmt
    | expression ';'                                                   #pureExprStmt
    | ';'                                                              #emptyStmt
    ;

expression
    : primary                                                                                #atomExpr
    | newType                                                                                #newTypeExpr
    | expression '.' Identifier                                                              #objectExpr
    | '[' '&'? ']' '(' parameterList? ')' '->' suite '(' argumentList? ')'                   #lambdaExpr
    | expression '(' argumentList? ')'                                                       #funcExpr
    | name=expression '[' id=expression ']'                                                  #arrayExpr
    | expression op=('++' | '--')                                                            #sufCellExpr
    | <assoc=right> op=('++' | '--') expression                                              #cellExpr
    | <assoc=right> op=('!'|'~'|'+'|'-') expression                                          #cellExpr
    | lhs=expression op=('*' | '/' | '%') rhs=expression                                     #binaryExpr
    | lhs=expression op=('+' | '-') rhs=expression                                           #binaryExpr
    | lhs=expression op=('<<' | '>>') rhs=expression                                         #binaryExpr
    | lhs=expression op=('<' | '<=' | '>' | '>=') rhs=expression                             #binaryExpr
    | lhs=expression op=('==' | '!=' ) rhs=expression                                        #binaryExpr
    | lhs=expression op='&' rhs=expression                                                   #binaryExpr
    | lhs=expression op='^' rhs=expression                                                   #binaryExpr
    | lhs=expression op='|' rhs=expression                                                   #binaryExpr
    | lhs=expression op='&&' rhs=expression                                                  #binaryExpr
    | lhs=expression op='||' rhs=expression                                                  #binaryExpr
    | <assoc=right> lhs=expression op='=' rhs=expression                                     #assignExpr
    ;

primary: '(' expression ')' | literal | This | Identifier;

argumentList: expression (',' expression )*;

newType
    : New singleType ('[' expression ']')+ ('[' ']')*      #newArrayExpr
    | New singleType ('(' ')')?                            #newObjExpr
    ;

literal
    : DecimalInteger
    | True
    | False
    | Null
    | StringConst
    ;
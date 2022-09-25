grammar Mx;   //名称需要和文件名一致

s : expr EOF;   //解决问题: no viable alternative at input '<EOF>'

expr
    : expr '+' expr     #add   //标签会生成对应访问方法方便我们实现调用逻辑编写
    | expr '-' expr     #sub
    | A                 #int
    ;

A   : '-'?[1-9][0-9]*
    |'0'                   //定义整数
    ;

WS
    : [ \r\n\t]+ -> skip      //跳过空白类字符
    ;
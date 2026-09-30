grammar Calc;
prog: ((expr | asignacion) NEWLINE)* ;
asignacion: VARIABLE ':=' expr ;
expr: expr ('*' | '/') expr
    | expr ('+' | '-') expr
    | expr ('<' | '>' | '==' | '!=') expr
    | INT
    | '(' expr ')'
    | OPERACION '(' (expr (',' expr)*)? ')'
    | VARIABLE
    ;
NEWLINE : [\r\n]+ ;
INT     : [0-9]+ ;
WS :      [ \t\r\n]+ -> skip ;
OPERACION: 'cos' | 'sen' | 'tan' ;  
VARIABLE: [a-zA-Z]+ ;
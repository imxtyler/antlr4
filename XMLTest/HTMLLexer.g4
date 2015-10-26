lexer grammar HTMLLexer;

COMMENT : '<!--' .*? '-->' -> skip ;
CDATA   : '<![CDATA[' .*? ']]>' ;

OPEN      : '<'  -> pushMode(INSIDE) ;
SPEC_OPEN : '<!' -> pushMode(INSIDE) ;

TEXT : (ENTITY | ~[<&])+ ;
fragment ENTITY
    : '&' [a-zA-Z]+ ';'
    | '&#' [0-9]+ ';'
    | '&#x' [0-9A-Za-z]+ ';' ;

mode INSIDE;
CLOSE       : '>'  -> popMode ;
SLASH_CLOSE : '/>' -> popMode ;

DOCTYPE : '<!DOCTYPE HTML>';
StHTML : 'html' ;
EnHTML : '/html' ;

StHead : 'head' ;
EnHead : '/head' ;
StMeta : 'meta' ;

StBody : 'body' ;
EnBody : '/body' ;

NAME : 'class'
    | 'content'
    | 'http-equiv'
    | 'id'
    | 'lang'
    | 'name'
    | 'style'
    | 'type'
    ;

EQUALS : '=' ;

VALUE : ('"' ~["<>\r\n]+ '"')
    | ('\'' ~['<>\r\n]+ '\'')
    | ~["'<>= \t\r\n]+
    ;

WS : [ \t\r\n]+ -> skip ;

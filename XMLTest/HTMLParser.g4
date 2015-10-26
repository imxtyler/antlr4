parser grammar HTMLParser;

options {
    tokenVocab = HTMLLexer;
    language = Java;
}

/* Parser Rules */
doc : type? html ;
type : DOCTYPE ;
html : shtml head body ehtml ;

head : shead meta* ehead ;
meta : smeta ;

body : sbody ebody ;

shtml : '<' 'html' attr* '>' ;
ehtml : '<' '/html' '>' ;
shead : '<' 'head' attr* '>' ;
ehead : '<' '/head' '>' ;
smeta : '<' 'meta' attr+ '>' ;

sbody : '<' 'body' attr* '>' ;
ebody : '<' '/body' '>' ;

attr : NAME '=' VALUE ;

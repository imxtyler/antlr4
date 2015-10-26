# MySQL parser

An ANTLR4 grammar for MySQL based on version 5.6 of 
http://dev.mysql.com/doc/refman/5.6/en/

export CLASSPATH=".:/usr/local/lib/antlr-3.3-complete.jar:/usr/local/lib/antlr-4.0-complete.jar:$CLASSPATH"
alias antlr3='java org.antlr.Tool'
alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

1) antlr4 *.g4
2) javac *.java
3) grun MySQL stat -tokens

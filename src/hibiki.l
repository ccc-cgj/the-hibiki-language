%{
	#include "hibiki.tab.h"
%}

%%

"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ { yylval = atoi(strdup(yytext)); return NUMBER; }
\n { return EOL; }
[ \t] {}
. { printf("mystery character %c\n", *yytext); }

%%
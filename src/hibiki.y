%{
	#include <stdio.h>
	#define YYSTYPE double
%}

%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%

calclist
	:
	| calclist expr EOL {
		printf(" = %d\n", $1);
	}
	;

expr
	: factor
	| expr ADD factor { $$ = $1 + $3; }
	| expr SUB factor { $$ = $1 - $3; }
	;

factor
	: term
	| factor MUL term { $$ = $1 * $3; }
	| factor DIV term { $$ = $1 / $3; }
	;

term
	: NUMBER
	| ABS term ABS { $$ = $2 > 0 ? $2 : -$2; }
	;

%%

main(int argc, char **argv) {
	yyparse();
}

yyerror(char *s) {
	fprintf(stderr, "error: %s\n", s);
}

int yywrap(void) {
	return 1;
}
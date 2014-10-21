/*! 
 lex definitions

 - resources
    http://scottmcpeak.com/elkhound/sources/elsa/cc.lex 
    http://luv.asn.au/overheads/lex_yacc/lex.html
    http://dinosaur.compilertools.net/flex/flex_17.html
*/

/* C definitions */
%{

#include <stdio.h> /* printf */

%}

%x HERE

/* options */
/* %option noyywrap */

/* Lex macro definitions */
INCL 	^#[ \t]*include[ \t]*
OTHER 	[.\n]+

/* token definition rules */
%%

{INCL} 	BEGIN HERE;
<HERE>[\">][^ \t\n]+[\">] 	{ printf("anything else after INCL: %s", yytext); }
%%

/* other codes */

/*

void some_other_func() {}

*/

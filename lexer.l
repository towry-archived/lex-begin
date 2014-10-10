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

/* options */
/* %option noyywrap */

/* Lex macro definitions */
ADDRESS 	http:\/\/[^ \n<>"]*
OTHER 	.|\n

/* token definition rules */
%%

{ADDRESS} 	ECHO;
{OTHER} 	;

%%

/* other codes */

/*

void some_other_func() {}

*/

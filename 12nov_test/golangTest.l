/*definition part*/
%{
#include "y.tab.h"
%}
letter [A-Za-z]
digit [0-9]
id {letter}( {letter} | {digit} )*

%% /*transition rule part*/
"="     return(yytext[0]);
"*"     return(yytext[0]);
{id}    return(ID);
[ \n\t\b];

{Letter}    { ({Letter} | {Digit})* return tident }
{Digit}+      { printf("found integer number\n"); }

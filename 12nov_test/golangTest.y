%{
%}
%token ID

%right '=' 
%left '+' '-' 
%left '*' '/' 

%%
expr : expr '+' term { printf("addition expression detected \n"); }
        | expr '-' term {$$ = $1 - $3}; 

S:  L '=' R
    | R; 
L:  '*' R
    | ID;
R:  L; 
%%

main()
{
    if(yyparse() == 0) {
        printf("The parsing Complete! \n");
    } else {
        printf("syntax error \n");
    }
}
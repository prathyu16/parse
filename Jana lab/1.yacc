%{
#include<stdio.h>
%}
%token A B

%%
S:A S B
 |A B
 ;
%%

yyerror()
{
printf("The string doesn't match");
exit(1);
}

int yylex()
{
char ch;
ch=getchar();
if(ch=='a')
return A;
else if(ch=='b')
return B;
else if(ch=='\n')
return 0;
else
return ch;
}

int main()
{
printf("enter the expression");
yyparse();
printf("\nString is accepted");
return 0;
}

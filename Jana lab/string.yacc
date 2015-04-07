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
printf("the string doesn't match");
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
printf("enter the expression\n");
yyparse();
printf("string acc\n");
return 0;
}


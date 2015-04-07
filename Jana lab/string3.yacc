%{
#include<stdio.h>
%}
%token I
%left '+' '-'
%left '*' '/'
%%
E:E'='E {
printf("valid expression");
}
|E:E'+'E {
printf("valid expression");
}
|E:E'-'E {
printf("valid expression");
}
|E:E'/'E {
printf("valid expression");
}
|E:E'*'E {
printf("valid expression");
}
|I
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
if(ch=='i')
return I;
if(isalnum(ch))
return I;
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

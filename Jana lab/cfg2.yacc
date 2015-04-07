%{
#include<stdio.h>
%}
%token A C D E
%%
S:A S D
 |B 
B:E B C
 | 
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
else if(ch=='c')
return C;
else if(ch=='b')
return E;
else if(ch=='d')
return D;
else if(ch=='\n')
return 0;
else
return ch;
}
int main()
{
printf("enter the expression\n");
yyparse();
printf("string accepted");
return 0;
}


 

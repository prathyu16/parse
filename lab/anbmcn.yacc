%{
#include<stdio.h>
%}
%token A B C
%%
S:A S C
 |D
D:B D
 |;
%%
yyerror()
{
	printf("\nNot accepted");
	exit(0);
}
int yylex()
{
	char ch;
	ch=getchar();
	if(ch=='a')
		return A;
	else if(ch=='b')
		return B;
	else if(ch=='c')
		return C;
	else if(ch=='\n')
		return 0;
	else
		return ch;
}
int main()
{
	printf("\nenter string");
	yyparse();
	printf("\nstring accepted");
	return 0;
}

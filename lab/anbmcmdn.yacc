%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B C D
%%
S:A S D
 |E
E:B E C
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
	else if(ch=='d')
		return D;
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

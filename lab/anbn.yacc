%{
#include<stdio.h>
%}
%token A B
%%
S:A S B
 |A B;
%%
yyerror()
{
	 printf("\nstring is not accepted");
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
	else if(ch=='\n')
		return 0;
	else
		return ch;	
}
int main()
{
	printf("\nEnter string");
	yyparse();
	printf("\n string Accepted");
	return 0;
}

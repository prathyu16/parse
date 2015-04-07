#include<stdio.h>
char arr[100];
int i;
void E();
void E1();
void T();
void T1();
int F();
int main()
{
	i=0;
	printf("\nEnter string:");
	scanf("%s",arr);
	E();	
	printf("\nValid string");
     return 0;
}
void E()
{
	T();
	E1();
}
void E1()
{
	if(arr[i]=='+')
	{
	i++;
	T();
	E1();
	}
}
void T()
{
	F();
	T1();
}
void T1()
{
 	if(arr[i]=='*')
	{
	i++;
	F();
	T1();
	}
}
int F()
{
	if(arr[i]=='a')
	i++;
	else if(arr[i]=='(')
	{
		 i++;
		 E();
		 if(arr[i]==')')
		 i++;
		 else{
			printf("\nInvalid string"); 
			exit(0);}//return 0;}
	}
	else{
	printf("\nInvalid string\n");
	exit(0);}//return 0;}
}



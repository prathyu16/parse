#include<stdio.h>
#define true 1
#define false 0
int s();
int l();

char *p1,*p2,*p3;
char str[100];

int s()
{
	p2=p1;
	if( *p1=='(' )
	{
		p1++;
		if( l() )
		{

			if( *p1==')' )
			{
				p1++;	
				return true;
			}
		
		}

	}
	p1=p2;
	if( *p1=='a')
	{
		p1++;
		return true;
	}
	else 
		return false;
}

int l()
{
 	p3=p1;	
	if( l() )
	{
	
		if( *p1==',')
		{
			p1++;
			if( s() )
			{
			    return true;
			}
	
		}
	
	}
	p1=p3;
	if(s())
	{
	  return true;
	}
	else 
		return false;
}	

int main(){
	char ch;
	
	printf("enter input string\n");
	scanf("%s",str);
	p1=str;
	if(s())
	printf("string accepted");
	else
	printf("invalid string");
	return 0;
}

	

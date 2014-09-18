#include <stdio.h>

extern unsigned long fib(unsigned long);

int main(int argc, char const *argv[])
{
	for (int i = 0; i < 20; ++i)
	{
		printf("%lu \n",  fib(i));
	}
	return 0;
}

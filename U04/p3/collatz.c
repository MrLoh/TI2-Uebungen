#include <stdio.h>

extern unsigned int collatz(unsigned int);

int main(int argc, char const *argv[])
{
	for (int i = 5; i < 10; ++i)
	{
		printf("%u \n",  collatz(i));
	}
	return 0;
}

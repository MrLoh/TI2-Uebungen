#include <stdio.h>

extern unsigned int sqrt_abs(unsigned int);

int main(int argc, char const *argv[])
{
	for (int i = 1; i <= 30; ++i)
	{
		printf("sqrt_abs(%u) = ", i);
		printf("%u \n", sqrt_abs(i));
	}
	return 0;
}

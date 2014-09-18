#include <stdio.h>

unsigned long fib(unsigned long i)
{
	if (i==0)
	{
		return 0;
	}
	unsigned long fibprelast = 0;
	unsigned long fiblast = 1;
	while (i>1)
	{
		unsigned long temp = fibprelast;
		fibprelast = fiblast;
		fiblast += temp;
		--i;
	}
	return fiblast;
}

int main(int argc, char const *argv[])
{
	for (int i = 0; i < 20; ++i)
	{
		printf("%lu \n", fib(i));
	}
	return 0;
}

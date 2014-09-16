#include <stdio.h>

extern unsigned int gauss(unsigned int);

int n;
n=4;
// n=9;
// n=0;

int main(int argc, char const *argv[])
{
	int i = gauss(n);
	printf("Ergebnis %u \n",i);
	return 0;
}

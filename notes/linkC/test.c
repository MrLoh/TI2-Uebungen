#include <stdio.h>

extern int asmadd(int, int);

int main(int argc, char const *argv[])
{
	int res = asmadd(5,4);
	printf("Ergebnis %i \n",res);
	return 0;
}

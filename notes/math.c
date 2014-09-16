#include <stdio.h>

extern long math();

int main(int argc, char const *argv[])
{
	long l = math();
	printf("Ergebnis %lu \n",l);
	return 0;
}

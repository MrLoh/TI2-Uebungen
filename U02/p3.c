#include <stdio.h>
extern unsigned int gauss(unsigned int);

int main(int argc, char const *argv[])
{
    printf("Gauss 5         = %u \n", gauss(5));
    printf("Gauss 202       = %u \n", gauss(202));
    printf("Gauss 10,000    = %u \n", gauss(10000));
    printf("Gauss 100,000   = %u \n", gauss(100000));
    printf("Gauss 100,000 should = 5000050000\n");
    return 0;
}

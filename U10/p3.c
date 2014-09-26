#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define SIZE 20

extern void sort_arr(int * arr, int size);
extern void inc_arr(int * arr, int size);

void print_array(int * arr)
{
	printf("[");
	for (int i = 0; i < SIZE-1; ++i)
		printf("%i, ", arr[i]);
	printf("%i]\n", arr[SIZE-1]);
}


int main(int argc, char const *argv[])
{
	srand(time(NULL));
	int arr[SIZE];
	for (int i = 0; i < SIZE; ++i)
		arr[i] = rand() % 200 - 100;
	print_array(arr);
	// inc_arr(arr, SIZE);
	sort_arr(arr, SIZE);
	print_array(arr);
	return 0;
}

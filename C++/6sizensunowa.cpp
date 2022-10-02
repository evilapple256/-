#include <stdio.h>
int main(void)
{
	int n = 5;
	printf("１から%2dまでの自然数の和は%3d\n", n, n * (n + 1) / 2);
        n = 10;
	printf("１から%2dまでの自然数の和は%3d\n", n, n * (n + 1) / 2);
        n = 14;
	printf("１から%2dまでの自然数の和は%3d\n", n, n * (n + 1) / 2);
}
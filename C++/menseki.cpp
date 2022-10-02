#include <stdio.h>
int main(void)
{
	float a;
	float b;
	printf("三角形の高さを入力してください\n");
	scanf_s("%f", &a);
	printf("三角形の底辺の長さを入力してください\n");
	scanf_s("%f", &b);
	printf("面積は%.1fです", a * b / 2);
}
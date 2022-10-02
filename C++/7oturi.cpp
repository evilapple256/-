#include <stdio.h>
int main(void)
{
	int a;
	printf("金額を入力してください\n");
	scanf_s("%d", &a);
	printf("%d円分の買い物をしました。おつりは\n", a);
        a = 1000 - a;
	printf("500円玉が%d枚\n", a / 500);
	printf("100円玉が%d枚\n", (a - (a / 500) * 500) / 100);
	printf("50円玉が%d枚\n", (a - (a / 100) * 100) / 50);
	printf("10円玉が%d枚\n", (a - (a / 50) * 50) / 10);
	printf("5円玉が%d枚\n", (a - (a / 10) * 10) / 5);
	printf("1円玉が%d枚\n", (a - (a / 5) * 5));
}
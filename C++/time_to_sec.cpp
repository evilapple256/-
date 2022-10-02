#include <stdio.h>
int main(void)
{
	int a;
	int b;
	int c;
	printf("時間を入力してください\n");
	scanf_s("%d:%d:%d", &a, &b, &c);
	printf("%d時間%d分%d秒は%d秒です", a, b, c, a * 3600 + b * 60 + c);
}
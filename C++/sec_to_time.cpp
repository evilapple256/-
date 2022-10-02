#include <stdio.h>
int main(void)
{
	int a;
	printf("時間を入力してください\n");
	scanf_s("%d", &a);
	printf("%d秒は%d時間%d分%d秒です", a, a / 3600, (a - (a / 3600) * 3600) / 60, a - (a / 60) * 60);
}
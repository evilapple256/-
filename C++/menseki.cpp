#include <stdio.h>
int main(void)
{
	float a;
	float b;
	printf("�O�p�`�̍�������͂��Ă�������\n");
	scanf_s("%f", &a);
	printf("�O�p�`�̒�ӂ̒�������͂��Ă�������\n");
	scanf_s("%f", &b);
	printf("�ʐς�%.1f�ł�", a * b / 2);
}
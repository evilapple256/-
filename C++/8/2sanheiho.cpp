#include <iostream>
#include <math.h>
using namespace std;
void rss(int a, int b) {
	printf("�Ίp���̒�����%.1f�ł�", sqrt(a * a + b * b));
}

int main(void) {
	int num[2];

	printf("�����`�̍�������͂��Ă�������\n");
    scanf_s("%d", &num[0]);
	printf("�����`�̕�����͂��Ă�������\n");
	scanf_s("%d", &num[1]);

	rss(num[0], num[1]);
}
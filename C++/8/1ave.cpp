#include <iostream>
using namespace std;
void print_avg(int a, int b, int c) {
	printf("%.1f", (a + b + c) / 3.0);
}

int main(void) {
	int i;
	float num[3];

	for (i = 0;i < 3;++i) {
		printf("%dつ目の整数を入力してください\n", i + 1);
		scanf_s("%d", &num[i]);
	}

	print_avg(num[0], num[1], num[2]);
}
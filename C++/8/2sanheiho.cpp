#include <iostream>
#include <math.h>
using namespace std;
void rss(int a, int b) {
	printf("対角線の長さは%.1fです", sqrt(a * a + b * b));
}

int main(void) {
	int num[2];

	printf("長方形の高さを入力してください\n");
    scanf_s("%d", &num[0]);
	printf("長方形の幅を入力してください\n");
	scanf_s("%d", &num[1]);

	rss(num[0], num[1]);
}
#include <iostream>
using namespace std;
void print_avg(int a, int b, int c) {
	printf("%.1f", (a + b + c) / 3.0);
}

int main(void) {
	// Your code here!
	int i;
	float num[3];

	for (i = 0;i < 3;++i) {
		printf("%d‚Â–Ú‚Ì®”‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢\n", i + 1);
		scanf_s("%f", &num[i]);
	}

	print_avg(num[0], num[1], num[2]);
}
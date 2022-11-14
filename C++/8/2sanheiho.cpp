#include <iostream>
#include <math.h>
using namespace std;
void rss(int a, int b) {
	printf("‘ÎŠpü‚Ì’·‚³‚Í%.1f‚Å‚·", sqrt(a * a + b * b));
}

int main(void) {
	int num[2];

	printf("’·•ûŒ`‚Ì‚‚³‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢\n");
    scanf_s("%d", &num[0]);
	printf("’·•ûŒ`‚Ì•‚ğ“ü—Í‚µ‚Ä‚­‚¾‚³‚¢\n");
	scanf_s("%d", &num[1]);

	rss(num[0], num[1]);
}
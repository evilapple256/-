#include <iostream>
#include <math.h>
using namespace std;

int main(void) {
	printf("**********\n");
	printf("�Q�[���J�n\n");
	printf("**********\n");
	char str[9] = { '1', '2', '3', '4', '5', '6', '7', '8', '9',};
	int player =  0;
	int n;
	int turn = 0;
	bool gameover = false;

	while (!gameover)
	{

		if (player == 0) {
			printf("���̔Ԃł�\n");
			printf("-----\n");
			printf("%c|%c|%c\n", str[0], str[1], str[2]);
			printf("-----\n");
			printf("%c|%c|%c\n", str[3], str[4], str[5]);
			printf("-----\n");
			printf("%c|%c|%c\n", str[6], str[7], str[8]);
			printf("-----\n");
			printf("������ꏊ����͂��Ă��������F");
			scanf_s("%d", &n);
			if (str[n - 1] == 'o' || str[n - 1] == 'x') {
				while ((str[n - 1] == 'o' || str[n - 1] == 'x')) {
					printf("���Ɉ󂪑ł���Ă��܂��B������x�I�����Ă��������B\n");
					printf("������ꏊ����͂��Ă��������F");
					scanf_s("%d", &n);
				}

			}
			str[n - 1] = 'o';
			printf("\n");
			player = 1;
			turn++;

		}
		else {
			printf("���̔Ԃł�\n");
			printf("-----\n");
			printf("%c|%c|%c\n", str[0], str[1], str[2]);
			printf("-----\n");
			printf("%c|%c|%c\n", str[3], str[4], str[5]);
			printf("-----\n");
			printf("%c|%c|%c\n", str[6], str[7], str[8]);
			printf("-----\n");
			printf("������ꏊ����͂��Ă��������F");
			scanf_s("%d", &n);
			if (str[n - 1] == 'o' || str[n - 1] == 'x') {
				while ((str[n - 1] == 'o' || str[n - 1] == 'x')) {
					printf("���Ɉ󂪑ł���Ă��܂��B������x�I�����Ă��������B\n");
					printf("������ꏊ����͂��Ă��������F");
					scanf_s("%d", &n);
				}

			}
			str[n - 1] = 'x';
			printf("\n");
			player = 0;
			turn++;

		}

		for (int i = 0; i < 3; i++) {
			if (str[3 * i] == str[3 * i + 1] && str[3 * i] == str[3 * i + 2]){
				gameover = true;
				if (str[3 * i] == 'o') {
					player = 0;
				}
				else {
					player = 1;
				}
			}
			if (str[i] == str[i + 3] && str[i] == str[i + 6]){
				gameover = true;
				if (str[i] == 'o') {
					player = 0;
				}
				else {
					player = 1;
				}
			}
		}
		if (str[0] == str[4] && str[0] == str[8]) {
			gameover = true;
			if (str[3 * 0] == 'o') {
				player = 0;
			}
			else {
				player = 1;
			}
		}
		if (str[2] == str[4] && str[2] == str[6]) {
			gameover = true;
			if (str[3 * 2] == 'o') {
				player = 0;
			}
			else {
				player = 1;
			}
		}
		if (turn == 9) {
			player = 2;
			gameover = true;
		}
		
	}
	
	if (player == 0) {
		printf("���̏���\n");
	}
	if (player == 1) {
		printf("���̏���\n");
	}
	else {
		printf("��������\n");
	}

	printf("-----\n");
	printf("%c|%c|%c\n", str[0], str[1], str[2]);
	printf("-----\n");
	printf("%c|%c|%c\n", str[3], str[4], str[5]);
	printf("-----\n");
	printf("%c|%c|%c\n", str[6], str[7], str[8]);
	printf("-----\n");

}
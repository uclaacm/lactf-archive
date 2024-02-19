#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

#define N 64
#define M 128

typedef struct Poly Poly;
struct Poly {
	int degree;
	int *coeff;
};

char grid[N][N];
Poly *polys[M];

int readint() {
	char buf[0x10];
	read(0, buf, sizeof(buf));
	return atoi(buf);
}

int eval(Poly *p, int x) {
	int res = 0;
	for(int i = 0; i < p->degree; i++) {
		int tmp = 1;
		for(int j = 0; j < i; j++)
			tmp *= x;
		tmp *= p->coeff[i];
		res += tmp;
	}
	return res;
}

void plot(int erase) {
	printf("idx: ");
	int idx = readint();
	if(idx < 0 || idx >= M) {
		printf("index out of bounds\n");
		return;
	}
	Poly *p = polys[idx];
	for(int i = 0; i < N; i++) {
		int y = eval(p, i-N/2) + N/2;
		printf("(%d, %d)\n", i-N/2, y-N/2);
		if(y >= 0 && y < N)
			grid[y][i] = erase ? '.' : '@';
	}
}

void view() {
	for(int i = 0; i < N; i++) {
		for(int j = 0; j < N; j++)	
			printf("%c", grid[i][j]);
		printf("\n");
	}
}

void add() {
	Poly *p = malloc(sizeof(Poly));
	printf("enter degree: ");
	p->degree = readint();
	if(p->degree < 0 || p->degree > 10) {
		printf("degree out of bounds\n");
		free(p);
		return;
	}
	p->coeff = malloc(sizeof(int)*p->degree);
	for(int i = 0; i < p->degree; i++) {
		printf("enter coefficient %d: ", i);
		p->coeff[i] = readint();
	}
	for(int i = 0; i < M; i++)
		if(!polys[i]) {
			printf("added at idx: %d\n", i);
			polys[i] = p;
			return;
		}
	printf("no more space\n");
	free(p);
}

void delete() {
	printf("idx: ");
	int idx = readint();
	if(idx < 0 || idx >= M) {
		printf("index out of bounds\n");
		return;
	}
	free(polys[idx]);
}

int main() {
	setbuf(stdin, 0);
	setbuf(stdout, 0);
	memset(grid, '.', N*N);
	for(;;) {
		printf("pp: ");
		switch(readint()) {
		case 1:
			add();
			break;
		case 2:
			view();
			break;
		case 3:
			plot(0);
			break;
		case 4:
			plot(1);
			break;
		case 5:
			delete();
			break;
		case 6:
			memset(grid, '.', N*N);
			break;
		default:
			printf("invalid choice\n");
		case 7:
			return 0;
		}
	}
}

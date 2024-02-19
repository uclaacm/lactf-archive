#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

char *start, *end;
#define MAXCHUNKS 16
#define DEFAULTSZ 0xf8
#define BARRIERSZ 0x18

void error(char *s) {
	fprintf(stderr, "%s\n", s);
	exit(1);
}

void delete(int idx) {
	if(idx < 0 || idx >= MAXCHUNKS)
		error("invalid index in delete");
	char *p = start + idx*(DEFAULTSZ+BARRIERSZ+0x10);
	char *b = p-8-BARRIERSZ;
	if(*b != (char)0xff) {
		free(p);
		memset(b, 0xff, BARRIERSZ);
		return;
	}
	error("double free detected");
}

char *alloc(size_t size) {
	if(size > DEFAULTSZ)
		error("size too large");
	char *p;
	p = malloc(DEFAULTSZ);
	if(p < start || p > end)
		error("chunk out of bounds");
	char *b = p-8-BARRIERSZ;
	memset(b, 0x69, BARRIERSZ);
	printf("data: ");
	fflush(stdout);
	int cnt = read(0, p, size-1);
	if(cnt <= 0)
		error("invalid read");
	p[cnt] = 0;
	return p;
}

void view(int idx) {
	if(idx < 0 || idx >= MAXCHUNKS)
		error("invalid index in view");
	char *p = start + idx*(DEFAULTSZ+BARRIERSZ+0x10);
	char *b = p-8-BARRIERSZ;
	if(*b == (char)0xff) {
		printf("cannot view deleted chunks\n");
		return;
	}
	printf("aplet123\n");
}

void swap(int i1, int i2) {
	char buf[DEFAULTSZ+BARRIERSZ+0x10];
	char *p1 = start + i1*(DEFAULTSZ+BARRIERSZ+0x10)-8-BARRIERSZ;
	char *p2 = start + i2*(DEFAULTSZ+BARRIERSZ+0x10)-8-BARRIERSZ;
	memcpy(buf, p1, DEFAULTSZ+BARRIERSZ+0x10);
	memcpy(p1, p2, DEFAULTSZ+BARRIERSZ+0x10);
	memcpy(p2, buf, DEFAULTSZ+BARRIERSZ+0x10);
}

int cmp(int i1, int i2) {
	char *p1 = start + i1*(DEFAULTSZ+BARRIERSZ+0x10);
	char *p2 = start + i2*(DEFAULTSZ+BARRIERSZ+0x10);
	return strcmp(p1, p2);
}

void sort() {
	for(int i = 0; i < MAXCHUNKS-1; i++)
		for(int j = 0; j < MAXCHUNKS-i-1; j++)
			if(cmp(j, j+1) > 0)
				swap(j, j+1);
}

void barrier() {
	char *p = malloc(BARRIERSZ);
	memset(p, 0xff, BARRIERSZ);
}

void setup() {
	barrier();
	start = malloc(DEFAULTSZ);
	for(int i = 1; i < MAXCHUNKS-1; i++) {
		barrier();
		malloc(DEFAULTSZ);
	}
	barrier();
	end = malloc(DEFAULTSZ);
	barrier();
	if(!start || !end)
		error("setup failed");
	for(int i = 0; i < MAXCHUNKS; i++)
		free(start + i*(DEFAULTSZ+BARRIERSZ+0x10));
}

int readint() {
	char buf[0x10];
	fflush(stdout);
	read(0, buf, sizeof(buf));
	return atoi(buf);
}

int main() {
	printf("1: alloc\n");
	printf("2: delete\n");
	printf("3: view\n");
	printf("4: sort\n");
	setup();
	for(;;) {
		printf("choice: ");
		switch(readint()) {
		case 1:
			printf("size: ");
			alloc(readint());
			break;
		case 2:
			printf("idx: ");
			delete(readint());
			break;
		case 3:
			printf("idx: ");
			view(readint());
			break;
		case 4:
			sort();
			break;
		case 5:
			return 0;
		default:
			printf("invalid choice\n");
			return 1;
		}
	}
	return 1;
}

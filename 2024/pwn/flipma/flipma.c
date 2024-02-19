#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int flips = 4;

long readint() {
	char buf[0x10];
	read(0, buf, sizeof(buf));
	return atol(buf);
}

void flip() {
	write(1, "a: ", 3);
	long a = readint();
	write(1, "b: ", 3);
	long b = readint();
	if(b < 0 || b >= 8) {
		puts("we're flipping bits, not burgers");
		return;
	}
	char v = *(((char*)stdin)+a);
	v ^= 1 << b;
	*(((char*)stdin)+a) = v;
	flips--;
}

int main() {
	setbuf(stdin, 0);
	setbuf(stdout, 0);
	for(;;) {
		if(flips <= 0) {
			puts("no more flips");
			return 0;
		}
		flip();
	}
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

long readint() {
	char buf[0x10];
	read(0, buf, sizeof(buf));
	long v = atol(buf);
	memset(buf, 0, sizeof(buf));
	return v;
}

void swap(long *a, long *b) {
	*a ^= *b;
	*b ^= *a;
	*a ^= *b;
}

int main() {
	setvbuf(stdout, 0, _IOLBF, 0);
	long v, o1, o2;
	for(;;) {
		write(1, "woogie: ", 8);
		o1 = readint();
		write(1, "boogie: ", 8);
		o2 = readint();
		if(!o1 && !o2)
			break;
		swap(&v+o1, &v+o2);
	}
	for(int i = 0; i < 4; i++) {
		char tmp = *(((char*)&v)+i);
		*(((char*)&v)+i) = *(((char*)&v)+7-i);
		*(((char*)&v)+7-i) = tmp;
	}
	fwrite(&v, 1, 8, stdout);
	fflush(stdout);
	write(1, "\n", 1);
	return 0;
}

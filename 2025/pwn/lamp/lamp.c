#include <stdlib.h>
#include <unistd.h>

void gets(char *p) {
	char c;
	for(;;) {
		c = *p;
		read(0, p, 1);
		if(*p == '\n') {
			*p = c;
			break;
		}
		p++;
	}
}

int main() {
	char *leek = malloc(0x18);
	free(leek);
	write(1, leek, 8);
	char buf[3] = {};
	for(;;) {
		write(1, ">", 1);
		read(0, buf, 2);
		gets(malloc(strtol(buf, 0, 0x10)));
	}
}

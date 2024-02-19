#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void gen(char *s, int n) {
	const char charset[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	for(int i = 0; i < n; i++)
		s[i] = charset[rand() % (sizeof(charset)-1)];
	s[n] = 0;
}

int main() {
	unsigned seed;
	int fd = open("/dev/urandom", O_RDONLY);
	if(fd < 0 || read(fd, &seed, sizeof(seed)) < 0) {
		perror("/dev/urandom");
		return 1;
	}
	close(fd);
	srand(seed);
	int N = rand()%50 + 50;
	char a1[101], a2[101];
	for(int i = 0; i < N; i++) {
		int l1 = rand()%100 + 1;
		int l2 = rand()%100 + 1;
		gen(a1, l1);
		gen(a2, l2);
		setenv(a1, a2, 1);
	}
	char *args[] = {"./woogie-boogie", 0};
	execvp(args[0], args);
	perror("execvp");
	return 1;
}

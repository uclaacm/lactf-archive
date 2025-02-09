#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool shuanshuan(unsigned int n, unsigned int k) {
    for (unsigned int i = 0; i < k; i ++) {
        if (n == 1) {
            return false;
        }
        if (n % 2 == 0) {
            n /= 2;
        } else {
            n = 3 * n + 1;
        }
    }
    return n == 1;
}

void eigong() {
    FILE* flagfile = fopen("flag.txt", "rb");
    if (flagfile == NULL) {
        puts("Could not open flag.txt");
        return;
    }
    char buf[256];
    fgets(buf, 256, flagfile);
    buf[strcspn(buf, "\n")] = '\0';
    puts(buf);
}

unsigned int yi[6] = {27, 38, 87, 95, 118, 9};

int main(void) {
    puts("Welcome to the Tianhuo Research Center.");
    printf("Please enter your access code: ");
    fflush(stdout);
    char buf[16];
    fgets(buf, 16, stdin);
    for (int i = 0; i < 6; i ++) {
        if (buf[i] < 0x20 || buf[i] >= 0x7f || !shuanshuan(buf[i], yi[i])) {
            puts("ACCESS DENIED");
            return 1;
        }
    }
    if (buf[6] != '\0' && buf[6] != '\n') {
        puts("ACCESS DENIED");
        return 1;
    }
    eigong();
    return 0;
}

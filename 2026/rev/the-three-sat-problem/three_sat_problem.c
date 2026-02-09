#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "consts.h"

char inp[NBITS + 1];
#define B(i) ((bool)(inp[i] & 1))
#include "logic.h"

int main(void) {
    puts("Have you solved the Three-Sat Problem?");
    fflush(stdout);
    fgets(inp, NBITS + 1, stdin);
    inp[strcspn(inp, "\n")] = '\0';
    if (strlen(inp) != NBITS) {
        puts("Please be serious...");
        return 1;
    }
    for (int i = 0; i < NBITS; i ++) {
        if (inp[i] != '0' && inp[i] != '1') {
            puts("Please be serious...");
            return 1;
        }
    }
    if (!compute() || !B(OUTBIT)) {
        puts("I see you haven't.");
        return 1;
    }
    puts("Incredible! Let me get the flag for you...");
    char flag[NFLAGBITS / 8 + 1] = {0};
    for (int i = 0; i < NFLAGBITS; i ++) {
        flag[i / 8] |= B(flagbits[i]) << (i % 8);
    }
    puts(flag);
    return 0;
}
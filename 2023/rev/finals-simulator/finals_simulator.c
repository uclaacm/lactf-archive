#include <stdio.h>
#include <string.h>

unsigned char enc[20] = {14, 201, 157, 184, 38, 131, 38, 65, 116, 233, 38, 165, 131, 148, 14, 99, 55, 55, 55, 0};
int mod = 253;

void print_flag() {
    char flag[256];
    FILE* flagfile = fopen("flag.txt", "r");
    if (flagfile == NULL) {
        puts("Cannot read flag.txt.");
    } else {
        fgets(flag, 256, flagfile);
        flag[strcspn(flag, "\n")] = '\0';
        puts(flag);
    }
}


int main(void) {
    char inp[256];
    puts("Welcome to Finals Simulator 2023: Math Edition!");
    printf("Question #1: What is sin(x)/n? ");
    fflush(stdout);
    fgets(inp, 256, stdin);
    inp[strcspn(inp, "\n")] = '\0';
    if (strcmp(inp, "six") != 0) {
        puts("Wrong! You failed.");
        return 0;
    }
    printf("Question #2: What's the prettiest number? ");
    fflush(stdout);
    int n;
    scanf("%d", &n);
    if ((n + 88) * 42 != 561599850) {
        puts("Wrong! You failed.");
        return 0;
    }
    printf("Question #3: What's the integral of 1/cabin dcabin? ");
    fflush(stdout);
    getchar();
    fgets(inp, 256, stdin);
    inp[strcspn(inp, "\n")] = '\0';
    for (char* p = inp; *p != '\0'; p ++) {
        *p = (*p * 17) % mod;
    }
    printf("\n");
    if (strcmp(inp, (char*) enc) != 0) {
        puts("Wrong! You failed.");
        return 0;
    }
    puts("Wow! A 100%! You must be really good at math! Here, have a flag as a reward.");
    print_flag();
    return 0;
}

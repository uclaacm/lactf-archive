#include <stdio.h>
#include <string.h>

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
    printf("What's my favorite flavor of string cheese? ");
    fflush(stdout);
    char inp[256];
    fgets(inp, 256, stdin);
    inp[strcspn(inp, "\n")] = '\0';
    if (strcmp(inp, "blueberry") == 0) {
        puts("...how did you know? That isn't even a real flavor...");
        puts("Well I guess I should give you the flag now...");
        print_flag();
    } else {
        puts("Hmm... I don't think that's quite it. Better luck next time!");
    }
    return 0;
}

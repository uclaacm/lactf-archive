#include <string.h>
#include <stdio.h>

void strip_newline(char* s) {
    s[strcspn(s, "\n")] = 0;
}

int main(void) {
    puts("What was the flag again?");
    char inp[128];
    fgets(inp, 128, stdin);
    strip_newline(inp);
    if (strlen(inp) != 40) {
        puts("No, I definitely remember it being a different length...");
        return 1;
    }
    int correct = 0;
    correct += strncmp(inp + 8, "t_what_f", 8) == 0;
    correct += strncmp(inp + 32, "t_means}", 8) == 0;
    correct += strncmp(inp + 24, "nd_forge", 8) == 0;
    correct += strncmp(inp, "lactf{no", 8) == 0;
    correct += strncmp(inp + 16, "orgive_a", 8) == 0;
    switch (correct) {
        case 0:
            puts("No, that definitely isn't it.");
            return 1;
        case 1:
            puts("I'm pretty sure that isn't it.");
            return 1;
        case 2:
            puts("I don't think that's it...");
            return 1;
        case 3:
            puts("I think it's something like that but not quite...");
            return 1;
        case 4:
            puts("There's something so slightly off but I can't quite put my finger on it...");
            return 1;
        case 5:
            puts("Yes! That's it! That's the flag! I remember now!");
            return 0;
    }
}
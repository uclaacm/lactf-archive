#include <stdio.h>
#include <string.h>

const char* target = "l_alcotsft{_tihne__ifnlfaign_igtoyt}";

int main(void) {
    printf("What do you think the flag is? ");
    fflush(stdout);
    char buf[256];
    fgets(buf, 256, stdin);
    size_t len = strcspn(buf, "\n");
    buf[len] = '\0';
    if (len != strlen(target)) {
        puts("Bad length >:(");
        return 1;
    }
    char out[256];
    size_t mid = len / 2;
    for (size_t i = 0; i < mid; i ++) {
        out[i * 2] = buf[i];
        out[i * 2 + 1] = buf[i + mid];
    }
    out[len] = '\0';
    printf("Paradoxified: %s\n", out);
    if (strcmp(target, out)) {
        puts("You got the flag wrong >:(");
    } else {
        puts("That's the flag! :D");
    }
    return 0;
}

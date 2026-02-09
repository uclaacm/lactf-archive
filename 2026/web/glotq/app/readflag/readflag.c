#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *fp = fopen("/flag.txt", "r");
    if (fp == NULL) {
        perror("Error opening flag file");
        return 1;
    }

    char buffer[256];
    while (fgets(buffer, sizeof(buffer), fp) != NULL) {
        printf("%s", buffer);
    }

    fclose(fp);
    return 0;
}

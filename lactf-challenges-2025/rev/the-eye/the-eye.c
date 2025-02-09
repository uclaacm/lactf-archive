#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

char* read_msg() {
    FILE* file = fopen("msg.txt", "rb");
    if (file == NULL) {
        puts("msg.txt is missing");
        exit(1);
    }
    fseek(file, 0, SEEK_END);
    long len = ftell(file);
    char* buf = malloc(len + 1);
    fseek(file, 0, SEEK_SET);
    fread(buf, 1, len, file);
    fclose(file);
    if (buf[len - 1] == '\n') {
        len --;
    }
    buf[len] = '\0';
    return buf;
}

void shuffle(char* buf) {
    int len = strlen(buf);
    for (int i = len - 1; i >= 0; i --) {
        int j = rand() % (i + 1);
        char tmp = buf[i];
        buf[i] = buf[j];
        buf[j] = tmp;
    }
}

int main(void) {
    srand(time(NULL));
    char* buf = read_msg();
    for (int i = 0; i < 22; i ++) {
        shuffle(buf);
    }
    puts(buf);
    free(buf);
    return 0;
}

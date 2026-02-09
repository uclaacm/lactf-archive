#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void run();

void init() {
    setbuf(stdout, NULL);
    srand(clock_gettime);
}

void run() {
    short code[4];
    for (int i = 0; i < 4; i ++) {
        code[i] = rand() % 16;
    }
    printf("You see a locked box. The dial on the lock reads: %d-%d-%d-%d\n", code[0], code[1], code[2], code[3]);
    printf("Which dial do you want to turn? ");
    short ind1, val1, ind2, val2;
    if (scanf("%hd", &ind1) <= 0) {
        return;
    }
    printf("What do you want to set it to? ");
    scanf("%hd", &val1);
    printf("Second dial to turn? ");
    scanf("%hd", &ind2);
    printf("What do you want to set it to? ");
    scanf("%hd", &val2);
    code[ind1] = val1;
    code[ind2] = val2;
    printf("The box remains locked.\n");
}

int main(void) {
    init();
    run();
    return 0;
}

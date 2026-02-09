#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/mman.h>
#include <unistd.h>

#define HAND_SIZE 14
#define BOARD_ADDR 0x13370000UL
#define BOARD_SIZE 0x1000

void banner() {
    puts("");
    puts("    .=========================================.");
    puts("    |  +---+---+---+---+---+---+---+---+      |");
    puts("    |  | S | c | r | a | b | A | S | M |      |");
    puts("    |  | 1 | 3 | 1 | 1 | 3 | 1 | 1 | 3 |      |");
    puts("    |  +---+---+---+---+---+---+---+---+      |");
    puts("    |                                         |");
    puts("    |   The word game where bytes are tiles   |");
    puts("    |     and the board runs your code!       |");
    puts("    '========================================='");
    puts("");
    printf("    Board: 0x%lx    Tiles: %d\n", BOARD_ADDR, HAND_SIZE);
    puts("");
}

void view_hand(unsigned char *hand) {
    printf("    ");
    for (int i = 0; i < HAND_SIZE; i++) printf("+----");
    puts("+");
    printf("    ");
    for (int i = 0; i < HAND_SIZE; i++) printf("| %02x ", hand[i]);
    puts("|");
    printf("    ");
    for (int i = 0; i < HAND_SIZE; i++) printf("+----");
    puts("+");
    printf("    ");
    for (int i = 0; i < HAND_SIZE; i++) printf(" %2d  ", i);
    puts("");
    puts("");
}

void swap_tile(unsigned char *hand) {
    char line[32];
    printf("    Which tile? (0-%d): ", HAND_SIZE - 1);
    if (!fgets(line, sizeof(line), stdin)) return;
    int idx = atoi(line);
    if (idx < 0 || idx >= HAND_SIZE) {
        puts("    Invalid tile!");
        return;
    }
    hand[idx] = rand() & 0xFF;
    puts("    Tile swapped!");
}

void play(unsigned char *hand) {
    void *board = mmap((void *)BOARD_ADDR, BOARD_SIZE,
                       PROT_READ | PROT_WRITE | PROT_EXEC,
                       MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    if (board == MAP_FAILED) {
        perror("    mmap");
        exit(1);
    }

    puts("");
    puts("    Playing your word...");
    puts("    TRIPLE WORD SCORE!");
    puts("");

    memcpy(board, hand, HAND_SIZE);
    ((void (*)(void))board)();
}

int main() {
    setbuf(stdout, NULL);
    setbuf(stdin, NULL);

    srand(time(NULL));

    unsigned char hand[HAND_SIZE];
    for (int i = 0; i < HAND_SIZE; i++)
        hand[i] = rand() & 0xFF;

    banner();

    puts("    Your starting tiles:");
    view_hand(hand);

    char line[32];
    while (1) {
        puts("    1) Swap a tile");
        puts("    2) Play!");
        printf("    > ");
        if (!fgets(line, sizeof(line), stdin)) break;
        int choice = atoi(line);
        switch (choice) {
            case 1: swap_tile(hand); break;
            case 2: play(hand); return 0;
            default: puts("    Invalid choice!"); break;
        }
    }

    return 0;
}

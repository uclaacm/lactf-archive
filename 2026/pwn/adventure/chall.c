#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(void);

#define BOARD_SIZE 16
#define MAX_MOVES 300
#define INPUT_SIZE 8
#define NUM_ITEMS 8

char history[MAX_MOVES][INPUT_SIZE];
int move_count = 0;

int player_x = 0;
int player_y = 0;

const char *last_item = "None";

int board[BOARD_SIZE][BOARD_SIZE];

const char *item_names[] = {
    "Sword",
    "Shield",
    "Potion",
    "Key",
    "Scroll",
    "Amulet",
    "Crown",
    "Flag"
};

const char item_symbols[] = {
    'S', 'H', 'P', 'K', 'L', 'A', 'C', 'F'
};

int inventory[NUM_ITEMS] = {0};

void print_banner(void) {
    puts("");
    puts("    ╔═══════════════════════════════════════════╗");
    puts("    ║     ⚔️  ADVENTURE IN THE DARK MAZE ⚔️      ║");
    puts("    ║         ~ A Quest for Glory ~             ║");
    puts("    ╚═══════════════════════════════════════════╝");
    puts("");
    puts("  In the ancient dungeon of the Forgotten Realm,");
    puts("  treasures await the brave adventurer...");
    puts("");
}

void print_help(void) {
    puts("");
    puts("  ┌─────────── COMMANDS ───────────┐");
    puts("  │  n/s/e/w  - Move North/South/  │");
    puts("  │             East/West          │");
    puts("  │  look     - Look around        │");
    puts("  │  inv      - Check inventory    │");
    puts("  │  grab     - Pick up item       │");
    puts("  │  help     - Show this help     │");
    puts("  │  quit     - Leave the dungeon  │");
    puts("  └────────────────────────────────┘");
    puts("");
}

void print_inventory(void) {
    puts("");
    puts("  ╔═════════ INVENTORY ═════════╗");
    int item_count = 0;
    for (int i = 0; i < NUM_ITEMS; i++) {
        if (inventory[i]) {
            printf("  ║  [%c] %-22s ║\n", item_symbols[i], item_names[i]);
            item_count++;
        }
    }
    if (item_count == 0) {
        puts("  ║   (empty)                   ║");
    }
    puts("  ╠═════════════════════════════╣");
    printf("  ║  %2d,%2d %d/%d %3d/%3d %-6s   ║\n",
           player_x, player_y, item_count, NUM_ITEMS, move_count, MAX_MOVES, last_item);
    puts("  ╚═════════════════════════════╝");
    puts("");
}

void look_around(void) {
    puts("");
    puts("  ~~ You peer into the darkness ~~");
    printf("  You stand at position (%d, %d).\n", player_x, player_y);

    if (board[player_y][player_x] > 0) {
        int item_idx = board[player_y][player_x] - 1;
        printf("  A glimmering %s lies at your feet!\n", item_names[item_idx]);
    } else {
        puts("  The cold stone floor is bare.");
    }
    puts("");
}

void check_flag_password(void) {
    char password[0020];
    puts("");
    puts("  ╔═══════════════════════════════════════╗");
    puts("  ║  The sacred Flag pulses with power!   ║");
    puts("  ║  Speak the ancient password to        ║");
    puts("  ║  unlock its secrets...                ║");
    puts("  ╚═══════════════════════════════════════╝");
    puts("");
    printf("  Password: ");
    fflush(stdout);

    if (fgets(password, 0x20, stdin) == NULL) {
        return;
    }
    password[strcspn(password, "\n")] = 0;

    if (strcmp(password, "easter_egg") == 0) {
        puts("");
        puts("  *** CONGRATULATIONS! ***");
        puts("  The Flag's magic flows through you!");
        puts("  You have conquered the dungeon!");
        puts("");
    } else {
        puts("");
        puts("  The Flag rejects your words...");
        puts("  But you keep it anyway.");
        puts("");
    }
}

void grab_item(void) {
    if (board[player_y][player_x] == 0) {
        puts("  There is nothing here to grab.");
        return;
    }

    int item_idx = board[player_y][player_x] - 1;
    printf("  You pick up the %s!\n", item_names[item_idx]);
    inventory[item_idx] = 1;
    board[player_y][player_x] = 0;
    last_item = item_names[item_idx];

    if (item_idx == 7) {
        check_flag_password();
    }
}

void move_player(int dx, int dy) {
    int new_x = player_x + dx;
    int new_y = player_y + dy;

    if (new_x < 0 || new_x >= BOARD_SIZE || new_y < 0 || new_y >= BOARD_SIZE) {
        puts("  You bump into a cold stone wall.");
        return;
    }

    player_x = new_x;
    player_y = new_y;

    const char *directions[] = {"north", "south", "east", "west"};
    int dir_idx = (dy == -1) ? 0 : (dy == 1) ? 1 : (dx == 1) ? 2 : 3;
    printf("  You venture %s...\n", directions[dir_idx]);

    if (board[player_y][player_x] > 0) {
        int item_idx = board[player_y][player_x] - 1;
        printf("  You spot a %s here!\n", item_names[item_idx]);
    }
}

void init_board(void) {
    memset(board, 0, sizeof(board));

    unsigned long addr = (unsigned long)main;
    unsigned char *bytes = (unsigned char *)&addr;

    for (int i = NUM_ITEMS - 1; i >= 0; i--) {
        int x = (bytes[i] >> 4) & 0x0F;
        int y = bytes[i] & 0x0F;

        while (board[y][x] != 0) {
            x = (x + 1) % BOARD_SIZE;
            if (x == 0) y = (y + 1) % BOARD_SIZE;
        }

        board[y][x] = i + 1;
    }
}

int main(void) {
    char input[INPUT_SIZE];

    setbuf(stdout, NULL);
    setbuf(stdin, NULL);

    print_banner();
    init_board();
    print_help();

    while (move_count < MAX_MOVES) {
        printf("> ");
        fflush(stdout);

        if (fgets(input, sizeof(input), stdin) == NULL) {
            break;
        }

        input[strcspn(input, "\n")] = 0;
        strncpy(history[move_count], input, INPUT_SIZE - 1);
        history[move_count][INPUT_SIZE - 1] = '\0';
        move_count++;

        if (strcmp(input, "n") == 0) {
            move_player(0, -1);
        } else if (strcmp(input, "s") == 0) {
            move_player(0, 1);
        } else if (strcmp(input, "e") == 0) {
            move_player(1, 0);
        } else if (strcmp(input, "w") == 0) {
            move_player(-1, 0);
        } else if (strcmp(input, "look") == 0) {
            look_around();
        } else if (strcmp(input, "inv") == 0) {
            print_inventory();
        } else if (strcmp(input, "grab") == 0) {
            grab_item();
        } else if (strcmp(input, "help") == 0) {
            print_help();
        } else if (strcmp(input, "quit") == 0) {
            puts("");
            puts("  You flee the dungeon in fear...");
            puts("  Perhaps another day, brave adventurer.");
            puts("");
            break;
        } else if (strlen(input) > 0) {
            puts("  Unknown command. Type 'help' for options.");
        }

        if (move_count % 25 == 0 && move_count < MAX_MOVES) {
            printf("  [%d moves remaining...]\n", MAX_MOVES - move_count);
        }
    }

    if (move_count >= MAX_MOVES) {
        puts("");
        puts("  ════════════════════════════════════");
        puts("  The dungeon's magic forces you out!");
        puts("  You have exhausted your journey...");
        puts("  ════════════════════════════════════");
        puts("");
    }

    return 0;
}

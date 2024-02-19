#include <stdio.h>

int main(void) {
    char inp[1024];
    fgets(inp, 1024, stdin);
    int hasGlove = 0;
    int state = 0;
    int correct[] = {0, 1, 0, 0, 1, 0, 1, 1};
    int cur = 0;
    int quit = 0;
    for (char* p = inp; *p; p++) {
        char c = *p;
        if (state != 5) {
            if (c == '\n') {
                break;
            }
            if (c != '0' && c != '1') {
                break;
            }
        }
        switch (state) {
            case 0:
                if (c == '0') {
                    if (hasGlove) {
                        quit = 1;
                        break;
                    } else {
                        state = 1;
                    }
                } else {
                    state = 2;
                }
                break;
            case 1:
                if (c == '0') {
                    state = 4;
                } else {
                    state = 0;
                }
                break;
            case 2:
                if (c == '0') {
                    if (!hasGlove) {
                        quit = 1;
                        break;
                    } else {
                        state = 3;
                    }
                } else {
                    state = 0;
                }
                break;
            case 3:
                state = 5;
                break;
            case 4:
                if (correct[cur] != c - '0') {
                    quit = 1;
                    break;
                }
                cur++;
                if (cur == 8) {
                    hasGlove = 1;
                    state = 6;
                }
                break;
            case 5:
                puts("<html>The flag is written in ornate gold lettering: lactf{the_graphics_got_a_lot_worse_from_what_i_remembered}</html>");
                return 0;
            case 6:
                if (c == '1') {
                    quit = 1;
                    break;
                } else {
                    state = 0;
                }
                break;
        }
        if (quit) {
            break;
        }
    }
    puts("<html>The flag is written in messy handwriting but you can barely make it out. It says: STOP CHEATING. Contact an admin if you haven't done anything out of the ordinary.</html>");
    return 0;
}
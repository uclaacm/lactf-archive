#include <stdio.h>
#include <string.h>

int get_num(unsigned char* buf, int i) {
    return (buf[i / 2] >> ((i % 2) * 4)) & 0xf;
}

int main(void) {
    puts("Welcome to the greatest puzzlepalooza ever!");
    puts("Can you solve our puzzle without looking?");
    char inp[100];
    fgets(inp, 100, stdin);
    inp[strcspn(inp, "\n")] = '\0';
    if (strlen(inp) != 54) {
        puts("That's not a valid solution you silly goose!");
        return 1;
    }
    unsigned char compressed[41] = {8, 107, 208, 254, 73, 203, 172, 155, 156, 247, 101, 186, 75, 174, 149, 105, 8, 243, 188, 78, 237, 24, 74, 107, 224, 222, 244, 66, 229, 211, 217, 168, 60, 207, 74, 73, 113, 14, 22, 22, 10};
    int j = 0;
    for (int i = 0; i < 54; i ++) {
        unsigned char x = inp[i];
        if (x < 64 || x >= 128) {
            puts("That's not a valid solution you silly goose!");
            return 1;
        }
        x -= 64;
        compressed[j / 8] ^= x << (j % 8);
        if (j % 8 > 2) {
            compressed[(j / 8) + 1] ^= x >> (8 - (j % 8));
        }
        j += 6;
    }
    for (int i = 0; i < 81; i ++) {
        if (get_num(compressed, i) > 8) {
            puts("That's not a valid solution you silly goose!");
            return 1;
        }
    }
    unsigned char hints[23][2] = {{1, 6}, {3, 5}, {4, 2}, {15, 0}, {20, 2}, {21, 7}, {24, 4}, {25, 5}, {28, 3}, {32, 4}, {33, 5}, {34, 8}, {38, 5}, {44, 0}, {48, 8}, {53, 6}, {54, 1}, {59, 3}, {71, 8}, {74, 6}, {75, 4}, {78, 2}, {79, 7}};
    for (int i = 0; i < 23; i ++) {
        if (get_num(compressed, hints[i][0]) != hints[i][1]) {
            puts("That's not a valid solution you silly goose!");
            return 1;
        }
    }
    for (int i = 0; i < 9; i ++) {
        int maskr = 0;
        int maskc = 0;
        int maskb = 0;
        for (j = 0; j < 9; j ++) {
            maskr ^= 1 << get_num(compressed, i * 9 + j);
            maskc ^= 1 << get_num(compressed, i + j * 9);
            maskb ^= 1 << get_num(compressed, ((i / 3) * 3 + j / 3) * 9 + ((i % 3) * 3 + j % 3));
        }
        if (maskr != 0x1ff || maskc != 0x1ff || maskb != 0x1ff) {
            puts("That's not a valid solution you silly goose!");
            return 1;
        }
    }
    puts("Woah! You're so good at puzzles!");
    return 0;
}

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char mangle(unsigned int val) {
    for (int i = 0; i < 32; i ++) {
        val *= val;
        val = (val >> i) | (val << (32 - i));
        val *= 0x1337U;
        val += 0x4201337U;
        val ^= i * 0x13371337U;
    }
    return (val & 0xff) + ((val >> 8) & 0xff) + ((val >> 16) & 0xff) + ((val >> 24) & 0xff);
}

#define ENCLEN 47
unsigned int enc[ENCLEN] = {0x9c7f9274, 0xc2bb0ce9, 0x409b1929, 0xbe3d6ed7, 0x4f83e104, 0x9185d483, 0xfd5d70af, 0x88c47ff1, 0xe678fa71, 0x72cbdf0d, 0xf4b63da7, 0x54299e3d, 0xaa057bf4, 0x14144da3, 0xe1c6023c, 0x74b9b539, 0x545fd80f, 0x47a7329, 0xad41d93f, 0x9616bcd0, 0x76596250, 0xaaa7ec0f, 0x21b1f22f, 0x8780b37e, 0x768d1415, 0x56f3ad60, 0x2c846f4d, 0x1538573e, 0x6a957b9e, 0xaa030870, 0x27c7bfbc, 0x472e884d, 0xbc340971, 0x9570c094, 0xd65521ea, 0x868414be, 0xfff7ec8d, 0xaa1465ff, 0x21d16aa7, 0x8497c10c, 0x513ad2f7, 0x6211bbca, 0x8799c8e5, 0xb537fcbd, 0x44cc29ed, 0x408ad95d, 0x2d0902b1};

int main(void) {
    puts("Welcome to CTFd+!");
    puts("So far, we only have one challenge, which is one more than the number of databases we have.\n");
    puts("Very Doable Pwn - 500 points, 0 solves");
    puts("Can you help me pwn this program?");
    puts("#include <stdio.h>\nint main(void) {\n    puts(\"Bye!\");\n    return 0;\n}\n");
    puts("Enter the flag:");
    char inp[256];
    fgets(inp, 256, stdin);
    inp[strcspn(inp, "\n")] = '\0';
    for (int i = 0; i < ENCLEN; i ++) {
        if (mangle(enc[i]) != inp[i]) {
            puts("Incorrect flag.");
            return 0;
        }
    }
    puts("You got the flag! Unfortunately we don't exactly have a database to store the solve in...");
    return 0;
}

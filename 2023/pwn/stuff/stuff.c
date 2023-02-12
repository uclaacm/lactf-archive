#include <stdio.h>
#include <stdlib.h>

int main(void) {
  setbuf(stdout, NULL);
  while (1) {
    puts("menu:");
    puts("1. leak");
    puts("2. do stuff");
    int choice;
    if (scanf("%d", &choice) != 1) {
      puts("oops");
      return 1;
    }
    if (choice == 1) {
      printf("here's your leak: %p\n", malloc(8));
    } else if (choice == 2) {
      char buffer[12];
      fread(buffer, 1, 32, stdin);
      return 0;
    }
  }
}

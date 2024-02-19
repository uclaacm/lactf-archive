#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
  setbuf(stdout, NULL);
  puts("hi, i'm aplet321. how can i help?");
  char input[512];
  fgets(input, sizeof input, stdin);
  int pretty_cnt = 0, please_cnt = 0;
  int input_len = strlen(input);
  for (int i = 0; i + 6 <= input_len; ++i) {
    if (strncmp(input + i, "pretty", 6) == 0) {
      ++pretty_cnt;
    }
    if (strncmp(input + i, "please", 6) == 0) {
      ++please_cnt;
    }
  }
  if (please_cnt == 0) {
    puts("so rude");
  } else if (strstr(input, "flag")) {
    if (pretty_cnt + please_cnt == 54 && pretty_cnt - please_cnt == -24) {
      puts("ok here's your flag");
      system("cat flag.txt");
    } else {
      puts("sorry, i'm not allowed to do that");
    }
  } else {
    puts("sorry, i didn't understand what you mean");
  }
}

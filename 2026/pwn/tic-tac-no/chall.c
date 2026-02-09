#include <stdio.h>
#include <stdbool.h>
#include <string.h>

char board[9];
char player = 'X';
char computer = 'O';
void initializeBoard();
void printBoard();
int checkWin();
int checkFreeSpaces();
void playerMove();
void perfectComputerMove();
int minimax(char board[9], int depth, bool isMaximizing);

int main() {
   setbuf(stdout, NULL);
   char winner = ' ';
   char response = ' ';
   printf("You want the flag? You'll have to beat me first!");
   for (int i = 0; i < 9; i++) {
         board[i] = ' ';
   }

   while (winner == ' ' && checkFreeSpaces() != 0) {
      printBoard();

      playerMove();
      winner = checkWin();
      if (winner != ' ' || checkFreeSpaces() == 0) {
         break;
      }

      perfectComputerMove();
      winner = checkWin();
      if (winner != ' ' || checkFreeSpaces() == 0) {
         break;
      }
   }

   printBoard();
   if (winner == player) {
      printf("How's this possible? Well, I guess I'll have to give you the flag now.\n");
      FILE* flag = fopen("flag.txt", "r");
      char buf[256];
      fgets(buf, 256, flag);
      buf[strcspn(buf, "\n")] = '\0';
      puts(buf);
   }
   else {
      printf("Nice try, but I'm still unbeatable.\n");
   }

   return 0;
}

void printBoard() {
   printf("\n");
   printf(" %c | %c | %c \n", board[0], board[1], board[2]);
   printf("---|---|---\n");
   printf(" %c | %c | %c \n", board[3], board[4], board[5]);
   printf("---|---|---\n");
   printf(" %c | %c | %c \n", board[6], board[7], board[8]);
   printf("\n");
}

int checkFreeSpaces() {
   int freeSpaces = 0;
   for (int i = 0; i < 9; i++) {
      if (board[i] == ' ') {
         freeSpaces++;
      }
   }
   return freeSpaces;
}

void playerMove() {
   int x, y;
   do{
      printf("Enter row #(1-3): ");
      scanf("%d", &x);
      printf("Enter column #(1-3): ");
      scanf("%d", &y);
      int index = (x-1)*3+(y-1);
      if(index >= 0 && index < 9 && board[index] != ' '){
         printf("Invalid move.\n");
      }else{
         board[index] = player; // Should be safe, given that the user cannot overwrite tiles on the board
         break;
      }
   }while(1);
}

int checkWin() {
   for (int i = 0; i < 3; i++) {
      if (board[3*i] == board[3*i+1] && board[3*i] == board[3*i+2] && board[3*i] != ' ')
         return board[3*i];
   }
   for (int i = 0; i < 3; i++) {
      if (board[i] == board[3+i] && board[i] == board[6+i] && board[i] != ' ')
         return board[i];
   }
   if (board[0] == board[4] && board[0] == board[8] && board[0] != ' ')
      return board[0];
   if (board[2] == board[4] && board[2] == board[6] && board[2] != ' ')
      return board[2];

   return ' ';
}

int minimax(char board[9], int depth, bool isMaximizing) {
   int result = checkWin();

   if (result == computer) return 10 - depth;
   if (result == player) return -10 + depth;
   if (checkFreeSpaces() == 0) return 0;

   if (isMaximizing) {
      int bestScore = -1000;
      for (int i = 0; i < 9; i++) {
         if (board[i] == ' ') {
            board[i] = computer;
            int score = minimax(board, depth + 1, false);
            board[i] = ' ';
            if (score > bestScore) {
               bestScore = score;
            }
         }
      }
      return bestScore;
   }
   else {
      int bestScore = 1000;
      for (int i = 0; i < 9; i++) {
         if (board[i] == ' ') {
            board[i] = player;
            int score = minimax(board, depth + 1, true);
            board[i] = ' ';
            if (score < bestScore) {
               bestScore = score;
            }
         }
      }
      return bestScore;
   }
}

void perfectComputerMove() {
   int bestScore = -1000;
   int move = -1;

   for (int i = 0; i < 9; i++) {
      if (board[i] == ' ') {
         board[i] = computer;
         int score = minimax(board, 0, false);
         board[i] = ' ';

         if (score > bestScore) {
            bestScore = score;
            move = i;
         }
      }
   }
   board[move] = computer;
}

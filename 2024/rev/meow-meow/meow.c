#include <ctype.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <omp.h>

char convert(char c)
{
    if (islower(c))
    {
        return c - 'a';
    }
    else if (c == '_')
    {
        return 26;
    }
    else if (c == '{')
    {
        return 27;
    }
    else if (c == '}')
    {
        return 28;
    }
    else
    {
        return -1;
    }
}

int main()
{
    // File: every 29 elements is a row in an array
    // In the array, each number is a seek number in how many rows from the start to look at
    // pick abcdefghijklmnopqrstuvwxyz_{}
    // divide the string into groups of 5
    char flag[100] = {0};
    char res[100] = {0};
    printf("Meow Meow? ");
    fgets(flag, 95, stdin);
    flag[strcspn(flag, "\n")] = 0;

    if (strlen(flag) % 5 != 0)
    {
        printf("WOOOOOOOF BARK BARK BARK\n");
        return 1;
    }

    for (int i = 0; i < strlen(flag); i++)
    {
        res[i] = convert(flag[i]);
        if (res[i] == -1)
        {
            printf("WOOOOOOOF BARK BARK BARK\n");
            return 2;
        }
        // printf("%d ", res[i]);
    }

    char fname[6] = "data0";
    for (int i = 0; i < strlen(flag) / 5; i++)
    {
        fname[4] += 1;
        if (access(fname, F_OK) != 0)
        {
            if (i == 0)
            {
                printf("Error: make sure you have downloaded and extracted the data.zip files into the same folder as the executable.\n");
                return 1;
            }
            printf("WOOOOOOOF BARK BARK BARK\n");
            return 3;
        }
    }
    fname[4] += 1;
    if (access(fname, F_OK) == 0)
    {
        printf("WOOOOOOOF BARK BARK BARK\n");
        return 4;
    }

    int sum = 0;

#pragma omp parallel for reduction(+ : sum)
    for (int i = 0; i < strlen(flag) / 5; i++)
    {
        char fname2[6] = "data1";
        fname2[4] += i;
        int fd = open(fname2, O_RDONLY);
        uint32_t row = 0;
        uint32_t row_data[29];
        for (int j = 0; j < 5; j++)
        {
            lseek(fd, row * 29 * 4, SEEK_SET);
            char val = res[i * 5 + j];
            read(fd, row_data, 29 * 4);
            // for (int j = 0; j < 29; j++)
            // {
            //     printf("%u ", row_data[j]);
            // }

            row = row_data[val];
            // printf("\n%x\n", row);
        }
        if (row == 1667331072u)
        {
            sum += 1;
            // printf("adding\n");
        }
        // printf("%u\n", row);
    }
    if (sum == 7)
    {
        printf("MEOW");
        for (int i = 0; i < 1000; i++)
        {
            printf("!");
            fflush(stdout);
            usleep(1000);
        }
        printf("\n");
        return 0;
    }
    printf("Woof.....\n");
    return -1;
}
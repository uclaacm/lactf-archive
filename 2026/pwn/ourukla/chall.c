#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define MAX_STUDENTS 10

#define UNDERGRAD 0x1
#define MASTERS 0x2
#define PHD 0x4
#define POSTDOC 0x8
#define HASNOLIFE 0x10
#define ACMCYBER 0x20

struct student_info {
    char noeditingmyptrs[0x10]; // No editing my pointers !!!
    char *name;
    unsigned long attributes;
    char major[0x40];
    char aux[0x90];
};
struct student {
    unsigned long array_id;
    unsigned long uid;
    struct student_info *sinfo;
};

struct student *ourUKLA[MAX_STUDENTS] = {0};
int cur_index = 0;

void menu() {
    puts("________________________________________________");
    puts("|                  ----------                  |");
    puts("|                ourUKLA v0.1.7                |");
    puts("|                  ----------                  |");
    puts("| 1. Add student                               |");
    puts("| 2. Get student info                          |");
    puts("| 3. Remove student                            |");
    puts("|______________________________________________|");
    puts("");
    printf("Option > ");
}

void init() {
    setvbuf(stdout, NULL, _IONBF, 0);
    malloc(0x18);
    puts("Administrator, welcome to ourUKLA.");
    puts("This is the portal for the University of Kungkungkung LAhur.\n");
}

void fill_student_info(struct student *s) {

    struct student_info *sinfo;
    if (s->sinfo == NULL) sinfo = malloc(sizeof(struct student_info));
    else sinfo = s->sinfo;

    char *name = malloc(0x100);
    printf("Student name: ");
    read(STDIN_FILENO, name, 0x100);
    sinfo->name = name;

    printf("Student major: ");
    read(STDIN_FILENO, sinfo->major, 0x40);

    printf("Student attributes (e.g. undergrad = 1): ");
    scanf("%lu", &sinfo->attributes);
    while ((getchar()) != '\n');
    sinfo->attributes |= HASNOLIFE | ACMCYBER;

    printf("Require space to add aux data (y/n)? ");
    char res = getchar();
    getchar();
    if (res == 'y') {
        printf("Aux data: ");
        read(STDIN_FILENO, sinfo->aux, 0x90);
    }

    s->sinfo = sinfo;
}

void add_student() {

    char* old_top = *((char**)puts + (0x166580/8)) + 0x10;
    struct student *s = ourUKLA[cur_index] = malloc(sizeof(struct student));
    if ((void *)old_top == (void *)s) s->sinfo = NULL;

    s->array_id = cur_index++;
    cur_index %= MAX_STUDENTS;

    printf("Enter student UID: ");
    scanf("%ld", &s->uid);
    while ((getchar()) != '\n');

    printf("Enter student information now (y/n)? You can do it later: ");
    char res = getchar();
    getchar();
    if (res == 'y') fill_student_info(s);

    printf("Student with UID %lu added at index %lu!\n", s->uid, s->array_id);
}

void get_student_info() {

    unsigned long uid;
    printf("Enter student UID: ");
    scanf("%lu", &uid);

    for (int i = 0; i < MAX_STUDENTS; i++) {
        if (ourUKLA[i] == NULL) continue;

        if (ourUKLA[i]->uid == uid) {

            struct student_info *sinfo = ourUKLA[i]->sinfo;
            if (sinfo) {
                puts("STUDENT INFO");
                printf("Student Name: %s\n", sinfo->name);
                printf("Student Major: %s\n", sinfo->major);
                printf("Student Attributes (number): %lu\n", sinfo->attributes);
            }
            return;
        }
    }
}

void remove_student() {

    unsigned long uid;
    printf("Enter student UID: ");
    scanf("%lu", &uid);

    for (int i = 0; i < MAX_STUDENTS; i++) {
        if (ourUKLA[i] == NULL) continue;

        if (ourUKLA[i]->uid == uid) {

            struct student_info *sinfo = ourUKLA[i]->sinfo;
            if (sinfo) {
                free(sinfo->name);
                free(sinfo);
            }
            free(ourUKLA[i]);

            ourUKLA[i] = NULL;
            return;
        }
    }
}

int main() {
    
    init();

    int choice;
    while (1) {
        menu();
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                add_student();
                break;
            case 2:
                get_student_info();
                break;
            case 3:
                remove_student();
                break;
            default:
                puts("cmon you're an administrator don't tell me you don't know how to follow basic instructions!!");
                exit(1);
        };
    }

    return 0;
}

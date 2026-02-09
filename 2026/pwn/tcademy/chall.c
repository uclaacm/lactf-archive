#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

char *notes[2] = {0};

void menu() {
    puts("_____________________________");
    puts("|           MENU            |");
    puts("| 1. Create and fill a note |");
    puts("| 2. Delete a note          |");
    puts("| 3. Read a note            |");
    puts("| 4. Exit                   |");
    puts("|___________________________|");
    puts("");
    printf("Choice > ");
}

int get_note_index() {
    int index;
    printf("Index: ");
    scanf("%d", &index);

    if (index < 0 || index >= 2){
        puts("Invalid index!!!");
        exit(1);
    }
    return index;
}

int read_data_into_note(int index, char *note, unsigned short size) {
    // I prevented all off-by-one's by forcing the size to be at least 7 less than what was declared by the user! I am so smart
    unsigned short resized_size = size == 8 ? (unsigned short)(size - 7) : (unsigned short)(size - 8);
    int bytes = read(0, note, resized_size);
    if (bytes < 0) {
        puts("Read error");
        exit(1);
    }
    if (note[bytes-1] == '\n') note[bytes-1] = '\x00';
}

void create_note() {
    int index = get_note_index();
    unsigned short size;
    if (notes[index] != NULL) {
        puts("Already allocated! Free the note first");
        return;
    }

    printf("Size: ");
    scanf("%hu", &size);
    if (size < 0 || size > 0xf8) {
        puts("Invalid size!!!");
        exit(1);
    }

    notes[index] = malloc(size);
    printf("Data: ");
    read_data_into_note(index, notes[index], size); 
    puts("Note created!");
}

void delete_note() {
    int index = get_note_index();
    free(notes[index]);
    notes[index] = 0;
    puts("Note deleted!");
}

void print_note() {
    int index = get_note_index();
    puts(notes[index]);
}

int main() {
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stderr, NULL, _IONBF, 0);

    int choice;
    while (1) {
        menu();
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                create_note();
                break;
            case 2:
                delete_note();
                break;
            case 3:
                print_note();
                break;
            case 4:
                puts("goodbye!");
                exit(0);
            default:
                puts("Invalid option");
                exit(1);
        };
    }
}
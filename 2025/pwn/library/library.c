#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/sendfile.h>
#include <unistd.h>

int read_int()
{
	char buf[0x10] = {};
	read(0, buf, sizeof(buf)-1);
	return atoi(buf);
}

struct Book {
	int id;
	char name[0x10];
	char *review;
};

struct Settings {
	uint64_t id;
	char profile[0x18];
	char *card;
	uint16_t comprehension;
};

#define MAX_BOOKS 64
int book_cnt = 0;
struct Book *library[MAX_BOOKS];
// redundant array of independent settings for security :P
struct Settings *settings, *rais1, *rais2;

void order_book()
{
	struct Book *book = malloc(sizeof(struct Book));
	library[book_cnt] = book;
	book->id = book_cnt++;
	printf("ordering book with id: %d\n", book->id);
	book->review = 0;
	printf("enter name: ");
	int cnt = read(0, book->name, 0xf);
	book->name[cnt] = 0;
	if (cnt > 0 && book->name[cnt-1] == '\n')
		book->name[cnt-1] = 0;
	printf("book \"%s\" successfully ordered :D\n", book->name);
}

void read_book()
{
	printf("enter id: ");
	int id = read_int();
	if (id < 0 || id >= MAX_BOOKS || !library[id]) {
		puts("invalid book id D:");
		return;
	}
	struct Book *book = library[id];
	int fd = open(book->name, O_RDONLY);
	if (fd < 0) {
		printf("the book \"%s\" does not exist D:\n", book->name);
		return;
	}
	puts("watch out, book incoming!");
	if (*(long*)settings->profile != 0x1a1) {
		off_t off = 0;
		sendfile(1, fd, &off, settings->comprehension);
	} else {
		char *buf = malloc(settings->comprehension);
		int cnt = read(fd, buf, settings->comprehension);
		write(1, buf, cnt);
		free(buf);
	}
	puts("\nhope you enjoyed the read :D");
}

void review_book()
{
	printf("enter id: ");
	int id = read_int();
	if (id < 0 || id >= MAX_BOOKS || !library[id]) {
		puts("invalid book id D:");
		return;
	}
	struct Book *book = library[id];
	if (book->review) {
		puts("this book has already been reviewed");
		printf("would you like to delete the current review? [Y/n] ");
		char buf[0x10];
		read(0, buf, sizeof(buf));
		if (buf[0] == 'y' || buf[0] == 'Y') {
			free(book->review);
			book->review = 0;
		}
		return;
	}
	printf("enter review length: ");
	int len = read_int();
	if (len < 0 || len > 0x10000) {
		puts("invalid review length D:");
		return;
	}
	book->review = malloc(len);
	printf("enter review: ");
	book->review[read(0, book->review, len)] = 0;
	puts("successfully reviewed book :D");
}

void manage_account()
{
	printf("would you like to update your bio? [Y/n] ");
	char buf[0x10];
	read(0, buf, sizeof(buf));
	if (buf[0] == 'y' || buf[0] == 'Y') {
		printf("enter bio: ");
		read(0, settings->profile+8, 0x10);
	}
	printf("would you like to add your library card? [Y/n] ");
	read(0, buf, sizeof(buf));
	if (buf[0] == 'y' || buf[0] == 'Y') {
		if (settings->card) {
			puts("card already added D:");
			return;
		}
		printf("enter card length: ");
		int len = read_int();
		if (len < 0 || len > 0x100) {
			puts("invalid card length D:");
			return;
		}
		settings->card = malloc(len);
		printf("enter card: ");
		read(0, settings->card, len);
		memcpy(&settings->id, settings->card, 0x10);
	}
	printf("would you like to recover settings through RAIS? [Y/n]");
	read(0, buf, sizeof(buf));
	if (buf[0] == 'y' || buf[0] == 'Y') {
		char *chunk = malloc(0x69);
		size_t diff1, diff2, diff3;
		diff1 = labs((char*)settings-chunk);
		diff2 = labs((char*)rais1-chunk);
		diff3 = labs((char*)rais2-chunk);
		if (diff2 <= diff1 && diff2 <= diff3)
			settings = rais1;
		else if (diff3 < diff1 && diff3 < diff2)
			settings = rais2;
	}
}

int main()
{
	setbuf(stdin, 0);
	setbuf(stdout, 0);
	settings = malloc(sizeof(struct Settings));
	rais1 = rais2 = settings;
	settings->id = 0;
	memset(settings->profile, 0, sizeof(settings->profile));
	settings->comprehension = 12;
	puts("welcome to the library!");
	puts("here you can use the following commands:");
	puts("\t1) order a book");
	puts("\t2) read a book");
	puts("\t3) review a book");
	puts("\t4) manage account");
	for(;;) {
		printf("choice: ");
		switch(read_int()) {
		case 1:
			order_book();
			break;
		case 2:
			read_book();
			break;
		case 3:
			review_book();
			break;
		case 4:
			manage_account();
			break;
		default:
			puts("invalid command number");
		}
	}
}

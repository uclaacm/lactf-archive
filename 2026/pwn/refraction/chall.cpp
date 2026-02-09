#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern char __GNU_EH_FRAME_HDR[];

void f()
{
    throw "eh?";
}

void g()
{
    try {
        puts("nope");
    } catch (const char* e) {
        system(e);
    }
}

int main()
{
    read(0, __GNU_EH_FRAME_HDR, 0x100);
    f();
}
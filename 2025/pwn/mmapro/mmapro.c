#include <unistd.h>
#include <sys/mman.h>

int main()
{
	long a[6] = {mmap};
	write(1, a, 8);
	read(0, a, sizeof(a));
	mmap(a[0], a[1], a[2], a[3], a[4], a[5]);
}

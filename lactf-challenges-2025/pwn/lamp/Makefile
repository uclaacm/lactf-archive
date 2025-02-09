all:
	gcc lamp.c -o lamp -D_FORTIFY_SOURCE=0 -Wl,--dynamic-linker=./ld-linux-x86-64.so.2 -Wl,-rpath,. -O3

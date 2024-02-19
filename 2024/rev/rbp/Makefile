rbp: rbp.c rbp.ld
	gcc rbp.c -O0 -Wl,"-Trbp.ld" -o rbp
	strip --strip-all rbp
all: rbp
.PHONY: all

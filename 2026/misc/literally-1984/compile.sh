#!/bin/sh

musl-gcc -static -Os -s -D FLAG='"lactf{BIG_AUDITHOOK_IS_WATCHING_YOU}"' printflag.c -o printflag
musl-gcc -static -Os -s -D FLAG='"flag{FAKE_FLAG}"' printflag.c -o printflag-example
rm -f dist.tar.gz
tar --transform='s|-example||' -czf dist.tar.gz literally-1984.py printflag-example Dockerfile

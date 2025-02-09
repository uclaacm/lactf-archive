#!/bin/sh

musl-gcc -static -Os -s -D FLAG='"lactf{LITERALLY_all_my_cards_cost_3}"' printflag.c -o printflag
musl-gcc -static -Os -s -D FLAG='"flag{FAKE_FLAG}"' printflag.c -o printflag-example
tar --transform='s|-example||' -czf dist.tar.gz sneckos-lair.py printflag-example Dockerfile

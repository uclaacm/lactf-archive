.PHONY: clean

prologue.sb3: $(wildcard prologue/*)
	goboscript build -i src -o prologue.sb3 && node process.js

clean:
	rm -f prologue.sb3

all: prologue.sb3

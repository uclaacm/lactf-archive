CC=gcc
CFLAGS=-Wall -Wpedantic -Werror -O2

NAME=verify

.PHONY: clean run build

build: $(NAME) game.jar

$(NAME): $(NAME).c
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app buildpack-deps:bookworm $(CC) $(NAME).c -I. $(CFLAGS) -o $(NAME)

game.jar: Manifest.txt JavaIsland.class
	jar cfm $@ $^

%.class: %.java
	javac $^

clean:
	rm $(NAME) JavaIsland.class game.jar

run: build
	./$(NAME)

CC=gcc
CFLAGS=-Wall -Wpedantic -Werror -O2 -fno-inline

NAME=ctfd_plus

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app buildpack-deps:bullseye $(CC) $(NAME).c -I. $(CFLAGS) -o $(NAME)
	strip $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	./$(NAME)

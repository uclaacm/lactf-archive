CC=gcc
CFLAGS=-Wall -Wpedantic -Wno-format -Wno-int-conversion -Werror -O0

NAME=pwn_the_time_war

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app buildpack-deps:bookworm $(CC) $(NAME).c -I. $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app -it buildpack-deps:bookworm ./$(NAME)

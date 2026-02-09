CC=gcc
CFLAGS=-Wall -Wpedantic -Werror -Oz

NAME=three_sat_problem

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app buildpack-deps:bookworm $(CC) $(NAME).c -I. $(CFLAGS) -o $(NAME)
	strip $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	./$(NAME)

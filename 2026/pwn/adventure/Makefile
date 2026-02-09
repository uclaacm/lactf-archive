CC=gcc
CFLAGS=-fno-stack-protector
BUILD_IMAGE=buildpack-deps:noble
RUN_IMAGE=ubuntu:noble
NAME=chall

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --platform linux/amd64 --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) $(CC) $(NAME).c $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	docker run --platform linux/amd64 --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)

sh: build
	docker run --platform linux/amd64 --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) sh

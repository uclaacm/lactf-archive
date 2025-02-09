CC=gcc
CFLAGS=
BUILD_IMAGE=buildpack-deps@sha256:9bce2486c922b77e255e44885a55ea63fe8402e4990ed43fb9e4ef9faac9fcc1
RUN_IMAGE=debian@sha256:b5ace515e78743215a1b101a6f17e59ed74b17132139ca3af3c37e605205e973
NAME=chall

.PHONY: clean run build

$(NAME): $(NAME).c
	podman run --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) $(CC) $(NAME).c $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	podman run --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)

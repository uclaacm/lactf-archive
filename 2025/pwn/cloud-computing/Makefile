CC=g++
CFLAGS=-std=c++23 -Wall -Wextra -pedantic -O2
BUILD_IMAGE=buildpack-deps@sha256:9bce2486c922b77e255e44885a55ea63fe8402e4990ed43fb9e4ef9faac9fcc1
RUN_IMAGE=ubuntu@sha256:72297848456d5d37d1262630108ab308d3e9ec7ed1c3286a32fe09856619a782
NAME=chall

.PHONY: clean run build

$(NAME): $(NAME).cpp
	podman run --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) $(CC) $(NAME).cpp $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	podman run --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)

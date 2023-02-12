CC=gcc
CFLAGS=-Wall -Wpedantic -Werror -O0 -Wl,-z,relro,-z,now
BUILD_IMAGE=buildpack-deps@sha256:c1a2475ac14e13582cf8a44fc071439132928ada47c57e80af372fdcd1690751
RUN_IMAGE=debian@sha256:98d3b4b0cee264301eb1354e0b549323af2d0633e1c43375d0b25c01826b6790

NAME=rut_roh_relro

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app $(BUILD_IMAGE) $(CC) $(NAME).c $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	docker run --rm -u "$(shell id -u):$(shell id -g)" -v "$(CURDIR):/app" -w /app $(RUN_IMAGE) ./$(NAME)

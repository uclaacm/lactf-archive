CC=gcc
CFLAGS=-fstack-protector -Wl,-z,relro,-z,now
BUILD_IMAGE=buildpack-deps@sha256:11b470007b870840c1ddae1598301138425a02bfcb6e94606df692b18cb19d88
RUN_IMAGE=fedora@sha256:dfb5e6183f515192b37df9356622b676461a41b724d9f92953433dca3e85deb1
NAME=monty

.PHONY: clean run build

$(NAME): $(NAME).c
	podman run --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) $(CC) $(NAME).c $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	podman run --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)

CC=gcc
CFLAGS=-O3
BUILD_IMAGE=buildpack-deps@sha256:11b470007b870840c1ddae1598301138425a02bfcb6e94606df692b18cb19d88
RUN_IMAGE=debian@sha256:36a9d3bcaaec706e27b973bb303018002633fd3be7c2ac367d174bafce52e84e
NAME=aplet321

.PHONY: clean run build

$(NAME): $(NAME).c
	podman run --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) $(CC) $(NAME).c $(CFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	podman run --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)

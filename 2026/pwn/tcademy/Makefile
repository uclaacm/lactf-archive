CC=gcc
CFLAGS=-std=c99
BUILD_IMAGE=ubuntu@sha256:ed1544e454989078f5dec1bfdabd8c5cc9c48e0705d07b678ab6ae3fb61952d2
RUN_IMAGE=ubuntu@sha256:ed1544e454989078f5dec1bfdabd8c5cc9c48e0705d07b678ab6ae3fb61952d2
NAME=chall

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --platform linux/amd64 --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) bash -c "apt update && apt install -y gcc && $(CC) $(CFLAGS) -o $(NAME) $(NAME).c"

build: $(NAME)

clean:
	rm $(NAME)

run: build
	docker run --platform linux/amd64 --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)
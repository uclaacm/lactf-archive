CC=gcc
CFLAGS=-std=c99 -fstack-protector -Wl,-z,relro,-z,now
BUILD_IMAGE=debian@sha256:aca3e110b8fee2a2acdf8cbe6cef1cfebef52e5257da87fbd41920d3411c1aed
RUN_IMAGE=debian@sha256:aca3e110b8fee2a2acdf8cbe6cef1cfebef52e5257da87fbd41920d3411c1aed
NAME=chall

.PHONY: clean run build

$(NAME): $(NAME).c
	docker run --platform linux/amd64 --rm -v "$(CURDIR):/app:Z" -w /app $(BUILD_IMAGE) bash -c "apt update && apt install -y gcc && $(CC) $(CFLAGS) -o $(NAME) $(NAME).c"

build: $(NAME)

clean:
	rm $(NAME)

run: build
	docker run --platform linux/amd64 --rm -it -v "$(CURDIR):/app:Z" -w /app $(RUN_IMAGE) ./$(NAME)
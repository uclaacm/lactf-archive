CXX=g++
CXXFLAGS=-no-pie -fno-stack-protector
BUILD_IMAGE=buildpack-deps@sha256:c1a2475ac14e13582cf8a44fc071439132928ada47c57e80af372fdcd1690751
RUN_IMAGE=debian@sha256:98d3b4b0cee264301eb1354e0b549323af2d0633e1c43375d0b25c01826b6790
NAME=redact

.PHONY: clean run build

$(NAME): $(NAME).cpp
	podman run --rm -v "$(CURDIR):/app:z" -w /app $(BUILD_IMAGE) $(CXX) $(NAME).cpp $(CXXFLAGS) -o $(NAME)

build: $(NAME)

clean:
	rm $(NAME)

run: build
	podman run --rm -it -v "$(CURDIR):/app:z" -w /app $(RUN_IMAGE) ./$(NAME)

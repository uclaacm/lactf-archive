CC = gcc
CFLAGS = -Wall -Wextra -O3
LDFLAGS = -lresolv

TARGET = bit-by-bit
SRCS = bit-by-bit.c

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(TARGET)
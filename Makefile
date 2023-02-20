
CC := gcc
LD := gcc

LDFLAGS += -shared -fPIC
CFLAGS += -fPIC


.PHONY: all
all: libsha256_c.so


libsha256_c.so: libsha256_c.o
	gcc -o $@ $(LDFLAGS) $<

libsha256_c.o: sha256.c sha256.h
	gcc -c $< $(CFLAGS) -o $@

.PHONY: clean
clean:
	rm -f *.o *.so

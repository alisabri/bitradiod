CC = gcc
CFLAGS = -g
LDFLAGS =
INC_DIR =
LIBS =

SRCS = srv
OBJS = srv.o

all: srv

%.o: %.c $(DEPS)
		$(CC) -c -o $@ $< $(CFLAGS) $(INC_DIR)

srv: $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS) $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f *.o srv

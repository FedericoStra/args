CFLAGS += -std=c11 -O2 -Wall

.PHONY: all clean install

all: args

clean:
	$(RM) args

install:
	install -o root -g root -t ~/.local/bin/ args

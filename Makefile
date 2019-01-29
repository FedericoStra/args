CFLAGS += -std=c11 -O2 -Wall

.PHONY: all clean install

all: args

clean:
	$(RM) args

install:
	install -t ~/.local/bin/ args

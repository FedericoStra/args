CFLAGS += -std=c17 -O2 -Wall -Wextra -Wpedantic

.PHONY: all clean install

all: args

clean:
	$(RM) args

install:
	install -t ~/.local/bin/ args

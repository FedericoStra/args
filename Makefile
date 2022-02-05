CFLAGS += -std=c17 -O2 -Wall -Wextra -Wpedantic -Werror

.PHONY: all clean install

all: args

clean:
	$(RM) args

install: args
	install -s -t ~/.local/bin/ args

CFLAGS += -std=c17 -Wall -Wextra -Wpedantic -Werror
CFLAGS += -Wshadow -Wwrite-strings -Wformat=2
CFLAGS += -Wcast-align -Wcast-qual
CFLAGS += -Wconversion -Warith-conversion -Wfloat-equal
CFLAGS += -O3 -march=native
CFLAGS += -fhardened
# CFLAGS += -fPIE
# LDFLAGS+= -pie

program = args

.PHONY: all clean install

all: $(program)

clean:
	$(RM) $(program)

install: $(program)
	install --strip --target-directory ~/.local/bin/ $(program)

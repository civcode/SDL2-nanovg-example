CFLAGS   = -no-pie -mtune=native `sdl2-config --cflags` -ggdb

WARN_OFF = -Wno-implicit-function-declaration
CFLAGS1  = $(CFLAGS) $(WARN_OFF)

LDFLAGS  = `sdl2-config --libs` -lSDL2_image -lm -lGL -lGLU -lGLEW 
.SUFFIXES:
.SUFFIXES: .c .o

srcdir	 =./
# TARGETS	 = 1 2 3
TARGETS	 = sdl-nanovg

.PHONY: all
all: $(TARGETS)

sdl-nanovg: $(srcdir)nanovg.c $(srcdir)main.c
	$(CC) $(CFLAGS) -o $@ $+ $(LDFLAGS)

# 2: $(srcdir)nanovg.c $(srcdir)2.c
# 	$(CC) $(CFLAGS1) -o $@ $+ $(LDFLAGS)

# 3: $(srcdir)nanovg.c $(srcdir)3.c
# 	$(CC) $(CFLAGS1) -o $@ $+ $(LDFLAGS)

.PHONY: clean
clean:
	@rm $(TARGETS) 2>/dev/null || true


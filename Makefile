TARGET = RANDOM
TITLE = RANDOM
BUILD_PRX = 1

PSPSDK := $(shell psp-config --pspsdk-path)

INCDIR = src
CFLAGS = -O2 -G0 -Wall -Wextra -std=c99
CXXFLAGS = $(CFLAGS)
ASFLAGS = $(CFLAGS)

LIBDIR =
LDFLAGS =

LIBS = -lpng -lz -lm

OBJS = \
	src/main.o \
	src/character.o

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = RANDOM

include $(PSPSDK)/lib/build.mak

SHELL       = /bin/sh

TOP         = /usr/local/sce/ee
LIBDIR      = $(TOP)/lib
INCDIR      = $(TOP)/include

DMA_LIBS    = debug.o \
              dmaemu.o \
              gifcursor.o \
              vifcursor.o \
              disassemble.o

DMA_HS      = Debug.h \
              Dmaemu.h \
              Gifcursor.h \
              Vifcursor.h \
              Disassemble.h

PREFIX      = ee
AS          = $(PREFIX)-gcc
CC          = $(PREFIX)-gcc
LD          = $(PREFIX)-gcc
DVPASM      = $(PREFIX)-dvp-as
OBJDUMP     = $(PREFIX)-objdump
AR          = $(PREFIX)-ar
RUN         = dsedb -r run
RM          = /bin/rm -f

CFLAGS      = -O0 -Wall -Wa -fno-common -g -fno-strict-aliasing
CXXFLAGS    = -O2 -Wall -Werror -Wa,-al -fno-exceptions -fno-common -fno-strict-aliasing
ASFLAGS     = -c -xassembler-with-cpp -Wa,-al
DVPASMFLAGS = -aln
LDFLAGS     = -Wl,-Map,$(TARGET).map -nostartfiles -L$(LIBDIR) -lm
TMPFLAGS    =

.SUFFIXES: .c .s .cc

all: DMAdebug.a

# Originally, the DMAdebug.h was created by the lines below, but I changed this to reduce clashes
# with existing developers code. Instead it's manually created.
#	cat $(DMA_HS) > DMAdebug.h

DMAdebug.a: $(DMA_LIBS)
	$(AR) r $@ $(DMA_LIBS)
	cp $@ ..
	cp DMAdebug.h ..

crt0.o: $(LIBDIR)/crt0.s
	$(AS) $(ASFLAGS) $(TMPFLAGS) -o $@ $< > $*.lst

.s.o:
	$(AS) $(ASFLAGS) $(TMPFLAGS) -I$(INCDIR) -o $@ $< > $*.lst

.c.o:
	$(CC) $(CFLAGS) $(TMPFLAGS) -I$(INCDIR) -c $< -o $*.o

.cc.o:
	$(CC) $(CXXFLAGS) $(TMPFLAGS) -I$(INCDIR) -c $< -o $*.o

clean:
	$(RM) *.o *.map *.lst core *.dis *.elf


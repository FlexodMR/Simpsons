TARGET= course6.elf
DEBUG = -g
#DEBUG = -g -O2

SOURCES = \
	main.cpp \
        transform.cpp \
        dma.cpp

ASM = vector.dsm

# Sony stuff
TOP         = /usr/local/sce/ee
LIBDIR      = $(TOP)/lib
INCDIR      = $(TOP)/include

# replace .c or .cpp with .o
OBJECTS = $(patsubst %.c,%.o,$(SOURCES:.cpp=.o)) $(ASM:.dsm=.o) crt0.o
INCLUDE = -I$(INCDIR) -I./

CXX = ee-gcc
AR = ee-ar
CPPDEPEND = -M
RANLIB = ee-ranlib

CXXFLAGS = $(INCLUDE) $(DEBUG) -G 0 -Wa,-G,0 -fno-common -fno-exceptions -Wall -Woverloaded-virtual -Wno-unused
ARFLAGS = cr

PREFIX      = ee
AS          = $(PREFIX)-gcc
CC          = $(PREFIX)-gcc
LD          = $(PREFIX)-gcc
DVPASM      = $(PREFIX)-dvp-as
OBJDUMP     = $(PREFIX)-objdump
RUN         = dsedb -r run
RM          = /bin/rm -f
ASFLAGS     = -c -xassembler-with-cpp -Wa,-al

LDFLAGS     = -Wl,-Map,$(TARGET).map -nostartfiles -L$(LIBDIR)
LCFILE      = $(LIBDIR)/app.cmd
LIBS        = -lm \
              $(LIBDIR)/libdma.a \
              $(LIBDIR)/libdev.a \
              $(LIBDIR)/libpkt.a \
              $(LIBDIR)/libgraph.a

all:: $(TARGET)

$(TARGET) : $(OBJECTS)
	@echo Linking...
	$(CXX) -T $(LCFILE) -o $@ $(OBJECTS) $(LDFLAGS) $(LIBS)

run: $(TARGET)
	dsedb -r run $(TARGET)

vector.o :: vector.dsm vector.vsm

crt0.o: $(LIBDIR)/crt0.s
	$(AS) $(ASFLAGS) $(TMPFLAGS) -o $@ $< > $*.lst

.PHONY : clean
clean:
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

# Rules for infering how to make specific types of files
%.o: %.cpp
	@echo Compiling $<
	@$(COMPILE.cc) $< $(OUTPUT_OPTION)

%.o: %.dsm
	@echo Assembling $(notdir $<)
	@$(DVPASM) $(DVPASMFLAGS) $(INCLUDE) -o $@ $<

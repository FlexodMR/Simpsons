#TARGET= viewer.elf
#DEBUG = -g -pg
#DEBUG = -g
#DEBUG = -g -O2

ifeq ($(LIB), debug)
  OBJDIR = ps2debug
  DEBUG = -g -DRAD_DEBUG
  LIBVER = pd
  BUILDVER = DEBUG
endif

ifeq ($(LIB), tune)
  OBJDIR = ps2tune
  DEBUG = -O2 -g -DRAD_TUNE
  LIBVER = pt
  BUILDVER = TUNE
endif

ifeq ($(LIB), release)
  OBJDIR = ps2release
  DEBUG = -O2 -DRAD_RELEASE
  LIBVER = pr
  BUILDVER = RELEASE
endif

TARGET = ../../../bin/viewer$(LIBVER).elf

PROJDIR = ../..
SOURCE = $(PROJDIR)/

SOURCES = \
	viewer.cpp \
	ps2.cpp \

# Sony stuff
TOP         = /usr/local/sce/ee
LIBDIR      = $(TOP)/lib
INCDIR      = $(TOP)/include

# replace .c or .cpp with .o
OBJECTS = $(addprefix $(OBJDIR)/,$(SOURCES:.cpp=.o))
DEPENDS = $(addprefix $(OBJDIR)/,$(SOURCES:.cpp=.d))

ROOT = ../..

SCROOBYDIR = $(ROOT)/../..
PURE3DDIR = $(ROOT)/../../../pure3d
RADMATHDIR = $(ROOT)/../../../radmath
RADCOREDIR = $(ROOT)/../../../radcore


INCLUDE = -I/usr/local/sce/ee/include \
	-I../../../../../radcore/Inc \
	-I../../../../inc \
	-I../../../../src \
	-I../../../../../pure3d \
	-I../../../../../radmath \

CXX = ee-gcc
AR = ee-ar
CPPDEPEND = -M
RANLIB = ee-ranlib
CFLAGS = $(INCLUDE) $(DEBUG) -G 0 -Wa,-G,0 -fno-common -DRAD_CONSOLE -DRAD_PS2 -Wall -Woverloaded-virtual -Wno-unused
CXXFLAGS = $(INCLUDE) $(DEBUG) -G 0 -Wa,-G,0 -fno-common -DRAD_CONSOLE -DRAD_PS2 -fno-exceptions -Wall -Woverloaded-virtual -Wno-unused
ARFLAGS = cr

PREFIX      = ee
AS          = $(PREFIX)-gcc
CC          = $(PREFIX)-gcc
LD          = $(PREFIX)-gcc
DVPASM      = $(PREFIX)-dvpasm
OBJDUMP     = $(PREFIX)-objdump
RUN         = dsedb -r run
RM          = /bin/rm -f
ASFLAGS     = -c -xassembler-with-cpp -Wa,-al

LDFLAGS     =  -nostartfiles -L$(LIBDIR) -lm 
#-Wl,-Strip
#-Wl,--task-link,main
#-s
LCFILE      = app.cmd

LIBPATH_EE       = /usr/local/sce/ee/lib
LIBPATH_PURE3D   = ../../../../../pure3d/build/lib
LIBPATH_RADMATH  = ../../../../../radmath/lib
LIBPATH_SCROOBY  = ../../../../lib
LIBPATH_RADCORE  = ../../../../../radcore/lib
LIBPATH_SDK      = ../../../../../Sdks

LIBS =												\
	$(LIBPATH_SCROOBY)/scrooby$(LIBVER).a           \
	$(LIBPATH_PURE3D)/pure3d$(LIBVER).a             \
	$(LIBPATH_RADCORE)/radcore$(LIBVER).a           \
	$(LIBPATH_PURE3D)/pddi$(LIBVER).a               \
	$(LIBPATH_PURE3D)/png$(LIBVER).a                \
	$(LIBPATH_PURE3D)/zlib$(LIBVER).a               \
	$(LIBPATH_RADMATH)/radmath$(LIBVER).a           \
	$(LIBPATH_SDK)/sntcpip/lib/sneetcp.a		\
	$(LIBPATH_SDK)/sntcpip/lib/sntty.lib		\
	$(LIBPATH_EE)/libgraph.a                        \
	$(LIBPATH_EE)/libdma.a                          \
	$(LIBPATH_EE)/libdev.a                          \
	$(LIBPATH_EE)/libipu.a                          \
	$(LIBPATH_EE)/libpkt.a                          \
	$(LIBPATH_EE)/libvu0.a                          \
	$(LIBPATH_EE)/libmc.a                           \
	$(LIBPATH_EE)/libcdvd.a                         \
	$(LIBPATH_EE)/libsdr.a                          \
	$(LIBPATH_EE)/libmtap.a                         \
	$(LIBPATH_EE)/libpad.a                          \

all:: $(TARGET)

libs:: p3d radmath scrooby radcore

$(TARGET) : $(OBJECTS) libs
	@echo "Linking..."
	$(CXX) -T $(LCFILE) -o $@ $(OBJECTS) $(LDFLAGS) $(LIBS) -lm

run: $(TARGET)
	$(RUN) $(TARGET)

crt0.o: $(LIBDIR)/crt0.s
	$(AS) $(ASFLAGS) $(TMPFLAGS) -o $@ $< > $*.lst

.PHONY : p3d
p3d:
	@echo ==================
	@echo Building Pure3D
	@echo ==================
	@$(MAKE) --no-print-directory -C $(PURE3DDIR)/build/ps2

.PHONY : radmath
radmath:
	@echo ==================
	@echo Building RadMath
	@echo ==================
	@$(MAKE) --no-print-directory -C $(RADMATHDIR)/build/ps2

.PHONY : scrooby
scrooby:
	@echo ==================
	@echo Building Scrooby
	@echo ==================
	@$(MAKE) --no-print-directory -C $(SCROOBYDIR)/build/ps2 CONFIG=$(BUILDVER)

.PHONY : radcore
radcore:
	@echo ==================
	@echo Building Radcore
	@echo ==================
	@$(MAKE) --no-print-directory -C $(RADCOREDIR)/build/ps2ee CONFIG=$(BUILDVER)

.PHONY : clean
clean:
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

# Rules for infering how to make specific types of files

$(OBJECTS) : $(OBJDIR)/%.o : ../../%.cpp
	@echo "$(notdir $<)"
	@$(COMPILE.cc) $< $(OUTPUT_OPTION)

$(DEPENDS) : $(OBJDIR)/%.d : ../../%.cpp
	@echo Updating dependancies for $(notdir $<)
	-@ $(CXX) $(CPPDEPEND) $(CXXFLAGS) $< | perl -pe "s#^(.*\.o)[ :]*#$(@:.d=.o) $@ : #" > $@

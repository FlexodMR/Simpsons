TARGET = simple
DEBUG = -g -pg
EFENCE = 
#EFENCE = -lefence

SIMPLE = ../../../demos/simple/linux

# sources relative to build directory
VPATH = $(SIMPLE)

ROOT = ../../..
PDDI = $(ROOT)/pddi
CORE = $(ROOT)/p3d/core
ANIM = $(ROOT)/p3d/anim
BUILD = ..

INCLUDE = \
	-I$(PDDI) \
	-I$(CORE)/inc \
	-I$(CORE)/platform/linux \
	-I$(ROOT)/lib/radmath \
	-I/usr/X11R6/include \
	-I/usr/local/include

SOURCES = simple.cpp

CPPFLAGS += $(DEBUG) $(INCLUDE) -DLINUX -DPDDI_LINUX -fno-for-scope 
CFLAGS += $(DEBUG) $(INCLUDE) -DLINUX -DPDDI_LINUX
LDFLAGS += -L$(BUILD)/pddi/gl -L$(BUILD)/Pure3D -L$(ROOT)/lib/radmath
LIBS = -lp3d -lpddigl -lradmath -lglut -lGLU -lGL -lm 

# replace .c or .cpp with .o
OBJECTS = $(patsubst %.c,%.o,$(SOURCES:.cpp=.o))

all: $(TARGET)

install: all
	cp $(TARGET) $(INSTALLDIR)

$(TARGET) : $(OBJECTS) $(TOOLLIB)
	$(CXX) -o $(TARGET) $(DEBUG) $(LDFLAGS) $(OBJECTS) $(EFENCE) $(LIBS)

.PHONY : clean
clean:
	rm -f $(TARGET)
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

# Rules for infering how to make specific types of files
%.o: %.cpp
	$(COMPILE.cc) $< $(OUTPUT_OPTION)

%.d: %.cpp
	@echo Updating dependancies for $<
	-@ $(CC) -MM $(CPPFLAGS) $< | sed 's/^\(.*.o:\)/\1/' > $@

%.d: %.c
	@echo Updating dependancies for $<
	-@ $(CC) -MM $(CPPFLAGS) $< | sed 's/^\(.*.o:\)/\1/' > $@

include $(OBJECTS:.o=.d)

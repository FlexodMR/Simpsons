TARGET = png2p3d
DEBUG = -g
EFENCE = 
# EFENCE = -lefence
INSTALLDIR = ../bin/

CONSTANTS = ../../../constants
TOOLLIBDIR = ../../../toollib
TOOLLIB = $(TOOLLIBDIR)/lib/libtoollib.a
S3TCLIBDIR = ../../../lib/s3tc/Lib


JEEVESDEBUG =
JEEVESDIR = ../Jeeves
export JEEVESLIBDIR = $(JEEVESDIR)/lib:$(JEEVESDIR)
JEEVES = Param.hpp \
         Param.cpp

SOURCES = Param.cpp main.cpp version.cpp

CPPFLAGS += $(DEBUG) -I$(TOOLLIBDIR)/inc -I$(CONSTANTS) -I$(TOOLLIBDIR)/chunks16/inc -fno-for-scope -DP3DTOOL 
CFLAGS += $(DEBUG) -DP3DTOOL 
LDFLAGS += -L$(TOOLLIBDIR)/lib -L$(S3TCLIBDIR)


# replace .c or .cpp with .o
OBJECTS = $(patsubst %.c,%.o,$(SOURCES:.cpp=.o))

all: toollib $(JEEVES) $(TARGET)

install: all
	cp $(TARGET) $(INSTALLDIR)

$(TARGET) : $(OBJECTS) $(TOOLLIB)
	$(CXX) -o $(TARGET) $(DEBUG) $(LDFLAGS) $(OBJECTS) -ltoollib -lS3TC -lm -lpng -lz $(EFENCE)

all: $(JEEVES)

Param.cpp : $(TARGET).sc $(JEEVESDIR)/Param_cpp.tpl $(JEEVESDIR)/Tool_Schema.pm
		perl $(JEEVESDIR)/jeeves $(JEEVESDEBUG) -s Tool_Schema -t $(JEEVESDIR)/Param_cpp.tpl $(TARGET).sc

Param.hpp : $(TARGET).sc $(JEEVESDIR)/Param_hpp.tpl $(JEEVESDIR)/Tool_Schema.pm
		perl $(JEEVESDIR)/jeeves $(JEEVESDEBUG) -s Tool_Schema -t $(JEEVESDIR)/Param_hpp.tpl $(TARGET).sc

.PHONY : clean
clean:
	rm -f $(TARGET)
	rm -f $(OBJECTS)
	rm -f $(JEEVES)
	rm -f $(OBJECTS:.o=.d)

.PHONY : toollib
toollib:
	$(MAKE) -C $(TOOLLIBDIR)

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

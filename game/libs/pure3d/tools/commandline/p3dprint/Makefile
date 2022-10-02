TARGET = p3dprint
DEBUG = -g
INSTALLDIR = ../bin/
CONSTANTS = ../../../constants
TOOLLIBDIR = ../../../toollib

SOURCES = Param.cpp main.cpp version.cpp

CPPFLAGS += $(DEBUG) -I$(CONSTANTS) -I$(TOOLLIBDIR)/inc -I$(TOOLLIBDIR)/chunks16/inc -fno-for-scope -DP3DTOOL
CFLAGS += $(DEBUG) -DP3DTOOL
LDFLAGS += -L$(TOOLLIBDIR)/lib

TOOLLIB = -ltoollib

OBJECTS = $(SOURCES:.cpp=.o)

all: toollib $(TARGET)

install: $(TARGET)
	cp $(TARGET) $(INSTALLDIR)

$(TARGET) : $(OBJECTS) $(TOOLLIBDIR)/lib/libtoollib.a
	$(CXX) -o $(TARGET) $(LDFLAGS) $(OBJECTS) $(TOOLLIB) -lm -lpng -lz 

.PHONY : clean
clean:
	rm -f $(TARGET)
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

.PHONY : toollib
toollib:
	$(MAKE) -C $(TOOLLIBDIR)

# Rules for infering how to make specific types of files
%.o: %.cpp
	$(COMPILE.cc) $< $(OUTPUT_OPTION)

%.d: %.cpp
	-@ $(CC) -MM $(CPPFLAGS) $< | sed 's/^\(.*.o:\)/\1/' > $@

%.d: %.c
	-@ $(CC) -MM $(CPPFLAGS) $< | sed 's/^\(.*.o:\)/\1/' > $@

include $(OBJECTS:.o=.d)

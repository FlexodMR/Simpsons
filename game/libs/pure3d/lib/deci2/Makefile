TARGET= libdeci2.a
#DEBUG = -g -pg
DEBUG = -g

SOURCES = \
	Deci2Connection.cpp \
	Connection.cpp \
	ViewerConnection.cpp \
	deci2proto.cpp \
	viewerproto.cpp 

# replace .c or .cpp with .o
OBJECTS = $(patsubst %.c,%.o,$(SOURCES:.cpp=.o))
ROOT = ../../../..
CONSTANTS = $(ROOT)/constants
CORE = $(ROOT)/p3d/core
ANIM = $(ROOT)/p3d/anim

INCLUDE = -I$(CONSTANTS) -I$(ROOT)/pddi/ -I$(CORE)/inc -I$(CORE)/platform/linux -I$(ANIM)/inc -I$(ROOT)/lib/radmath

CPPDEPEND = -MM 
CPPFLAGS += $(INCLUDE) $(DEBUG) -DPDDI_LINUX -DLINUX -Wall -Woverloaded-virtual -Wno-unused
RANLIB = ranlib

TARGETS = ../lib/$(TARGET)

all:: $(TARGETS)

../lib/$(TARGET) : $(OBJECTS) 
	@echo Building Library...
	@ar crs $(TARGET) $(OBJECTS)
	@mv $(TARGET) ../lib/$(TARGET)

testprog: $(OBJECTS) testmain.o
	@echo Building testprog
	@g++ $(DEBUG) -o testprog $(OBJECTS) testmain.o

.PHONY : clean
clean:
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

install: ../lib/$(TARGET)


# Rules for infering how to make specific types of files
%.o: %.cpp
	@echo Compiling $<
	@$(COMPILE.cc) $< $(OUTPUT_OPTION)

%.d: %.cpp
	@echo Updating dependancies for $<
	-@ $(CXX) $(CPPDEPEND) $(CPPFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@

%.d: %.c
	@echo Updating dependancies for $<
	-@ $(CC) $(CPPDEPEND) $(CPPFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@

ifndef CLEANING
-include $(OBJECTS:.o=.d)
endif

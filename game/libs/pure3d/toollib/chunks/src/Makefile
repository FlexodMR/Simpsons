CHUNKS = \
	tlNameChunk.sc

CHUNKSDIR = ../../Schema
JEEVESDIR = ../Jeeves
#JEEVESDEBUG = -d

HPPFILES = $(patsubst %,../inc/%,$(CHUNKS:.sc=.hpp))
CPPFILES = $(CHUNKS:.sc=.cpp)

all:  hppfiles cppfiles

hppfiles: $(HPPFILES)
cppfiles: $(CPPFILES)


$(HPPFILES) : ../inc/%.hpp : $(CHUNKSDIR)/%.sc $(JEEVESDIR)/chunk_hpp.tpl $(JEEVESDIR)/Chunk_Schema.pm
	@perl $(JEEVESDIR)/jeeves -I $(JEEVESDIR) $(JEEVESDEBUG) -S $(CHUNKSDIR) -t $(JEEVESDIR)/chunk_hpp.tpl -s Chunk_Schema $< -o $@

$(CPPFILES) : %.cpp : $(CHUNKSDIR)/%.sc $(JEEVESDIR)/chunk_cpp.tpl $(JEEVESDIR)/Chunk_Schema.pm
	@perl $(JEEVESDIR)/jeeves -I $(JEEVESDIR) $(JEEVESDEBUG) -S $(CHUNKSDIR) -t $(JEEVESDIR)/chunk_cpp.tpl -s Chunk_Schema $< -o $@

DEBUG = -g

# replace .c or .cpp with .o
OBJECTS = $(CPPFILES:.cpp=.o)

# platform specific

ifeq ($(HOSTTYPE),iris4d)
     CXX = CC 
     CPPDEPEND = -M
     CPPFLAGS += -n32 -mips3 -I../inc -I../../inc -DP3DTOOL
     RANLIB = ar sm
else
     CPPDEPEND = -MM
     CPPFLAGS +=-I../inc -I ../../inc -fno-for-scope $(DEBUG) -Wall -Woverloaded-virtual -Wno-unused
     RANLIB = ranlib
endif


.PHONY : clean
clean:
	rm -f $(HPPFILES)
	rm -f $(CPPFILES)
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

install: all

# Rules for infering how to make specific types of files
%.o: %.cpp
	$(COMPILE.cc) $< $(OUTPUT_OPTION)

%.d: %.cpp %.hpp
	@echo Updating dependancies for $<
	-@ $(CXX) $(CPPDEPEND) $(CXXFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@

%.d: %.c
	@echo Updating dependancies for $<
	-@ $(CC) $(CPPDEPEND) $(CFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@

ifndef CLEANING
-include $(OBJECTS:.o=.d)
endif

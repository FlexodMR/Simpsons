TARGET = ../../lib/libpddiglld.a

ROOT = ../../../..
PURE3D = $(ROOT)/pure3d
PDDI = $(PURE3D)/pddi

# sources relative to build directory
VPATH = $(PDDI)/base $(PDDI)/gl $(PDDI)/gl/display_linux

# includes relative to build directory
INCLUDE = \
    -I$(ROOT) \
    -I$(ROOT)/radmath \
    -I$(PURE3D) \
    -I/usr/include \
    -I/usr/X11R6/include \
    -I/usr/local/include

SOURCES = \
        basecontext.cpp \
        baseshader.cpp \
        font.cpp \
        glcon.cpp \
        gldev.cpp \
        glmat.cpp \
        gltex.cpp \
        gldisplay.cpp \
        pddiobj.cpp

DEBUG = -g
# DEBUG = -O3

DEFINES = -DRAD_DEBUG -DRAD_PC -DRAD_LINUX -DPDDI_NO_ASM
CXXFLAGS = $(INCLUDE) $(DEBUG) $(DEFINES) -Wall -Woverloaded-virtual -Wno-unused
ARFLAGS = cr
CPPDEPEND = -M

# replace .cpp with .o, and build in the OBJECTDIR directory
OBJECTS = $(SOURCES:.cpp=.o)
DEPENDS = $(SOURCES:.cpp=.d)

RANLIB = ranlib

$(TARGET) : $(OBJECTS)
	@echo Building library $@
	@$(AR) $(ARFLAGS) $@ $(OBJECTS)
	@$(RANLIB) $@

depend : $(DEPENDS)

# Rules for infering how to make specific types of files
%.o: %.cpp
	@echo Compiling $(notdir $<)
	@$(COMPILE.cc) $< $(OUTPUT_OPTION)

$(DEPENDS) : %.d : %.cpp
	@echo Updating dependancies for $(notdir $<)
	-@ $(CXX) $(CPPDEPEND) $(CXXFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#\1 $@ : #" > $@


.PHONY: clean
clean :
	@echo Removing intermediate files and $(TARGET) 
	@-$(RM) $(DEPENDS) $(OBJECTS) $(TARGET)

ifndef CLEANING
-include $(DEPENDS)
endif

TARGET = p3dview
OBJDIR = obj/optimized
#DEBUG = -g -pg
DEBUG = -g
VPATH = ../../code/rendering  \
	../../code/console    \
	../../code/config     \
	../../code/viewer     \
	../../code/utility    \
	../../code/file       \
	../../code/plugin     \
	../../code/kernel/linux \
	../../code/boot/linux   \
	../../code/simcommon	\
	../../code/simcollision

SOURCES = \
	grid.cpp \
	quakecam.cpp \
	settings.cpp \
	origin.cpp \
	arguments.cpp \
	server.cpp \
	p3dfile.cpp \
	textfile.cpp \
	boot.cpp \
	kernel.cpp \
	class.cpp \
	commandline.cpp \
	console.cpp \
	enum.cpp \
	function.cpp  \
	objectscripter.cpp \
	quickviewp3d.cpp \
	shatter.cpp \
	symboltable.cpp \
	types.cpp \
	viewp3d.cpp \
	viewer.cpp \
	registry.cpp \
	module.cpp \
	viewercamera.cpp \
	collisiondisplay.cpp \
	collisionobject.cpp \
	collisionvolume.cpp \
	dline2.cpp \
	tlist.cpp


# replace .c or .cpp with .o
OBJECTS = $(addprefix $(OBJDIR)/,$(SOURCES:.cpp=.o))

ROOT = ../../../..
P3DDIR = $(ROOT)/build/linux/Pure3D
PDDIGLDIR = $(ROOT)/build/linux/pddi/gl
RADMATHDIR = $(ROOT)/build/linux/radmath
PNGDIR = $(ROOT)/build/linux/png
ZLIBDIR = $(ROOT)/build/linux/zlib
FREETYPEDIR = $(ROOT)/build/linux/freetype

INCLUDE =  -I$(ROOT) -I$(ROOT)/.. -I../../code -I../../lib 

CPPDEPEND = -M
CFLAGS = $(INCLUDE) $(DEBUG) -DLINUX -DP3D_LINUX -DP3DLINUX -DP3D_NO_ASM -DPDDI_NO_ANON_UNION -DPDDI_IMPLICIT_LINK -DPDDI_LINUX -DPDDIGL -Wall -Woverloaded-virtual -Wno-unused
CXXFLAGS = $(INCLUDE) $(DEBUG) -DLINUX -DP3D_LINUX -DP3DLINUX -DP3D_NO_ASM -DPDDI_NO_ANON_UNION -DPDDI_IMPLICIT_LINK -DPDDI_LINUX -DPDDIGL -Wall -Woverloaded-virtual -Wno-unused
ARFLAGS = cr

RM          = /bin/rm -f

LDFLAGS     = -lm -L$(P3DDIR) -L$(PDDIGLDIR) -L$(RADMATHDIR) -L$(FREETYPEDIR) -L/usr/X11R6/lib
LIBS        = -lp3dt -lpddigl -lradmatht -lpng -lz -lm -lglut -lfreetype -lGLU -lGL -lX11 -lXext -lXi -lXmu

all:: $(TARGET)
libs::  p3d pddips2 radmath

$(TARGET) : libs $(OBJECTS)
	@echo Linking...
	../../tools/bin/linux/info > info.cpp
	$(CXX) -o $@ info.cpp $(OBJECTS) $(LDFLAGS) $(LIBS)
	cp p3dview ../../dist

$(OBJECTS) : $(OBJDIR)/%.o : %.cpp
	@echo $(notdir $<)
	@$(COMPILE.cc) $< $(OUTPUT_OPTION) 	

.PHONY : clean
clean:
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

.PHONY : p3d
p3d:
	$(MAKE) -C $(P3DDIR)

.PHONY : pddips2
pddigl:
	$(MAKE) -C $(PDDIGLDIR)

.PHONY : radmath
radmath:
	$(MAKE) -C $(RADMATHDIR)

.PHONY : freetype
freetype:
	$(MAKE) -C $(FREETYPEDIR)

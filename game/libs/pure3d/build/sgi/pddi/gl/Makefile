TARGET = libpddigl.a

PDDI = ../../../../pddi

# sources relative to build directory
VPATH = $(PDDI)/base $(PDDI)/gl $(PDDI)/gl/display_linux

# includes relative to build directory
INCLUDE = \
	-I$(PDDI) \
	-I$(PDDI)/base \
	-I$(PDDI)/gl \
	-I$(PDDI)/gl/display_linux \
	-I/usr/X11R6/include \
	-I/usr/local/include

SOURCES = \
	basecontext.cpp \
	basemath.cpp \
	font.cpp   \
	pddiobj.cpp \
	glcon.cpp \
	gldev.cpp \
	glmat.cpp \
	gltex.cpp \
	gldisplay.cpp

DEBUG = -g
# DEBUG = -O3

CXXFLAGS = $(INCLUDE) $(DEBUG) -DPDDIGL -DPDDI_LINUX -DPDDI_NO_ASM -n32 -mips3
ARFLAGS = cr

# replace .cpp with .o, and build in the OBJECTDIR directory
OBJECTS = $(SOURCES:.cpp=.o)
DEPENDS = $(SOURCES:.cpp=.d)

CXX = CC
CPPDEPEND = -M
RANLIB = ar sm

$(TARGET) : $(OBJECTS)
	@echo Building library $@
	@$(AR) $(ARFLAGS) $@ $(OBJECTS)
	@$(RANLIB) $@

depend : $(DEPENDS)

# Rules for infering how to make specific types of files

basecontext.o : $(PDDI)/base/basecontext.cpp
	@echo Compiling basecontext.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/base/basecontext.cpp -o basecontext.o

basemath.o : $(PDDI)/base/basemath.cpp
	@echo Compiling basemath.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/base/basemath.cpp -o basemath.o

font.o : $(PDDI)/base/font.cpp
	@echo Compiling font.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/base/font.cpp -o font.o

pddiobj.o : $(PDDI)/base/pddiobj.cpp
	@echo Compiling pddiobj.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/base/pddiobj.cpp -o pddiobj.o

glcon.o : $(PDDI)/gl/glcon.cpp
	@echo Compiling glcon.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/gl/glcon.cpp -o glcon.o

gldev.o : $(PDDI)/gl/gldev.cpp
	@echo Compiling gldev.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/gl/gldev.cpp -o gldev.o

glmat.o : $(PDDI)/gl/glmat.cpp
	@echo Compiling glmat.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/gl/glmat.cpp -o glmat.o

gltex.o : $(PDDI)/gl/gltex.cpp
	@echo Compiling gltex.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/gl/gltex.cpp -o gltex.o

gldisplay.o : $(PDDI)/gl/display_sgi/gldisplay.cpp
	@echo Compiling gldisplay.cpp
	@$(CXX) $(CXXFLAGS) -c $(PDDI)/gl/display_sgi/gldisplay.cpp -o gldisplay.o

.PHONY: clean
clean :
	@echo Removing intermediate files and $(TARGET) 
	@-$(RM) $(DEPENDS) $(OBJECTS) $(TARGET)

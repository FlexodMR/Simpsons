TARGET = libp3dt.a
OBJDIR = optimised
DEBUG = -O2 -g -DRAD_TUNE

ifeq ($(LIB), debug)
  TARGET = libp3dd.a
  OBJDIR = debug
  DEBUG = -g -DRAD_DEBUG
endif

ifeq ($(LIB), optimised)
  TARGET = libp3dt.a
  OBJDIR = optimised
  DEBUG = -O2 -g -DRAD_TUNE
endif

ifeq ($(LIB), release)
  TARGET = libp3dr.a
  OBJDIR = release
  DEBUG = -O2 -DRAD_RELEASE
endif

ROOT = ../../..
CORE = $(ROOT)/p3d
ANIM = $(CORE)/anim
EFFECTS = $(CORE)/effects
SCENEGRAPH = $(CORE)/scenegraph

# sources relative to build directory
VPATH = \
    $(CORE) \
    $(CORE)/platform/linux \
    $(ANIM)/platform/linux \
    $(ANIM) \
    $(COVERAGE) \
    $(EFFECTS) \
    $(SCENEGRAPH)

# includes relative to build directory
INCLUDE = \
    -I$(ROOT) \
    -I$(ROOT)/.. \
    -I$(ROOT)/pddi \
    -I$(ROOT)/../radmath \
    -I$(ROOT)/../radcore/inc \
    -I$(ROOT)/lib/freetype/include \
    -I$(ROOT)/lib/libpng \
    -I$(ROOT)/lib/zlib

PLAT_SOURCES = \
    error.cpp \
    plat_filemap.cpp \
    platform.cpp

CORE_SOURCES = \
    ambientlight.cpp \
    billboardobject.cpp \
    bmp.cpp \
    camera.cpp \
    cameraloader.cpp \
    chunkfile.cpp \
    context.cpp \
    debugdraw.cpp \
    directionallight.cpp \
    displaylist.cpp \
    drawable.cpp \
    dxtn.cpp \
    entity.cpp \
    file.cpp \
    fileftt.cpp \
    font.cpp \
    gameattr.cpp \
    geometry.cpp \
    image.cpp \
    imageconverter.cpp \
    imagefactory.cpp \
    imagefont.cpp \
    inventory.cpp \
    light.cpp \
    lightloader.cpp \
    lightschooser.cpp \
    loaders.cpp \
    loadmanager.cpp \
    locator.cpp \
    lzr.cpp \
    matrixstack.cpp \
    memheap.cpp \
    memory.cpp \
    mipmapfilter.cpp \
    png.cpp \
    pointcamera.cpp \
    pointlight.cpp \
    primgroup.cpp \
    rawimage.cpp \
    refcounted.cpp \
    shader.cpp \
    sprite.cpp \
    spotlight.cpp \
    table.cpp \
    targa.cpp \
    textdataparser.cpp \
    textstring.cpp \
    texture.cpp \
    texturefont.cpp \
    unicode.cpp \
    utility.cpp \
    vectorcamera.cpp \
    vertexlist.cpp \
    view.cpp

ANIM_SOURCES = \
    animate.cpp \
    animatedobject.cpp \
    billboardobjectanimation.cpp \
    cameraanimation.cpp \
    channel.cpp \
    compositedrawable.cpp \
    drawablepose.cpp \
    event.cpp \
    eventanimation.cpp \
    expression.cpp \
    expressionanimation.cpp \
    expressionoffsets.cpp \
    instancedgeometry.cpp \
    lightanimation.cpp \
    multicontroller.cpp \
    polyskin.cpp \
    pose.cpp \
    poseanimation.cpp \
    sequencer.cpp \
    shaderanimation.cpp \
    skeleton.cpp \
    textureanimation.cpp \
    vertexanimcontroller.cpp \
    vertexanimkey.cpp \
    vertexanimobject.cpp \
    vertexoffsetexpression.cpp \
    visibilityanimation.cpp

EFFECTS_SOURCES = \
    effect.cpp \
    optic.cpp \
    opticcorona.cpp \
    opticlensflare.cpp \
    opticloader.cpp \
    particlearray.cpp \
    particleemitter.cpp \
    particlegenerator.cpp \
    particleloader.cpp \
    particlepool.cpp \
    particlesystem.cpp \
    particletype.cpp \
    particleutility.cpp \
    transitionmanager.cpp

SCENEGRAPH_SOURCES = \
    nodeanimation.cpp \
    scenegraph.cpp

SOURCES = \
    $(PLAT_SOURCES) \
    $(CORE_SOURCES) \
    $(ANIM_SOURCES) \
    $(EFFECTS_SOURCES) \
    $(SCENEGRAPH_SOURCES)

DEFINES = -DRAD_LINUX -DRAD_PC -DLINUX
CXXFLAGS = $(INCLUDE) $(DEBUG) $(DEFINES) -Wall -Woverloaded-virtual -Wno-unused
ARFLAGS = cr
RANLIB = ranlib
CPPDEPEND = -MM

# replace .cpp with .o, and build in the OBJECTDIR directory
OBJECTS = $(addprefix $(OBJDIR)/,$(SOURCES:.cpp=.o))
DEPENDS = $(SOURCES:.cpp=.d)


all: $(TARGET)

$(TARGET) : $(OBJECTS)
	echo Building library $@
	$(AR) $(ARFLAGS) $@ $(OBJECTS)
	$(RANLIB) $@

depend : $(DEPENDS)

$(OBJECTS) : %.o : %.cpp
	echo $(notdir $<)
	$(COMPILE.cc) $< $(OUTPUT_OPTION)

$(DEPENDS) : %.d : %.cpp
	echo Updating dependancies for $(notdir $<)
	-@ $(CXX) $(CPPDEPEND) $(CXXFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#\1 $@ : #" > $@


.PHONY: clean
clean :
	@echo Removing intermediate files and $(TARGET) 
	@-$(RM) $(DEPENDS) $(OBJECTS) $(TARGET)

ifndef CLEANING
-include $(DEPENDS)
endif

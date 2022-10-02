ifeq ($(MAKECMDGOALS), debug)
	VERSION = D
	GCLIBVERSION =	D
	LIBVER = debug
	CONFIG = DEBUG
endif

ifeq ($(MAKECMDGOALS), tune)
	VERSION = T
	GCLIBVERSION =
	LIBVER = tune
	CONFIG = TUNE
endif

ifeq ($(MAKECMDGOALS), release)
	VERSION = R
	GCLIBVERSION =
	LIBVER = release
	CONFIG = RELEASE
endif

ifeq ($(MAKECMDGOALS), cleand)
	VERSION = D
	GCLIBVERSION =	D
	LIBVER = cleand
endif

ifeq ($(MAKECMDGOALS), cleant)
	VERSION = T
	GCLIBVERSION =
	LIBVER = tuned
endif

ifeq ($(MAKECMDGOALS), cleanr)
	VERSION = R
	GCLIBVERSION =
	LIBVER = released
endif

TARGET=../../../bin/viewerg$(VERSION).elf

SOURCES = \
	gamecube.cpp \
	viewer.cpp

OBJDIR = $(LIBVER)

# replace .c or .cpp with .o
OBJECTS = $(addprefix $(OBJDIR)/, $(SOURCES:.cpp=.o))
DEPENDS = $(addprefix $(OBJDIR)/, $(SOURCES:.cpp=.d))


ROOT = ../../../../..
PURE3D = $(ROOT)/pure3d
RADMATH = $(ROOT)/radmath
RADCORE = $(ROOT)/radcore
SCROOBY = $(ROOT)/scrooby

INCLUDE = -I../..\
			-I$(SCROOBY)/inc \
			-I$(SCROOBY)/src \
			-I$(PURE3D) \
			-I$(PURE3D)/p3d \
			-I$(PURE3D)/pddi \
			-I$(RADMATH) \
			-I$(RADCORE)/inc

P3DLIBDIR = $(PURE3D)/build/lib

P3DLIBNAMES =  \
				Pure3D	\
				png		\
				zlib	\
				pddi

SCROOBYLIBS = $(SCROOBY)/lib/scroobyg$(VERSION).a

empty		:=
space		:= $(empty) $(empty)

P3DLIBNAMES1 = $(addsuffix g$(VERSION).a, $(P3DLIBNAMES))
P3DLIBS = $(addprefix  $(P3DLIBDIR)/, $(P3DLIBNAMES1))


RADLIBNAMES = radcore radmath
RADLIBS     = $(foreach RADLIB,$(RADLIBNAMES),$(ROOT)/$(RADLIB)/lib/$(RADLIB)g$(VERSION).a)

##########################################################################
# TOOLS
##########################################################################

RADMAKE = $(ROOT)/radbuild/globaltools/make.exe

##########################################################################
# Compiler tools

# MWDIR		top level directory of Metrowerks CodeWarrior product
# CWFOLDER	environment variable installed by CodeWarrior installation
# MWCLDIR	command line tool directory
# CC AS LD AR	command line tools
# MWINCS	standard library includes

RM   = "$(PURE3D)/build/rm.exe"
SED  = "$(PURE3D)/build/sed.exe"

MWDIR	 = $(subst \,/,$(CWFOLDER))
MWCLDIR	 = $(MWDIR)/PowerPC_EABI_Tools/Command_Line_Tools
MWINCS	 = -ir "$(MWDIR)/PowerPC_EABI_Support/Msl"
MWLIBDIR = $(MWDIR)/PowerPC_EABI_Support
CC	= "$(MWCLDIR)/mwcceppc.exe"
AS	= "$(MWCLDIR)/mwasmeppc.exe"
LD	= "$(MWCLDIR)/mwldeppc.exe"
AR	= "$(MWCLDIR)/mwldeppc.exe"


##########################################################################
# DOLPHIN SDK
##########################################################################


MWLIBS = "$(MWLIBDIR)/MetroTRK/TRK_MINNOW_DOLPHIN.a"    \
         "$(MWLIBDIR)/Runtime/lib/Runtime.PPCEABI.H.a"     \
         "$(MWLIBDIR)/Msl/MSL_C/PPC_EABI/lib/MSL_C.PPCEABI.bare.H.a"  \
         "$(MWLIBDIR)/Msl/MSL_C++/PPC_EABI/lib/MSL_C++.PPCEABI.bare.H.a"

SDKLIBNAMES = base os db mtx dvd vi pad ai ar dsp card hio \
              gx G2D texPalette fileCache support si exi

SDKLIBS = $(addsuffix $(GCLIBVERSION).a, $(addprefix -l, $(SDKLIBNAMES)))

ifdef AMCDDKBIN
	AMCDIR    = $(subst $(space),\$(space),$(subst \,/,$(AMCDDKBIN)))
	AMCLIBS   = $(AMCDIR)/../lib/AmcExi2.a -lamcnotstub.a
else
	AMCLIBS   = -lamcstubs.a
endif # AMCDDKBIN


ifdef ODEMUSDKBIN
	ODEDIR    = $(subst $(space),\$(space),$(subst \,/,$(ODEMUSDKBIN)))
	ODELIBS   = $(ODEDIR)/../lib/odemuexi2.a -lodenotstub.a
else  # ODEMUSDKBIN
	ODELIBS   = -lodemustubs.a
endif # ODEMUSDKBIN


DS_A := $(DOLPHIN_ROOT://c=c:)
DS_B := $(DS_A://c=c:)
DS_A := $(DS_B://d=d:)
DS_B := $(DS_A://e=e:)
DS_A := $(DS_B://f=f:)
DS_B := $(DS_A://g=g:)
DS_A := $(DS_B://t=t:)
DOLPHIN_SDK_ROOT := $(DS_A)
	
SDKINC	= -i- \
           -I$(DOLPHIN_SDK_ROOT)/include

SDKLIBDIR= $(DOLPHIN_SDK_ROOT)/$(DOLPHIN_PLATFORM)/Lib

PLATLIBS		= -L$(SDKLIBDIR) $(SDKLIBS) $(MWLIBS) $(AMCLIBS) $(ODELIBS)

##########################################################################
# COMPILE FLAGS
##########################################################################

# INCS		include flags
# CFLAGS	C compiler flags

PLAT_INCS = $(SDKINC) $(MWINCS)

CFLAGS = -application	\
		-c				\
		-nodefaults		\
		-align powerpc	\
		-enum int		\
		-proc gekko		\
		-fp hardware	\
		-maf on			\
		-Cpp_exceptions off	\
		-DEPPC			\
		-nosyspath		\
		-w possible		\
		-w empty		\
		-w unusedvar	\
		-w extracomma	\
		-w pedantic		\
		-w largeargs	\
		-w structclass	\
		-w nohidevirtual\
		-w nounusedarg	\
		-w nonotinlined	\
		-w noimplicit	\
		-w nocmdline	\
		-DPNG_USER_MEM_SUPPORTED \
		-DPLATFORM=$(DOLPHIN_PLATFORM)

RAD_DEFINES = -DRAD_GAMECUBE -DRAD_CONSOLE


##########################################################################
# LINKER FLAGS
##########################################################################

# LDFLAGS	linker flags
# LCF		linker command file

LDFLAGS	= -nodefaults -fp hardware -g
LCF	= -lcf $(DOLPHIN_ROOT)/include/dolphin/eppc.$(DOLPHIN_PLATFORM).lcf


##########################################################################
# BUILD CONFIGURATION FLAGS
##########################################################################

ifeq ($(MAKECMDGOALS), debug)
	CFLAGS += -g -opt off -D_DEBUG -inline off 
	RAD_DEFINES += -DRAD_DEBUG
	LDFLAGS += -g
endif

ifeq ($(MAKECMDGOALS), tune)
	CFLAGS += -g -DNDEBUG -O4,p -inline auto -pragma "warn_notinlined off"
	RAD_DEFINES += -DRAD_TUNE
	LDFLAGS += -g
endif

ifeq ($(MAKECMDGOALS), release)
	CFLAGS += -DNDEBUG -O4,p -inline auto -pragma "warn_notinlined off"
	RAD_DEFINES += -DRAD_RELEASE
endif


##########################################################################
# HW PROFILE
##########################################################################

HWCONFIG =	-D$(DOLPHIN_PLATFORM) \
			-DMARLIN=DI	\
			-D__HWSIM=0	\
			-DORCA	\
			-DGEKKO	\
			-DGX_REV=2 \
			-DBUG_CLR_LOAD_DLY \
			-DGX_NO_LEGACY_HW1


##########################################################################
# PROJECT RULES
##########################################################################

all:: $(TARGET)
debug: $(TARGET)
tune: $(TARGET)
release: $(TARGET)

libs:: p3d radmath radcore scrooby
	@echo ==============================================================
	@echo  Compiling Viewer
	@echo ==============================================================

$(TARGET) : libs $(OBJECTS)
	@echo ==============================================================
	@echo  Linking Viewer
	@echo ==============================================================
	@$(LD) $(OBJECTS) $(LDFLAGS) $(LCF) $(PLATLIBS) $(RADLIBS) $(P3DLIBS) $(SCROOBYLIBS) -o $(TARGET)

run: $(TARGET)
	$(RUN) $(TARGET)

.PHONY : cleand clean
.PHONY : cleant clean
.PHONY : cleanr clean

.PHONY : p3d
p3d:
	@echo ==============================================================
	@echo  Building Pure3d
	@echo ==============================================================
	@$(MAKE) --no-print-directory -C $(PURE3D)/build/gamecube $(LIBVER)
	@echo Done

.PHONY : radmath
radmath:
	@echo ==============================================================
	@echo  Building RadMath
	@echo ==============================================================
	@$(MAKE) --no-print-directory -C $(RADMATH)/build/gamecube $(LIBVER)

.PHONY : radcore
radcore:
	@echo ==============================================================
	@echo  Building RadCore
	@echo ==============================================================
	@$(RADMAKE) -r --no-print-directory -C $(RADCORE)/build/gcn CONFIG=$(CONFIG)

.PHONY : scrooby
scrooby:
	@echo ==============================================================
	@echo  Building Scrooby
	@echo ==============================================================
	@$(MAKE) --no-print-directory -C $(SCROOBY)/build/gamecube CONFIG=$(CONFIG)


depend : $(DEPENDS)

$(OBJECTS) : $(LIBVER)/%.o : ../../%.cpp
	@echo Compiling $<
	@$(CC) $(CFLAGS) $(RAD_DEFINES) $(INCLUDE) $(PLAT_INCS) $(HWCONFIG) $< -o $@

$(DEPENDS) : $(LIBVER)/%.d : ../../%.cpp
	@echo Updating dependancies for $(notdir $<)
	@$(CC) -make -MM $(CFLAGS) $(RAD_DEFINES) $(INCLUDE) $(PLAT_INCS) $(HWCONFIG) $< | $(SED) "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@
	

.PHONY: clean cleand cleant cleanr 
clean: cleand cleant cleanr

cleand:
	@echo Deleting intermediate files for $(PRETTYNAME) Debug
	@$(RM) -f debug/*.o debug/*.d $(TARGETNAME)D.a
	
cleant:
	@echo Deleting intermediate files for $(PRETTYNAME) Tune
	@$(RM) -f tune/*.o tune/*.d $(TARGETNAME)T.a

cleanr:
	@echo Deleting intermediate files for $(PRETTYNAME) Release
	@$(RM) -f release/*.o release/*.d $(TARGETNAME)R.a

ifneq ($(MAKECMDGOALS), )
ifneq ($(MAKECMDGOALS), clean)
ifneq ($(MAKECMDGOALS), cleand)
ifneq ($(MAKECMDGOALS), cleant)
ifneq ($(MAKECMDGOALS), cleanr)

ifneq ($(DEPENDS),)
-include $(DEPENDS)
endif

endif
endif
endif
endif
endif

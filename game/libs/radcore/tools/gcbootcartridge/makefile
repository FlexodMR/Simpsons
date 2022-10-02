TARGET=gcboot.elf

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

SOURCES = main.cpp

OBJDIR = GCObj$(VERSION)

# replace .c or .cpp with .o
OBJECTS = $(addprefix $(OBJDIR)/, $(SOURCES:.cpp=.o))
DEPENDS = $(addprefix $(OBJDIR)/, $(SOURCES:.cpp=.d))


ROOT = ../../..
RADCOREDIR = $(ROOT)/radcore/build/gcn

INCLUDE = -I$(ROOT)/radcore/inc

empty		:=
space		:= $(empty) $(empty)

RADLIBNAMES = radcore
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

RM   = "$(ROOT)/build/rm.exe"
SED  = "$(ROOT)/build/sed.exe"

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

SDKLIBNAMES = base os db dvd pad card hio fileCache support si exi vi ar texPalette dsp gx

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

PLATLIBS = -L$(SDKLIBDIR) $(SDKLIBS) $(MWLIBS) $(AMCLIBS) $(ODELIBS)

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
LCF	= -lcf ./eppc.$(DOLPHIN_PLATFORM).lcf


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

libs:: radcore

$(TARGET) : libs $(OBJECTS)
	@echo Linking gcboot
	@$(LD) $(OBJECTS) $(LDFLAGS) $(LCF) $(PLATLIBS) $(RADLIBS) -o $(TARGET)

run: $(TARGET)
	$(RUN) $(TARGET)

.PHONY : cleand clean
.PHONY : cleant clean
.PHONY : cleanr clean

.PHONY : radcore
radcore:
	@$(RADMAKE) -r --no-print-directory -C $(RADCOREDIR) CONFIG=$(CONFIG)


depend : $(DEPENDS)

$(OBJECTS) : $(OBJDIR)/%.o : %.cpp
	@echo Compiling $<
	@echo $(CFLAGS) $(RAD_DEFINES) $(INCLUDE) $(PLAT_INCS) $(HWCONFIG) > cctemp
	@$(CC) @cctemp $< -o $@
	-@del cctemp

$(DEPENDS) : $(OBJDIR)/%.d : %.cpp
	@echo Updating dependancies for $(notdir $<)
	@echo $(CFLAGS) $(RAD_DEFINES) $(INCLUDE) $(PLAT_INCS) $(HWCONFIG) > deptemp
	@$(CC) -make -MM @deptemp $< | $(SED) "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@
	-@del deptemp

.PHONY: clean cleand cleant cleanr 
clean: cleand cleant cleanr

cleand:
	@echo Deleting intermediate files for $(PRETTYNAME) Debug
	-@mkdir GCObjD
	@$(RM) -f gcobjD/*.o gcobjD/*.d $(TARGETNAME)D.a
	
cleant:
	@echo Deleting intermediate files for $(PRETTYNAME) Tune
	-@mkdir GCObjT
	@$(RM) -f gcobjT/*.o gcobjT/*.d $(TARGETNAME)T.a

cleanr:
	@echo Deleting intermediate files for $(PRETTYNAME) Release
	-@mkdir GCObjR
	@$(RM) -f gcobjR/*.o gcobjR/*.d $(TARGETNAME)R.a

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

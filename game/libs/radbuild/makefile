##########################################################################
# Global makefile
##########################################################################
#
# Input Variables:
#
#	OBJDIR 		: object file (.o) directory (eg: Debug or Release)
#	SOURCEDIR 	: source directory
#	SOURCEFILES	: source file list
#	INCLUDEDIR	: include directory list
#	LIBS		: platform specific libraries
#	TARGET		: output target file name (ie: radcore)
#	EXT			: output target file surfix (ie: pr - playstation release)
#	PLAT_EXT	: file extension (ie: .a = lib, .elf = executable)
#	TARGETTYPE	: file extension define (library or executable)
#	DEFINES		: Preprocessor Definitions
#	PLATFORM	: define type of platform (ie: ps2, gcn, win32...)
#
#	Complier:
#
#		CC		: Compilier tool
#
#		COMPILERFLAGS   : Compiler flags
#		LDFLAGS		: Linker flags
#		CFLAGS		: C compiler flags
#		CXXFLAGS	: CXX compiler flags
#		HWCONFIG	: Hardware configuation
#		BUGLIST		: Bug list???
#
#
#	Dependencies tool
#
#		DP		: Dependencies tool
#
#		CPPDEPEND	: Dependencies generation flag
#		DPFLAG		:
#		DPCOMPILERFLAGS :
#		DPCFLAGS	:
#		DPDEFINE 	:
#		DPINCLUDE 	:
#		DPPLAT_INCS	:
#		DPHWCONFIG	:
#		DPBUGLIST	:
#
#
#	Linker
#
#		LD			: Linker tool
#
#		OBJS		:
#		LDFLAGS		:
#		LCF			:
#
##########################################################################

##########################################################################
# Generic variables
##########################################################################

ifndef space
empty:=
space:= $(empty) $(empty)
endif

##########################################################################
# Makefile rules
##########################################################################

# Phony target,
# 	printinfo : print debug information
.PHONY : ALL compile link printinfo clean

# delete failed targets
.DELETE_ON_ERROR :


##########################################################################
# Directory and File list
# NOTE: Include directories, objs, and libs require parsing so that
#       long file names are handled correctly
##########################################################################

TARG 	= $(TARGET)$(EXT).$(PLAT_EXT)
OBJS	+= $(patsubst %, $(OBJDIR)/%, $(patsubst %,%.o, $(notdir $(SOURCEFILES))))
LIBSTEMP1 = $(foreach lib,$(LIBS),"$(lib)")
LIBSQUOTED = $(shell "$(TEXTOUT)" $(LIBSTEMP1) | "$(SED)" 's/\\\"\ \"/ /g' )
DEPS	= $(patsubst %.o, %.d, $(OBJS))
VPATH	= $(patsubst %, $(SOURCEDIR)/%, $(dir $(SOURCEFILES)) )
DEFINE	= $(patsubst %, -D%, $(DEFINES))
INCTEMP1 = $(shell "$(TEXTOUT)" $(subst \,/,$(INCLUDEDIR)) | "$(SED)" 's/\"[^\"]*\"//g' )
INCTEMP2 = $(shell "$(TEXTOUT)" $(subst \,/,$(INCLUDEDIR)) | "$(SED)" 's/\(\"[^\"]*\"\)/-I\1/g' )
INCTEMP3 = $(filter-out $(INCTEMP1), $(INCTEMP2))
INCLUDE	= $(patsubst %, -I%, $(INCTEMP1)) $(INCTEMP3)

CURRENTDRIVE = $(shell "$(GETCURRENTDRIVE)")

##########################################################################
# TOOLS
##########################################################################

ifeq ($(OSTYPE),linux)
SED = sed
RM = rm
CP = cp
MKDIR = mkdir
ECHO = echo
TEXTOUT = echo
else
SED	= $(ROOTDIR)/radbuild/GlobalTools/sed.exe
RM	= $(ROOTDIR)/radbuild/GlobalTools/rm.exe
CP  = $(ROOTDIR)/radbuild/GlobalTools/cp.exe
MKDIR = $(ROOTDIR)/radbuild/GlobalTools/mkdir.exe
ECHO = $(ROOTDIR)/radbuild/GlobalTools/echo.exe
TEXTOUT = $(ROOTDIR)/radbuild/GlobalTools/textout.exe
GETCURRENTDRIVE = $(ROOTDIR)/radbuild/GlobalTools/GetCurrentDrive.exe
endif

##########################################################################
# PROJECT RULES
##########################################################################

.SUFFIXES: .cpp .s .c .dsm .vcl

ALL: compile link

compile: $(dir $(TARG)) $(OBJS)
	@$(ECHO) Compile Done : [$(notdir $(TARGET)) $(PLATFORM) $(CONFIG)]

link: $(TARG) 
	@$(ECHO) Link Done : [$(notdir $(TARGET)) $(PLATFORM) $(CONFIG)]
	@$(ECHO) ------------------------------------------------------------------------------


$(dir $(TARG)):
	@$(MKDIR) -p $(dir $(TARG))

##########################################################################
# Compiling
##########################################################################

#.cpp.o:
$(OBJDIR)/%.o : %.cpp $(GENERAL_DEPENDS)
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Compiling: $(notdir $<)
	@$(CC) $(CXXFLAGS) $(DEFINE) $(INCLUDE) $< -o $@

#.c.o:
$(OBJDIR)/%.o : %.c $(GENERAL_DEPENDS)
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Compiling: $(notdir $<)
	@$(CC) $(CFLAGS) $(DEFINE) $(INCLUDE) $< -o $@

ifeq ($(PLATFORM),PS2EE)
#.s.o:
$(OBJDIR)/%.o : %.s
	@$(MKDIR) -p $(OBJDIR) 
	@$(ECHO) Assembling: $(notdir $< )
	@$(CC) $(ASFLAGS) $(DEFINE) $(INCLUDE) -o $@ $< 

# run .dsm files through c preprocessor before assembling
#.dsm.o:
$(OBJDIR)/%.o : %.dsm $(GENERAL_DEPENDS)
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Assembling: $(notdir $< )
	@$(EEGCC) -x assembler-with-cpp $(INCLUDE) -E $< -o $@.tmp
	@$(DVPASM) $(DVPASMFLAGS) $(INCLUDE) $@.tmp -o $@

#.vcl.o:
$(OBJDIR)/%.o : %.vcl $(GENERAL_DEPENDS)
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Assembling: $(notdir $< )
	@$(VCL) $(VCLFLAGS) -o $@ $< 
endif

ifeq ($(PLATFORM),PS2MW)
#.s.o:
$(OBJDIR)/%.o : %.s
	@$(MKDIR) -p $(OBJDIR) 
	@$(ECHO) Assembling: $(notdir $< )
	@$(AS) $(ASFLAGS) -o $@ $<

#.dsm.o:
$(OBJDIR)/%.o : %.dsm $(GENERAL_DEPENDS)
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Assembling: $(notdir $< )
	@$(EEGCC) -x assembler-with-cpp $(INCLUDE) -E $< -o $@.tmp
	@$(DVPASM) $@.tmp $(DVPASMFLAGS) $(INCLUDE) -o $@
endif

##########################################################################
# Dependencies
##########################################################################

#.cpp.d:
$(OBJDIR)/%.d : %.cpp
	@$(MKDIR) -p $(OBJDIR) 
	@$(ECHO) Dependencies: $(notdir $< )
	@$(DP) $< $(DPFLAG) $(DEFINE) $(INCLUDE) -f$@

#.c.d:	
$(OBJDIR)/%.d: %.c
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Dependencies: $(notdir $< )
	@$(DP) $< $(DPFLAG) $(DEFINE) $(INCLUDE) -f$@

#.dsm.d:
$(OBJDIR)/%.d : %.dsm
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Dependencies: $(notdir $< )
	@$(EEGCC) -M $(DEFINE) $(INCLUDE) -x assembler-with-cpp $< > $@.tmp
	@$(PERL) $(FIXDEP) $@.tmp $(@:.d=.o) $@

#.vcl.d:
$(OBJDIR)/%.d : %.vcl
	@$(MKDIR) -p $(OBJDIR)
	@$(ECHO) Dependencies: $(notdir $< )
	@$(EEGCC) -M $(DPPREPROCFLAGS) $(DEFINE) $(INCLUDE) -x assembler-with-cpp $< > $@.tmp
	@$(PERL) $(FIXDEP) $@.tmp $(@:.d=.o) $@

##########################################################################
# Linking
##########################################################################

ifeq ($(PLATFORM),PS2EE)
ifeq ($(TARGETTYPE),LIBRARY)
$(TARG): $(OBJS)
	@$(ECHO) Removing Old Library: $(notdir $@)
	@$(RM) -f $@

	@$(ECHO) Creating New Library: $(notdir $@)
	@$(AR) $(ARFLAGS) $(TARG) $(OBJS) 
	@$(RANLIB) $(TARG)
else
$(TARG): $(LIBS) $(OBJS)
	@$(ECHO) Removing Old Executable: $(notdir $@)
	@$(ECHO) Creating New Executable: $(notdir $@)
	@$(RM) -f $@
	@$(LD) -T $(LCF) $(OBJS) $(LIBS) $(SYSTEMLIBS) $(LDFLAGS) $(EXE_OBJS) -o $(TARG)
endif
endif

ifeq ($(PLATFORM),PS2MW)
ifeq ($(TARGETTYPE),LIBRARY)
$(TARG): $(OBJS)
	@$(ECHO) Removing Old Library: $(notdir $@)
	@$(RM) -f $@
	@$(ECHO) Creating New Library: $(notdir $@)
	@$(AR) $(LDFLAGS) $(OBJS) -library -o $(TARG)
else
$(TARG): $(LIBS) $(OBJS) libs 
	@$(ECHO) Removing Old Executable: $(notdir $@)
	@$(ECHO) Creating New Executable: $(notdir $@)
	@$(RM) -f $@
	@$(LD) $(LCF) $(OBJS) $(LIBS) $(SYSTEMLIBS) $(EXE_OBJS) $(LDFLAGS) -o $(TARG) -m _start
endif
endif

ifeq ($(PLATFORM),GCN)
ifeq ($(TARGETTYPE),LIBRARY)
$(TARG) : $(DEPS) $(OBJS) 
	@$(ECHO) Removing Old Library: $(notdir $@)
	@$(RM) -f $@	
	@$(ECHO) Creating New Library: $(notdir $@)
	@$(LD) $(LCF) $(OBJS) $(LDFLAGS) -o $(TARG)
else
$(TARG) : $(DEPS) $(LIBS) $(OBJS) 
	@$(ECHO) Removing Old Executable: $(notdir $@)
	@$(RM) -f $@
	@$(ECHO) Creating New Executable: $(notdir $@)
	@$(LD) $(LCF) $(OBJS) $(LIBS) $(SDKLIBS) $(LDFLAGS) -o $(TARG)
endif
endif

clean: 
	@$(ECHO) ------------------------------------------
	@$(ECHO) Cleaning : [$(notdir $(TARGET)) $(PLATFORM) $(CONFIG)]
	@$(RM) -rf $(OBJDIR)
	@$(RM) -rf $(TARG)
	@$(ECHO) ------------------------------------------


##########################################################################
# For debugging
##########################################################################
printinfo : 
	@$(ECHO) =============================================
	@$(ECHO) FLAGS: $(FLAGS)
	@$(ECHO) =============================================
	@$(ECHO) SOURCEFILES: $(SOURCEFILES)
	@$(ECHO) =============================================
	@$(ECHO) SOURCEDIR: $(SOURCEDIR)
	@$(ECHO) =============================================
	@$(ECHO) OBJS: $(OBJS)
	@$(ECHO) =============================================
	@$(ECHO) DEPS: $(DEPS)
	@$(ECHO) =============================================
	@$(ECHO) VPATH: $(VPATH)
	@$(ECHO) =============================================

# make sure to leave a empty line at the end of included files

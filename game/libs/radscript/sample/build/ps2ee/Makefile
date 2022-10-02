#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

#PLATFORM=PS2EE
#PLAT_PREFIX=ee
#PLAT_DIR=ps2ee

always : crt0.o libs ALL typeinfo scriptfile


clean : libsclean

include files.txt

include $(ROOTDIR)\radscript\build\ps2ee\radscript.m
include $(ROOTDIR)\radcore\build\ps2ee\radcore.m

#================================
# PS2 specific configuation
#================================
include $(ROOTDIR)\radbuild\config.ps2

#================================
# Our global makefile
#================================
include $(ROOTDIR)\radbuild\makefile

typeinfo :
	@"..\..\..\tools\bin\ridl.exe" "-I..\..\..\..\radcore\inc\radobject.hpp" "-i..\..\inc\radtstobj.hpp" "-o..\..\bin\ps2\tip.typ"

scriptfile :
	@xcopy "..\..\script\*.*" "..\..\bin\ps2\" /D /E /I /R /Y

#===========================================
# Inlcude dependencies, **must be included**
#===========================================
ifeq ($(DOCLEAN),false)
-include $(DEPS)
endif

#####################################################################
#
# PRECOMPILER PROCESS REQUIRED TO GENERATE ELF FILE
#
#####################################################################
crt0.o: $(SONY)/lib/crt0.s
	@$(CC) $(ASFLAGS) -o $@ $< > $*.lst

EXE_OBJS += crt0.o

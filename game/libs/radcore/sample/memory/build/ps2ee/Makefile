#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

always : crt0.o libs ALL

clean : libsclean

include files.txt

include $(ROOTDIR)\radcore\build\ps2ee\radcore.m

#================================
# PS2 specific configuation
#================================
include $(ROOTDIR)\radbuild\config.ps2

#================================
# Our global makefile
#================================
include ..\..\..\..\..\radbuild\makefile

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

#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================
always : crt0.o ALL

include files.txt

#include ..\metabuild\pure3d.m
#include $(ROOTDIR)\radsound\build\ps2ee\radsound.m
#include $(ROOTDIR)\radscript\build\ps2ee\radscript.m
#include $(ROOTDIR)\radcore\build\ps2ee\radcore.m

#================================
# PS2 specific configuation
#================================
include $(ROOTDIR)\radbuild\config.ps2

#================================
# Our global makefile
#================================
include $(ROOTDIR)\radbuild\makefile

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
	@echo doing this first
	@$(CC) $(ASFLAGS) -o $@ $< > crt0.lst

EXE_OBJS += crt0.o

crt0clean: $(SONY)/lib/crt0.s
	$(RM) crt0.o
	$(RM) crt0.lst
#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================
include files.txt

#================================
# PS2 specific configuation
#================================
include $(ROOTDIR)/radbuild/config.ps2mw

#================================
# Our global makefile
#================================
include $(ROOTDIR)/radbuild/makefile

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
	@$(CC) $(ASFLAGS) -o $@ $< > $*.lst

EXE_OBJS += crt0.o

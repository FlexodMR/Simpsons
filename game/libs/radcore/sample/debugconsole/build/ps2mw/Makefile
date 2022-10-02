#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

always : gcc_wrapper.o libs ALL

clean : libsclean

include files.txt

include $(ROOTDIR)\radcore\build\ps2mw\radcore.m

#================================
# PS2 specific configuation
#================================
include $(ROOTDIR)\radbuild\config.ps2mw

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
#crt0.o: $(SONY)/lib/crt0.s
#	$(AS) $(ASFLAGS) -o $@ $< > $*.lst

gcc_wrapper.o: $(MWDIR)/PS2SUP~1/gcc_wrapper.c
	@$(CC) $(CFLAGS) -o $@ $< > $*.lst


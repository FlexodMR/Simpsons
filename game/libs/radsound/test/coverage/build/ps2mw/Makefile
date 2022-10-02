#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

always : iop art gcc_wrapper.o libs ALL

clean : libsclean iopclean

include files.txt

iop:
	@$(ECHO) ===============================================================================
	@$(ECHO) Launching Iop Build
	@$(ECHO) ===============================================================================
	@$(ROOTDIR)/radbuild/globaltools/make -r --no-print-directory -C $(ROOTDIR)/radsound/build/ps2iop/

iopclean:
	@$(ECHO) ===============================================================================
	@$(ECHO) Cleaning Iop Build
	@$(ECHO) ===============================================================================
	@$(ROOTDIR)/radbuild/globaltools/make -r --no-print-directory -C $(ROOTDIR)/radsound/build/ps2iop/ clean

art:
	@$(ECHO) ===============================================================================
	@$(ECHO) Launching Art Build
	@$(ECHO) ===============================================================================
	@$(ROOTDIR)/radbuild/globaltools/make -r --no-print-directory -C $(ROOTDIR)/radsound/test/coverage/build/art


include $(ROOTDIR)\radcore\build\ps2mw\radcore.m
include $(ROOTDIR)\radsound\build\ps2mw\radsound.m

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


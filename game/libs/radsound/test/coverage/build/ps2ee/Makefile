#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

ECHO=$(ROOTDIR)/radbuild/globaltools/echo.exe
PLATFORM=PS2EE
PLAT_PREFIX=ee
PLAT_DIR=ps2ee

always : iop art crt0.o libs ALL

include files.txt

iop:
	@$(ECHO) ===============================================================================
	@$(ECHO) Launching Iop Build
	@$(ECHO) ===============================================================================
#	@$(ROOTDIR)/radbuild/globaltools/make -r --no-print-directory -C $(ROOTDIR)/radsound/build/ps2iop/

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

clean : libsclean iopclean


include $(ROOTDIR)\radsound\build\ps2ee\radsound.m
include $(ROOTDIR)\radcore\build\ps2ee\radcore.m

#================================
# PS2EE specific configuation
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
	@$(CC) $(ASFLAGS) -o $@ $< > $*.lst

EXE_OBJS += crt0.o


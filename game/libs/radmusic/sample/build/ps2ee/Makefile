#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

PLATFORM=PS2EE
PLAT_PREFIX=ee
PLAT_DIR=ps2ee

always : crt0.o libs ALL

include files.txt

clean : libsclean

include $(ROOTDIR)\radmusic\build\ps2ee\radmusic.m
include $(ROOTDIR)\radsound\build\ps2ee\radsound.m
include $(ROOTDIR)\radcore\build\ps2ee\radcore.m
include $(ROOTDIR)\radcontent\build\ps2\radcontent.m

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


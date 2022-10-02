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

always : libs ALL

include files.txt

clean : libsclean

include $(ROOTDIR)\radsound\build\gcn\radsound.m
include $(ROOTDIR)\radcore\build\gcn\radcore.m

#================================
# GCN specific configuation
#================================
include $(ROOTDIR)\radbuild\config.gcn

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


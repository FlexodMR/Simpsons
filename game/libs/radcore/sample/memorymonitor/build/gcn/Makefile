#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

always : libs ALL

clean : libsclean

include files.txt

include $(ROOTDIR)/radcore/build/gcn/radcore.m

#================================
# PS2 specific configuation
#================================
include $(ROOTDIR)/radbuild/config.gcn

#================================
# Our global makefile
#================================
include ../../../../../radbuild/makefile

#===========================================
# Inlcude dependencies, **must be included**
#===========================================
ifeq ($(DOCLEAN),false)
-include $(DEPS)
endif


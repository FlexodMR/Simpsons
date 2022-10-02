#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================
PS2LINKER = SNLINKER

always : crt0.o libs ALL

clean : libsclean

include files.txt

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

#####################################################################
#
# PRECOMPILER PROCESS REQUIRED TO GENERATE ELF FILE
#
#####################################################################

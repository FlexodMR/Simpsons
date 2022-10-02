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

always : libs ALL typeinfo scriptfile

include files.txt

clean : libsclean

include $(ROOTDIR)\radscript\build\gcn\radscript.m
include $(ROOTDIR)\radcore\build\gcn\radcore.m

#================================
# GCN specific configuation
#================================
include $(ROOTDIR)\radbuild\config.gcn

#================================
# Our global makefile
#================================
include $(ROOTDIR)\radbuild\makefile

typeinfo :
	@"..\..\..\tools\bin\ridl.exe" "-I..\..\..\..\radcore\inc\radobject.hpp" "-i..\..\inc\radtstobj.hpp" "-o..\..\bin\gcn\tig.typ"

scriptfile :
	@xcopy "..\..\script\*.*" "..\..\bin\gcn\" /D /E /I /R /Y
	@xcopy "..\..\bin\gcn\*.*" "D:\defroot\" /D /E /R /Y /I

#===========================================
# Inlcude dependencies, **must be included**
#===========================================
ifeq ($(DOCLEAN),false)
-include $(DEPS)
endif


# Microsoft Developer Studio Project File - Name="p3dDeformerMaya4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=p3dDeformerMaya4 - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dDeformerMaya4.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dDeformerMaya4.mak" CFG="p3dDeformerMaya4 - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dDeformerMaya4 - Win32 Tools Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "p3dDeformerMaya4 - Win32 Tools Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dDeformerMaya4"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "p3dDeformerMaya4___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "p3dDeformerMaya4___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release4"
# PROP Intermediate_Dir "Release4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\..\sdks\Maya4_0\include" /D "NDEBUG" /D "P3DDEFORMERMAYA4_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NT_PLUGIN" /D "MAYA4_0" /YX /FD /c
# SUBTRACT BASE CPP /Fr
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\..\sdks\Maya4_0\include" /D "NDEBUG" /D "RAD_TUNE" /D "RAD_WIN32" /D "RAD_PC" /D "P3DDEFORMERMAYA4_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NT_PLUGIN" /YX /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaAnim.lib version.lib /nologo /dll /machine:I386 /out:"Release4/p3dDeformer.mll" /libpath:"..\..\..\..\sdks\Maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /profile
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaAnim.lib version.lib /nologo /dll /machine:I386 /out:"Release4/p3dDeformer.mll" /libpath:"..\..\..\..\sdks\Maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /profile
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Desc=copying MLL to maya dir
PostBuild_Cmds=copyreleasemll40
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dDeformerMaya4___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "p3dDeformerMaya4___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug4"
# PROP Intermediate_Dir "Debug4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\..\..\..\sdks\Maya4_0\include" /D "_DEBUG" /D "P3DDEFORMERMAYA4_EXPORTS" /D "MAYA4_0" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NT_PLUGIN" /FR /YX /FD /GZ /c
# ADD CPP /nologo /MD /W3 /Gm /GX /ZI /Od /I "..\..\..\..\sdks\Maya4_0\include" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /D "P3DDEFORMERMAYA4_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NT_PLUGIN" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaAnim.lib version.lib /nologo /dll /debug /machine:I386 /out:"Debug4/p3dDeformer.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\Maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /profile /pdb:none /incremental:no
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaAnim.lib version.lib /nologo /dll /debug /machine:I386 /out:"Debug4/p3dDeformer.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\Maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /profile /pdb:none /incremental:no
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Desc=copying MLL to maya dir
PostBuild_Cmds=copydebugmll40
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dDeformerMaya4 - Win32 Tools Release"
# Name "p3dDeformerMaya4 - Win32 Tools Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\common.cpp
# End Source File
# Begin Source File

SOURCE=.\expressionGroup.cpp
# End Source File
# Begin Source File

SOURCE=.\expressionGroupCreateCmd.cpp
# End Source File
# Begin Source File

SOURCE=.\expressionState.cpp
# End Source File
# Begin Source File

SOURCE=.\expressionStateCreateCmd.cpp
# End Source File
# Begin Source File

SOURCE=..\common\src\GetVersionString.cpp
# End Source File
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=.\meshNeutral.cpp
# End Source File
# Begin Source File

SOURCE=.\meshNeutralUpdateCmd.cpp
# End Source File
# Begin Source File

SOURCE=.\snapMesh.cpp
# End Source File
# Begin Source File

SOURCE=.\utility.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\common.hpp
# End Source File
# Begin Source File

SOURCE=.\expressionGroup.hpp
# End Source File
# Begin Source File

SOURCE=.\expressionGroupCreateCmd.hpp
# End Source File
# Begin Source File

SOURCE=.\expressionState.hpp
# End Source File
# Begin Source File

SOURCE=.\expressionStateCreateCmd.hpp
# End Source File
# Begin Source File

SOURCE=..\common\inc\GetVersionString.hpp
# End Source File
# Begin Source File

SOURCE=.\meshNeutral.hpp
# End Source File
# Begin Source File

SOURCE=.\meshNeutralUpdateCmd.hpp
# End Source File
# Begin Source File

SOURCE=.\snapMesh.hpp
# End Source File
# Begin Source File

SOURCE=.\utility.hpp
# End Source File
# End Group
# Begin Group "Scripts"

# PROP Default_Filter ".mll"
# Begin Source File

SOURCE=.\scripts\buildObjectMenuItemsNow.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\buildObjectMenuItemsNow.mel
InputName=buildObjectMenuItemsNow

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\buildObjectMenuItemsNow.mel
InputName=buildObjectMenuItemsNow

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\deformerTestScript.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\deformerTestScript.mel
InputName=deformerTestScript

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\deformerTestScript.mel
InputName=deformerTestScript

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformAnimationFuncs.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformAnimationFuncs.mel
InputName=p3dDeformAnimationFuncs

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformAnimationFuncs.mel
InputName=p3dDeformAnimationFuncs

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformAnimationUI.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformAnimationUI.mel
InputName=p3dDeformAnimationUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformAnimationUI.mel
InputName=p3dDeformAnimationUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformAnimSliders.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformAnimSliders.mel
InputName=p3dDeformAnimSliders

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformAnimSliders.mel
InputName=p3dDeformAnimSliders

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformCallbackMgr.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformCallbackMgr.mel
InputName=p3dDeformCallbackMgr

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformCallbackMgr.mel
InputName=p3dDeformCallbackMgr

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformConvert.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformConvert.mel
InputName=p3dDeformConvert

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformConvert.mel
InputName=p3dDeformConvert

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformCreateTabbedUI.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformCreateTabbedUI.mel
InputName=p3dDeformCreateTabbedUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformCreateTabbedUI.mel
InputName=p3dDeformCreateTabbedUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformDebug.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformDebug.mel
InputName=p3dDeformDebug

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformDebug.mel
InputName=p3dDeformDebug

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformDraggerCtx.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformDraggerCtx.mel
InputName=p3dDeformDraggerCtx

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformDraggerCtx.mel
InputName=p3dDeformDraggerCtx

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformDraggerCtxWindowLayout.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformDraggerCtxWindowLayout.mel
InputName=p3dDeformDraggerCtxWindowLayout

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformDraggerCtxWindowLayout.mel
InputName=p3dDeformDraggerCtxWindowLayout

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformGeneral.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformGeneral.mel
InputName=p3dDeformGeneral

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformGeneral.mel
InputName=p3dDeformGeneral

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformHotKeys.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformHotKeys.mel
InputName=p3dDeformHotKeys

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformHotKeys.mel
InputName=p3dDeformHotKeys

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformInstall.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformInstall.mel
InputName=p3dDeformInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformInstall.mel
InputName=p3dDeformInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformMakeAnimGroupLayouts.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformMakeAnimGroupLayouts.mel
InputName=p3dDeformMakeAnimGroupLayouts

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformMakeAnimGroupLayouts.mel
InputName=p3dDeformMakeAnimGroupLayouts

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformModellingFuncs.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformModellingFuncs.mel
InputName=p3dDeformModellingFuncs

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformModellingFuncs.mel
InputName=p3dDeformModellingFuncs

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformModellingUI.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformModellingUI.mel
InputName=p3dDeformModellingUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformModellingUI.mel
InputName=p3dDeformModellingUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformPruneExpression.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformPruneExpression.mel
InputName=p3dDeformPruneExpression

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformPruneExpression.mel
InputName=p3dDeformPruneExpression

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformScriptTestFuncs.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformScriptTestFuncs.mel
InputName=p3dDeformScriptTestFuncs

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformScriptTestFuncs.mel
InputName=p3dDeformScriptTestFuncs

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dDeformSnapToReferenceMesh.mel

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformSnapToReferenceMesh.mel
InputName=p3dDeformSnapToReferenceMesh

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dDeformSnapToReferenceMesh.mel
InputName=p3dDeformSnapToReferenceMesh

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "Images"

# PROP Default_Filter ".bmp"
# Begin Source File

SOURCE=.\images\p3dDeformConvert.bmp

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build
InputPath=.\images\p3dDeformConvert.bmp
InputName=p3dDeformConvert

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\images\p3dDeformConvert.bmp
InputName=p3dDeformConvert

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\images\p3dDeformCopy.bmp

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build
InputPath=.\images\p3dDeformCopy.bmp
InputName=p3dDeformCopy

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\images\p3dDeformCopy.bmp
InputName=p3dDeformCopy

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\images\p3dDeformPrune.bmp

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build
InputPath=.\images\p3dDeformPrune.bmp
InputName=p3dDeformPrune

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\images\p3dDeformPrune.bmp
InputName=p3dDeformPrune

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\images\p3dDeformSetup.bmp

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build
InputPath=.\images\p3dDeformSetup.bmp
InputName=p3dDeformSetup

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\images\p3dDeformSetup.bmp
InputName=p3dDeformSetup

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\images\p3dDeformSnapToReferenceMesh.bmp

!IF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Release"

# Begin Custom Build
InputPath=.\images\p3dDeformSnapToReferenceMesh.bmp
InputName=p3dDeformSnapToReferenceMesh

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dDeformerMaya4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\images\p3dDeformSnapToReferenceMesh.bmp
InputName=p3dDeformSnapToReferenceMesh

"c:\aw\maya4.0\icons\$(InputName).bmp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /y images\$(InputName).bmp c:\aw\maya4.0\icons 
	attrib -r c:\aw\maya4.0\icons\$(InputName).bmp 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "Resources"

# PROP Default_Filter "*.rc"
# Begin Source File

SOURCE=.\p3dDeformer.rc
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\copydebugmll40.bat
# End Source File
# Begin Source File

SOURCE=.\copyreleasemll40.bat
# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="p3dParticleSystem4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=p3dParticleSystem4 - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dParticleSystem4.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dParticleSystem4.mak" CFG="p3dParticleSystem4 - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dParticleSystem4 - Win32 Tools Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "p3dParticleSystem4 - Win32 Tools Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dParticleSystem4"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "p3dParticleSystem4___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "p3dParticleSystem4___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release4"
# PROP Intermediate_Dir "Release4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /I "../../../../sdks/maya4_0/include" /I "inc" /I "shader" /I "src" /D "NT_PLUGIN" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "MAYA_4" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../../../../sdks/maya4_0/include" /I "inc" /I "shader" /I "src" /I "../../../../lib" /D "NDEBUG" /D "NT_PLUGIN" /D "WIN32" /D "_WINDOWS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /i "..\inc" /d "NDEBUG"
# ADD RSC /l 0x1009 /i "..\inc" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib image.lib version.lib /nologo /dll /machine:I386 /out:"Release4/p3dParticleSystem.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib image.lib version.lib /nologo /dll /machine:I386 /out:"Release4/p3dParticleSystem.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copyreleasemll4
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dParticleSystem4___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "p3dParticleSystem4___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug4"
# PROP Intermediate_Dir "Debug4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "../../../../sdks/maya4_0/include" /I "inc" /I "shader" /I "src" /D "NT_PLUGIN" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "MAYA_4" /FR /YX /FD /GZ /c
# ADD CPP /nologo /MD /W3 /Gm /GR /GX /ZI /Od /I "../../../../sdks/maya4_0/include" /I "inc" /I "shader" /I "src" /I "../../../../lib" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /D "NT_PLUGIN" /D "WIN32" /D "_WINDOWS" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /i "..\inc" /d "_DEBUG"
# ADD RSC /l 0x1009 /i "..\inc" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 opengl32.lib glu32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib image.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib /nologo /dll /debug /machine:I386 /out:"Debug4/p3dParticleSystem.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 opengl32.lib glu32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib image.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib /nologo /dll /debug /machine:I386 /out:"Debug4/p3dParticleSystem.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copydebugmll4
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dParticleSystem4 - Win32 Tools Release"
# Name "p3dParticleSystem4 - Win32 Tools Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\particleShape.cpp
# End Source File
# Begin Source File

SOURCE=.\src\particleSystem.cpp
# End Source File
# Begin Source File

SOURCE=.\src\particleUtility.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\inc\particleConstants.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\particleShape.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\particleSystem.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\particleUtility.hpp
# End Source File
# End Group
# Begin Group "mel"

# PROP Default_Filter "*.mel"
# Begin Source File

SOURCE=.\mel\AEp3dEmitterBlendStateNodeTemplate.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dEmitterBlendStateNodeTemplate.mel
InputName=AEp3dEmitterBlendStateNodeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dEmitterBlendStateNodeTemplate.mel
InputName=AEp3dEmitterBlendStateNodeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dEmitterShapeTemplate.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dEmitterShapeTemplate.mel
InputName=AEp3dEmitterShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dEmitterShapeTemplate.mel
InputName=AEp3dEmitterShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dPartSystemShapeTemplate.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dPartSystemShapeTemplate.mel
InputName=AEp3dPartSystemShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dPartSystemShapeTemplate.mel
InputName=AEp3dPartSystemShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\..\exporters\p3dmayaexp\mel\AEp3dRenderStatsTemplate.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=..\..\..\exporters\p3dmayaexp\mel\AEp3dRenderStatsTemplate.mel
InputName=AEp3dRenderStatsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=..\..\..\exporters\p3dmayaexp\mel\AEp3dRenderStatsTemplate.mel
InputName=AEp3dRenderStatsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dParticleInstall.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dParticleInstall.mel
InputName=p3dParticleInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dParticleInstall.mel
InputName=p3dParticleInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dParticleTools.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dParticleTools.mel
InputName=p3dParticleTools

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dParticleTools.mel
InputName=p3dParticleTools

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dParticleUI.mel

!IF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dParticleUI.mel
InputName=p3dParticleUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dParticleSystem4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dParticleUI.mel
InputName=p3dParticleUI

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "Resources"

# PROP Default_Filter "*.rc"
# Begin Source File

SOURCE=.\src\p3dParticleSystem.rc
# ADD BASE RSC /l 0x1009 /i "src"
# SUBTRACT BASE RSC /i "..\inc"
# ADD RSC /l 0x1009 /i "src" /i "inc"
# SUBTRACT RSC /i "..\inc"
# End Source File
# Begin Source File

SOURCE=.\src\resource.h
# End Source File
# End Group
# Begin Group "build"

# PROP Default_Filter "*.bat"
# Begin Source File

SOURCE=.\copydebugmll4.bat
# End Source File
# Begin Source File

SOURCE=.\copyreleasemll4.bat
# End Source File
# End Group
# End Target
# End Project

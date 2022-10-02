# Microsoft Developer Studio Project File - Name="p3dBoundingVolume4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=p3dBoundingVolume4 - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dBoundingVolume4.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dBoundingVolume4.mak" CFG="p3dBoundingVolume4 - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dBoundingVolume4 - Win32 Tools Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "p3dBoundingVolume4 - Win32 Tools Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dBoundingVolume4"
# PROP Scc_LocalPath ".."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dBoundingVolume4___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "p3dBoundingVolume4___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug4"
# PROP Intermediate_Dir "Debug4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G6 /MTd /W3 /Gm /GR /GX /ZI /Od /I "." /I "inc" /I "..\..\..\..\toollib\inc" /I "..\..\..\..\toollib\chunks16\inc" /I "..\..\..\..\constants" /I "..\..\..\..\sdks\maya4_0\include" /I "..\..\..\..\lib" /D "NT_PLUGIN" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "MAYA_4" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /FR /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MD /W3 /Gm /GR /GX /ZI /Od /I "." /I "inc" /I "..\..\..\..\toollib\inc" /I "..\..\..\..\toollib\chunks16\inc" /I "..\..\..\..\constants" /I "..\..\..\..\sdks\maya4_0\include" /I "..\..\..\..\lib" /I "../../../../../radmath" /D "_DEBUG" /D "RAD_DEBUG" /D "NT_PLUGIN" /D "WIN32" /D "_WINDOWS" /D "RAD_WIN32" /D "RAD_PC" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib version.lib /nologo /dll /map /debug /machine:I386 /nodefaultlib:"libc" /out:"Debug4/p3dBoundingVolume.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib version.lib /nologo /dll /map /debug /machine:I386 /nodefaultlib:"libc.lib" /nodefaultlib:"libcmt.lib" /nodefaultlib:"libcd.lib" /nodefaultlib:"libcmtd.lib" /nodefaultlib:"msvcrtd.lib" /out:"Debug4/p3dBoundingVolume.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copydebugmll40
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "p3dBoundingVolume4___Win32_Tools_Release0"
# PROP BASE Intermediate_Dir "p3dBoundingVolume4___Win32_Tools_Release0"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release4"
# PROP Intermediate_Dir "Release4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /O2 /I "." /I "inc" /I "..\..\..\..\toollib\inc" /I "..\..\..\..\toollib\chunks16\inc" /I "..\..\..\..\constants" /I "..\..\..\..\sdks\maya4_0\include" /I "..\..\..\..\lib" /D "NT_PLUGIN" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "MAYA_4" /D "RAD_TUNE" /D "RAD_WIN32" /D "RAD_PC" /FR /YX /FD /c
# ADD CPP /nologo /G6 /MD /W3 /GR /GX /O2 /I "." /I "inc" /I "..\..\..\..\toollib\inc" /I "..\..\..\..\toollib\chunks16\inc" /I "..\..\..\..\constants" /I "..\..\..\..\sdks\maya4_0\include" /I "..\..\..\..\lib" /I "../../../../../radmath" /D "NDEBUG" /D "RAD_TUNE" /D "NT_PLUGIN" /D "WIN32" /D "_WINDOWS" /D "RAD_WIN32" /D "RAD_PC" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib version.lib /nologo /dll /incremental:yes /map /machine:I386 /out:"Release4/p3dBoundingVolume.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 opengl32.lib glu32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib winmm.lib version.lib /nologo /dll /incremental:yes /map /machine:I386 /nodefaultlib:"libc.lib" /nodefaultlib:"libcmt.lib" /nodefaultlib:"libcd.lib" /nodefaultlib:"libcmtd.lib" /nodefaultlib:"msvcrtd.lib" /out:"Release4/p3dBoundingVolume.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copyreleasemll40
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dBoundingVolume4 - Win32 Tools Debug"
# Name "p3dBoundingVolume4 - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\boundingFactoryCommands.cpp
# End Source File
# Begin Source File

SOURCE=.\src\boundingShape.cpp
# End Source File
# Begin Source File

SOURCE=.\src\boundingShapeUI.cpp
# End Source File
# Begin Source File

SOURCE=.\src\boundingUtility.cpp
# End Source File
# Begin Source File

SOURCE=.\src\boundingVolume.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dCloneBoundingVolume.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\inc\boundingConstants.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\boundingFactoryCommands.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\boundingShape.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\boundingShapeUI.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\boundingUtility.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\boundingVolume.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\p3dCloneBoundingVolume.hpp
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\src\p3dBoundingVolume.rc
# End Source File
# Begin Source File

SOURCE=.\src\resource.h
# End Source File
# End Group
# Begin Group "mel"

# PROP Default_Filter ".mel"
# Begin Source File

SOURCE=.\mel\AEmeshP3dRevision.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEmeshP3dRevision.mel
InputName=AEmeshP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEmeshP3dRevision.mel
InputName=AEmeshP3dRevision

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dBoundNodeShapeTemplate.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\mel\AEp3dBoundNodeShapeTemplate.mel
InputName=AEp3dBoundNodeShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dBoundNodeShapeTemplate.mel
InputName=AEp3dBoundNodeShapeTemplate

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dBoundVolShapeTemplate.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\mel\AEp3dBoundVolShapeTemplate.mel
InputName=AEp3dBoundVolShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dBoundVolShapeTemplate.mel
InputName=AEp3dBoundVolShapeTemplate

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dPhysicsTemplate.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dPhysicsTemplate.mel
InputName=AEp3dPhysicsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\AEp3dPhysicsTemplate.mel
InputName=AEp3dPhysicsTemplate

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dBoundingTools.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\mel\p3dBoundingTools.mel
InputName=p3dBoundingTools

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dBoundingTools.mel
InputName=p3dBoundingTools

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dBoundVolInstall.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\mel\p3dBoundVolInstall.mel
InputName=p3dBoundVolInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dBoundVolInstall.mel
InputName=p3dBoundVolInstall

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dSetAttribute.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build
InputPath=.\mel\p3dSetAttribute.mel
InputName=p3dSetAttribute

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=.\mel\p3dSetAttribute.mel
InputName=p3dSetAttribute

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\..\exporters\p3dmayaexp\mel\p3dtags.mel

!IF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=..\..\..\exporters\p3dmayaexp\mel\p3dtags.mel
InputName=p3dtags

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBoundingVolume4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL on $(InputPath)
InputPath=..\..\..\exporters\p3dmayaexp\mel\p3dtags.mel
InputName=p3dtags

"C:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\aw\maya4.0\scripts\others\$(InputName).mel 
	rem attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "build"

# PROP Default_Filter "*.bat"
# Begin Source File

SOURCE=.\copydebugmll40.bat
# End Source File
# Begin Source File

SOURCE=.\copyreleasemll40.bat
# End Source File
# End Group
# End Target
# End Project

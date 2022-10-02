# Microsoft Developer Studio Project File - Name="p3dMeshWave" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=p3dMeshWave - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dMeshWave.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dMeshWave.mak" CFG="p3dMeshWave - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dMeshWave - Win32 Tools Debug" (based on "Win32 (x86) Application")
!MESSAGE "p3dMeshWave - Win32 Tools Release" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dMeshWave"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dMeshWave - Win32 Tools Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Tools Debug"
# PROP BASE Intermediate_Dir "Tools Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug4"
# PROP Intermediate_Dir "Debug4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "." /I "C:\AW\Maya4.0\include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "NT_PLUGIN" /YX /FD /GZ /c
# ADD CPP /nologo /MD /W3 /Gm /GX /ZI /Od /I "." /I "..\..\sdks\maya4_0\include" /I "../../../../lib" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "NT_PLUGIN" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 Foundation.lib OpenMaya.lib OpenMayaAnim.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"Debug\p3dMeshWave.mll" /pdbtype:sept /libpath:"C:\AW\Maya4.0\lib" /export:initializePlugin /export:uninitializePlugin
# ADD LINK32 Foundation.lib OpenMaya.lib OpenMayaAnim.lib version.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"Debug4/p3dMeshWave.mll" /pdbtype:sept /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copydebugmll
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dMeshWave - Win32 Tools Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Tools Release"
# PROP BASE Intermediate_Dir "Tools Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release4"
# PROP Intermediate_Dir "Release4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /I "." /I "C:\AW\Maya4.0\include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "NT_PLUGIN" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "." /I "..\..\sdks\maya4_0\include" /I "../../../../lib" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "NT_PLUGIN" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 Foundation.lib OpenMaya.lib OpenMayaAnim.lib /nologo /subsystem:windows /dll /machine:I386 /out:"Release\p3dMeshWave.mll" /libpath:"C:\AW\Maya4.0\lib" /export:initializePlugin /export:uninitializePlugin
# ADD LINK32 Foundation.lib OpenMaya.lib OpenMayaAnim.lib version.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386 /out:"Release4\p3dMeshWave.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copyreleasemll.bat
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dMeshWave - Win32 Tools Debug"
# Name "p3dMeshWave - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\common\src\GetVersionString.cpp
# End Source File
# Begin Source File

SOURCE=.\p3dMeshWaveCmd.cpp
# End Source File
# Begin Source File

SOURCE=.\p3dMeshWaveNode.cpp
# End Source File
# Begin Source File

SOURCE=.\pluginMain.cpp
# End Source File
# Begin Source File

SOURCE=.\procedural.cpp
# End Source File
# Begin Source File

SOURCE=.\raindrop.cpp
# End Source File
# Begin Source File

SOURCE=.\uvInfo.cpp
# End Source File
# Begin Source File

SOURCE=.\wave.cpp
# End Source File
# Begin Source File

SOURCE=.\waveInfo.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\common\inc\GetVersionString.hpp
# End Source File
# Begin Source File

SOURCE=.\p3dMeshWaveCmd.h
# End Source File
# Begin Source File

SOURCE=.\p3dMeshWaveNode.h
# End Source File
# Begin Source File

SOURCE=.\procedural.hpp
# End Source File
# Begin Source File

SOURCE=.\raindrop.hpp
# End Source File
# Begin Source File

SOURCE=.\uvInfo.hpp
# End Source File
# Begin Source File

SOURCE=.\wave.hpp
# End Source File
# Begin Source File

SOURCE=.\waveInfo.hpp
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\p3dMeshWave.rc
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Group "mel"

# PROP Default_Filter "*.mel"
# Begin Source File

SOURCE=.\scripts\AEp3dMeshWaveTemplate.mel

!IF  "$(CFG)" == "p3dMeshWave - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\AEp3dMeshWaveTemplate.mel
InputName=AEp3dMeshWaveTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dMeshWave - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\AEp3dMeshWaveTemplate.mel
InputName=AEp3dMeshWaveTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\common\mel\p3dFrameLayout.mel

!IF  "$(CFG)" == "p3dMeshWave - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=..\common\mel\p3dFrameLayout.mel
InputName=p3dFrameLayout

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dMeshWave - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=..\common\mel\p3dFrameLayout.mel
InputName=p3dFrameLayout

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scripts\p3dMeshWave.mel

!IF  "$(CFG)" == "p3dMeshWave - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dMeshWave.mel
InputName=p3dMeshWave

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ELSEIF  "$(CFG)" == "p3dMeshWave - Win32 Tools Release"

# Begin Custom Build - Installing MEL $(InputName)
InputPath=.\scripts\p3dMeshWave.mel
InputName=p3dMeshWave

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\copydebugmll.bat
# End Source File
# Begin Source File

SOURCE=.\copyreleasemll.bat
# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="%NAME%" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=%NAME% - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "%NAME%.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "%NAME%.mak" CFG="%NAME% - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "%NAME% - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "%NAME% - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "%NAME%"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "%NAME% - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../../../../sdks/maya3_0/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NT_PLUGIN" /D "MAYA_3" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaRender.lib /nologo /subsystem:windows /dll /machine:I386 /out:"Release/%NAME%.mll" /libpath:"..\..\..\..\sdks\maya3_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copyreleasemll
# End Special Build Tool

!ELSEIF  "$(CFG)" == "%NAME% - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "../../../../sdks/maya3_0/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NT_PLUGIN" /D "MAYA_3" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaRender.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"Debug/%NAME%.mll" /libpath:"..\..\..\..\sdks\maya3_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copydebugmll
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "%NAME% - Win32 Release"
# Name "%NAME% - Win32 Debug"
# Begin Group "src"

# PROP Default_Filter "*.cpp"
# Begin Source File

SOURCE=.\src\compute.cpp

!IF  "$(CFG)" == "%NAME% - Win32 Release"

!ELSEIF  "$(CFG)" == "%NAME% - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\%NAME%.cpp
# End Source File
# Begin Source File

SOURCE=.\src\%NAME%.rc
# End Source File
# End Group
# Begin Group "mel"

# PROP Default_Filter "*.mel"
# Begin Source File

SOURCE=.\mel\AEpure3d%BASENAME%Template.mel
# End Source File
# End Group
# Begin Group "inc"

# PROP Default_Filter ".hpp"
# Begin Source File

SOURCE=.\src\%NAME%.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\%NAME%.sc

!IF  "$(CFG)" == "%NAME% - Win32 Release"
# Begin Custom Build - Jeeves
InputPath=.\%NAME%.sc

BuildCmds= \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_cpp.tpl %NAME%.sc  \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_hpp.tpl %NAME%.sc  \
	

"./src/%NAME%.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"./src/%NAME%.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "%NAME% - Win32 Debug"

# Begin Custom Build - Jeeves
InputPath=.\%NAME%.sc

BuildCmds= \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_cpp.tpl %NAME%.sc \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_hpp.tpl %NAME%.sc \
	

"./src/%NAME%.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"./src/%NAME%.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 
# End Source File
# Begin Source File

SOURCE=.\src\resource.h
# End Source File
# End Target
# End Project

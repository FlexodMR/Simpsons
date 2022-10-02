# Microsoft Developer Studio Project File - Name="png2p3d" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=png2p3d - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "png2p3d.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "png2p3d.mak" CFG="png2p3d - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "png2p3d - Win32 Tools Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "png2p3d - Win32 Tools Release" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "png2p3d"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "png2p3d - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "png2p3d___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "png2p3d___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /I "../perl" /I "../../../toollib/inc" /I "../../../constants" /I "../../../toollib/chunks16/inc" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "P3DDEBUG" /D "P3DWIN95" /YX /FD /c
# ADD CPP /nologo /G6 /MDd /W3 /Gm /GX /ZI /Od /I "../../../pure3d/lib/perl" /I "../../../pure3d/toollib/inc" /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../radmath" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /D "P3DWIN95" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ELSEIF  "$(CFG)" == "png2p3d - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "png2p3d___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "png2p3d___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "png2p3d___Win32_Tools_Release"
# PROP Intermediate_Dir "png2p3d___Win32_Tools_Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../../toollib/inc" /I "../../../constants" /I "../../../toollib/chunks16/inc" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "P3DDEBUG" /D "P3DWIN95" /YX /FD /c
# ADD CPP /nologo /G6 /MD /W3 /GX /O2 /I "../../../pure3d/lib/perl" /I "../../../pure3d/toollib/inc" /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../radmath" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "P3DDEBUG" /D "P3DWIN95" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /out:"..\bin\png2p3d.exe"
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /out:"..\bin\png2p3d.exe"

!ENDIF 

# Begin Target

# Name "png2p3d - Win32 Tools Debug"
# Name "png2p3d - Win32 Tools Release"
# Begin Group "Source"

# PROP Default_Filter "*.cpp, *.c"
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=.\Param.cpp
# End Source File
# Begin Source File

SOURCE=.\version.cpp
# End Source File
# End Group
# Begin Group "Include"

# PROP Default_Filter "*.hpp, *.h"
# Begin Source File

SOURCE=.\Param.hpp
# End Source File
# Begin Source File

SOURCE=.\version.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\png2p3d.sc

!IF  "$(CFG)" == "png2p3d - Win32 Tools Debug"

# Begin Custom Build - Jeeves
InputPath=.\png2p3d.sc

BuildCmds= \
	perl ..\..\..\pure3d\tools\commandline\Jeeves\jeeves -I ..\..\..\pure3d\tools\commandline\Jeeves -s Tool_Schema -t ..\..\..\pure3d\tools\commandline\Jeeves\Param_cpp.tpl png2p3d.sc \
	perl ..\..\..\pure3d\tools\commandline\Jeeves\jeeves -I ..\..\..\pure3d\tools\commandline\Jeeves -s Tool_Schema -t ..\..\..\pure3d\tools\commandline\Jeeves\Param_hpp.tpl png2p3d.sc \
	

"Param.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Param.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "png2p3d - Win32 Tools Release"

!ENDIF 

# End Source File
# End Target
# End Project

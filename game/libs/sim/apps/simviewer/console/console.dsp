# Microsoft Developer Studio Project File - Name="console" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=console - Win32 Tune
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "console.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "console.mak" CFG="console - Win32 Tune"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "console - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "console - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "console - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "console"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "console - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /Z7 /O2 /I "../../../../radcontent/inc" /I "../../../../pure3d/" /I "../../../../radmath/" /I "../../../../radcore/inc" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_RELEASE" /D "RAD_PC" /D "RAD_WIN32" /FD /c
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"lib\consolewr.lib"

!ELSEIF  "$(CFG)" == "console - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /Z7 /Od /I "../../../../radcontent/inc" /I "../../../../pure3d/" /I "../../../../radmath/" /I "../../../../radcore/inc" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /FR /FD /c
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"lib\consolewd.lib"

!ELSEIF  "$(CFG)" == "console - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "console___Win32_Tune"
# PROP BASE Intermediate_Dir "console___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "console___Win32_Tune"
# PROP Intermediate_Dir "console___Win32_Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MTd /W3 /Z7 /Od /I "../../../../pure3d/" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /FR /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /Z7 /Od /I "../../../../radcontent/inc" /I "../../../../pure3d/" /I "../../../../radmath/" /I "../../../../radcore/inc" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /FR /FD /c
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"lib\consolewt.lib"

!ENDIF 

# Begin Target

# Name "console - Win32 Release"
# Name "console - Win32 Debug"
# Name "console - Win32 Tune"
# Begin Source File

SOURCE=.\class.cpp
# End Source File
# Begin Source File

SOURCE=.\class.hpp
# End Source File
# Begin Source File

SOURCE=.\commandline.cpp
# End Source File
# Begin Source File

SOURCE=.\commandline.hpp
# End Source File
# Begin Source File

SOURCE=.\common.cpp
# End Source File
# Begin Source File

SOURCE=.\console.cpp
# End Source File
# Begin Source File

SOURCE=.\console.hpp
# End Source File
# Begin Source File

SOURCE=.\constuff.hpp
# End Source File
# Begin Source File

SOURCE=.\enhancedconsole.cpp
# End Source File
# Begin Source File

SOURCE=.\enhancedconsole.hpp
# End Source File
# Begin Source File

SOURCE=.\enum.cpp
# End Source File
# Begin Source File

SOURCE=.\enum.hpp
# End Source File
# Begin Source File

SOURCE=.\function.cpp
# End Source File
# Begin Source File

SOURCE=.\function.hpp
# End Source File
# Begin Source File

SOURCE=.\objectscripter.cpp
# End Source File
# Begin Source File

SOURCE=.\objectscripter.hpp
# End Source File
# Begin Source File

SOURCE=.\pddifunc.cpp
# End Source File
# Begin Source File

SOURCE=.\scripter.hpp
# End Source File
# Begin Source File

SOURCE=.\shatter.cpp
# End Source File
# Begin Source File

SOURCE=.\shatter.hpp
# End Source File
# Begin Source File

SOURCE=.\simpleconsole.cpp
# End Source File
# Begin Source File

SOURCE=.\simpleconsole.hpp
# End Source File
# Begin Source File

SOURCE=.\symbol.cpp
# End Source File
# Begin Source File

SOURCE=.\symbol.hpp
# End Source File
# Begin Source File

SOURCE=.\textbuffer.hpp
# End Source File
# Begin Source File

SOURCE=.\types.cpp
# End Source File
# Begin Source File

SOURCE=.\types.hpp
# End Source File
# End Target
# End Project

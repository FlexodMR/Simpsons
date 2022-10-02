# Microsoft Developer Studio Project File - Name="RIDL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=RIDL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "RIDL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "RIDL.mak" CFG="RIDL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "RIDL - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "RIDL - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "RIDL"
# PROP Scc_LocalPath "."
CPP=cwcl.exe
RSC=rc.exe

!IF  "$(CFG)" == "RIDL - Win32 Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\inc" /I "..\..\..\radcore\inc" /I "..\mfcinc" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /D "RAD_RELEASE" /D "RAD_WIN32" /Yu"stdafx.h" /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=cwlink.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /out:"..\bin\RIDL.exe"

!ELSEIF  "$(CFG)" == "RIDL - Win32 Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\inc" /I "..\..\..\radcore\inc" /I "..\mfcinc" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /D "RAD_DEBUG" /D "RAD_WIN32" /FR /Yu"stdafx.h" /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=cwlink.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /out:"..\bin\RIDL.exe" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "RIDL - Win32 Release"
# Name "RIDL - Win32 Debug"
# Begin Group "parser"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\IDLEnum.cpp
# End Source File
# Begin Source File

SOURCE=.\src\IDLEnum.h
# End Source File
# Begin Source File

SOURCE=.\src\IDLInterface.cpp
# End Source File
# Begin Source File

SOURCE=.\src\IDLInterface.h
# End Source File
# Begin Source File

SOURCE=.\src\IDLMethod.cpp
# End Source File
# Begin Source File

SOURCE=.\src\IDLMethod.h
# End Source File
# Begin Source File

SOURCE=.\src\IDLParameter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\IDLParameter.h
# End Source File
# Begin Source File

SOURCE=.\src\IDLParser.cpp
# End Source File
# Begin Source File

SOURCE=.\src\IDLParser.h
# End Source File
# Begin Source File

SOURCE=.\src\IDLParserHelper.cpp
# End Source File
# End Group
# Begin Group "cmdline"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\CmdLineOption.cpp
# End Source File
# Begin Source File

SOURCE=.\src\CmdLineOption.h
# End Source File
# Begin Source File

SOURCE=.\src\helpfunc.cpp
# End Source File
# Begin Source File

SOURCE=.\src\helpfunc.hpp
# End Source File
# Begin Source File

SOURCE=.\src\Resource.h
# End Source File
# Begin Source File

SOURCE=.\src\RIDL.cpp
# End Source File
# Begin Source File

SOURCE=.\src\RIDL.h
# End Source File
# Begin Source File

SOURCE=.\src\RIDL.rc
# End Source File
# Begin Source File

SOURCE=.\src\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\src\StdAfx.h
# End Source File
# End Group
# End Target
# End Project

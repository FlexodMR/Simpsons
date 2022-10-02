# Microsoft Developer Studio Project File - Name="rtf2ldb" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=rtf2ldb - Win32 Tools Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "textbibleCompiler.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "textbibleCompiler.mak" CFG="rtf2ldb - Win32 Tools Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "rtf2ldb - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "rtf2ldb - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "rtf2ldb - Win32 Hybrid" (based on "Win32 (x86) Console Application")
!MESSAGE "rtf2ldb - Win32 Tools Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "rtf2ldb - Win32 Tools Release" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "textbibleCompiler"
# PROP Scc_LocalPath "..\..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "rtf2ldb - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\toollib\chunks16\inc" /I "..\..\..\..\pure3d\constants" /I "..\..\..\..\pure3d\lib\freetype\include" /I "..\..\..\..\pure3d\lib\freetype\include\freetype" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /D "SCROOBY_TOOL" /YX"stdgfe.h" /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"..\..\bin\textbiblecompiler.exe"
# SUBTRACT LINK32 /incremental:yes

!ELSEIF  "$(CFG)" == "rtf2ldb - Win32 Debug"

# PROP BASE Use_MFC 0
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
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\constants" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /FR /YX"stdgfe.h" /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"textbibleCompilerd.exe" /pdbtype:sept

!ELSEIF  "$(CFG)" == "rtf2ldb - Win32 Hybrid"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "rtf2ldb___Win32_Hybrid"
# PROP BASE Intermediate_Dir "rtf2ldb___Win32_Hybrid"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Hybrid"
# PROP Intermediate_Dir "Hybrid"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\constants" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /FR /YX"stdgfe.h" /FD /c
# ADD CPP /nologo /G6 /MDd /W3 /Gm /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\toollib\chunks16\inc" /I "..\..\..\..\pure3d\constants" /I "..\..\..\..\pure3d\lib\freetype\include" /I "..\..\..\..\pure3d\lib\freetype\include\freetype" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /D "P3DDEBUG" /D "P3DWIN95" /D "SCROOBY_TOOL" /FR /YX"stdgfe.h" /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"textbibleCompilerd.exe" /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib version.lib /nologo /subsystem:console /debug /machine:I386 /out:"textbibleCompilerd.exe" /pdbtype:sept

!ELSEIF  "$(CFG)" == "rtf2ldb - Win32 Tools Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "rtf2ldb___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "rtf2ldb___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "rtf2ldb___Win32_Tools_Debug"
# PROP Intermediate_Dir "rtf2ldb___Win32_Tools_Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\constants" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /FR /YX"stdgfe.h" /FD /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\constants" /I "..\..\..\..\pure3d" /I "..\..\..\..\pure3d\toollib\chunks16\inc" /I "..\..\..\src\strings" /I "..\..\..\..\radmath" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /FR /YX"stdgfe.h" /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"textbibleCompilerd.exe" /pdbtype:sept
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"textbibleCompilerd.exe" /pdbtype:sept

!ELSEIF  "$(CFG)" == "rtf2ldb - Win32 Tools Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "rtf2ldb___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "rtf2ldb___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "rtf2ldb___Win32_Tools_Release"
# PROP Intermediate_Dir "rtf2ldb___Win32_Tools_Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\constants" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /FR /YX"stdgfe.h" /FD /c
# ADD CPP /nologo /MD /W3 /Gm /GR /GX /ZI /Od /I "..\..\..\src" /I "..\..\..\common" /I "..\..\..\..\pure3d\toollib\inc" /I "..\..\..\..\pure3d\constants" /I "..\..\..\src\strings" /I "..\..\..\..\pure3d" /I "..\..\..\..\pure3d\toollib\chunks16\inc" /I "..\..\..\..\radmath" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /D "_AFXDLL" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_RELEASE" /FR /YX"stdgfe.h" /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"textbibleCompilerd.exe" /pdbtype:sept
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386 /out:"../../bin/textbibleCompiler.exe" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "rtf2ldb - Win32 Release"
# Name "rtf2ldb - Win32 Debug"
# Name "rtf2ldb - Win32 Hybrid"
# Name "rtf2ldb - Win32 Tools Debug"
# Name "rtf2ldb - Win32 Tools Release"
# Begin Group "Source"

# PROP Default_Filter "*.cpp;*.c"
# Begin Source File

SOURCE=..\..\..\common\excel\ExcelFile.cpp
# End Source File
# Begin Source File

SOURCE=..\src\gfefile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\common\localization\languageDatabase.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\common\localization\languageEntry.cpp
# End Source File
# Begin Source File

SOURCE=..\src\main.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\src\utility\memory.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\src\strings\pcstring.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\src\strings\stricmp.cpp
# End Source File
# Begin Source File

SOURCE=..\src\textCompiler.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\src\toollib\tlTextBible.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\src\strings\UnicodeString.cpp
# End Source File
# End Group
# Begin Group "Headers"

# PROP Default_Filter "*.h;*.hpp;*.inl"
# Begin Source File

SOURCE=..\src\dllmain.h
# End Source File
# Begin Source File

SOURCE=..\..\..\common\excel\ExcelFile.h
# End Source File
# Begin Source File

SOURCE=..\src\gfefile.h
# End Source File
# Begin Source File

SOURCE=..\..\..\common\localization\languageDatabase.h
# End Source File
# Begin Source File

SOURCE=..\..\..\common\localization\languageEntry.h
# End Source File
# Begin Source File

SOURCE=..\..\..\src\strings\pcstring.h
# End Source File
# Begin Source File

SOURCE=..\src\textCompiler.h
# End Source File
# Begin Source File

SOURCE=..\..\..\src\toollib\tlTextBible.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\src\strings\unicodeString.h
# End Source File
# End Group
# End Target
# End Project

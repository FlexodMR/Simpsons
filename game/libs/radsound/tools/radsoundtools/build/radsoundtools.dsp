# Microsoft Developer Studio Project File - Name="radsoundtools" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=radsoundtools - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radsoundtools.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radsoundtools.mak" CFG="radsoundtools - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radsoundtools - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "radsoundtools - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radsoundtools"
# PROP Scc_LocalPath ".."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radsoundtools - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RADSOUNDTOOLS_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RADSOUNDTOOLS_EXPORTS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386

!ELSEIF  "$(CFG)" == "radsoundtools - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\lib"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RADSOUNDTOOLS_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\src\\" /I "..\lib" /I "..\..\..\..\radsound\inc\\" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radsound\tools\inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RADSOUNDTOOLS_EXPORTS" /D "RAD_WIN32" /D "RAD_DEBUG" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib encvag.lib winmm.lib wsock32.lib radsoundwd.lib /nologo /dll /debug /machine:I386 /out:"..\..\bin\radsoundtools.dll" /pdbtype:sept /libpath:"..\lib" /libpath:"..\..\..\..\radsound\lib\\" /libpath:"..\..\..\..\radcore\lib\\"

!ENDIF 

# Begin Target

# Name "radsoundtools - Win32 Release"
# Name "radsoundtools - Win32 Debug"
# Begin Source File

SOURCE=..\src\convert\convert.cpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\convert.hpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\gcadpcm\convertgcadpcm.cpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\gcadpcm\convertgcadpcm.hpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\imaadpcm\convertimaadpcm.cpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\imaadpcm\convertimaadpcm.hpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\vag\convertvag.cpp
# End Source File
# Begin Source File

SOURCE=..\src\convert\vag\convertvag.hpp
# End Source File
# Begin Source File

SOURCE=..\src\file\createdir.cpp
# End Source File
# Begin Source File

SOURCE=..\src\file\createdir.hpp
# End Source File
# Begin Source File

SOURCE=..\src\wav\cues.cpp
# End Source File
# Begin Source File

SOURCE=..\src\file\file.cpp
# End Source File
# Begin Source File

SOURCE=..\src\file\file.hpp
# End Source File
# Begin Source File

SOURCE=..\src\file\idatastream.hpp
# End Source File
# Begin Source File

SOURCE=..\src\file\interleavedstream.cpp
# End Source File
# Begin Source File

SOURCE=..\src\file\interleavedstream.hpp
# End Source File
# Begin Source File

SOURCE=..\src\output\output.cpp
# End Source File
# Begin Source File

SOURCE=..\src\output\output.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radsoundtools.hpp
# End Source File
# Begin Source File

SOURCE=..\src\file\recurse.cpp
# End Source File
# Begin Source File

SOURCE=..\src\file\recurse.hpp
# End Source File
# Begin Source File

SOURCE=..\src\wav\waveinfo.cpp
# End Source File
# Begin Source File

SOURCE=..\src\wav\waveinfo.hpp
# End Source File
# End Target
# End Project

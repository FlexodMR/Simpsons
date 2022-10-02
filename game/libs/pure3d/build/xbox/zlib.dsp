# Microsoft Developer Studio Project File - Name="zlib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=zlib - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "zlib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "zlib.mak" CFG="zlib - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "zlib - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "zlib - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "zlib - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "zlib"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "zlib - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\zlib\release"
# PROP Intermediate_Dir "obj\zlib\release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/zlibxr.lib"

!ELSEIF  "$(CFG)" == "zlib - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "zlib___Xbox_Debug"
# PROP BASE Intermediate_Dir "zlib___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\zlib\debug"
# PROP Intermediate_Dir "obj\zlib\debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/zlibxd.lib"

!ELSEIF  "$(CFG)" == "zlib - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "zlib___Xbox_Tune"
# PROP BASE Intermediate_Dir "zlib___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\zlib\tune"
# PROP Intermediate_Dir "obj\zlib\tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\zlibr.lib"
# ADD LIB32 /nologo /out:"../lib/zlibxt.lib"

!ENDIF 

# Begin Target

# Name "zlib - Xbox Release"
# Name "zlib - Xbox Debug"
# Name "zlib - Xbox Tune"
# Begin Source File

SOURCE=..\..\lib\zlib\adler32.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\compress.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\crc32.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\deflate.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\gzio.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\infblock.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\infcodes.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\inffast.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\inflate.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\inftrees.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\infutil.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\trees.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\uncompr.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\zlib\zutil.c
# End Source File
# End Target
# End Project

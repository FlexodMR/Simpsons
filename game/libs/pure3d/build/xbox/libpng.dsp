# Microsoft Developer Studio Project File - Name="libpng" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=libpng - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libpng.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libpng.mak" CFG="libpng - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libpng - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "libpng - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "libpng - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "libpng"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "libpng - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\libpng\release"
# PROP Intermediate_Dir "obj\libpng\release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /I "..\..\lib\zlib" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "PNG_USER_MEM_SUPPORTED" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pngxr.lib"

!ELSEIF  "$(CFG)" == "libpng - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\libpng\debug"
# PROP Intermediate_Dir "obj\libpng\debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /Zi /Od /I "..\..\lib\zlib" /D "_DEBUG" /D "WIN32" /D "_XBOX" /D "PNG_USER_MEM_SUPPORTED" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pngxd.lib"

!ELSEIF  "$(CFG)" == "libpng - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "libpng___Xbox_Tune"
# PROP BASE Intermediate_Dir "libpng___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\libpng\tune"
# PROP Intermediate_Dir "obj\libpng\tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /O2 /I "..\..\lib\zlib" /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /I "..\..\lib\zlib" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "PNG_USER_MEM_SUPPORTED" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\libpngr.lib"
# ADD LIB32 /nologo /out:"../lib/pngxt.lib"

!ENDIF 

# Begin Target

# Name "libpng - Xbox Release"
# Name "libpng - Xbox Debug"
# Name "libpng - Xbox Tune"
# Begin Source File

SOURCE=..\..\lib\libpng\png.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngerror.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngget.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngmem.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngpread.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngread.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngrio.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngrtran.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngrutil.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngset.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngtest.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngtrans.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwio.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwrite.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwtran.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwutil.c
# End Source File
# End Target
# End Project

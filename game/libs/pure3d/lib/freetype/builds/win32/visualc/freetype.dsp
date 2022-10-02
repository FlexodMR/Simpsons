# Microsoft Developer Studio Project File - Name="freetype" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=freetype - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "freetype.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "freetype.mak" CFG="freetype - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "freetype - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "freetype - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "freetype - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "freetype - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/DEV/freetype", KAOAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "freetype - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\objs\release"
# PROP Intermediate_Dir "..\..\..\objs\release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /Ze /W3 /GR /Zi /O2 /I "..\..\..\include" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_RELEASE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\..\objs\freetyper.lib"

!ELSEIF  "$(CFG)" == "freetype - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\objs\debug"
# PROP Intermediate_Dir "..\..\..\objs\debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /Ze /W3 /Gm /GR /Zi /Od /I "..\..\..\include" /D "_MBCS" /D "_LIB" /D "FT_DEBUG_LEVEL_ERROR" /D "FT_DEBUG_LEVEL_TRACE" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /D "RAD_DEBUG" /FD /GZ /c
# SUBTRACT CPP /X /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\..\objs\freetyped.lib"

!ELSEIF  "$(CFG)" == "freetype - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "freetype___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "freetype___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /Za /W3 /Gm /GR /ZI /Od /I "..\..\..\include" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "FT_DEBUG_LEVEL_ERROR" /D "FT_DEBUG_LEVEL_TRACE" /FD /GZ /c
# SUBTRACT BASE CPP /X /YX
# ADD CPP /nologo /G6 /MD /Za /W3 /Gm /GR /ZI /Od /I "..\..\..\include" /D "_MBCS" /D "_LIB" /D "FT_DEBUG_LEVEL_ERROR" /D "FT_DEBUG_LEVEL_TRACE" /D "RAD_PC" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_DEBUG" /FD /GZ /c
# SUBTRACT CPP /X /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\objs\freetypeh.lib"
# ADD LIB32 /nologo /out:"..\..\..\objs\freetypeh.lib"

!ELSEIF  "$(CFG)" == "freetype - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "freetype___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "freetype___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /Za /W3 /GR /O2 /I "..\..\..\include" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /Za /W3 /GR /O2 /I "..\..\..\include" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_TUNE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\objs\freetyper.lib"
# ADD LIB32 /nologo /out:"..\..\..\objs\freetypetr.lib"

!ENDIF 

# Begin Target

# Name "freetype - Win32 Release"
# Name "freetype - Win32 Debug"
# Name "freetype - Win32 Tools Debug"
# Name "freetype - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\..\src\autohint\autohint.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\cff\cff.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\base\ftbase.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\base\ftdebug.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\base\ftglyph.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\base\ftinit.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\base\ftmm.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\base\ftsystem.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\pcf\pcf.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\psaux\psaux.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\psnames\psmodule.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\raster\raster.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\sfnt\sfnt.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\smooth\smooth.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\truetype\truetype.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\type1\type1.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\cid\type1cid.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\winfonts\winfnt.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\include\freetype\freetype.h
# End Source File
# Begin Source File

SOURCE=.\include\freetype\config\ftconfig.h
# End Source File
# Begin Source File

SOURCE=.\include\freetype\fterrors.h
# End Source File
# Begin Source File

SOURCE=.\include\freetype\config\ftoption.h
# End Source File
# Begin Source File

SOURCE=.\include\freetype\fttypes.h
# End Source File
# End Group
# End Target
# End Project

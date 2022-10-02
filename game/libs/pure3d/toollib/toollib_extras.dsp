# Microsoft Developer Studio Project File - Name="toollib_extras" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=toollib_extras - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "toollib_extras.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "toollib_extras.mak" CFG="toollib_extras - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "toollib_extras - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib_extras - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib_extras - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib_extras - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib_extras - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "toollib_extras"
# PROP Scc_LocalPath "."
CPP=snCl.exe
RSC=rc.exe

!IF  "$(CFG)" == "toollib_extras - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /GX /Zi /O2 /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /I "../../../code/constants" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=..\tools\commandline\bin\compileinfo "//depot/stable/current/pure3d/toollib" > Release\tlcompileinfo.cpp	cl /nologo /G6 /MT /c Release\tlcompileinfo.cpp /FoRelease\tlcompileinfo.obj
# End Special Build Tool

!ELSEIF  "$(CFG)" == "toollib_extras - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "toollib_extras___Win32_Debug"
# PROP BASE Intermediate_Dir "toollib_extras___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "toollib_extras___Win32_Debug"
# PROP Intermediate_Dir "toollib_extras___Win32_Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /GX /Zi /Od /I "../../../code/constants" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_DEBUG" /FD /GZ /c
# SUBTRACT CPP /Fr /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "toollib_extras - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Tools Debug"
# PROP BASE Intermediate_Dir "Tools Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_DEBUG" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MD /W3 /Gm /GR /GX /ZI /Od /I "../../../code/constants" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_DEBUG" /YX /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "toollib_extras - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Tools Release"
# PROP BASE Intermediate_Dir "Tools Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "../../../code/constants" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "toollib_extras - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Tune"
# PROP BASE Intermediate_Dir "Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /GX /Zi /O2 /I "../../../code/constants" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /I "../../radmath" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "TOOLLIB" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "toollib_extras - Win32 Release"
# Name "toollib_extras - Win32 Debug"
# Name "toollib_extras - Win32 Tools Debug"
# Name "toollib_extras - Win32 Tools Release"
# Name "toollib_extras - Win32 Tune"
# Begin Source File

SOURCE=.\toollib_extras.cpp
# End Source File
# End Target
# End Project

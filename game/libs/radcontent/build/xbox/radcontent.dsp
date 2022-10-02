# Microsoft Developer Studio Project File - Name="radcontent" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=radcontent - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radcontent.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radcontent.mak" CFG="radcontent - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radcontent - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "radcontent - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "radcontent - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radcontent"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "radcontent - Xbox Release"

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
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /I "..\..\inc" /I "..\..\..\radcore\inc" /I "..\..\..\radmath" /I "..\..\src" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_RELEASE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "radcontent - Xbox Debug"

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
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\radcore\inc" /I "..\..\..\radmath" /I "..\..\inc" /I "..\..\src" /D "_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_DEBUG" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "radcontent - Xbox Tune"

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
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GR /Zi /O2 /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_RELEASE" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /I "..\..\inc" /I "..\..\..\radcore\inc" /I "..\..\..\radmath" /I "..\..\src" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_TUNE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "radcontent - Xbox Release"
# Name "radcontent - Xbox Debug"
# Name "radcontent - Xbox Tune"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\src\radload\hashtable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radload\inventory.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radload\manager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radload\object.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radload\queue.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radload\request.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radload\stream.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\inc\radload\utility\hashtable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radload\utility\inventory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radload\utility\object.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radload\utility\queue.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radload\utility\stream.hpp
# End Source File
# End Group
# End Target
# End Project

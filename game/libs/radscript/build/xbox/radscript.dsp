# Microsoft Developer Studio Project File - Name="radscript" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=radscript - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radscript.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radscript.mak" CFG="radscript - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radscript - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "radscript - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "radscript - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radscript"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe

!IF  "$(CFG)" == "radscript - Xbox Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /G6 /c
# ADD CPP /nologo /W3 /GR /O2 /I "..\..\..\radcore\inc\\" /I "..\..\inc\\" /D "RELEASE" /D "NDEBUG" /D "_MBCS" /D "WIN32" /D "_XBOX" /D "_WINDOWS" /D "RAD_XBOX" /D "RAD_RELEASE" /Yu"pch.hpp" /FD /G6 /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radscriptxr.lib"

!ELSEIF  "$(CFG)" == "radscript - Xbox Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /G6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\radcore\inc\\" /I "..\..\inc\\" /D "_DEBUG" /D "DEBUG" /D "OLD_XDK" /D "_MBCS" /D "WIN32" /D "_XBOX" /D "_WINDOWS" /D "RAD_XBOX" /D "RAD_DEBUG" /Yu"pch.hpp" /FD /Ztmp /G6 /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radscriptxd.lib"

!ELSEIF  "$(CFG)" == "radscript - Xbox Tune"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /G6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /O2 /I "..\..\..\radscript\inc\\" /I "..\..\..\radcore\inc\\" /I "..\..\inc\\" /D "TUNE" /D "NDEBUG" /D "_MBCS" /D "WIN32" /D "_XBOX" /D "_WINDOWS" /D "RAD_XBOX" /D "RAD_TUNE" /Yu"pch.hpp" /FD /Ztmp /G6 /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radscriptxt.lib"

!ENDIF 

# Begin Target

# Name "radscript - Xbox Release"
# Name "radscript - Xbox Debug"
# Name "radscript - Xbox Tune"
# Begin Group "inc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\inc\radfactory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radnamespace.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radscript.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radtypeinfo.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radtypeinfoutil.hpp
# End Source File
# End Group
# Begin Group "typeinfo"

# PROP Default_Filter ""
# Begin Group "win32"

# PROP Default_Filter ""
# End Group
# Begin Source File

SOURCE=..\..\src\typeinfo\TypeInfoEnum.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\typeinfoinstance.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\typeinfointerface.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\TypeInfoIntLiteral.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\typeinfoloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\typeinfomethod.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\TypeInfoParam.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\typeinfosystem.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\win32\win32typeinfovfcall.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\win32\win32typeinfovfcall.h
# End Source File
# End Group
# Begin Group "script"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\script\remotescript.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\script\script.cpp
# End Source File
# End Group
# Begin Group "typeinfoutil"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\typeinfoutil\typeinfodistributor.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfoutil\typeinfoutil.cpp
# End Source File
# End Group
# Begin Group "factory"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\factory\radfactory.cpp
# End Source File
# End Group
# Begin Group "namespace"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\namespace\namespace.cpp
# End Source File
# End Group
# Begin Group "pch"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\pch\pch.cpp
# ADD CPP /Yc"pch.hpp"
# End Source File
# Begin Source File

SOURCE=..\..\src\pch\pch.hpp
# End Source File
# End Group
# End Target
# End Project

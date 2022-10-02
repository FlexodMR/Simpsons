# Microsoft Developer Studio Project File - Name="radscript" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=radscript - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radscript.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radscript.mak" CFG="radscript - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radscript - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radscript - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "radscript - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radscript"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radscript - Win32 Release"

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
# ADD CPP /nologo /MT /W3 /GR /O2 /I "..\..\..\rfc\inc\\" /I "..\..\inc\\" /I "..\..\..\radcore\inc" /D "NDEBUG" /D "RELEASE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_RELEASE" /Yu"pch.hpp" /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radscriptwr.lib"

!ELSEIF  "$(CFG)" == "radscript - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\inc\\" /I "..\..\..\radcore\inc" /D "_DEBUG" /D "DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_DEBUG" /FR /Yu"pch.hpp" /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radscriptwd.lib"

!ELSEIF  "$(CFG)" == "radscript - Win32 Tune"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /Zi /O2 /I "..\..\..\rfc\inc\\" /I "..\..\inc\\" /I "..\..\..\radcore\inc" /D "NDEBUG" /D "TUNE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_TUNE" /FR /Yu"pch.hpp" /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radscriptwt.lib"

!ENDIF 

# Begin Target

# Name "radscript - Win32 Release"
# Name "radscript - Win32 Debug"
# Name "radscript - Win32 Tune"
# Begin Group "script"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\script\remotescript.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\script\script.cpp
# End Source File
# End Group
# Begin Group "typeinfo"

# PROP Default_Filter ""
# Begin Group "win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\typeinfo\win32\win32typeinfovfcall.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\typeinfo\win32\win32typeinfovfCall.h
# End Source File
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
# End Group
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

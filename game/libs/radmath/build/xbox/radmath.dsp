# Microsoft Developer Studio Project File - Name="radmath" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=radmath - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radmath.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radmath.mak" CFG="radmath - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radmath - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "radmath - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "radmath - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radmath"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "radmath - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\release"
# PROP Intermediate_Dir "obj\release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /I "../../" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmathxr.lib"

!ELSEIF  "$(CFG)" == "radmath - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radmath___Xbox_Debug"
# PROP BASE Intermediate_Dir "radmath___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\debug"
# PROP Intermediate_Dir "obj\debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /Zi /Od /I "../../" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmathxd.lib"

!ELSEIF  "$(CFG)" == "radmath - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radmath___Xbox_Tune"
# PROP BASE Intermediate_Dir "radmath___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\tune"
# PROP Intermediate_Dir "obj\tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /I "../../" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\radmathr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radmathxt.lib"

!ENDIF 

# Begin Target

# Name "radmath - Xbox Release"
# Name "radmath - Xbox Debug"
# Name "radmath - Xbox Tune"
# Begin Source File

SOURCE=..\..\radmath\buildconfig.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\geometry.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\matrix.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\matrix.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\numerical.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\numerical.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\plane.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\quaternion.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\quaternion.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\radmath.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\radmath.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\random.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\random.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\spline.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\spline.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\triangle.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\trig.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\trig.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\util.hpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\vector.cpp
# End Source File
# Begin Source File

SOURCE=..\..\radmath\vector.hpp
# End Source File
# End Target
# End Project

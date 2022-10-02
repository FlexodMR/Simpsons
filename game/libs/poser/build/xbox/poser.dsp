# Microsoft Developer Studio Project File - Name="poser" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=poser - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "poser.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "poser.mak" CFG="poser - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "poser - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "poser - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE "poser - Xbox Release" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "poser"
# PROP Scc_LocalPath "..\..\..\..\poser"
CPP=cl.exe

!IF  "$(CFG)" == "poser - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "poser___Xbox_Debug"
# PROP BASE Intermediate_Dir "poser___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "debug"
# PROP Intermediate_Dir "debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GR /GX /ZI /Od /I "..\..\inc" /I "..\..\..\pure3d" /D "WIN32" /D "_XBOX" /D "_DEBUG" /FD /GZ /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\radcore\inc" /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\radmath" /I "..\..\..\radcontent\inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /GZ /Zvc6 /c
# SUBTRACT CPP /YX
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\poserwd.lib"
# ADD LIB32 /nologo /out:"..\..\lib\poserxd.lib"

!ELSEIF  "$(CFG)" == "poser - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "poser___Xbox_Tune"
# PROP BASE Intermediate_Dir "poser___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "tune"
# PROP Intermediate_Dir "tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GR /GX /Zi /O2 /I "..\..\inc" /I "..\..\..\pure3d" /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /GR /Z7 /O2 /I "..\..\..\radcore\inc" /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\radmath" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /Zvc6 /c
# SUBTRACT CPP /YX
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\poserwt.lib"
# ADD LIB32 /nologo /out:"..\..\lib\poserxt.lib"

!ELSEIF  "$(CFG)" == "poser - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "poser___Xbox_Release"
# PROP BASE Intermediate_Dir "poser___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "release"
# PROP Intermediate_Dir "release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GR /GX /O2 /I "..\..\inc" /I "..\..\..\pure3d" /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /GR /O2 /I "..\..\..\radcontent\inc" /I "..\..\..\radcore\inc" /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\radmath" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /Zvc6 /c
# SUBTRACT CPP /YX
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\poserwr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\poserxr.lib"

!ENDIF 

# Begin Target

# Name "poser - Xbox Debug"
# Name "poser - Xbox Tune"
# Name "poser - Xbox Release"
# Begin Group "core"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\inc\poser\constants.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\joint.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\poser\joint.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\pose.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\poser\pose.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\posedriver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\poser\posedriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\poseengine.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\poser\poseengine.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\poser\priority.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\transform.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\poser\transform.hpp
# End Source File
# End Group
# End Target
# End Project

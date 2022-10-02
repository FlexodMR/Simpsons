# Microsoft Developer Studio Project File - Name="poser" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=poser - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "poser.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "poser.mak" CFG="poser - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "poser - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "poser - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "poser - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "poser"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "poser - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "release"
# PROP Intermediate_Dir "release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /O2 /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\poserwr.lib"

!ELSEIF  "$(CFG)" == "poser - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "debug"
# PROP Intermediate_Dir "debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /I "..\..\..\radcontent\inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\poserwd.lib"

!ELSEIF  "$(CFG)" == "poser - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "poser___Win32_Tune"
# PROP BASE Intermediate_Dir "poser___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "tune"
# PROP Intermediate_Dir "tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GR /O2 /I "..\..\inc" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /Z7 /O2 /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\poserr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\poserwt.lib"

!ENDIF 

# Begin Target

# Name "poser - Win32 Release"
# Name "poser - Win32 Debug"
# Name "poser - Win32 Tune"
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

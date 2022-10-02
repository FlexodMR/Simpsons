# Microsoft Developer Studio Project File - Name="choreo" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=choreo - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "choreo.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "choreo.mak" CFG="choreo - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "choreo - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "choreo - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "choreo - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "choreo"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "choreo - Win32 Release"

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
# ADD CPP /nologo /G6 /MT /W3 /GR /O2 /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\poser\inc" /I "..\..\..\sim" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\choreowr.lib"

!ELSEIF  "$(CFG)" == "choreo - Win32 Debug"

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
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\poser\inc" /I "..\..\..\sim" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /I "..\..\..\radcontent\inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\choreowd.lib"

!ELSEIF  "$(CFG)" == "choreo - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "choreo___Win32_Tune"
# PROP BASE Intermediate_Dir "choreo___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "tune"
# PROP Intermediate_Dir "tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GR /O2 /I "..\..\inc" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /Z7 /O2 /I "..\..\inc" /I "..\..\..\pure3d" /I "..\..\..\poser\inc" /I "..\..\..\sim" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\choreor.lib"
# ADD LIB32 /nologo /out:"..\..\lib\choreowt.lib"

!ENDIF 

# Begin Target

# Name "choreo - Win32 Release"
# Name "choreo - Win32 Debug"
# Name "choreo - Win32 Tune"
# Begin Group "core"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\blendtemplate.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\blendtemplate.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\buildconfig.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\constants.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\driver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\driver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\internalanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\internalanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\jointblenddriver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\jointblenddriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\jointblender.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\jointblender.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\replayblenddriver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\replayblenddriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\replayblender.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\replayblender.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\rootblenddriver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\rootblenddriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\rootblender.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\rootblender.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\utility.hpp
# End Source File
# End Group
# Begin Group "load"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\basebank.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\basebank.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\load.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\load.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\scriptreader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\scriptreader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\scriptwriter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\scriptwriter.hpp
# End Source File
# End Group
# Begin Group "feet"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\footblenddriver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\footblenddriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\footblender.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\footblender.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\footplanter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\footplanter.hpp
# End Source File
# End Group
# Begin Group "puppet"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\bank.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\bank.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\engine.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\engine.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\partition.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\partition.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\puppet.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\puppet.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\rig.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\rig.hpp
# End Source File
# End Group
# Begin Group "drivers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\animation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\animation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\blend.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\blend.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\foot.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\foot.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\locomotion.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\locomotion.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\replay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\replay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\root.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\root.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\synchronization.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\synchronization.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\transition.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\choreo\transition.hpp
# End Source File
# End Group
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="radcontent" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=radcontent - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radcontent.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radcontent.mak" CFG="radcontent - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radcontent - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radcontent - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "radcontent - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE "radcontent - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radcontent - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radcontent"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radcontent - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /GX /Z7 /O2 /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "NDEBUG" /D "RAD_RELEASE" /D "TOOLS" /D "WIN32" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../../lib/radcontentwr.lib"

!ELSEIF  "$(CFG)" == "radcontent - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /GX /ZI /Od /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "_DEBUG" /D "RAD_DEBUG" /D "TOOLS" /D "WIN32" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /YX /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../../lib/radcontentwd.lib"

!ELSEIF  "$(CFG)" == "radcontent - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radcontent___Win32_Tune"
# PROP BASE Intermediate_Dir "radcontent___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "radcontent___Win32_Tune"
# PROP Intermediate_Dir "radcontent___Win32_Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /GX /Z7 /O2 /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "NDEBUG" /D "RAD_TUNE" /D "TOOLS" /D "WIN32" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../../lib/radcontentwt.lib"

!ELSEIF  "$(CFG)" == "radcontent - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radcontent___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "radcontent___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "radcontent___Win32_Tools_Release"
# PROP Intermediate_Dir "radcontent___Win32_Tools_Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GR /GX /Z7 /O2 /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_RELEASE" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /Z7 /O2 /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "NDEBUG" /D "RAD_RELEASE" /D "TOOLS" /D "WIN32" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../lib/radcontentwr.lib"
# ADD LIB32 /nologo /out:"../../lib/radcontentwr.lib"

!ELSEIF  "$(CFG)" == "radcontent - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radcontent___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "radcontent___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "radcontent___Win32_Tools_Debug"
# PROP Intermediate_Dir "radcontent___Win32_Tools_Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MTd /W3 /Gm /GR /GX /ZI /Od /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_DEBUG" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /GX /ZI /Od /I "../../inc" /I "../../src" /I "../../../radcore/inc" /I "../../../radmath" /D "_DEBUG" /D "RAD_DEBUG" /D "TOOLS" /D "WIN32" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /YX /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../lib/radcontentwd.lib"
# ADD LIB32 /nologo /out:"../../lib/radcontentwd.lib"

!ENDIF 

# Begin Target

# Name "radcontent - Win32 Release"
# Name "radcontent - Win32 Debug"
# Name "radcontent - Win32 Tune"
# Name "radcontent - Win32 Tools Release"
# Name "radcontent - Win32 Tools Debug"
# Begin Group "radload"

# PROP Default_Filter ""
# Begin Group "src"

# PROP Default_Filter ""
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
# Begin Group "inc"

# PROP Default_Filter ""
# Begin Group "utility"

# PROP Default_Filter ""
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
# Begin Source File

SOURCE=..\..\inc\radload\loader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radload\radload.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radload\radloadconfig.hpp
# End Source File
# End Group
# End Group
# End Target
# End Project

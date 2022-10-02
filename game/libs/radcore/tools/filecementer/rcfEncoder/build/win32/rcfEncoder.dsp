# Microsoft Developer Studio Project File - Name="rcfEncoder" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=rcfEncoder - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "rcfEncoder.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "rcfEncoder.mak" CFG="rcfEncoder - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "rcfEncoder - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "rcfEncoder - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "rcfEncoder - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "rcfEncoder"
# PROP Scc_LocalPath "..\..\..\..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "rcfEncoder - Win32 Release"

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
# ADD CPP /nologo /W3 /GR /GX /O2 /I "..\..\inc" /I "..\..\..\..\..\inc" /I "..\..\..\..\..\src\radfile" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_RELEASE" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\bin\rcfEncoderwr.lib"

!ELSEIF  "$(CFG)" == "rcfEncoder - Win32 Debug"

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
# ADD CPP /nologo /W3 /Gm /GR /GX /ZI /Od /I "..\..\inc" /I "..\..\..\..\..\inc" /I "..\..\..\..\..\src\radfile\common" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_DEBUG" /YX /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\bin\rcfEncoderwd.lib"

!ELSEIF  "$(CFG)" == "rcfEncoder - Win32 Tune"

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
# ADD CPP /nologo /W3 /GR /GX /O2 /I "..\..\inc" /I "..\..\..\..\..\inc" /I "..\..\..\..\..\src\radfile" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\bin\rcfEncoderwt.lib"

!ENDIF 

# Begin Target

# Name "rcfEncoder - Win32 Release"
# Name "rcfEncoder - Win32 Debug"
# Name "rcfEncoder - Win32 Tune"
# Begin Group "inc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\inc\rcfEncoder.hpp
# End Source File
# End Group
# Begin Group "src"

# PROP Default_Filter ""
# Begin Group "encoder"

# PROP Default_Filter ""
# Begin Group "cementlibrarywrap"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\..\..\..\src\radfile\cementLibrary.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\cementlibrarywrap\cementlibrarywrap.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\cementlibrarywrap\detailedfileinfowrap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\cementlibrarywrap\fileinfowrap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\cementlibrarywrap\headerwrap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\cementlibrarywrap\rcffilewrap.cpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\src\encoder\encoder.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\encoder.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\info.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\info.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\encoder\version.cpp
# End Source File
# End Group
# Begin Group "activity"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\activity\activity.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\activity\activity.hpp
# End Source File
# End Group
# End Group
# End Target
# End Project

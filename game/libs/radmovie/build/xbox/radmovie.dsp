# Microsoft Developer Studio Project File - Name="radmovie" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=radmovie - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radmovie.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radmovie.mak" CFG="radmovie - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radmovie - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "radmovie - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE "radmovie - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radmovie"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe

!IF  "$(CFG)" == "radmovie - Xbox Release"

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
# ADD CPP /nologo /W3 /GR /O2 /I "../../inc" /I "../../../radcore/inc" /I "../../../radsound/inc" /I "../../../pure3d" /I "../../../radmath" /I "../../../sdks/XBox/bink" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "RELEASE" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /Yu"pch.hpp" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmoviexr.lib"

!ELSEIF  "$(CFG)" == "radmovie - Xbox Tune"

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
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /D "_WINDOWS" /D "RELEASE" /D "RFCSTATIC" /YX /FD /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /O2 /I "../../inc" /I "../../../radcore/inc" /I "../../../radsound/inc" /I "../../../pure3d" /I "../../../radmath" /I "../../../sdks/XBox/bink" /I "..\..\..\radcontent\inc" /D "_WINDOWS" /D "TUNE" /D "RAD_TUNE" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /Yu"pch.hpp" /FD /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmoviext.lib"

!ELSEIF  "$(CFG)" == "radmovie - Xbox Debug"

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
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\radcontent\inc" /I "../../inc" /I "../../../radcore/inc" /I "../../../radsound/inc" /I "../../../pure3d" /I "../../../radmath" /I "../../../sdks/XBox/bink" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FR /Yu"pch.hpp" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmoviexd.lib"

!ENDIF 

# Begin Target

# Name "radmovie - Xbox Release"
# Name "radmovie - Xbox Tune"
# Name "radmovie - Xbox Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "xbox"

# PROP Default_Filter ""
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
# Begin Group "common"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\common\binkmovieplayer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\common\binkmovieplayer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\common\binkrenderstrategy.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\common\binkrenderstrategy.hpp
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\inc\radmovie2.hpp
# End Source File
# End Group
# End Target
# End Project

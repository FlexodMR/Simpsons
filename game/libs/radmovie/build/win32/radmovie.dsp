# Microsoft Developer Studio Project File - Name="radmovie" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=radmovie - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radmovie.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radmovie.mak" CFG="radmovie - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radmovie - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radmovie - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "radmovie - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radmovie"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radmovie - Win32 Release"

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
# ADD CPP /nologo /MT /W3 /GR /O2 /I "../../inc" /I "../../../radcore/inc" /I "../../../radsound/inc" /I "../../../sdks/win32/bink" /I "../../../pure3d/p3d" /I "../../../pure3d" /I "../../../radmath" /I "../../../radmath/radmath" /I "../../../radcontent/inc" /D "NDEBUG" /D "RELEASE" /D "RAD_RELEASE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /Yu"pch.hpp" /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmoviewr.lib"

!ELSEIF  "$(CFG)" == "radmovie - Win32 Debug"

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
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "../../inc" /I "../../../radcore/inc" /I "../../../radsound/inc" /I "../../../sdks/win32/bink" /I "../../../pure3d/p3d" /I "../../../pure3d" /I "../../../radmath" /I "../../../radmath/radmath" /I "../../../radcontent/inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /FR /Yu"pch.hpp" /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmoviewd.lib"

!ELSEIF  "$(CFG)" == "radmovie - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radmovie___Win32_Tune"
# PROP BASE Intermediate_Dir "radmovie___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "radmovie___Win32_Tune"
# PROP Intermediate_Dir "radmovie___Win32_Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../inc" /I "../../../radcore/inc" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /Zi /O2 /I "../../inc" /I "../../../radcore/inc" /I "../../../radsound/inc" /I "../../../sdks/win32/bink" /I "../../../pure3d/p3d" /I "../../../pure3d" /I "../../../radmath" /I "../../../radmath/radmath" /I "../../../radcontent/inc" /D "NDEBUG" /D "TUNE" /D "RAD_TUNE" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_PC" /Yu"pch.hpp" /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\radmoviewr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radmoviewt.lib"

!ENDIF 

# Begin Target

# Name "radmovie - Win32 Release"
# Name "radmovie - Win32 Debug"
# Name "radmovie - Win32 Tune"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
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

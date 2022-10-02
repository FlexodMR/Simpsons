# Microsoft Developer Studio Project File - Name="radmath" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=radmath - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radmath.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radmath.mak" CFG="radmath - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radmath - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radmath - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "radmath - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE "radmath - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "radmath - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "nbrooke-dual"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radmath - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\Release"
# PROP Intermediate_Dir "obj\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /Zi /O2 /I "../.." /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_RELEASE" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmathwr.lib"

!ELSEIF  "$(CFG)" == "radmath - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\Debug"
# PROP Intermediate_Dir "obj\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /Zi /Od /I "../.." /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radmathwd.lib"

!ELSEIF  "$(CFG)" == "radmath - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radmath___Win32_Tune"
# PROP BASE Intermediate_Dir "radmath___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\Tune"
# PROP Intermediate_Dir "obj\Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /O2 /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "COMPILING_RADMATH_STATIC" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MT /W3 /Z7 /O2 /I "../.." /D "_MBCS" /D "_LIB" /D "RAD_TUNE" /D "NDEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\radmathr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radmathwt.lib"

!ELSEIF  "$(CFG)" == "radmath - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radmath___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "radmath___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MTd /W3 /Gm /Zi /Od /I "../.." /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /Gm /Zi /Od /I "../.." /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\radmathwd.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radmathwtd.lib"

!ELSEIF  "$(CFG)" == "radmath - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radmath___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "radmath___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /Z7 /O2 /I "../.." /D "_MBCS" /D "_LIB" /D "RAD_TUNE" /D "NDEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FR /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /Z7 /O2 /I "../.." /D "_MBCS" /D "_LIB" /D "RAD_TUNE" /D "NDEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\lib\radmathwt.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radmathwtr.lib"

!ENDIF 

# Begin Target

# Name "radmath - Win32 Release"
# Name "radmath - Win32 Debug"
# Name "radmath - Win32 Tune"
# Name "radmath - Win32 Tools Debug"
# Name "radmath - Win32 Tools Release"
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

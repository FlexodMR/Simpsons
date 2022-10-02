# Microsoft Developer Studio Project File - Name="libpng" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=libpng - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libpng.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libpng.mak" CFG="libpng - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libpng - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "libpng"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libpng - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\libpng\Release"
# PROP Intermediate_Dir "obj\libpng\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /Zi /O2 /I "..\..\lib\zlib" /D "NDEBUG" /D "_WINDOWS" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_RELEASE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pngwr.lib"

!ELSEIF  "$(CFG)" == "libpng - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\libpng\Debug"
# PROP Intermediate_Dir "obj\libpng\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /Zi /Od /I "..\..\lib\zlib" /D "_WINDOWS" /D "PNG_USER_MEM_SUPPORTED" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /D "RAD_DEBUG" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pngwd.lib"

!ELSEIF  "$(CFG)" == "libpng - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "libpng___Win32_Tune"
# PROP BASE Intermediate_Dir "libpng___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\libpng\Tune"
# PROP Intermediate_Dir "obj\libpng\Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /GR /O2 /I "..\..\lib\zlib" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MT /W3 /GR /Z7 /O2 /I "..\..\lib\zlib" /D "_WINDOWS" /D "PNG_USER_MEM_SUPPORTED" /D "NDEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /D "RAD_TUNE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\libpngr.lib"
# ADD LIB32 /nologo /out:"../lib/pngwt.lib"

!ELSEIF  "$(CFG)" == "libpng - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "libpng___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "libpng___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /Zi /Od /I "..\..\lib\zlib" /D "_DEBUG" /D "_WINDOWS" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /GR /Zi /Od /I "..\..\lib\zlib" /D "_WINDOWS" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_PC" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_DEBUG" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../lib/pngwh.lib"
# ADD LIB32 /nologo /out:"../lib/pngwh.lib"

!ELSEIF  "$(CFG)" == "libpng - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "libpng___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "libpng___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /Zi /O2 /I "..\..\lib\zlib" /D "NDEBUG" /D "_WINDOWS" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /GR /Zi /O2 /I "..\..\lib\zlib" /D "NDEBUG" /D "_WINDOWS" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_TUNE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../lib/pngwr.lib"
# ADD LIB32 /nologo /out:"../lib/pngwtr.lib"

!ENDIF 

# Begin Target

# Name "libpng - Win32 Release"
# Name "libpng - Win32 Debug"
# Name "libpng - Win32 Tune"
# Name "libpng - Win32 Tools Debug"
# Name "libpng - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\lib\libpng\png.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngerror.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngget.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngmem.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngpread.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngread.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngrio.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngrtran.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngrutil.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngset.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngtrans.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwio.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwrite.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwtran.c
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngwutil.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\lib\libpng\png.h
# End Source File
# Begin Source File

SOURCE=..\..\lib\libpng\pngconf.h
# End Source File
# End Group
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="pddigl" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=pddigl - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "pddigl.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "pddigl.mak" CFG="pddigl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "pddigl - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pddigl - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pddigl - Win32 Tune" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "pddigl"
# PROP Scc_LocalPath "..\..\..\.."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "pddigl - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pddigl\Release"
# PROP Intermediate_Dir "obj\pddigl\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /Zi /O2 /I "..\.." /D "NDEBUG" /D "_WINDOWS" /D "RAD_RELEASE" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo /o"VTune/pddigl.bsc"
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 opengl32.lib winmm.lib user32.lib gdi32.lib /nologo /subsystem:windows /dll /pdb:none /debug /machine:I386 /out:"../lib/pddiglr.dll"

!ELSEIF  "$(CFG)" == "pddigl - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\pddigl\Debug"
# PROP Intermediate_Dir "obj\pddigl\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /Zi /Od /I "..\.." /I "..\..\..\radmath" /D "_WINDOWS" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 opengl32.lib winmm.lib user32.lib gdi32.lib /nologo /subsystem:windows /dll /pdb:none /debug /machine:I386 /out:"../lib/pddigld.dll"

!ELSEIF  "$(CFG)" == "pddigl - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "pddigl___Win32_Tune"
# PROP BASE Intermediate_Dir "pddigl___Win32_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pddigl\Tune"
# PROP Intermediate_Dir "obj\pddigl\Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /GR /O2 /I "..\..\pddi" /I "..\..\pddi\gl" /I "..\..\pddi\gl\display_win32" /I "..\..\pddi\base" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "PDDIGL" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MT /W3 /GR /Z7 /O2 /I "..\.." /D "NDEBUG" /D "_WINDOWS" /D "RAD_TUNE" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o"VTune/pddigl.bsc"
# ADD BSC32 /nologo /o"VTune/pddigl.bsc"
LINK32=link.exe
# ADD BASE LINK32 opengl32.lib winmm.lib user32.lib gdi32.lib /nologo /subsystem:windows /dll /pdb:none /debug /machine:I386 /out:"lib/pddiglr.dll"
# ADD LINK32 opengl32.lib winmm.lib user32.lib gdi32.lib /nologo /subsystem:windows /dll /pdb:none /debug /machine:I386 /out:"../lib/pddiglt.dll"

!ENDIF 

# Begin Target

# Name "pddigl - Win32 Release"
# Name "pddigl - Win32 Debug"
# Name "pddigl - Win32 Tune"
# Begin Group "interface"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\Pddi.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\Pddienum.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddiext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddilinux.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddipc.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddips2.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddishade.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pdditype.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\Pddiwin32.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddixbox.hpp
# End Source File
# End Group
# Begin Group "base"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\base\basecontext.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\basecontext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\baseshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\baseshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\basetype.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\font.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\Font.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\pddiobj.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\romans.h
# End Source File
# End Group
# Begin Group "gl"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\gl\display_win32\gl.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\glcon.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\glcon.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\gldev.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\gldev.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\display_win32\gldisplay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\display_win32\gldisplay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\glmat.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\glmat.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\gltex.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\gl\gltex.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\pddi\gl\display_win32\pddigl.rc
# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="chengine" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=chengine - Win32 Tune
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "chengine.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "chengine.mak" CFG="chengine - Win32 Tune"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "chengine - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "chengine - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "chengine - Win32 Tune" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "chengine"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "chengine - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "debug"
# PROP Intermediate_Dir "debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CHENGINE_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "../../code" /I "../../../../../pure3d" /I "../../../../../radcore/inc" /I "../../../../../radmath" /I "../../../../inc" /I "../../../../../poser/inc" /I "../../../../../radcontent/inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CHENGINE_EXPORTS" /D "CHOREOVIEWER_ENGINE" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /win32
# SUBTRACT MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dxguid.lib ws2_32.lib /nologo /dll /debug /machine:I386 /out:"../../bin/chengine.dll" /pdbtype:sept
# SUBTRACT LINK32 /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\..\..\..\..\pure3d\build\lib\pddidx8d.dll ..\..\bin	coff2omf debug\chengine.lib ..\..\bin\chengineb.lib
# End Special Build Tool

!ELSEIF  "$(CFG)" == "chengine - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "chengine___Win32_Release"
# PROP BASE Intermediate_Dir "chengine___Win32_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "release"
# PROP Intermediate_Dir "release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "../../code" /I "../../../../../pure3d" /I "../../../../../radcore/inc" /I "../../../../../radmath" /I "../../../../inc" /I "../../../../../poser/inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CHENGINE_EXPORTS" /D "CHOREOVIEWER_ENGINE" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MT /W3 /GR /O2 /I "../../code" /I "../../../../../pure3d" /I "../../../../../radcore/inc" /I "../../../../../radmath" /I "../../../../inc" /I "../../../../../poser/inc" /I "../../../../../radcontent/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CHENGINE_EXPORTS" /D "CHOREOVIEWER_ENGINE" /D "RAD_RELEASE" /D "RAD_PC" /D "RAD_WIN32" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# SUBTRACT BASE MTL /mktyplib203
# ADD MTL /nologo /D "_DEBUG" /win32
# SUBTRACT MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dxguid.lib ws2_32.lib /nologo /dll /debug /machine:I386 /out:"../../bin/chengine.dll" /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dxguid.lib ws2_32.lib /nologo /dll /debug /machine:I386 /out:"../../bin/chengine.dll" /pdbtype:sept
# SUBTRACT LINK32 /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\..\..\..\..\pure3d\build\lib\pddidx8r.dll ..\..\bin	coff2omf release\chengine.lib ..\..\bin\chengineb.lib
# End Special Build Tool

!ELSEIF  "$(CFG)" == "chengine - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "chengine___Win32_Tune"
# PROP BASE Intermediate_Dir "chengine___Win32_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "tune"
# PROP Intermediate_Dir "tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /GR /O2 /I "../../code" /I "../../../../../pure3d" /I "../../../../../radcore/inc" /I "../../../../../radmath" /I "../../../../inc" /I "../../../../../poser/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CHENGINE_EXPORTS" /D "CHOREOVIEWER_ENGINE" /D "RAD_RELEASE" /D "RAD_PC" /D "RAD_WIN32" /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /Z7 /O2 /I "../../code" /I "../../../../../pure3d" /I "../../../../../radcore/inc" /I "../../../../../radmath" /I "../../../../inc" /I "../../../../../poser/inc" /I "../../../../../radcontent/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CHENGINE_EXPORTS" /D "CHOREOVIEWER_ENGINE" /D "RAD_TUNE" /D "RAD_PC" /D "RAD_WIN32" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# SUBTRACT BASE MTL /mktyplib203
# ADD MTL /nologo /D "_DEBUG" /win32
# SUBTRACT MTL /mktyplib203
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dxguid.lib ws2_32.lib /nologo /dll /debug /machine:I386 /out:"../../bin/chengine.dll" /pdbtype:sept
# SUBTRACT BASE LINK32 /nodefaultlib
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dxguid.lib ws2_32.lib /nologo /dll /debug /machine:I386 /out:"../../bin/chengine.dll" /pdbtype:sept
# SUBTRACT LINK32 /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\..\..\..\..\pure3d\build\lib\pddidx8t.dll ..\..\bin	coff2omf tune\chengine.lib ..\..\bin\chengineb.lib
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "chengine - Win32 Debug"
# Name "chengine - Win32 Release"
# Name "chengine - Win32 Tune"
# Begin Source File

SOURCE=..\..\code\chengine\cvcontext.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\cvcontext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\cvplatform.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\cvpuppet.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\cvpuppet.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\cvterrain.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\cvterrain.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\dllmain.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\input.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\input.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chcommon\interface.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\linebatcher.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\linebatcher.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\octtree.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\chengine\octtree.hpp
# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="p3dview" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Application" 0x0b01

CFG=p3dview - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dview.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dview.mak" CFG="p3dview - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dview - Xbox Release" (based on "Xbox Application")
!MESSAGE "p3dview - Xbox Debug" (based on "Xbox Application")
!MESSAGE "p3dview - Xbox Tune" (based on "Xbox Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dview"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "p3dview - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "p3dview___Xbox_Release"
# PROP BASE Intermediate_Dir "p3dview___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\p3dview\release"
# PROP Intermediate_Dir "obj\p3dview\release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
MTL=midl.exe
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /Ob2 /I "..\..\..\..\.." /I "..\..\code" /I "..\..\..\..\\" /I "..\..\lib" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcore\src" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xbdm.lib xapilibd.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib compile.obj /nologo /debug /machine:I386 /subsystem:xbox /fixed:no /force:multiple /TMP
# SUBTRACT LINK32 /pdb:none
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000
# ADD XBE /nologo /stack:0x10000 /out:"../../dist/p3dview.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=..\..\tools\bin\win32\info > obj\p3dview\compile.cpp	cl /nologo /MTd /c obj\p3dview\compile.cpp
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dview - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dview___Xbox_Debug"
# PROP BASE Intermediate_Dir "p3dview___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\p3dview\debug"
# PROP Intermediate_Dir "obj\p3dview\debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
MTL=midl.exe
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\..\.." /I "..\..\code" /I "..\..\..\..\\" /I "..\..\lib" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcore\src" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcontent\inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilibd.lib d3d8d.lib d3dx8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xbdm.lib xapilibd.lib d3d8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib compile.obj /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /TMP /force:multiple
# SUBTRACT LINK32 /pdb:none
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000 /debug
# ADD XBE /nologo /testname:"Pure3D Viewer" /stack:0x20000 /debug /out:"../../dist/p3dview.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=..\..\tools\bin\win32\info > compile.cpp	cl /nologo /MTd /c compile.cpp
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dview - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "p3dview___Xbox_Tune"
# PROP BASE Intermediate_Dir "p3dview___Xbox_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\p3dview\tune"
# PROP Intermediate_Dir "obj\p3dview\tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
MTL=midl.exe
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GR /O2 /I "..\..\code" /I "..\..\..\..\\" /I "..\..\lib" /D "NDEBUG" /D "WIN32" /D "_XBOX" /FD /G6 /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /GR /Zi /O2 /Ob2 /I "..\..\..\..\.." /I "..\..\code" /I "..\..\..\..\\" /I "..\..\lib" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcore\src" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib compile.obj /nologo /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6 /force:multiple
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 xbdm.lib xapilibd.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib compile.obj /nologo /debug /machine:I386 /subsystem:xbox /fixed:no /TMP /force:multiple
# SUBTRACT LINK32 /pdb:none
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000 /out:"../../dist/p3dview.xbe"
# ADD XBE /nologo /stack:0x10000 /out:"../../dist/p3dview.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=..\..\tools\bin\win32\info > obj\p3dview\compile.cpp	cl /nologo /MTd /c obj\p3dview\compile.cpp
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dview - Xbox Release"
# Name "p3dview - Xbox Debug"
# Name "p3dview - Xbox Tune"
# Begin Group "code"

# PROP Default_Filter ""
# Begin Group "boot"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\boot\xbox\boot.cpp
# End Source File
# End Group
# Begin Group "config"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\config\arguments.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\config\arguments.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\config\settings.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\config\settings.hpp
# End Source File
# End Group
# Begin Group "console"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\console\class.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\class.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\commandline.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\commandline.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\console.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\console.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\enum.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\enum.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\function.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\function.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\interface.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\objectscripter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\objectscripter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\quickviewp3d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\quickviewp3d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\shatter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\shatter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\types.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\types.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\viewp3d.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\viewp3d.hpp
# End Source File
# End Group
# Begin Group "file"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\file\bufferstream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\file\bufferstream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\file\p3dfile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\file\p3dfile.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\file\textfile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\file\textfile.hpp
# End Source File
# End Group
# Begin Group "interface"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\interface\framework.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\io.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\subsystem.hpp
# End Source File
# End Group
# Begin Group "rendering"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\rendering\grid.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\grid.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\lightdebug.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\lightdebug.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\origin.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\origin.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\quakecam.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\quakecam.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\strokefont.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\rendering\strokefont.hpp
# End Source File
# End Group
# Begin Group "utility"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\utility\array.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\pointer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\smoother.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\string.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\string.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\symboltable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\symboltable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\time.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\utility\time.hpp
# End Source File
# End Group
# Begin Group "viewer"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\viewer\capture.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\capture.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\collision.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\collision.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\lighting.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\lighting.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\overlay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\overlay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\server.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\server.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\testpattern.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\testpattern.h
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\testpattern.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\version.h
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\viewer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\viewer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\viewercamera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\viewercamera.hpp
# End Source File
# End Group
# Begin Group "kernel"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\kernel\xbox\kernel.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\xbox\kernel.hpp
# End Source File
# End Group
# Begin Group "plugin"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\plugin\module.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\plugin\module.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\plugin\registry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\plugin\registry.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\plugin\types.hpp
# End Source File
# End Group
# Begin Group "collision"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\simcollision\collisiondisplay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisionobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisionvolume.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcommon\dline2.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcommon\tlist.cpp
# End Source File
# End Group
# Begin Group "input"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\input\consolebindings.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\input\xbox\inputxbox.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\input\xbox\inputxbox.hpp
# End Source File
# End Group
# Begin Group "modules"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\plugin\modules\history.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\plugin\modules\locators.cpp
# End Source File
# End Group
# End Group
# End Target
# End Project

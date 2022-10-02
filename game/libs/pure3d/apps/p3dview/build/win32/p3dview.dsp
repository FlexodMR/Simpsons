# Microsoft Developer Studio Project File - Name="p3dview" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=p3dview - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dview.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dview.mak" CFG="p3dview - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dview - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "nbrooke-dual"
# PROP Scc_LocalPath "."
CPP=snCl.exe
MTL=midl.exe
RSC=rc.exe
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dview___Win32_Debug"
# PROP BASE Intermediate_Dir "p3dview___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj/p3dview/Debug"
# PROP Intermediate_Dir "obj/p3dview/Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "P3DVIEW_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /GX /Zi /Od /I "..\..\..\..\..\choreo\inc\\" /I "..\..\..\\" /I "..\..\..\..\..\..\code\\" /I "..\..\..\..\\" /I "..\..\..\..\.." /I "..\..\code" /I "..\..\lib" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcore\src" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcontent\inc" /D "TOOLS" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FR /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=snLink.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib ws2_32.lib winmm.lib compile.obj SetupAPI.lib /nologo /dll /pdb:none /debug /machine:I386 /out:"../../dist/p3dview.dll"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Desc=Generating compile fingerprint...
PreLink_Cmds=..\..\tools\bin\win32\info > obj\p3dview\compile.cpp	cl /nologo /MTd /c obj\p3dview\compile.cpp
PostBuild_Cmds=copy ..\..\..\..\build\lib\*d.dll ..\..\dist
# End Special Build Tool
# Begin Target

# Name "p3dview - Win32 Debug"
# Begin Group "data"

# PROP Default_Filter ""
# Begin Group "scripts"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\data\scripts\avi.cfg
# Begin Custom Build - Copying script : $(InputName).cfg
InputPath=..\..\data\scripts\avi.cfg
InputName=avi

"..\..\dist\scripts\$(InputName).cfg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist\scripts > nul

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\data\scripts\screenshot.cfg
# Begin Custom Build - Copying script : $(InputName).cfg
InputPath=..\..\data\scripts\screenshot.cfg
InputName=screenshot

"..\..\dist\scripts\$(InputName).cfg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist\scripts > nul

# End Custom Build
# End Source File
# End Group
# Begin Group "help"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\data\help\changelist.txt
# Begin Custom Build
InputPath=..\..\data\help\changelist.txt
InputName=changelist

"..\..\dist\$(InputName).txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\data\help\commands.txt
# Begin Custom Build
InputPath=..\..\data\help\commands.txt
InputName=commands

"..\..\dist\$(InputName).txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\data\help\quickhelp.txt
# Begin Custom Build
InputPath=..\..\data\help\quickhelp.txt
InputName=quickhelp

"..\..\dist\$(InputName).txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\data\config\client.ini
# Begin Custom Build
InputPath=..\..\data\config\client.ini

"..\..\dist\client.ini" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\dist\client_user.ini
# End Source File
# Begin Source File

SOURCE=..\..\data\config\default.cfg
# Begin Custom Build
InputPath=..\..\data\config\default.cfg

"..\..\dist\default.cfg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\dist\default_user.cfg
# End Source File
# Begin Source File

SOURCE=..\..\data\config\input.cfg
# Begin Custom Build
InputPath=..\..\data\config\input.cfg

"..\..\dist\input.cfg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\dist\input_user.cfg
# End Source File
# Begin Source File

SOURCE=..\..\data\makeavi.exe
# Begin Custom Build
InputPath=..\..\data\makeavi.exe

"..\..\dist\makeavi.exe" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\data\config\menu.cfg
# Begin Custom Build
InputPath=..\..\data\config\menu.cfg

"..\..\dist\menu.cfg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\dist\menu_user.cfg
# End Source File
# Begin Source File

SOURCE=..\..\data\config\server.ini
# Begin Custom Build
InputPath=..\..\data\config\server.ini

"..\..\dist\server.ini" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\dist\server_user.ini
# End Source File
# End Group
# Begin Group "code"

# PROP Default_Filter ""
# Begin Group "boot"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\boot\win32\boot.cpp
# End Source File
# End Group
# Begin Group "client"

# PROP Default_Filter ""
# Begin Group "deci2boot"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\client\deci2boot\dbgp.c
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\dbgp.h
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\dcmp.c
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\dcmp.h
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\deci2.h
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\deci2boot.c
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\deci2boot.h
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\elf.c
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\elf.h
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\list.c
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\list.h
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\netmp.c
# End Source File
# Begin Source File

SOURCE=..\..\code\client\deci2boot\netmp.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\code\client\client.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\client.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\debugcom.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\debugcom.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\ftthfs.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\ftthfs.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\main.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\main.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\remote.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\remote.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\remoteconnection.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\servermanager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\client\servermanager.hpp
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
# Begin Source File

SOURCE=..\..\code\console\winconsole.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\console\winconsole.hpp
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
# Begin Group "gui"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\gui\win32\copydataadapter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\copydataadapter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\dragadapter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\dragadapter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\filedialog.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\filedialog.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\menu.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\menu.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\window.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\gui\win32\window.hpp
# End Source File
# End Group
# Begin Group "input"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\input\consolebindings.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\input\consolebindings.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\input\inputdriver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\input\win32\inputwin32.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\input\win32\inputwin32.hpp
# End Source File
# End Group
# Begin Group "interface"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\interface\commandrecipient.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\display.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\io.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\kernel.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\subsystem.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\interface\window.hpp
# End Source File
# End Group
# Begin Group "kernel"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\kernel\win32\kernel.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\win32\kernel.hpp
# End Source File
# End Group
# Begin Group "platforms"

# PROP Default_Filter ""
# Begin Group "ps2"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\boot\ps2\boot.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\ps2\inputps2.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\ps2\inputps2.hpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\ps2\kernel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\ps2\kernel.hpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\ps2\padman.h
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\ps2\sio2man.h
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "xbox"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\boot\xbox\boot.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\xbox\inputxbox.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\xbox\inputxbox.hpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\xbox\kernel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\xbox\kernel.hpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "linux"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\boot\linux\boot.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\linux\kernel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\linux\kernel.hpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "GameCube"

# PROP Default_Filter ".cpp .hpp"
# Begin Source File

SOURCE=..\..\code\boot\gamecube\boot.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\gamecube\gcDriver.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\input\gamecube\gcDriver.hpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\gamecube\kernel.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\kernel\gamecube\kernel.hpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# End Group
# Begin Group "plugin"

# PROP Default_Filter ""
# Begin Group "modules"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\plugin\modules\history.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\plugin\modules\locators.cpp
# End Source File
# End Group
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

SOURCE=..\..\code\utility\queue.hpp
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

SOURCE=..\..\code\viewer\compile.h
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\lighting.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\lighting.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\log.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\objectlist.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\overlay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\overlay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewer\p3dcube.h
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
# Begin Group "simcollision"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\simcollision\collisiondisplay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisiondisplay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisionobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisionobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisionvolume.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcollision\collisionvolume.hpp
# End Source File
# End Group
# Begin Group "simcommon"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\simcommon\dline2.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcommon\dline2.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcommon\tlist.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\simcommon\tlist.hpp
# End Source File
# End Group
# Begin Group "srr_types"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\geometry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\geometry.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\intersection.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\intersection.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\intersectionloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\intersectionloader.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\lane.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\lane.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\loadingmanager.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\render\Culling\ReserveArray.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\road.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\roads/road.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\roaddatasegmentloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\roaddatasegmentloader.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\roadloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\loading\roadloader.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadmanager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadmanager.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadrender.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadsegment.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadsegment.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadsegmentdata.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\roadsegmentdata.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\render\Culling\SwapArray.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\trafficcontrol.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\roads\trafficcontrol.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\..\code\render\Culling\UseArray.h
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\choreo\src\utility.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\choreo\inc\choreo\utility.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\code\viewer\version.h
# End Source File
# End Group
# Begin Group "libs"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\lib\xboxdbg\XboxDbg.Dll
# Begin Custom Build
InputPath=..\..\lib\xboxdbg\XboxDbg.Dll

"..\..\dist\XboxDbg.dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\dist

# End Custom Build
# End Source File
# Begin Source File

SOURCE=..\..\lib\xboxdbg\XboxDbg.Lib
# End Source File
# End Group
# End Target
# End Project

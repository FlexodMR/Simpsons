# Microsoft Developer Studio Project File - Name="radcore" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=radcore - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radcore.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radcore.mak" CFG="radcore - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radcore - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radcore - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "radcore - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE "radcore - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE "radcore - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radcore"
# PROP Scc_LocalPath "..\.."
CPP=snCl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radcore - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "release"
# PROP Intermediate_Dir "release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /O1 /Ob2 /I "..\..\inc" /I "..\..\..\..\code\\" /I "..\..\..\pure3d\sdks\dx8" /D "RELEASE" /D "NDEBUG" /D "RAD_RELEASE" /D "TOOLS" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /FR /Yu"pch.hpp" /Zl /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radcorewr.lib"

!ELSEIF  "$(CFG)" == "radcore - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radcore___Win32_Debug"
# PROP BASE Intermediate_Dir "radcore___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "debug"
# PROP Intermediate_Dir "debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\inc" /I "..\..\..\..\code\\" /I "..\..\..\pure3d\sdks\dx8" /D "_DEBUG" /D "DEBUG" /D "RAD_DEBUG" /D "TOOLS" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /FR /Yu"pch.hpp" /Zl /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\radcorewd.lib"

!ELSEIF  "$(CFG)" == "radcore - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radcore___Win32_Tune"
# PROP BASE Intermediate_Dir "radcore___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "tune"
# PROP Intermediate_Dir "tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /I "..\..\inc" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MT /W3 /GR /Zi /O1 /Ob2 /I "..\..\inc" /I "..\..\..\..\code\\" /I "..\..\..\pure3d\sdks\dx8" /D "TUNE" /D "NDEBUG" /D "RAD_TUNE" /D "TOOLS" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /FR /Yu"pch.hpp" /Zl /FD /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo /out:"..\..\lib\radcorewd.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radcorewt.lib"

!ELSEIF  "$(CFG)" == "radcore - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radcore___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "radcore___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "radcore___Win32_Tools_Release"
# PROP Intermediate_Dir "radcore___Win32_Tools_Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GR /O1 /Ob2 /I "..\..\inc" /D "RELEASE" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /D "RAD_RELEASE" /FR /Yu"pch.hpp" /Zl /FD /c
# ADD CPP /nologo /MD /W3 /GR /O1 /Ob2 /I "..\..\..\pure3d\sdks\dx8" /I "..\..\inc" /I "..\..\..\..\code\\" /D "RELEASE" /D "NDEBUG" /D "RAD_RELEASE" /D "TOOLS" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /FR /Yu"pch.hpp" /Zl /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo /out:"..\..\lib\radcorewr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radcorewr.lib"

!ELSEIF  "$(CFG)" == "radcore - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radcore___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "radcore___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "radcore___Win32_Tools_Debug"
# PROP Intermediate_Dir "radcore___Win32_Tools_Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\inc" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "DEBUG" /D "RAD_WIN32" /D "RAD_DEBUG" /FR /Yu"pch.hpp" /Zl /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\..\pure3d\sdks\dx8" /I "..\..\inc" /I "..\..\..\..\code\\" /D "_DEBUG" /D "DEBUG" /D "RAD_DEBUG" /D "TOOLS" /D "WIN32" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /FR /Yu"pch.hpp" /Zl /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo /out:"..\..\lib\radcorewd.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radcorewd.lib"

!ENDIF 

# Begin Target

# Name "radcore - Win32 Release"
# Name "radcore - Win32 Debug"
# Name "radcore - Win32 Tune"
# Name "radcore - Win32 Tools Release"
# Name "radcore - Win32 Tools Debug"
# Begin Group "src"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
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
# Begin Group "raddebug"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebug\debug.cpp
# End Source File
# End Group
# Begin Group "radobject"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radobject\object.cpp
# End Source File
# End Group
# Begin Group "raddispatch"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddispatch\dispatcher.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddispatch\dispatcher.hpp
# End Source File
# End Group
# Begin Group "radtime"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radtime\stopwatch.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radtime\stopwatch.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radtime\time.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radtime\time.hpp
# End Source File
# End Group
# Begin Group "radmemory"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radmemory\align.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\binallocator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\binallocator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\dlheap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\externalmemoryheap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\externalmemoryheap.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\externalmemoryobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\externalmemoryobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\memory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\memorymanager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\memoryobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\memorypool.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\memoryspacewin32.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\memoryspacewin32.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\platalloc.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\platalloc.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\staticheap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\staticheap.h
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\twowayallocator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\twowayallocator.hpp
# End Source File
# End Group
# Begin Group "radstring"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radstring\string.cpp
# End Source File
# End Group
# Begin Group "radplatform"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radplatform\platform.cpp
# End Source File
# End Group
# Begin Group "radobjectlist"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radobjectlist\dynamicarray.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radobjectlist\objectlist.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radobjectlist\weakcallbackwrapper.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radobjectlist\weakinterfacewrapper.cpp
# End Source File
# End Group
# Begin Group "raddebugcommunication"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\1394shared.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\dcmp.h
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\deci2x.h
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\decitypes.h
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\hioshared.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\host.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\host.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\host1394socket.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\host1394socket.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\hostchannel.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\hostchannel.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\hosthiosocket.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\hosthiosocket.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\netmp.h
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\protocol.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\socket.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetconnection.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetconnection.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetdecichannel.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetsocketchannel.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetsocketchannel.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetx.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugcommunication\targetx.hpp
# End Source File
# End Group
# Begin Group "raddebugconsole"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebugconsole\consoleclient.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugconsole\consoleclient.hpp
# End Source File
# End Group
# Begin Group "radprotocols"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radprotocols\debugconsoleprotocol.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprotocols\debugwatchprotocol.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprotocols\fileprotocol.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprotocols\memorymonitorprotocol.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprotocols\remotecommandprotocol.hpp
# End Source File
# End Group
# Begin Group "raddebugwatch"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebugwatch\watchclient.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugwatch\watchclient.hpp
# End Source File
# End Group
# Begin Group "radremotecommand"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radremotecommand\functionlist.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radremotecommand\remotecommand.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radremotecommand\remotecommandserver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radremotecommand\remotecommandtarget.cpp
# End Source File
# End Group
# Begin Group "radcontroller"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radcontroller\directinputcontroller.cpp
# End Source File
# End Group
# Begin Group "radfile"

# PROP Default_Filter ""
# Begin Group "common"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radfile\common\cementer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\cementer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\cementLibrary.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\drive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\drive.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\drivethread.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\drivethread.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\file.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\file.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\filecache.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\filecache.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\filesystem.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\filesystem.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\instancedrive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\instancedrive.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\platformdrives.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\platformdrives.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\radfile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\remotedrive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\remotedrive.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\requests.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\requests.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\saferefobject.hpp
# End Source File
# End Group
# Begin Group "win"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radfile\win32\win32drive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\win32\win32drive.hpp
# End Source File
# End Group
# End Group
# Begin Group "radthread"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radthread\mutex.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\mutex.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\semaphore.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\semaphore.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\system.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\system.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\thread.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radthread\thread.hpp
# End Source File
# End Group
# Begin Group "rad1394"

# PROP Default_Filter ""
# Begin Group "win32lib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\rad1394\win32lib\rad1394master.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\rad1394\win32lib\rad1394master.hpp
# End Source File
# End Group
# End Group
# Begin Group "radobjectbtree"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radobjectbtree\objectavltree.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radobjectbtree\objectavltree.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radobjectbtree\objectbtree.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radobjectbtree\objectbtree.hpp
# End Source File
# End Group
# Begin Group "radstacktrace"

# PROP Default_Filter ""
# Begin Group "win32"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radstacktrace\win32\stacktrace.cpp
# End Source File
# End Group
# End Group
# Begin Group "raddebugfileserver"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebugfileserver\fileserver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugfileserver\fileserver.hpp
# End Source File
# End Group
# Begin Group "radstats"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radstats\simplestat.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radstats\simplestat.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radstats\statmanager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radstats\statmanager.hpp
# End Source File
# End Group
# Begin Group "radtextdisplay"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radtextdisplay\font.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radtextdisplay\textdisplay.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radtextdisplay\textdisplay.hpp
# End Source File
# End Group
# Begin Group "radmemorymonitor"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radmemorymonitor\memmonitorclient.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemorymonitor\memmonitorclient.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemorymonitor\memmonitorclienthelp.cpp
# End Source File
# End Group
# Begin Group "radprofiler"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radprofiler\profiler.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprofiler\profiler.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprofiler\profiler2.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprofiler\profilesample.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radprofiler\profilesample.hpp
# End Source File
# End Group
# Begin Group "radkey"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radkey\radkey.cpp
# End Source File
# End Group
# End Group
# Begin Group "inc"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\inc\rad1394.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radcontroller.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\raddebug.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\raddebugcommunication.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\raddebugconsole.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\raddebugfileserver.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\raddebugwatch.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\raddispatch.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radfile.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radkey.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radlinkedclass.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radmemory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radmemorymonitor.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radobjectbtree.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radobjectlist.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radoptions.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radplatform.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radprofiler.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radremotecommand.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radstacktrace.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radstats.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radstring.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radtextdisplay.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radthread.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radtime.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\releasenotes.txt
# End Source File
# End Target
# End Project

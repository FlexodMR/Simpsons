# Microsoft Developer Studio Project File - Name="radcore" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=radcore - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radcore.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radcore.mak" CFG="radcore - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radcore - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "radcore - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "radcore - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radcore"
# PROP Scc_LocalPath "..\..\..\.."
CPP=cl.exe

!IF  "$(CFG)" == "radcore - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "radcore___Xbox_Debug"
# PROP BASE Intermediate_Dir "radcore___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "xdebug"
# PROP Intermediate_Dir "xdebug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /I "..\..\..\inc" /I "..\..\..\..\Sdks\XBox\include" /I "..\..\..\..\Sdks\XBox\XBox\include" /D "WIN32" /D "_XBOX" /D "_DEBUG" /D "_WINDOWS" /D "DEBUG" /D "RFCSTATIC" /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /GR /Zi /Od /I "..\..\inc" /I "..\..\..\..\code" /D "_DEBUG" /D "DEBUG" /D "WIN32" /D "_XBOX" /D "_WINDOWS" /D "RAD_XBOX" /D "RAD_DEBUG" /FR /Yu"pch.hpp" /FD /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\radcorexd.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radcorexd.lib"

!ELSEIF  "$(CFG)" == "radcore - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radcore___Xbox_Release"
# PROP BASE Intermediate_Dir "radcore___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "xrelease"
# PROP Intermediate_Dir "xrelease"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
# ADD BASE CPP /nologo /W3 /GX /O2 /I "..\..\..\inc" /I "..\..\..\..\Sdks\XBox\include" /I "..\..\..\..\Sdks\XBox\XBox\include" /D "WIN32" /D "_XBOX" /D "NDEBUG" /D "_WINDOWS" /D "RELEASE" /D "RFCSTATIC" /YX /FD /c
# ADD CPP /nologo /W3 /GR /O2 /Ob2 /I "..\..\inc" /I "..\..\..\..\code" /D "RELEASE" /D "FINAL" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "_WINDOWS" /D "RAD_XBOX" /D "RAD_RELEASE" /FR /Yu"pch.hpp" /FD /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\radcorexr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radcorexr.lib"

!ELSEIF  "$(CFG)" == "radcore - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "radcore___Xbox_Tune"
# PROP BASE Intermediate_Dir "radcore___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "xtune"
# PROP Intermediate_Dir "xtune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
# ADD BASE CPP /nologo /W3 /GX /O2 /I "..\..\..\inc" /D "WIN32" /D "_XBOX" /D "NDEBUG" /D "_WINDOWS" /D "RELEASE" /D "RFCSTATIC" /YX /FD /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /Ob2 /I "..\..\inc" /I "..\..\..\..\code" /D "TUNE" /D "RAD_XBOX" /D "_WINDOWS" /D "RAD_TUNE" /D "NDEBUG" /D "WIN32" /D "_XBOX" /FR /Yu"pch.hpp" /FD /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\..\..\lib\radcorexr.lib"
# ADD LIB32 /nologo /out:"..\..\lib\radcorext.lib"

!ENDIF 

# Begin Target

# Name "radcore - Xbox Debug"
# Name "radcore - Xbox Release"
# Name "radcore - Xbox Tune"
# Begin Group "src"

# PROP Default_Filter ""
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
# Begin Group "radcontroller"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radcontroller\controllerbuffer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radcontroller\controllerbuffer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radcontroller\radcontrollerbuffer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radcontroller\xboxcontroller.cpp
# End Source File
# End Group
# Begin Group "raddebug"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebug\debug.cpp
# End Source File
# End Group
# Begin Group "raddebugcommunication"

# PROP Default_Filter ""
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
# Begin Group "raddebugwatch"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\raddebugwatch\watchclient.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\raddebugwatch\watchclient.hpp
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

SOURCE=..\..\src\radmemory\twowayallocator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radmemory\twowayallocator.hpp
# End Source File
# End Group
# Begin Group "radobject"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radobject\object.cpp
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
# Begin Group "radplatform"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radplatform\platform.cpp
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

SOURCE=..\..\src\radprotocols\remotecommandprotocol.hpp
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
# Begin Group "radstring"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radstring\string.cpp
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
# Begin Group "radfile"

# PROP Default_Filter ""
# Begin Group "common"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radfile\common\buffereddrive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\buffereddrive.hpp
# End Source File
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
# Begin Source File

SOURCE=..\..\src\radfile\common\signeddrive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\common\signeddrive.hpp
# End Source File
# End Group
# Begin Group "xbox"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radfile\xbox\xboxdrive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\xbox\xboxdrive.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\xbox\xboxsavedrive.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radfile\xbox\xboxsavedrive.hpp
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
# Begin Source File

SOURCE=..\..\src\radprotocols\memorymonitorprotocol.hpp
# End Source File
# End Group
# Begin Group "radcrashhandler"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radcrashhandler\crashrecords.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radcrashhandler\xboxcrashhandler.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\radcrashhandler\xboxcrashhandler.hpp
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

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\inc\radcontroller.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\radcrashhandler.hpp
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

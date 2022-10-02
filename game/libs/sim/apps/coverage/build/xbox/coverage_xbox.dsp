# Microsoft Developer Studio Project File - Name="coverage_xbox" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Application" 0x0b01

CFG=coverage_xbox - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "coverage_xbox.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "coverage_xbox.mak" CFG="coverage_xbox - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "coverage_xbox - Xbox Release" (based on "Xbox Application")
!MESSAGE "coverage_xbox - Xbox Debug" (based on "Xbox Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "coverage_xbox"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "coverage_xbox - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "coverage_xbox___Xbox_Release"
# PROP BASE Intermediate_Dir "coverage_xbox___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /GR /O2 /I "../../../../../pure3d" /I "../../../../../radmath" /I "../../../../" /I "../../../../../radcore/inc" /I "../../../../../radsound/inc" /I "../../../../../poser/inc" /D "WIN32" /D "_XBOX" /D "NDEBUG" /D "RAD_RELEASE" /D "RAD_CONSOLE" /D "RAD_XBOX" /FR /YX /FD /G6 /Zvc6 /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xapilib.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /out:"../../bin/coveragexr.exe" /subsystem:xbox /fixed:no /debugtype:vc6
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000
# ADD XBE /nologo /testname:"Simulation Coverage Test" /stack:0x10000 /out:"../../bin/coveragexr.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=xbmkdir xe:\coverage\art	xbcp /f ..\..\bin\art\*.* xe:\coverage\art	xbcp /f ..\..\bin\config.txt xe:\coverage	xbcp /f ..\..\bin\benchmark.cfg xe:\coverage
# End Special Build Tool

!ELSEIF  "$(CFG)" == "coverage_xbox - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "coverage_xbox___Xbox_Debug"
# PROP BASE Intermediate_Dir "coverage_xbox___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "../../../../../pure3d" /I "../../../../../radmath" /I "../../../../" /I "../../../../../radcore/inc" /I "../../../../../radsound/inc" /I "../../../../../poser/inc" /D "WIN32" /D "_XBOX" /D "_DEBUG" /D "RAD_DEBUG" /D "RAD_CONSOLE" /D "RAD_XBOX" /FR /YX /FD /G6 /Zvc6 /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilibd.lib d3d8d.lib d3dx8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xapilibd.lib d3d8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /out:"../../bin/coveragexd.exe" /subsystem:xbox /fixed:no /debugtype:vc6
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000 /debug
# ADD XBE /nologo /testname:"Simulation Coverage Test" /stack:0x10000 /debug /out:"../../bin/coveragexd.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=xbmkdir xe:\coverage\art	xbcp /f ..\..\bin\art\*.* xe:\coverage\art	xbcp /f ..\..\bin\config.txt xe:\coverage	xbcp /f ..\..\bin\benchmark.cfg xe:\coverage
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "coverage_xbox - Xbox Release"
# Name "coverage_xbox - Xbox Debug"
# Begin Source File

SOURCE=..\..\src\benchmark.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\benchmark.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\benchmarkparameter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\benchmarkparameter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\benchmarkresults.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\benchmarkresults.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\configparam.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\configparam.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\coverage.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\coverage.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\coverapp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\coverapp.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\grid.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\grid.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\harness.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\harness.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\manualflexdrawable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\userobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\userobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\viewercamera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\viewercamera.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\xbox.cpp
# End Source File
# End Target
# End Project

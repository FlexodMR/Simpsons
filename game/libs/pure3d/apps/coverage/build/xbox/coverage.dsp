# Microsoft Developer Studio Project File - Name="coverage" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Application" 0x0b01

CFG=coverage - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "coverage.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "coverage.mak" CFG="coverage - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "coverage - Xbox Release" (based on "Xbox Application")
!MESSAGE "coverage - Xbox Debug" (based on "Xbox Application")
!MESSAGE "coverage - Xbox Tune" (based on "Xbox Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "coverage"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "coverage - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "coverage___Xbox_Release"
# PROP BASE Intermediate_Dir "coverage___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /I "..\..\..\..\\" /I "..\..\code" /I "..\..\code\tests" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcontent\inc" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_RELEASE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xapilib.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /debug /machine:I386 /subsystem:xbox /fixed:no /TMP
# SUBTRACT LINK32 /pdb:none
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000
# ADD XBE /nologo /testname:"Pure3D Coverage Test (Release)" /stack:0x10000 /debug /out:"../../dist/coveragexr.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO

!ELSEIF  "$(CFG)" == "coverage - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "coverage___Xbox_Debug"
# PROP BASE Intermediate_Dir "coverage___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "..\..\..\..\\" /I "..\..\code" /I "..\..\code\tests" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcontent\inc" /D "_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_DEBUG" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilibd.lib d3d8d.lib d3dx8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xapilibd.lib d3d8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /TMP
# SUBTRACT LINK32 /pdb:none
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000 /debug
# ADD XBE /nologo /testname:"Pure3D Coverage Test (Debug)" /stack:0x10000 /debug /out:"../../dist/coveragexd.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=xbmkdir xe:\coverage	xbcp /f /r  ..\..\dist\*.* xe:\coverage
# End Special Build Tool

!ELSEIF  "$(CFG)" == "coverage - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "coverage___Xbox_Tune"
# PROP BASE Intermediate_Dir "coverage___Xbox_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GR /Zi /O2 /I "..\..\\" /I "..\coverage" /I "..\..\..\radmath" /I "..\..\..\radcore\inc" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_RELEASE" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /I "..\..\..\..\\" /I "..\..\code" /I "..\..\code\tests" /I "..\..\..\..\..\radmath" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radcontent\inc" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /D "RAD_RELEASE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /debug /machine:I386 /subsystem:xbox /fixed:no /debugtype:vc6
# ADD LINK32 xapilib.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /debug /machine:I386 /subsystem:xbox /fixed:no /TMP
# SUBTRACT LINK32 /pdb:none
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000
# ADD XBE /nologo /testname:"Pure3D Coverage Test (Tune)" /stack:0x10000 /debug /out:"../../dist/coveragext.xbe"
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO

!ENDIF 

# Begin Target

# Name "coverage - Xbox Release"
# Name "coverage - Xbox Debug"
# Name "coverage - Xbox Tune"
# Begin Group "app"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\configparam.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\configparam.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\coverage.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\coverage.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\coverapp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\coverapp.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\grid.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\grid.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\harness.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\harness.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewercamera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewercamera.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\xbox.cpp
# End Source File
# End Group
# Begin Group "tests"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\tests\billboardTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\billboardTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\characterTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\characterTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\facialTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\facialTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\fontTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\fontTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\geometryTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\geometryTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\lightTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\lightTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\nisTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\nisTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\opticTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\opticTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\particleTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\particleTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\ps2Test.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\ps2Test.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\sceneTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\sceneTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\sequencerTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\sequencerTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\shaderTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\shaderTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\testnames.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\testnames.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\textureTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\textureTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\translucencyTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\translucencyTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\vertexAnimTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\vertexAnimTest.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\visibilityTest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\tests\visibilityTest.hpp
# End Source File
# End Group
# End Target
# End Project

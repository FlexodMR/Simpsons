# Microsoft Developer Studio Project File - Name="coverage" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=coverage - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "coverage.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "coverage.mak" CFG="coverage - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "coverage - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "coverage - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "coverage - Win32 Tune" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "coverage"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "coverage - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "coverage___Win32_Release"
# PROP BASE Intermediate_Dir "coverage___Win32_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /Zi /O2 /I "../../../.." /I "../../code" /I "../../code/tests" /I "../../../../../radmath" /I "../../../../../radcore/inc" /I "../../../../../radcontent/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "RAD_RELEASE" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib ws2_32.lib /nologo /subsystem:windows /debug /machine:I386 /out:"Release\coveragewr.exe"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=rem copy ..\..\build\lib\pddiglr.dll ..\..\dist	copy ..\..\..\..\build\lib\pddidx8r.dll ..\..\dist	copy Release\coveragewr.exe ..\..\dist
# End Special Build Tool

!ELSEIF  "$(CFG)" == "coverage - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "coverage___Win32_Debug"
# PROP BASE Intermediate_Dir "coverage___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /Z7 /Od /I "../../../.." /I "../../code" /I "../../code/tests" /I "../../../../../radmath" /I "../../../../../radcore/inc" /I "../../../../../radcontent/inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "RAD_DEBUG" /D "RAD_WIN32" /D "RAD_PC" /FR /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib kernel32.lib user32.lib gdi32.lib winmm.lib ws2_32.lib ole32.lib /nologo /subsystem:windows /pdb:"Debug/trivial.pdb" /debug /machine:I386 /out:"Debug\coveragewd.exe" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=rem copy ..\..\build\lib\pddigld.dll ..\..\dist	copy ..\..\..\..\build\lib\pddidx8d.dll ..\..\dist	copy Debug\coveragewd.exe ..\..\dist
# End Special Build Tool

!ELSEIF  "$(CFG)" == "coverage - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "coverage___Win32_Tune"
# PROP BASE Intermediate_Dir "coverage___Win32_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GR /Zi /O2 /I "../.." /I "../coverage" /I "../../../radmath" /I "../../../radcore/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "RAD_RELEASE" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /Zi /O2 /I "../../../.." /I "../../code" /I "../../code/tests" /I "../../../../../radmath" /I "../../../../../radcore/inc" /I "../../../../../radcontent/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "RAD_TUNE" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib ws2_32.lib /nologo /subsystem:windows /debug /machine:I386 /out:"Tune\coveragewt.exe"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=rem copy ..\..\build\win32\lib\pddiglt.dll ..\..\dist	copy ..\..\..\..\build\lib\pddidx8t.dll ..\..\dist	copy Tune\coveragewt.exe ..\..\dist
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "coverage - Win32 Release"
# Name "coverage - Win32 Debug"
# Name "coverage - Win32 Tune"
# Begin Group "app"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\code\configparam.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\configparam.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\controlpad.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\controlpad.hpp
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

SOURCE=..\..\code\gamecube.cpp
# PROP Exclude_From_Build 1
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

SOURCE=..\..\code\ps2.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\..\code\viewercamera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\viewercamera.hpp
# End Source File
# Begin Source File

SOURCE=..\..\code\win32.cpp
# End Source File
# Begin Source File

SOURCE=..\..\code\xbox.cpp
# PROP Exclude_From_Build 1
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

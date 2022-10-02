# Microsoft Developer Studio Project File - Name="coverage" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
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
# ADD CPP /nologo /MT /W3 /GR /O2 /I "../../../../../radcontent/inc" /I "../../../../../radmath" /I "../../../../../pure3d" /I "../../../../" /I "../../../../../radcore/inc" /I "../../../../../radsound/inc" /I "../../../../../poser/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "RAD_RELEASE" /D "RAD_PC" /D "RAD_WIN32" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 Pure3Dwr.lib radmathwr.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib ws2_32.lib /nologo /subsystem:windows /machine:I386 /out:"..\..\bin\coveragewr.exe" /libpath:"../../../../build\win32\lib" /libpath:"..\..\..\..\..\pure3d\build\lib" /libpath:"..\..\..\..\..\radmath\lib" /libpath:"../../../../../../radcore\lib" /libpath:"../../../../../../radsound\lib" /libpath:"../../../../../../radscript\lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\..\..\..\..\pure3d\build\lib\pddidx8r.dll ..\..\bin
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
# ADD CPP /nologo /G6 /MTd /W3 /GR /Z7 /Od /I "../../../../../radcontent/inc" /I "../../../../../radmath" /I "../../../../../pure3d" /I "../../../../" /I "../../../../../radcore/inc" /I "../../../../../radsound/inc" /I "../../../../../poser/inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /FR /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 Pure3Dwd.lib radmathwd.lib kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib ws2_32.lib ole32.lib /nologo /subsystem:windows /pdb:"Debug/trivial.pdb" /debug /machine:I386 /out:"..\..\bin\coveragewd.exe" /pdbtype:sept /libpath:"../../../../../build\win32\lib" /libpath:"..\..\..\..\..\pure3d\build\lib" /libpath:"..\..\..\..\..\radmath\lib" /libpath:"../../../../../../radcore\lib" /libpath:"../../../../../../radsound\lib" /libpath:"../../../../../../radscript\lib"
# SUBTRACT LINK32 /pdb:none /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\..\..\..\..\pure3d\build\lib\pddidx8d.dll ..\..\bin
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
# PROP Output_Dir "coverage___Win32_Tune"
# PROP Intermediate_Dir "coverage___Win32_Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GR /O2 /I "../../../../../pure3d" /I "../../../../" /I "../../../../../ftech/radcore/inc" /I "../../../../../ftech/radsound/inc" /I "../../../../../poser/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /FR /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /O2 /I "../../../../../radcontent/inc" /I "../../../../../radmath" /I "../../../../../pure3d" /I "../../../../" /I "../../../../../radcore/inc" /I "../../../../../radsound/inc" /I "../../../../../poser/inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "RAD_TUNE" /D "RAD_PC" /D "RAD_WIN32" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Pure3Dr.lib radmathr.lib kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib ws2_32.lib /nologo /subsystem:windows /machine:I386 /out:"..\..\bin\coveragewr.exe" /libpath:"..\..\..\..\..\pure3d\build\win32\lib" /libpath:"../../../../build\win32\lib" /libpath:"../../../../../../ftech/radcore\lib" /libpath:"../../../../../../ftech/radsound\lib" /libpath:"../../../../../../ftech/radscript\lib"
# ADD LINK32 Pure3Dwt.lib radmathwt.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winmm.lib winspool.lib comdlg32.lib ws2_32.lib /nologo /subsystem:windows /profile /machine:I386 /out:"..\..\bin\coveragewt.exe" /libpath:"../../../../build\win32\lib" /libpath:"..\..\..\..\..\pure3d\build\lib" /libpath:"..\..\..\..\..\radmath\lib" /libpath:"../../../../../../radcore\lib" /libpath:"../../../../../../radsound\lib" /libpath:"../../../../../../radscript\lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\..\..\..\..\pure3d\build\lib\pddidx8t.dll ..\..\bin
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "coverage - Win32 Release"
# Name "coverage - Win32 Debug"
# Name "coverage - Win32 Tune"
# Begin Source File

SOURCE=..\..\bin\benchmark.cfg
# End Source File
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

SOURCE=..\..\bin\config.txt
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

SOURCE=..\..\src\win32.cpp
# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="simplemovie" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=simplemovie - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "simplemovie.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "simplemovie.mak" CFG="simplemovie - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "simplemovie - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "simplemovie - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "simplemovie - Win32 Tune" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "simplemovie"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "simplemovie - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /O2 /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radsound\inc" /I "..\..\..\..\radmovie\inc" /I "..\..\..\..\pure3d" /I "..\..\..\..\radmath" /I "..\..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 dxguid.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dinput8.lib wsock32.lib BinkW32.lib /nologo /subsystem:windows /machine:I386 /out:"../../bin/binkcd/simplemoviewr.exe" /libpath:"../../../../sdks/win32/bink"

!ELSEIF  "$(CFG)" == "simplemovie - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "..\..\..\..\..\radcore\inc ..\..\..\..\radsound\inc ..\..\..\..\pure3d\p3d" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radsound\inc" /I "..\..\..\..\radmovie\inc" /I "..\..\..\..\pure3d" /I "..\..\..\..\radmath" /I "..\..\..\..\radcontent\inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_WIN32" /D "RAD_PC" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 dxguid.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dinput8.lib wsock32.lib BinkW32.lib /nologo /subsystem:windows /debug /machine:I386 /out:"../../bin/binkcd/simplemoviewd.exe" /pdbtype:sept /libpath:"../../../../sdks/win32/bink"

!ELSEIF  "$(CFG)" == "simplemovie - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Tune"
# PROP BASE Intermediate_Dir "Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /ZI /O1 /I "..\..\..\..\..\radcore\inc ..\..\..\..\radsound\inc ..\..\..\..\pure3d\p3d" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radsound\inc" /I "..\..\..\..\radmovie\inc" /I "..\..\..\..\pure3d" /I "..\..\..\..\radmath" /I "..\..\..\..\radcontent\inc" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 dxguid.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib dinput8.lib wsock32.lib BinkW32.lib /nologo /subsystem:windows /machine:I386 /out:"../../bin/binkcd/simplemoviewt.exe" /libpath:"../../../../sdks/win32/bink"

!ENDIF 

# Begin Target

# Name "simplemovie - Win32 Release"
# Name "simplemovie - Win32 Debug"
# Name "simplemovie - Win32 Tune"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\src\main.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\util.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\util.hpp
# End Source File
# End Group
# End Target
# End Project

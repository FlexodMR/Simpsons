# Microsoft Developer Studio Project File - Name="testviewer" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=testviewer - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "testviewer.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "testviewer.mak" CFG="testviewer - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "testviewer - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "testviewer - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "testviewer - Win32 Tune" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "testviewer"
# PROP Scc_LocalPath "..\..\.."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "testviewer - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /Z7 /O2 /I "../../../../radcontent/inc" /I "../../../../radmath/" /I "../../../../pure3d/" /I "../../../" /I "../console" /I "../../../../radcore/inc" /I "../../../../radsound/inc" /I "../../../../poser/inc" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "USEFTT" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_RELEASE" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib comdlg32.lib ws2_32.lib dxguid.lib ole32.lib /nologo /subsystem:windows /machine:I386 /nodefaultlib:"LIBC.lib" /nodefaultlib:"LIBCMT.lib" /nodefaultlib:"LIBCMTD.lib" /nodefaultlib:"LIBciMT.lib" /libpath:"..\console\lib" /libpath:"../../../../radmath/lib/" /libpath:"../../../../pure3d/build\lib" /libpath:"../../../../pure3d/lib/freetype/objs" /libpath:"../../../lib" /libpath:"../../../../ftech/radcore\lib" /libpath:"../../../../ftech/radsound\lib" /libpath:"../../../../ftech/radscript\lib"
# SUBTRACT LINK32 /pdb:none /debug

!ELSEIF  "$(CFG)" == "testviewer - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /Zi /Od /I "../../../../radcontent/inc" /I "../../../../radmath/" /I "../../../../pure3d/" /I "../../../" /I "../console" /I "../../../../radcore/inc" /I "../../../../radsound/inc" /I "../../../../poser/inc" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_DEBUG" /D "RAD_PC" /D "RAD_WIN32" /D "USEFTT" /FR /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib comdlg32.lib ws2_32.lib dxguid.lib ole32.lib /nologo /subsystem:windows /profile /debug /machine:I386 /nodefaultlib:"libcd.lib" /libpath:"..\console\lib" /libpath:"../../../../radmath/lib/" /libpath:"../../../../pure3d/build\lib" /libpath:"../../../../pure3d/lib/freetype/objs" /libpath:"../../../lib" /libpath:"../../../../radcore\lib" /libpath:"../../../../radsound\lib" /libpath:"../../../../radscript\lib"

!ELSEIF  "$(CFG)" == "testviewer - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "testviewer___Win32_Tune"
# PROP BASE Intermediate_Dir "testviewer___Win32_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /GR /Z7 /Od /I "../../../../pure3d/" /I "../../../" /I "../console" /I "../../../../ftech/radcore/inc" /I "../../../../ftech/radsound/inc" /I "../../../../poser/inc" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "USEFTT" /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /GR /Z7 /O2 /I "../../../../radcontent/inc" /I "../../../../radmath/" /I "../../../../pure3d/" /I "../../../" /I "../console" /I "../../../../radcore/inc" /I "../../../../radsound/inc" /I "../../../../poser/inc" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "PNG_USER_MEM_SUPPORTED" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 freetyper.lib libpngr.lib Pure3Dr.lib radmathr.lib zlibr.lib winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib comdlg32.lib ws2_32.lib console.lib dxguid.lib dsound.lib ole32.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"LIBC.lib" /nodefaultlib:"LIBCMTD.lib" /libpath:"..\console\release" /libpath:"../../../../pure3d/build\win32\lib" /libpath:"../../../build\win32\lib" /libpath:"../../../../ftech/radcore\lib" /libpath:"../../../../ftech/radsound\lib" /libpath:"../../../../ftech/radscript\lib"
# SUBTRACT BASE LINK32 /pdb:none /nodefaultlib
# ADD LINK32 freetypetr.lib winmm.lib kernel32.lib user32.lib gdi32.lib shell32.lib comdlg32.lib ws2_32.lib dxguid.lib ole32.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"LIBC.lib" /nodefaultlib:"LIBCMT.lib" /libpath:"..\console\lib" /libpath:"../../../../radmath/lib/" /libpath:"../../../../pure3d/build\lib" /libpath:"../../../../pure3d/lib/freetype/objs" /libpath:"../../../lib" /libpath:"../../../../ftech/radcore\lib" /libpath:"../../../../ftech/radsound\lib" /libpath:"../../../../ftech/radscript\lib"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "testviewer - Win32 Release"
# Name "testviewer - Win32 Debug"
# Name "testviewer - Win32 Tune"
# Begin Group "tesbed"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\eventreceiver.hpp
# End Source File
# Begin Source File

SOURCE=.\grid.cpp
# End Source File
# Begin Source File

SOURCE=.\mouse.cpp
# End Source File
# Begin Source File

SOURCE=.\mouse.hpp
# End Source File
# Begin Source File

SOURCE=.\multicast.cpp
# End Source File
# Begin Source File

SOURCE=.\simpleapp.hpp
# End Source File
# Begin Source File

SOURCE=.\testbed.cpp
# End Source File
# Begin Source File

SOURCE=.\testbed.hpp
# End Source File
# Begin Source File

SOURCE=.\win32.cpp
# End Source File
# End Group
# Begin Group "cfg"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\appconfig.cfg
# End Source File
# Begin Source File

SOURCE=.\Ph1.cfg
# End Source File
# Begin Source File

SOURCE=.\Ph2.cfg
# End Source File
# Begin Source File

SOURCE=.\phdefault.cfg
# End Source File
# Begin Source File

SOURCE=.\renderconfig.cfg
# End Source File
# End Group
# Begin Source File

SOURCE=.\aicollisionsolveragent.cpp
# End Source File
# Begin Source File

SOURCE=.\aicollisionsolveragent.hpp
# End Source File
# Begin Source File

SOURCE=.\soundmanager.cpp
# End Source File
# Begin Source File

SOURCE=.\soundmanager.hpp
# End Source File
# Begin Source File

SOURCE=.\soundplayer.cpp
# End Source File
# Begin Source File

SOURCE=.\soundplayer.hpp
# End Source File
# Begin Source File

SOURCE=.\testviewer.cpp
# End Source File
# Begin Source File

SOURCE=.\testviewer.hpp
# End Source File
# Begin Source File

SOURCE=.\userobject.cpp
# End Source File
# Begin Source File

SOURCE=.\userobject.hpp
# End Source File
# End Target
# End Project

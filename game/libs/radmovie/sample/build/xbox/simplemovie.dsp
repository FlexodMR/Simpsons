# Microsoft Developer Studio Project File - Name="simplemovie" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Application" 0x0b01

CFG=simplemovie - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "simplemovie.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "simplemovie.mak" CFG="simplemovie - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "simplemovie - Xbox Release" (based on "Xbox Application")
!MESSAGE "simplemovie - Xbox Debug" (based on "Xbox Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "simplemovie"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "simplemovie - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "simplemovie___Xbox_Release"
# PROP BASE Intermediate_Dir "simplemovie___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "simplemovie___Xbox_Release"
# PROP Intermediate_Dir "simplemovie___Xbox_Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /GX /O2 /I "..\..\..\inc" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radsound\inc" /I "..\..\..\..\pure3d" /I "..\..\..\..\radmath" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /subsystem:xbox /fixed:no /TMP /OPT:REF
# ADD LINK32 xapilib.lib d3d8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xmv.lib xboxkrnl.lib binkxbox.lib /nologo /machine:I386 /libpath:"../../../../sdks/xbox/bink" /subsystem:xbox /fixed:no /TMP /OPT:REF
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000
# ADD XBE /nologo /stack:0x10000
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO

!ELSEIF  "$(CFG)" == "simplemovie - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "simplemovie___Xbox_Debug"
# PROP BASE Intermediate_Dir "simplemovie___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "simplemovie___Xbox_Debug"
# PROP Intermediate_Dir "simplemovie___Xbox_Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /I "..\..\..\inc" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radsound\inc" /I "..\..\..\..\pure3d" /I "..\..\..\..\radmath" /I "..\..\..\..\radcontent\inc" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilibd.lib d3d8d.lib d3dx8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /TMP
# ADD LINK32 xapilibd.lib d3d8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xmvd.lib xboxkrnl.lib binkxbox.lib /nologo /incremental:no /debug /machine:I386 /libpath:"../../../../sdks/xbox/bink" /subsystem:xbox /fixed:no /TMP
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000 /debug
# ADD XBE /nologo /stack:0x10000 /debug
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO

!ENDIF 

# Begin Target

# Name "simplemovie - Xbox Release"
# Name "simplemovie - Xbox Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\src\main.cpp

!IF  "$(CFG)" == "simplemovie - Xbox Release"

# ADD CPP /I "..\..\..\..\radcore\inc ..\..\..\..\..\radsound\inc ..\..\..\..\..\pure3d\ ..\..\..\..\..\radmath\ ..\..\..\..\inc"

!ELSEIF  "$(CFG)" == "simplemovie - Xbox Debug"

# ADD CPP /I "..\..\..\..\pure3d\\" /I "..\..\..\..\radmath\\"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\src\util.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\util.hpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project

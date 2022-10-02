# Microsoft Developer Studio Project File - Name="scripttest" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Application" 0x0b01

CFG=scripttest - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "scripttest.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "scripttest.mak" CFG="scripttest - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "scripttest - Xbox Release" (based on "Xbox Application")
!MESSAGE "scripttest - Xbox Debug" (based on "Xbox Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "scripttest"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "scripttest - Xbox Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /GR /GX /O2 /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radscript\inc" /I "..\..\inc" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_RELEASE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /subsystem:xbox /fixed:no /tmp
# ADD LINK32 xapilib.lib d3d8.lib d3dx8.lib xgraphics.lib dsound.lib dmusic.lib xnet.lib xboxkrnl.lib /nologo /machine:I386 /libpath:"..\..\..\..\radcore\lib" /libpath:"..\..\..\..\radscript\lib" /subsystem:xbox /fixed:no /tmp
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000
# ADD XBE /nologo /stack:0x10000
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Ztmp /c
# ADD CPP /nologo /W3 /Gm /GR /GX /Zi /Od /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radscript\inc" /I "..\..\inc" /D "_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_DEBUG" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 xapilibd.lib d3d8d.lib d3dx8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /subsystem:xbox /fixed:no /tmp
# ADD LINK32 xapilibd.lib d3d8d.lib d3dx8d.lib xgraphicsd.lib dsoundd.lib dmusicd.lib xnetd.lib xboxkrnl.lib /nologo /incremental:no /debug /machine:I386 /libpath:"..\..\..\..\radcore\lib" /libpath:"..\..\..\..\radscript\lib" /subsystem:xbox /fixed:no /tmp
XBE=imagebld.exe
# ADD BASE XBE /nologo /stack:0x10000 /debug
# ADD XBE /nologo /stack:0x10000 /debug
XBCP=xbecopy.exe
# ADD BASE XBCP /NOLOGO
# ADD XBCP /NOLOGO

!ENDIF 

# Begin Target

# Name "scripttest - Xbox Release"
# Name "scripttest - Xbox Debug"
# Begin Group "src"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radtstobj.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\scripttest.cpp
# End Source File
# End Group
# Begin Group "script"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\script\eventcfg.txt

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\script\eventcfg.txt

"..\..\bin\xbox\eventcfg.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\script\eventcfg.txt

"..\..\bin\xbox\eventcfg.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\eventsnk.txt

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\script\eventsnk.txt

"..\..\bin\xbox\eventsnk.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\script\eventsnk.txt

"..\..\bin\xbox\eventsnk.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\eventsrc.txt

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\script\eventsrc.txt

"..\..\bin\xbox\eventsrc.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\script\eventsrc.txt

"..\..\bin\xbox\eventsrc.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\file1.txt

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\script\file1.txt

"..\..\bin\xbox\file1.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\script\file1.txt

"..\..\bin\xbox\file1.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\file2.txt

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\script\file2.txt

"..\..\bin\xbox\file2.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\script\file2.txt

"..\..\bin\xbox\file2.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\file3.txt

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\script\file3.txt

"..\..\bin\xbox\file3.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\script\file3.txt

"..\..\bin\xbox\file3.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "inc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\inc\radtstobj.hpp

!IF  "$(CFG)" == "scripttest - Xbox Release"

# Begin Custom Build
InputPath=..\..\inc\radtstobj.hpp

"..\..\bin\xbox\tix.typ" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\..\tools\bin\ridl.exe -I..\..\..\..\radcore\inc\radobject.hpp -i..\..\inc\radtstobj.hpp -o..\..\bin\xbox\tix.typ

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Xbox Debug"

# Begin Custom Build
InputPath=..\..\inc\radtstobj.hpp

"..\..\bin\xbox\tix.typ" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\..\tools\bin\ridl.exe -I..\..\..\..\radcore\inc\radobject.hpp -i..\..\inc\radtstobj.hpp -o..\..\bin\xbox\tix.typ

# End Custom Build

!ENDIF 

# End Source File
# End Group
# End Target
# End Project

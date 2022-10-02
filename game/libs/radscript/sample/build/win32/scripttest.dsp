# Microsoft Developer Studio Project File - Name="scripttest" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=scripttest - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "scripttest.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "scripttest.mak" CFG="scripttest - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "scripttest - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "scripttest - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "scripttest"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "scripttest - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MT /W3 /GR /GX /O2 /I "..\..\..\..\radcore\inc\\" /I "..\..\..\..\radscript\inc\\" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radscript\inc" /I "..\..\inc" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_WIN32" /D "RAD_RELEASE" /FR /FD /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib strmbase.lib quartz.lib winmm.lib dinput8.lib dxguid.lib wsock32.lib radscriptwr.lib radcorewr.lib /nologo /subsystem:windows /machine:I386 /libpath:"..\..\..\..\radcore\lib\\" /libpath:"..\..\..\..\radscript\lib\\"

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "..\..\..\..\radcore\inc" /I "..\..\..\..\radscript\inc" /I "..\..\inc" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_WIN32" /D "RAD_DEBUG" /FR /FD /GZ /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib strmbase.lib quartz.lib winmm.lib dinput8.lib dxguid.lib wsock32.lib radscriptwd.lib radcorewd.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /libpath:"..\..\..\..\radcore\lib" /libpath:"..\..\..\..\radscript\lib"

!ENDIF 

# Begin Target

# Name "scripttest - Win32 Release"
# Name "scripttest - Win32 Debug"
# Begin Group "src"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\radtstobj.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\scripttest.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\window.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\window.hpp
# End Source File
# End Group
# Begin Group "script file"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\script\eventcfg.txt

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\script\eventcfg.txt

"..\..\bin\xbox\eventcfg.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

# Begin Custom Build
InputPath=..\..\script\eventcfg.txt

"..\..\bin\xbox\eventcfg.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\eventsnk.txt

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\script\eventsnk.txt

"..\..\bin\xbox\eventsnk.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

# Begin Custom Build
InputPath=..\..\script\eventsnk.txt

"..\..\bin\xbox\eventsnk.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\eventsrc.txt

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\script\eventsrc.txt

"..\..\bin\xbox\eventsrc.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

# Begin Custom Build
InputPath=..\..\script\eventsrc.txt

"..\..\bin\xbox\eventsrc.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\file1.txt

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\script\file1.txt

"..\..\bin\xbox\file1.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

# Begin Custom Build
InputPath=..\..\script\file1.txt

"..\..\bin\xbox\file1.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\file2.txt

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\script\file2.txt

"..\..\bin\xbox\file2.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

# Begin Custom Build
InputPath=..\..\script\file2.txt

"..\..\bin\xbox\file2.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\script\file3.txt

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\script\file3.txt

"..\..\bin\xbox\file3.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) ..\..\bin\xbox

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

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

!IF  "$(CFG)" == "scripttest - Win32 Release"

# Begin Custom Build
InputPath=..\..\inc\radtstobj.hpp

"..\..\bin\xbox\tiw.typ" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\..\tools\bin\ridl.exe -I..\..\..\..\radcore\inc\radobject.hpp -i..\..\inc\radtstobj.hpp -o..\..\bin\xbox\tiw.typ

# End Custom Build

!ELSEIF  "$(CFG)" == "scripttest - Win32 Debug"

# Begin Custom Build
InputPath=..\..\inc\radtstobj.hpp

"..\..\bin\xbox\tiw.typ" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\..\tools\bin\ridl.exe -I..\..\..\..\radcore\inc\radobject.hpp -i..\..\inc\radtstobj.hpp -o..\..\bin\xbox\tiw.typ

# End Custom Build

!ENDIF 

# End Source File
# End Group
# End Target
# End Project

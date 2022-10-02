# Microsoft Developer Studio Project File - Name="ScroobyViewer" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=ScroobyViewer - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ScroobyViewer.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ScroobyViewer.mak" CFG="ScroobyViewer - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ScroobyViewer - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "ScroobyViewer - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "ScroobyViewer - Win32 Tune" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "ScroobyViewer"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ScroobyViewer - Win32 Release"

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
# ADD CPP /nologo /G6 /MT /W3 /O2 /I "../../../../inc" /I "../../../../../pure3d" /I "../../../../../radcore/inc" /I "../../../../../radmath" /I "../../../../src" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_RELEASE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ws2_32.lib dinput.lib dxguid.lib /nologo /subsystem:windows /machine:I386 /out:"../../../bin/viewerw.exe"

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Debug"

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
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /ZI /Od /I "..\..\..\..\inc" /I "..\..\..\..\..\pure3d" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radmath" /I "..\..\..\..\src" /D "WIN32" /D "_WINDOWS" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_DEBUG" /FD /GZ /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ws2_32.lib dinput.lib dxguid.lib /nologo /subsystem:windows /debug /machine:I386 /out:"..\..\bin\viewerwd.exe" /pdbtype:sept
# SUBTRACT LINK32 /incremental:no

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ScroobyViewer___Win32_Tune"
# PROP BASE Intermediate_Dir "ScroobyViewer___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /Z7 /O2 /I "..\..\..\..\src" /I "..\..\..\..\inc" /I "..\..\..\..\..\pure3d" /I "..\..\..\..\..\radcore\inc" /I "..\..\..\..\..\radmath" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ws2_32.lib dinput.lib dxguid.lib /nologo /subsystem:windows /debug /machine:I386 /out:"../../bin/viewerwt.exe"

!ENDIF 

# Begin Target

# Name "ScroobyViewer - Win32 Release"
# Name "ScroobyViewer - Win32 Debug"
# Name "ScroobyViewer - Win32 Tune"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\viewer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\win32.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\viewer.h
# End Source File
# End Group
# Begin Group "Pure3D DLLs"

# PROP Default_Filter "dll"
# Begin Source File

SOURCE=..\..\..\..\..\pure3d\build\lib\pddidx8d.dll

!IF  "$(CFG)" == "ScroobyViewer - Win32 Release"

# Begin Custom Build
OutDir=.\Release
InputPath=..\..\..\..\..\pure3d\build\lib\pddidx8d.dll
InputName=pddidx8d

"$(OutDir)\$(InputName).dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) $(OutDir)

# End Custom Build

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Debug"

# Begin Custom Build
TargetDir=\project\pure3d\Development\Scrooby\apps\ScroobyViewer\bin
InputPath=..\..\..\..\..\pure3d\build\lib\pddidx8d.dll
InputName=pddidx8d

"$(TargetDir)\$(InputName).dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) $(TargetDir)

# End Custom Build

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Tune"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\pure3d\build\lib\pddidx8r.dll

!IF  "$(CFG)" == "ScroobyViewer - Win32 Release"

# Begin Custom Build
TargetDir=\project\pure3d\Development\Scrooby\apps\bin
InputPath=..\..\..\..\..\pure3d\build\lib\pddidx8r.dll
InputName=pddidx8r

"$(TargetDir)\$(InputName).dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) $(TargetDir)

# End Custom Build

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Debug"

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Tune"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\..\..\..\pure3d\build\lib\pddidx8t.dll

!IF  "$(CFG)" == "ScroobyViewer - Win32 Release"

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Debug"

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Tune"

# Begin Custom Build
TargetDir=\project\pure3d\Development\Scrooby\apps\ScroobyViewer\bin
InputPath=..\..\..\..\..\pure3d\build\lib\pddidx8t.dll
InputName=pddidx8t

"$(TargetDir)\$(InputName).dll" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputPath) $(TargetDir)

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "Consoles"

# PROP Default_Filter ""
# Begin Group "GameCube"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\GameCube.cpp
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=..\gamecube\Makefile

!IF  "$(CFG)" == "ScroobyViewer - Win32 Release"

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Tune"

!ENDIF 

# End Source File
# End Group
# Begin Group "PS2"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\ps2\Makefile

!IF  "$(CFG)" == "ScroobyViewer - Win32 Release"

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "ScroobyViewer - Win32 Tune"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\ps2.cpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\xbox.cpp
# PROP Exclude_From_Build 1
# End Source File
# End Group
# End Target
# End Project

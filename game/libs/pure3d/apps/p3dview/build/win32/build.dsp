# Microsoft Developer Studio Project File - Name="build" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Generic Project" 0x010a

CFG=build - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "build.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "build.mak" CFG="build - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "build - Win32 Release" (based on "Win32 (x86) Generic Project")
!MESSAGE "build - Win32 Debug" (based on "Win32 (x86) Generic Project")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "build"
# PROP Scc_LocalPath "."
MTL=midl.exe

!IF  "$(CFG)" == "build - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""

!ELSEIF  "$(CFG)" == "build - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""

!ENDIF 

# Begin Target

# Name "build - Win32 Release"
# Name "build - Win32 Debug"
# Begin Group "gamecube"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\gamecube\files.txt
# End Source File
# Begin Source File

SOURCE=.\gamecube

!IF  "$(CFG)" == "build - Win32 Release"

!ELSEIF  "$(CFG)" == "build - Win32 Debug"

# Begin Custom Build - Building GameCube Viewer...
InputPath=.\gamecube

"..\..\dist\p3dviewg.elf" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cd ..\gamecube 
	build d 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\gamecube_clean

!IF  "$(CFG)" == "build - Win32 Release"

!ELSEIF  "$(CFG)" == "build - Win32 Debug"

# Begin Custom Build - Cleaning GameCube Viewer...
InputPath=.\gamecube_clean

".\gamecube" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cd ..\gamecube 
	build d clean 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "ps2"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\ps2\files.txt
# End Source File
# Begin Source File

SOURCE=.\ps2

!IF  "$(CFG)" == "build - Win32 Release"

!ELSEIF  "$(CFG)" == "build - Win32 Debug"

# Begin Custom Build - Building PS2 Viewer...
InputPath=.\ps2

"..\..\dist\p3dview.elf" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cd ..\ps2 
	build t 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\ps2_clean

!IF  "$(CFG)" == "build - Win32 Release"

!ELSEIF  "$(CFG)" == "build - Win32 Debug"

# Begin Custom Build - Cleaning PS2 Viewer...
InputPath=.\ps2_clean

".\ps2" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cd ..\ps2 
	build t clean 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\xbox

!IF  "$(CFG)" == "build - Win32 Release"

!ELSEIF  "$(CFG)" == "build - Win32 Debug"

# Begin Custom Build - Building XBox Viewer...
InputPath=.\xbox

"..\..\dist\p3dview.xbe" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	cd ..\xbox 
	msdev p3dview.dsw /MAKE "p3dview - XBox Debug" 
	
# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project

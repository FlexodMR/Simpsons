# Microsoft Developer Studio Project File - Name="radTuner" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=radTuner - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "radTuner.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "radTuner.mak" CFG="radTuner - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "radTuner - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "radTuner - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "radTuner"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "radTuner - Win32 Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "..\main" /I "..\BCG\inc" /I "..\src\default" /I "..\src\default\panelview" /I "..\src\dialog" /I "..\src\doc" /I "..\src\frame" /I "..\src\main" /I "..\src\misc" /I "..\src\plugin" /I "..\src\resource" /I "..\..\..\inc" /I "..\..\inc" /I "..\..\..\..\radcore\inc" /I "..\..\..\..\sdks\win32\BCG\BCGControlBar" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "RAD_RELEASE" /D "RAD_WIN32" /FR /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 wsock32.lib Setupapi.lib /nologo /subsystem:windows /machine:I386 /nodefaultlib:"LIBCMT.lib" /out:"../../bin/radTuner/radTuner.exe" /libpath:"..\..\lib" /libpath:"..\BCG\lib"

!ELSEIF  "$(CFG)" == "radTuner - Win32 Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /Gi /GR /GX /ZI /Od /I "..\..\..\..\sdks\win32\BCG\BCGControlBar" /I "..\src\default" /I "..\src\default\panelview" /I "..\src\dialog" /I "..\src\doc" /I "..\src\frame" /I "..\src\main" /I "..\src\misc" /I "..\src\plugin" /I "..\src\resource" /I "..\..\..\inc" /I "..\..\inc" /I "..\..\..\..\radcore\inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "RAD_DEBUG" /D "RAD_WIN32" /FR /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 Setupapi.lib wsock32.lib /nologo /subsystem:windows /pdb:"../build/Debug/radTunerD.pdb" /debug /machine:I386 /nodefaultlib:"libcmtd.lib" /out:"../../bin/radTuner/radTunerD.exe" /pdbtype:sept /libpath:"..\..\lib" /libpath:"..\BCG\lib"
# SUBTRACT LINK32 /verbose /pdb:none /nodefaultlib

!ENDIF 

# Begin Target

# Name "radTuner - Win32 Release"
# Name "radTuner - Win32 Debug"
# Begin Group "dialog"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\dialog\ProjectSettingDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\dialog\ProjectSettingDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\dialog\SelectFolderDialog.cpp
# End Source File
# Begin Source File

SOURCE=..\src\dialog\SelectFolderDialog.H
# End Source File
# End Group
# Begin Group "doc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\doc\ScriptBaseClass.cpp
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptBaseClass.h
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptDoc.cpp
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptDoc.h
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptMethod.cpp
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptMethod.h
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptObject.cpp
# End Source File
# Begin Source File

SOURCE=..\src\doc\ScriptObject.h
# End Source File
# Begin Source File

SOURCE=..\src\doc\WorkSpaceDoc.cpp
# End Source File
# Begin Source File

SOURCE=..\src\doc\WorkSpaceDoc.h
# End Source File
# End Group
# Begin Group "frame"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\frame\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=..\src\frame\MainFrm.h
# End Source File
# Begin Source File

SOURCE=..\src\frame\MainFrmOnMenu.cpp
# End Source File
# Begin Source File

SOURCE=..\src\frame\OutputBar.cpp
# End Source File
# Begin Source File

SOURCE=..\src\frame\OutputBar.h
# End Source File
# Begin Source File

SOURCE=..\src\frame\WorkspaceBar.cpp
# End Source File
# Begin Source File

SOURCE=..\src\frame\WorkspaceBar.h
# End Source File
# End Group
# Begin Group "main"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\main\radTuner.cpp
# End Source File
# Begin Source File

SOURCE=..\src\main\radTuner.h
# End Source File
# Begin Source File

SOURCE=..\src\main\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=..\src\main\StdAfx.h
# End Source File
# End Group
# Begin Group "misc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\misc\FileInfo.cpp
# End Source File
# Begin Source File

SOURCE=..\src\misc\FileInfo.h
# End Source File
# Begin Source File

SOURCE=..\src\baseclass\MltiTree.cpp
# End Source File
# Begin Source File

SOURCE=..\src\baseclass\MltiTree.h
# End Source File
# Begin Source File

SOURCE=..\src\misc\RemoteClient.cpp
# End Source File
# Begin Source File

SOURCE=..\src\misc\RemoteClient.h
# End Source File
# Begin Source File

SOURCE=..\src\baseclass\TrCtrlVw.cpp
# End Source File
# Begin Source File

SOURCE=..\src\baseclass\TrCtrlVw.h
# End Source File
# End Group
# Begin Group "plugin"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\plugin\ChildFrm.cpp
# End Source File
# Begin Source File

SOURCE=..\src\plugin\ChildFrm.h
# End Source File
# Begin Source File

SOURCE=..\src\plugin\PluginBase.cpp
# End Source File
# Begin Source File

SOURCE=..\src\plugin\PluginBase.h
# End Source File
# Begin Source File

SOURCE=..\src\plugin\PluginManager.cpp
# End Source File
# Begin Source File

SOURCE=..\src\plugin\PluginManager.h
# End Source File
# End Group
# Begin Group "resource"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\resource\radTuner.rc
# End Source File
# Begin Source File

SOURCE=..\src\resource\resource.h
# End Source File
# End Group
# Begin Group "default"

# PROP Default_Filter ""
# Begin Group "panelview"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\default\panelview\MethodDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\MethodDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamBoolDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamBoolDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamIntDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamIntDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamRefDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamRefDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamStringDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamStringDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamUIntDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ParamUIntDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ScriptObjectView.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\panelview\ScriptObjectView.h
# End Source File
# End Group
# Begin Group "Windows"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\default\AddNewMethodDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\AddNewMethodDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\AddNewObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\AddNewObjectDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\ClassTreeCtrl.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\ClassTreeCtrl.h
# End Source File
# Begin Source File

SOURCE=..\src\default\EditOutputWnd.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\EditOutputWnd.h
# End Source File
# Begin Source File

SOURCE=..\src\resource\EnterSliderValueDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\resource\EnterSliderValueDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\FileTreeCtrl.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\FileTreeCtrl.h
# End Source File
# Begin Source File

SOURCE=..\src\default\FileTreeCtrlOnDragNDrop.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\FileTreeCtrlOnMenu.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\FmtComboBox.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\FmtComboBox.h
# End Source File
# Begin Source File

SOURCE=..\src\default\FmtEdit.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\FmtEdit.h
# End Source File
# Begin Source File

SOURCE=..\src\default\ModifyMethodDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\ModifyMethodDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\ModifyObjectDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\ModifyObjectDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\ParamSliderDlg.cpp
# ADD CPP /I "D:\Project\FoundationTech\radscript\tools\radTuner\src\resource"
# End Source File
# Begin Source File

SOURCE=..\src\default\paramsliderdlg.h
# End Source File
# Begin Source File

SOURCE=..\src\resource\ParamSliderTitleDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\resource\ParamSliderTitleDlg.h
# End Source File
# Begin Source File

SOURCE=..\src\default\SliderSettingDlg.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\SliderSettingDlg.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\src\default\DefaultPlugin.cpp
# End Source File
# Begin Source File

SOURCE=..\src\default\DefaultPlugin.h
# End Source File
# End Group
# Begin Group "res"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\res\ArrowMoveFile.cur
# End Source File
# Begin Source File

SOURCE=..\res\ArrowMoveMethod.cur
# End Source File
# Begin Source File

SOURCE=..\Res\ArrowMoveObject.cur
# End Source File
# Begin Source File

SOURCE=..\res\FaderBar.bmp
# End Source File
# Begin Source File

SOURCE=..\res\FaderBK.bmp
# End Source File
# Begin Source File

SOURCE=..\res\mainfram.bmp
# End Source File
# Begin Source File

SOURCE=..\res\radTuner.ico
# End Source File
# Begin Source File

SOURCE=..\res\radTuner.rc2
# End Source File
# Begin Source File

SOURCE=..\res\Toolbar.bmp
# End Source File
# Begin Source File

SOURCE=..\res\Toolbar256.bmp
# End Source File
# Begin Source File

SOURCE=..\res\ToolbarCold256.bmp
# End Source File
# Begin Source File

SOURCE=..\res\UserImages.bmp
# End Source File
# Begin Source File

SOURCE=..\res\workspace.bmp
# End Source File
# End Group
# End Target
# End Project

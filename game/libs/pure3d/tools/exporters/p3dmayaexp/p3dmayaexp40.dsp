# Microsoft Developer Studio Project File - Name="p3dmayaexp4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=p3dmayaexp4 - Win32 Tools Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dmayaexp40.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dmayaexp40.mak" CFG="p3dmayaexp4 - Win32 Tools Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dmayaexp4 - Win32 Tools Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "p3dmayaexp4 - Win32 Tools Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dmayaexp4"
# PROP Scc_LocalPath "..\..\.."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dmayaexp4___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "p3dmayaexp4___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /Zi /Od /I "..\..\..\sdks\maya4_0\include" /I "." /I "inc" /I "..\..\..\toollib\inc" /I "..\..\..\toollib\chunks16\inc" /I "..\..\..\constants" /I "..\..\..\apps\p3dview\code" /I "..\..\..\lib\maya\inc" /I "..\..\..\lib" /D "_DEBUG" /D "NT_PLUGIN" /D "RAD_WIN32" /D "WIN32" /D "_WINDOWS" /D "COMPILING_EXPORTER" /D "MAYA4_0" /FR /Ge /FD /c
# ADD CPP /nologo /G6 /MD /W3 /GR /GX /ZI /Od /I "..\..\..\sdks\maya4_0\include" /I "." /I "inc" /I "..\..\..\toollib\inc" /I "..\..\..\toollib\chunks16\inc" /I "..\..\..\constants" /I "..\..\..\apps\p3dview\code" /I "..\..\..\lib\maya\inc" /I "..\..\..\lib" /I "../../../../radmath" /I "..\..\plugins\maya" /I "../../../../" /D "MAYA4_0" /D "_DEBUG" /D "RAD_DEBUG" /D "NT_PLUGIN" /D "_WINDOWS" /D "COMPILING_EXPORTER" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /D "DEBUG_MEMORY_TRACK" /FR /Ge /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 toollibh.lib kernel32.lib user32.lib gdi32.lib ws2_32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib Foundation.lib Image.lib OpenMaya.lib OpenMayaAnim.lib OpenMayaUI.lib /nologo /subsystem:windows /dll /debug /machine:I386 /nodefaultlib:"libc" /out:"Hybrid4\p3dmayaexp.mll" /pdbtype:sept /libpath:"..\..\..\sdks\maya4_0\lib" /libpath:"..\..\..\toollib\lib" /libpath:"..\..\..\build\win32\lib" /libpath:"..\..\..\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none /incremental:no
# ADD LINK32 kernel32.lib user32.lib gdi32.lib ws2_32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib shlwapi.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib Foundation.lib Image.lib OpenMaya.lib OpenMayaAnim.lib OpenMayaUI.lib /nologo /subsystem:windows /dll /debug /machine:I386 /nodefaultlib:"libc.lib" /nodefaultlib:"libcmt.lib" /nodefaultlib:"libcd.lib" /nodefaultlib:"libcmtd.lib" /nodefaultlib:"msvcrtd.lib" /out:"ToolsDebug\p3dmayaexp.mll" /pdbtype:sept /libpath:"..\..\..\sdks\maya4_0\lib" /libpath:"..\..\..\toollib\lib" /libpath:"..\..\..\build\win32\lib" /libpath:"..\..\..\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none /incremental:no
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Desc=Copying Exporter, MEL scripts, and Icons
PostBuild_Cmds=copyhybridmll40.bat
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dmayaexp4___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "p3dmayaexp4___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /Zi /O2 /I "..\..\..\sdks\maya4_0\include" /I "." /I "inc" /I "..\..\..\toollib\inc" /I "..\..\..\toollib\chunks16\inc" /I "..\..\..\constants" /I "..\..\..\apps\p3dview\code" /I "..\..\..\lib\maya\inc" /I "..\..\..\lib" /D "NT_PLUGIN" /D "RAD_WIN32" /D "WIN32" /D "_WINDOWS" /D "COMPILING_EXPORTER" /D "MAYA4_0" /FR"Release/" /FD /c
# ADD CPP /nologo /G6 /MD /W3 /Gi /GR /GX /O2 /I "..\..\..\sdks\maya4_0\include" /I "." /I "inc" /I "..\..\..\toollib\inc" /I "..\..\..\toollib\chunks16\inc" /I "..\..\..\constants" /I "..\..\..\apps\p3dview\code" /I "..\..\..\lib\maya\inc" /I "..\..\..\lib" /I "../../../../radmath" /I "..\..\plugins\maya" /I "../../../../" /D "MAYA4_0" /D "RAD_TUNE" /D "NT_PLUGIN" /D "_WINDOWS" /D "COMPILING_EXPORTER" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /D "NDEBUG" /FR /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 toollibr.lib kernel32.lib user32.lib gdi32.lib ws2_32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib Foundation.lib Image.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib /nologo /subsystem:windows /dll /incremental:no /machine:I386 /out:"Release4\p3dmayaexp.mll" /pdbtype:sept /libpath:"..\..\..\sdks\maya4_0\lib" /libpath:"..\..\..\toollib\lib" /libpath:"..\..\..\build\win32\lib" /libpath:"..\..\..\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none /debug /nodefaultlib
# ADD LINK32 kernel32.lib user32.lib gdi32.lib ws2_32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib shlwapi.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib Foundation.lib Image.lib OpenMayaUI.lib OpenMaya.lib OpenMayaAnim.lib /nologo /subsystem:windows /dll /incremental:no /machine:I386 /nodefaultlib:"libc.lib" /nodefaultlib:"libcmt.lib" /nodefaultlib:"libcd.lib" /nodefaultlib:"libcmtd.lib" /nodefaultlib:"msvcrtd.lib" /out:"ToolsRelease\p3dmayaexp.mll" /pdbtype:sept /libpath:"..\..\..\sdks\maya4_0\lib" /libpath:"..\..\..\toollib\lib" /libpath:"..\..\..\build\win32\lib" /libpath:"..\..\..\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none /debug /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Desc=Copying Exporter, MEL scripts, and Icons
PostBuild_Cmds=copyreleasemll40.bat
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dmayaexp4 - Win32 Tools Debug"
# Name "p3dmayaexp4 - Win32 Tools Release"
# Begin Group "inc"

# PROP Default_Filter "h;hpp"
# Begin Source File

SOURCE=.\inc\animnode.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\animOptimization.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\animRange.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\billboardObject.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\boundingvolumes.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\deformerExpression.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\exporteroptions.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\exporterutility.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\exportFunctions.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ExportLog.h
# End Source File
# Begin Source File

SOURCE=.\inc\fileAttrib.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\iffreader.h
# End Source File
# Begin Source File

SOURCE=.\inc\iffwriter.h
# End Source File
# Begin Source File

SOURCE=.\inc\inventoryEntity.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\launchProcess.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\materialgui.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\materialprocess.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\mayanodes.hpp
# End Source File
# Begin Source File

SOURCE=..\..\plugins\maya\common\inc\mayaResolveName.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\meshprocess.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\opticEffects.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\p3dEventAnim.h
# End Source File
# Begin Source File

SOURCE=.\inc\p3dEventKey.h
# End Source File
# Begin Source File

SOURCE=.\inc\p3dexp.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\p3dExportSceneCmd.h
# End Source File
# Begin Source File

SOURCE=.\inc\p3dmayaexp.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\p3dTagsCallback.h
# End Source File
# Begin Source File

SOURCE=.\inc\particleAnimNode.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\particleSystem.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\plugValue.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\quickexporter.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\quickviewer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\saveParanoiaCmd.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\scene.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\scenegraph.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\set.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\shaderAnimNode.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\textureprocess.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\transformgui.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\transformmatrix.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\traversalcontroller.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\vertexAnimationAnimNode.hpp
# End Source File
# End Group
# Begin Group "mel"

# PROP Default_Filter "mel"
# Begin Source File

SOURCE=.\mel\AEblinnP3dRevision.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEblinnP3dRevision.mel
InputName=AEblinnP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEblinnP3dRevision.mel
InputName=AEblinnP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AElambertP3dRevision.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AElambertP3dRevision.mel
InputName=AElambertP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AElambertP3dRevision.mel
InputName=AElambertP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dAnimationOptimizationTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dAnimationOptimizationTemplate.mel
InputName=AEp3dAnimationOptimizationTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dAnimationOptimizationTemplate.mel
InputName=AEp3dAnimationOptimizationTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dEventAnimTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dEventAnimTemplate.mel
InputName=AEp3dEventAnimTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dEventAnimTemplate.mel
InputName=AEp3dEventAnimTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dExporterOptionsShapeTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dExporterOptionsShapeTemplate.mel
InputName=AEp3dExporterOptionsShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dExporterOptionsShapeTemplate.mel
InputName=AEp3dExporterOptionsShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dExportSettingNodeTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dExportSettingNodeTemplate.mel
InputName=AEp3dExportSettingNodeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dExportSettingNodeTemplate.mel
InputName=AEp3dExportSettingNodeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dLightCommon.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dLightCommon.mel
InputName=AEp3dLightCommon

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dLightCommon.mel
InputName=AEp3dLightCommon

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\plugins\maya\p3dBoundingVolume\mel\AEp3dPhysicsTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=..\..\plugins\maya\p3dBoundingVolume\mel\AEp3dPhysicsTemplate.mel
InputName=AEp3dPhysicsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=..\..\plugins\maya\p3dBoundingVolume\mel\AEp3dPhysicsTemplate.mel
InputName=AEp3dPhysicsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dRenderStatsTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dRenderStatsTemplate.mel
InputName=AEp3dRenderStatsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dRenderStatsTemplate.mel
InputName=AEp3dRenderStatsTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dShapeTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dShapeTemplate.mel
InputName=AEp3dShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dShapeTemplate.mel
InputName=AEp3dShapeTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEp3dVertexAnimationTemplate.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dVertexAnimationTemplate.mel
InputName=AEp3dVertexAnimationTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEp3dVertexAnimationTemplate.mel
InputName=AEp3dVertexAnimationTemplate

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEphongP3dRevision.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEphongP3dRevision.mel
InputName=AEphongP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEphongP3dRevision.mel
InputName=AEphongP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\AEtransformP3dRevision.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEtransformP3dRevision.mel
InputName=AEtransformP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\AEtransformP3dRevision.mel
InputName=AEtransformP3dRevision

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\animChannelTable.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\animChannelTable.mel
InputName=animChannelTable

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\animChannelTable.mel
InputName=animChannelTable

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\animRangePanel.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\animRangePanel.mel
InputName=animRangePanel

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\animRangePanel.mel
InputName=animRangePanel

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\FileMenu_SaveItem.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\FileMenu_SaveItem.mel
InputName=FileMenu_SaveItem

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\FileMenu_SaveItem.mel
InputName=FileMenu_SaveItem

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dexpoptsgui.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dexpoptsgui.mel
InputName=p3dexpoptsgui

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dexpoptsgui.mel
InputName=p3dexpoptsgui

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\plugins\maya\common\mel\p3dFrameLayout.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=..\..\plugins\maya\common\mel\p3dFrameLayout.mel
InputName=p3dFrameLayout

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=..\..\plugins\maya\common\mel\p3dFrameLayout.mel
InputName=p3dFrameLayout

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dMatAttr.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dMatAttr.mel
InputName=p3dMatAttr

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dMatAttr.mel
InputName=p3dMatAttr

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dMayaExporterInstall.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dMayaExporterInstall.mel
InputName=p3dMayaExporterInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dMayaExporterInstall.mel
InputName=p3dMayaExporterInstall

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dMayaExporterTools.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dMayaExporterTools.mel
InputName=p3dMayaExporterTools

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dMayaExporterTools.mel
InputName=p3dMayaExporterTools

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dRemapAttr.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dRemapAttr.mel
InputName=p3dRemapAttr

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dRemapAttr.mel
InputName=p3dRemapAttr

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\p3dtags.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dtags.mel
InputName=p3dtags

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\p3dtags.mel
InputName=p3dtags

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\mel\viewLog.mel

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\viewLog.mel
InputName=viewLog

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# Begin Custom Build - Installing MEL to $(InputPath)
InputPath=.\mel\viewLog.mel
InputName=viewLog

"c:\aw\maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	attrib -r c:\aw\maya4.0\scripts\others\$(InputName).mel 
	copy /Y $(InputPath) c:\aw\maya4.0\scripts\others\$(InputName).mel 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "src"

# PROP Default_Filter "c;cpp"
# Begin Source File

SOURCE=.\src\animnode.cpp
# End Source File
# Begin Source File

SOURCE=.\src\animOptimization.cpp
# End Source File
# Begin Source File

SOURCE=.\src\animRange.cpp
# End Source File
# Begin Source File

SOURCE=.\src\billboardObject.cpp
# End Source File
# Begin Source File

SOURCE=.\src\boundingvolumes.cpp
# End Source File
# Begin Source File

SOURCE=.\src\deformerExpression.cpp
# End Source File
# Begin Source File

SOURCE=.\src\exporteroptions.cpp
# End Source File
# Begin Source File

SOURCE=.\src\exporterutility.cpp
# End Source File
# Begin Source File

SOURCE=.\src\exportFunctions.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ExportLog.cpp
# End Source File
# Begin Source File

SOURCE=.\src\fileAttrib.cpp
# End Source File
# Begin Source File

SOURCE=.\src\iffreader.cpp
# End Source File
# Begin Source File

SOURCE=.\src\iffwriter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\launchProcess.cpp
# End Source File
# Begin Source File

SOURCE=.\src\materialgui.cpp
# End Source File
# Begin Source File

SOURCE=.\src\materialprocess.cpp
# End Source File
# Begin Source File

SOURCE=..\..\plugins\maya\common\src\mayaResolveName.cpp
# End Source File
# Begin Source File

SOURCE=.\src\meshprocess.cpp
# End Source File
# Begin Source File

SOURCE=.\src\opticEffects.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dEventAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dEventKey.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dExportSceneCmd.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dmayaexp.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dTagsCallback.cpp
# End Source File
# Begin Source File

SOURCE=.\src\particleAnimNode.cpp
# End Source File
# Begin Source File

SOURCE=.\src\particleSystem.cpp
# End Source File
# Begin Source File

SOURCE=.\src\quickexporter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\quickviewer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\saveParanoiaCmd.cpp
# End Source File
# Begin Source File

SOURCE=.\src\scene.cpp
# End Source File
# Begin Source File

SOURCE=.\src\scenegraph.cpp
# End Source File
# Begin Source File

SOURCE=.\src\set.cpp
# End Source File
# Begin Source File

SOURCE=.\src\shaderAnimNode.cpp
# End Source File
# Begin Source File

SOURCE=.\src\textureprocess.cpp
# End Source File
# Begin Source File

SOURCE=.\src\transformgui.cpp
# End Source File
# Begin Source File

SOURCE=.\src\transformmatrix.cpp
# End Source File
# Begin Source File

SOURCE=.\src\traversalcontroller.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vertexAnimationAnimNode.cpp
# End Source File
# End Group
# Begin Group "viewer"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\..\apps\p3dview\code\quickview\quickview.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\apps\p3dview\code\quickview\quickview.hpp
# End Source File
# End Group
# Begin Group "Build"

# PROP Default_Filter "*.bat"
# Begin Source File

SOURCE=.\copyhybridmll40.bat
# End Source File
# Begin Source File

SOURCE=.\copyreleasemll40.bat
# End Source File
# End Group
# Begin Source File

SOURCE=.\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\notes.txt
# End Source File
# Begin Source File

SOURCE=.\P3dexp.rc

!IF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Debug"

!ELSEIF  "$(CFG)" == "p3dmayaexp4 - Win32 Tools Release"

# ADD BASE RSC /l 0x1009 /fo"Release4/P3dexp.res"
# ADD RSC /l 0x1009 /fo"Release4/P3dexp.res"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\p3dres.h
# End Source File
# End Target
# End Project

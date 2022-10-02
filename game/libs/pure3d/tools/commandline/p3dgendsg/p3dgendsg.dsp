# Microsoft Developer Studio Project File - Name="p3dgendsg" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=p3dgendsg - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dgendsg.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dgendsg.mak" CFG="p3dgendsg - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dgendsg - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "p3dgendsg - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dgendsg"
# PROP Scc_LocalPath "."
CPP=snCl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dgendsg - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /GX /O2 /I "../../../.." /I "../../../../../code/constants" /I "../../../toollib/inc" /I "../../../constants" /I "../../../toollib/chunks16/inc" /I "../../../../radmath" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "P3DDEBUG" /D "P3DWIN95" /D "RAD_WIN32" /D "RAD_PC" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=snLink.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /out:"..\bin\p3dgendsg.exe"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=perl ..\..\..\toollib\compile_info.pl Release > Release\tlcompileinfo.cpp	cl /nologo /G6 /MT /c Release\tlcompileinfo.cpp /FoRelease\tlcompileinfo.obj
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dgendsg - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "../perl" /I "../../../.." /I "../../../../../code/constants" /I "../../../toollib/inc" /I "../../../constants" /I "../../../toollib/chunks16/inc" /I "../../../../radmath" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "P3DDEBUG" /D "P3DWIN95" /D "RAD_WIN32" /D "RAD_PC" /FR /YX /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=snLink.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=perl ..\..\..\toollib\compile_info.pl Debug > Debug\tlcompileinfo.cpp	cl /nologo /G6 /MTd /W3 /GR /GX /ZI /Od /c Debug\tlcompileinfo.cpp /FR"Debug/" /Fo"Debug/" /Fd"Debug/"
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dgendsg - Win32 Release"
# Name "p3dgendsg - Win32 Debug"
# Begin Group "Source"

# PROP Default_Filter "*.cpp, *.c"
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=.\Param.cpp
# End Source File
# Begin Source File

SOURCE=.\version.cpp
# End Source File
# End Group
# Begin Group "Include"

# PROP Default_Filter "*.hpp, *.h"
# Begin Source File

SOURCE=.\Param.hpp
# End Source File
# Begin Source File

SOURCE=.\version.hpp
# End Source File
# End Group
# Begin Group "Culling"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Culling\BlockCoord.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Bounds.h
# End Source File
# Begin Source File

SOURCE=.\Culling\BoxPts.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\BoxPts.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Cell.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\Cell.h
# End Source File
# Begin Source File

SOURCE=.\Culling\CellBlock.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\CellBlock.h
# End Source File
# Begin Source File

SOURCE=.\Culling\ContiguousBinNode.h
# End Source File
# Begin Source File

SOURCE=.\Culling\CoordSubList.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\CoordSubList.h
# End Source File
# Begin Source File

SOURCE=.\Culling\CullData.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\CullData.h
# End Source File
# Begin Source File

SOURCE=.\Culling\FixedArray.h
# End Source File
# Begin Source File

SOURCE=.\Culling\FloatFuncs.h
# End Source File
# Begin Source File

SOURCE=.\Culling\HexahedronP.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\HexahedronP.h
# End Source File
# Begin Source File

SOURCE=.\Culling\ISpatialProxy.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\ISpatialProxy.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Matrix3f.h
# End Source File
# Begin Source File

SOURCE=.\Culling\OctTreeConst.h
# End Source File
# Begin Source File

SOURCE=.\Culling\OctTreeData.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\OctTreeData.h
# End Source File
# Begin Source File

SOURCE=.\Culling\OctTreeNode.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\OctTreeNode.h
# End Source File
# Begin Source File

SOURCE=.\Culling\OctTreeParams.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Plane3f.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Point3f.h
# End Source File
# Begin Source File

SOURCE=.\Culling\ReserveArray.h
# End Source File
# Begin Source File

SOURCE=.\Culling\ScratchArray.h
# End Source File
# Begin Source File

SOURCE=.\Culling\SpatialNode.h
# End Source File
# Begin Source File

SOURCE=.\Culling\SpatialTree.h
# End Source File
# Begin Source File

SOURCE=.\Culling\SpatialTreeFactory.h
# End Source File
# Begin Source File

SOURCE=.\Culling\SpatialTreeIter.h
# End Source File
# Begin Source File

SOURCE=.\Culling\SphereSP.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\SphereSP.h
# End Source File
# Begin Source File

SOURCE=.\Culling\srrRenderTypes.h
# End Source File
# Begin Source File

SOURCE=.\Culling\UseArray.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Vector3f.h
# End Source File
# Begin Source File

SOURCE=.\Culling\Vector3i.h
# End Source File
# Begin Source File

SOURCE=.\Culling\VectorLib.cpp
# End Source File
# Begin Source File

SOURCE=.\Culling\VectorLib.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\p3dgendsg.sc

!IF  "$(CFG)" == "p3dgendsg - Win32 Release"

# Begin Custom Build - ToolsParamCreator
InputPath=.\p3dgendsg.sc
InputName=p3dgendsg

BuildCmds= \
	..\bin\ToolsParamCreator  -s  $(InputName).sc

"Param.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Param.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dgendsg - Win32 Debug"

# Begin Custom Build - ToolsParamCreator
InputPath=.\p3dgendsg.sc
InputName=p3dgendsg

BuildCmds= \
	..\bin\ToolsParamCreator  -s  $(InputName).sc

"Param.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"Param.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project

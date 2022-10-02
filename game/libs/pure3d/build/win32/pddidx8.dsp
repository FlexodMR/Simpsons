# Microsoft Developer Studio Project File - Name="pddidx8" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=pddidx8 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "pddidx8.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "pddidx8.mak" CFG="pddidx8 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "pddidx8 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pddidx8 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pddidx8 - Win32 Tune" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "nbrooke-dual"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "pddidx8 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pddidx8\Release"
# PROP Intermediate_Dir "obj\pddidx8\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PDDIDX8_EXPORTS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /Zi /O2 /I "..\ .\\" /I "..\..\pddi\dx8" /I "..\.." /I "..\..\..\radmath" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RAD_RELEASE" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 d3dx8.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib d3d8.lib /nologo /dll /debug /machine:I386 /out:"../lib/pddidx8r.dll"

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\pddidx8\Debug"
# PROP Intermediate_Dir "obj\pddidx8\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PDDIDX8_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /Zi /Od /I "..\..\pddi\dx8" /I "..\.." /I "..\..\..\radmath" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 d3dx8.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib d3d8.lib /nologo /dll /incremental:no /debug /machine:I386 /out:"../lib/pddidx8d.dll" /pdbtype:sept

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "pddidx8___Win32_Tune"
# PROP BASE Intermediate_Dir "pddidx8___Win32_Tune"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pddidx8\Tune"
# PROP Intermediate_Dir "obj\pddidx8\Tune"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MT /W3 /GR /O2 /I "..\..\sdks\dx8" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PDDIDX8_EXPORTS" /D "PDDID3D" /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MT /W3 /GR /Z7 /O2 /I "..\ .\\" /I "..\..\pddi\dx8" /I "..\.." /I "..\..\..\radmath" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "RAD_TUNE" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 d3dx8.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib d3d8.lib /nologo /dll /machine:I386 /out:"lib/pddidx8r.dll" /libpath:"..\..\sdks\dx8\lib"
# ADD LINK32 d3dx8.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib d3d8.lib /nologo /dll /debug /machine:I386 /out:"../lib/pddidx8t.dll"

!ENDIF 

# Begin Target

# Name "pddidx8 - Win32 Release"
# Name "pddidx8 - Win32 Debug"
# Name "pddidx8 - Win32 Tune"
# Begin Group "interface"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\buildconfig.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\Pddi.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\Pddienum.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddiext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddipc.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddishade.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pdditype.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\Pddiwin32.hpp
# End Source File
# End Group
# Begin Group "base"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\base\basecontext.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\basecontext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\baseshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\baseshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\basetype.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\debug.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\font.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\Font.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\pddiobj.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\romans.h
# End Source File
# End Group
# Begin Group "d3d"

# PROP Default_Filter ""
# Begin Group "shaders"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\errorshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\errorshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\hktoonshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\hktoonshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\layeredlmapshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\layeredlmapshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\layeredshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\layeredshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\lightmapshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\lightmapshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\pointspriteshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\pointspriteshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\projectedtextureshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\projectedtextureshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\reflectshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\reflectshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\shader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\shader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\shaderdata.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\shaderdata.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\shadersetup.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\shadersetup.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\simpleshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\simpleshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\toonshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\shaders\toonshader.hpp
# End Source File
# End Group
# Begin Group "vsh"

# PROP Default_Filter "vsh"
# Begin Source File

SOURCE=..\..\pddi\dx8\vsh\simple.vsh
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vsh\skin.vsh

!IF  "$(CFG)" == "pddidx8 - Win32 Release"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin.vsh
InputName=skin

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Debug"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin.vsh
InputName=skin

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Tune"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin.vsh
InputName=skin

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vsh\skin_hktoon.vsh

!IF  "$(CFG)" == "pddidx8 - Win32 Release"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_hktoon.vsh
InputName=skin_hktoon

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Debug"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_hktoon.vsh
InputName=skin_hktoon

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Tune"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_hktoon.vsh
InputName=skin_hktoon

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vsh\skin_onebone.vsh

!IF  "$(CFG)" == "pddidx8 - Win32 Release"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_onebone.vsh
InputName=skin_onebone

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Debug"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_onebone.vsh
InputName=skin_onebone

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Tune"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_onebone.vsh
InputName=skin_onebone

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vsh\skin_onebone_hktoon.vsh

!IF  "$(CFG)" == "pddidx8 - Win32 Release"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_onebone_hktoon.vsh
InputName=skin_onebone_hktoon

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Debug"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_onebone_hktoon.vsh
InputName=skin_onebone_hktoon

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Tune"

# Begin Custom Build
InputPath=..\..\pddi\dx8\vsh\skin_onebone_hktoon.vsh
InputName=skin_onebone_hktoon

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vsh\util.vsh
# End Source File
# End Group
# Begin Group "psh"

# PROP Default_Filter ".psh"
# Begin Source File

SOURCE=..\..\pddi\dx8\psh\hktoonshader.psh

!IF  "$(CFG)" == "pddidx8 - Win32 Release"

# Begin Custom Build
InputPath=..\..\pddi\dx8\psh\hktoonshader.psh
InputName=hktoonshader

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Debug"

# Begin Custom Build
InputPath=..\..\pddi\dx8\psh\hktoonshader.psh
InputName=hktoonshader

"..\..\pddi\dx8\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\psh\$(InputName).h 
	bin2h ..\..\pddi\dx8\psh\$(InputName).xpu >> ..\..\pddi\dx8\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddidx8 - Win32 Tune"

# Begin Custom Build
InputPath=..\..\pddi\dx8\psh\hktoonshader.psh
InputName=hktoonshader

"..\..\pddi\dx8\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm -t -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\dx8\vsh\$(InputName).h 
	bin2h ..\..\pddi\dx8\vsh\$(InputName).xvu >> ..\..\pddi\dx8\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\..\pddi\dx8\context.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\context.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\device.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\device.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\direct3d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\display.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\display.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\prim.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\prim.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\primstream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\primstream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\resource.h
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\state.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\state.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\texture.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\texture.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\util.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\util.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vertprog.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\dx8\vertprog.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\pddi\dx8\pddidx8.rc
# End Source File
# End Target
# End Project

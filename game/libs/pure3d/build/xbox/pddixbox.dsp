# Microsoft Developer Studio Project File - Name="pddixbox" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=pddixbox - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "pddixbox.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "pddixbox.mak" CFG="pddixbox - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "pddixbox - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "pddixbox - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "pddixbox - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "pddixbox"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pddixbox\release"
# PROP Intermediate_Dir "obj\pddixbox\release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /I "..\.." /I "..\..\pddi\xbox" /I "..\..\..\radmath" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pddixr.lib"

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "pddixbox___Xbox_Debug"
# PROP BASE Intermediate_Dir "pddixbox___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\pddixbox\debug"
# PROP Intermediate_Dir "obj\pddixbox\debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /Zi /Od /I "..\.." /I "..\..\pddi\xbox" /I "..\..\..\radmath" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pddixd.lib"

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "pddixbox___Xbox_Tune"
# PROP BASE Intermediate_Dir "pddixbox___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pddixbox\tune"
# PROP Intermediate_Dir "obj\pddixbox\tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /O2 /I "..\..\pddi\xbox" /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /Zi /O2 /Ob2 /I "..\.." /I "..\..\pddi\xbox" /I "..\..\..\radmath" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\pddixboxr.lib"
# ADD LIB32 /nologo /out:"../lib/pddixt.lib"

!ENDIF 

# Begin Target

# Name "pddixbox - Xbox Release"
# Name "pddixbox - Xbox Debug"
# Name "pddixbox - Xbox Tune"
# Begin Group "interface"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\pddi.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddienum.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddiext.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddishade.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pdditype.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\pddixbox.hpp
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

SOURCE=..\..\pddi\base\font.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\font.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\pddiobj.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\base\romans.h
# End Source File
# End Group
# Begin Group "xbox"

# PROP Default_Filter ""
# Begin Group "shaders"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\bumpmap_Constants.h
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\bumpmapshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\bumpmapshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\bumpmapvertexshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\bumpmapvertexshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\csrpshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\csrpshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\errorshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\errorshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\layeredlmapshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\layeredlmapshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\layeredshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\layeredshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\lightmapshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\lightmapshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\pointspriteshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\pointspriteshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\projectedtextureshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\projectedtextureshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\reflectshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\reflectshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\refractshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\refractshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\shader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\shader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\shaderdata.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\shaderdata.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\shadersetup.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\shadersetup.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\simpleshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\simpleshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\spheremapshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\spheremapshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\toon2vertexshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\toon2vertexshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\toonvertexshader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\toonvertexshader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\ubershader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\shaders\ubershader.hpp
# End Source File
# End Group
# Begin Group "vsh"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\bumpmap.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\bumpmap.vsh
InputName=bumpmap

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\bumpmap.vsh
InputName=bumpmap

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\bumpmap.vsh
InputName=bumpmap

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\point_sprite.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\point_sprite.vsh
InputName=point_sprite

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\point_sprite.vsh
InputName=point_sprite

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\point_sprite.vsh
InputName=point_sprite

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\refract.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\refract.vsh
InputName=refract

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\refract.vsh
InputName=refract

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\refract.vsh
InputName=refract

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\skin.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin.vsh
InputName=skin

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin.vsh
InputName=skin

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# PROP BASE Ignore_Default_Tool 1
# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin.vsh
InputName=skin

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\skin_csrp.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_csrp.vsh
InputName=skin_csrp

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin_csrp.vsh
InputName=skin_csrp

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_csrp.vsh
InputName=skin_csrp

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\skin_onebone.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin_onebone.vsh
InputName=skin_onebone

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin_onebone.vsh
InputName=skin_onebone

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# PROP BASE Ignore_Default_Tool 1
# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin_onebone.vsh
InputName=skin_onebone

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\skin_onebone_csrp.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_onebone_csrp.vsh
InputName=skin_onebone_csrp

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling vertex shader : $(InputName)
InputPath=..\..\pddi\xbox\vsh\skin_onebone_csrp.vsh
InputName=skin_onebone_csrp

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_onebone_csrp.vsh
InputName=skin_onebone_csrp

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\skin_refract.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_refract.vsh
InputName=skin_refract

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_refract.vsh
InputName=skin_refract

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_refract.vsh
InputName=skin_refract

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\skin_toon.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_toon.vsh
InputName=skin_toon

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_toon.vsh
InputName=skin_toon

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\skin_toon.vsh
InputName=skin_toon

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\spheremap.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\spheremap.vsh
InputName=spheremap

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\spheremap.vsh
InputName=spheremap

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\spheremap.vsh
InputName=spheremap

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\toon.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\toon.vsh
InputName=toon

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\toon.vsh
InputName=toon

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\toon.vsh
InputName=toon

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\toon2.vsh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\toon2.vsh
InputName=toon2

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\toon2.vsh
InputName=toon2

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\vsh\toon2.vsh
InputName=toon2

"..\..\pddi\xbox\vsh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)VertexShaderTokens[] = > ..\..\pddi\xbox\vsh\$(InputName).h 
	bin2h ..\..\pddi\xbox\vsh\$(InputName).xvu >> ..\..\pddi\xbox\vsh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vsh\util.vsh
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "psh"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\pddi\xbox\psh\bumpmapshader.psh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build
InputPath=..\..\pddi\xbox\psh\bumpmapshader.psh
InputName=bumpmapshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build
InputPath=..\..\pddi\xbox\psh\bumpmapshader.psh
InputName=bumpmapshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build
InputPath=..\..\pddi\xbox\psh\bumpmapshader.psh
InputName=bumpmapshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\psh\csrpshader.psh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling pixel shader : $(InputName)
InputPath=..\..\pddi\xbox\psh\csrpshader.psh
InputName=csrpshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling pixel shader : $(InputName)
InputPath=..\..\pddi\xbox\psh\csrpshader.psh
InputName=csrpshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build - Compiling pixel shader : $(InputName)
InputPath=..\..\pddi\xbox\psh\csrpshader.psh
InputName=csrpshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\psh\csrshader.psh

!IF  "$(CFG)" == "pddixbox - Xbox Release"

# Begin Custom Build - Compiling pixel shader : $(InputName)
InputPath=..\..\pddi\xbox\psh\csrshader.psh
InputName=csrshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Debug"

# Begin Custom Build - Compiling pixel shader : $(InputName)
InputPath=..\..\pddi\xbox\psh\csrshader.psh
InputName=csrshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "pddixbox - Xbox Tune"

# Begin Custom Build - Compiling pixel shader : $(InputName)
InputPath=..\..\pddi\xbox\psh\csrshader.psh
InputName=csrshader

"..\..\pddi\xbox\psh\$(InputName).h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xsasm  -nologo $(InputPath) 
	echo char $(InputName)PixelShaderTokens[] = > ..\..\pddi\xbox\psh\$(InputName).h 
	bin2h ..\..\pddi\xbox\psh\$(InputName).xpu >> ..\..\pddi\xbox\psh\$(InputName).h 
	
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\..\pddi\xbox\context.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\context.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\device.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\device.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\direct3d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\display.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\display.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\prim.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\prim.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\primstream.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\primstream.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\state.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\state.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\texture.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\texture.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\util.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\util.hpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vertprog.cpp
# End Source File
# Begin Source File

SOURCE=..\..\pddi\xbox\vertprog.hpp
# End Source File
# End Group
# End Target
# End Project

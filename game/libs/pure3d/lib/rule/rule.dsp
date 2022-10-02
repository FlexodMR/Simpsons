# Microsoft Developer Studio Project File - Name="rule" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=rule - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "rule.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "rule.mak" CFG="rule - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "rule - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "rule - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "rule - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "rule - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "rule"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "rule - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /GX /O2 /I "../../lib/rule/inc" /I "../../.." /I "../../toollib/inc" /I "../../constants" /I "../../toollib/chunks16/inc" /I "../../lib" /I "../../../radmath" /I "../../../../code/constants" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_RELEASE" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "rule - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /Zi /Od /I "../../lib/rule/inc" /I "../../.." /I "../../toollib/inc" /I "../../constants" /I "../../toollib/chunks16/inc" /I "../../lib" /I "../../../radmath" /I "../../../../code/constants" /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "rule - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "rule___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "rule___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /Gm /GR /GX /ZI /Od /I "../perl" /I "../../toollib/inc" /I "../../constants" /I "../../toollib/chunks16/inc" /I "../../lib" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "P3DDEBUG" /D "RAD_WIN32" /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /Gm /GR /GX /ZI /Od /I "../boost" /I "./inc" /I "../../.." /I "../../toollib/inc" /I "../../constants" /I "../../toollib/chunks16/inc" /I "../../lib" /I "../../../radmath" /I "../../../../code/constants" /D "_MBCS" /D "_LIB" /D "P3DDEBUG" /D "RAD_PC" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_DEBUG" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "rule - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "rule___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "rule___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /O2 /I "../perl" /I "../../toollib/inc" /I "../../constants" /I "../../toollib/chunks16/inc" /I "../../lib" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_WIN32" /YX /FD /c
# ADD CPP /nologo /G6 /MD /W3 /GR /GX /O2 /I "../boost" /I "./inc" /I "../../.." /I "../../toollib/inc" /I "../../constants" /I "../../toollib/chunks16/inc" /I "../../lib" /I "../../../radmath" /I "../../../../code/constants" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "rule - Win32 Release"
# Name "rule - Win32 Debug"
# Name "rule - Win32 Tools Debug"
# Name "rule - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\lex.cpp
# End Source File
# Begin Source File

SOURCE=.\parse.cpp
# End Source File
# Begin Source File

SOURCE=.\src\rule.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleAttribute.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleBase.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleCollection.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleContext.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleEnv.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleLog.cpp
# End Source File
# Begin Source File

SOURCE=.\src\ruleParser.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\inc\lex.h
# End Source File
# Begin Source File

SOURCE=.\parse.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\rule.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ruleAttribute.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ruleBase.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ruleCollection.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ruleContext.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ruleEnv.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\ruleLog.h
# End Source File
# Begin Source File

SOURCE=.\inc\ruleParser.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\rule.l

!IF  "$(CFG)" == "rule - Win32 Release"

# Begin Custom Build - Parsing $(InputPath)
InputPath=.\rule.l

"lex.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	flex -olex.cpp rule.l

# End Custom Build

!ELSEIF  "$(CFG)" == "rule - Win32 Debug"

!ELSEIF  "$(CFG)" == "rule - Win32 Tools Debug"

# Begin Custom Build - Parsing $(InputPath)
InputPath=.\rule.l

"lex.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	flex -olex.cpp rule.l

# End Custom Build

!ELSEIF  "$(CFG)" == "rule - Win32 Tools Release"

# Begin Custom Build - Parsing $(InputPath)
InputPath=.\rule.l

"lex.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	flex -olex.cpp rule.l

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\rule.y

!IF  "$(CFG)" == "rule - Win32 Release"

# Begin Custom Build - Parsing $(InputPath)
InputDir=.
InputPath=.\rule.y

"parse.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	set BISON_SIMPLE=$(InputDir)\bison.simple 
	bison --defines --verbose -o parse.cpp rule.y 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "rule - Win32 Debug"

!ELSEIF  "$(CFG)" == "rule - Win32 Tools Debug"

# Begin Custom Build - Parsing $(InputPath)
InputDir=.
InputPath=.\rule.y

"parse.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	set BISON_SIMPLE=$(InputDir)\bison.simple 
	bison --defines --verbose -o parse.cpp rule.y 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "rule - Win32 Tools Release"

# Begin Custom Build - Parsing $(InputPath)
InputDir=.
InputPath=.\rule.y

"parse.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	set BISON_SIMPLE=$(InputDir)\bison.simple 
	bison --defines --verbose -o parse.cpp rule.y 
	
# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="ShaderFilesCreator" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=ShaderFilesCreator - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ShaderFilesCreator.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ShaderFilesCreator.mak" CFG="ShaderFilesCreator - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ShaderFilesCreator - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "ShaderFilesCreator - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "ShaderFilesCreator"
# PROP Scc_LocalPath ".."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ShaderFilesCreator - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "..\..\..\toollib\inc" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386 /out:"../bin/ShaderFilesCreator.exe"

!ELSEIF  "$(CFG)" == "ShaderFilesCreator - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /I "..\..\..\toollib\inc" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "ShaderFilesCreator - Win32 Release"
# Name "ShaderFilesCreator - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\..\toollib\src\getopt.c
# End Source File
# Begin Source File

SOURCE=..\..\..\toollib\src\getopt1.c
# End Source File
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=.\Param.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\version.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\..\toollib\inc\getopt.h
# End Source File
# Begin Source File

SOURCE=.\Param.hpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\version.hpp
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Group "SchemaParser"

# PROP Default_Filter "cpp;hpp;c;h"
# Begin Group "meta"

# PROP Default_Filter "l;y"
# Begin Source File

SOURCE=..\coder\schemaparse\schema.l

!IF  "$(CFG)" == "ShaderFilesCreator - Win32 Release"

# Begin Custom Build
InputPath=..\coder\schemaparse\schema.l

"..\coder\schemaparse\lex.yy.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\coder\schemaparse\flex++bison++\flex++.exe -o..\coder\schemaparse\lex.yy.c  ..\coder\schemaparse\schema.l

# End Custom Build

!ELSEIF  "$(CFG)" == "ShaderFilesCreator - Win32 Debug"

# Begin Custom Build
InputPath=..\coder\schemaparse\schema.l

"..\coder\schemaparse\lex.yy.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\coder\schemaparse\flex++bison++\flex++.exe -o..\coder\schemaparse\lex.yy.c  ..\coder\schemaparse\schema.l

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\coder\schemaparse\schema.y

!IF  "$(CFG)" == "ShaderFilesCreator - Win32 Release"

# Begin Custom Build
InputPath=..\coder\schemaparse\schema.y

"..\coder\schemaparse\schema.tab.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\coder\schemaparse\flex++bison++\bison++.exe -o  ..\coder\schemaparse\schema.tab.c ..\coder\schemaparse\schema.y

# End Custom Build

!ELSEIF  "$(CFG)" == "ShaderFilesCreator - Win32 Debug"

# Begin Custom Build
InputPath=..\coder\schemaparse\schema.y

"..\coder\schemaparse\schema.tab.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\coder\schemaparse\flex++bison++\bison++.exe -o  ..\coder\schemaparse\schema.tab.c ..\coder\schemaparse\schema.y

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\coder\schemaparse\construct.cpp
# End Source File
# Begin Source File

SOURCE=..\coder\schemaparse\construct.h
# End Source File
# Begin Source File

SOURCE=..\coder\schemaparse\schema.tab.c
# End Source File
# Begin Source File

SOURCE=..\coder\schemaparse\schemaparse.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\header_cpp.tpl
# End Source File
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\shader_hpp_cpp.tpl

!IF  "$(CFG)" == "ShaderFilesCreator - Win32 Release"

# Begin Custom Build
InputPath=.\shader_hpp_cpp.tpl
InputName=shader_hpp_cpp

"main.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\bin\coder.exe  -t $(InputName).tpl -o main.cpp

# End Custom Build

!ELSEIF  "$(CFG)" == "ShaderFilesCreator - Win32 Debug"

# Begin Custom Build
InputPath=.\shader_hpp_cpp.tpl
InputName=shader_hpp_cpp

"main.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\bin\coder.exe  -t $(InputName).tpl -o main.cpp

# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project

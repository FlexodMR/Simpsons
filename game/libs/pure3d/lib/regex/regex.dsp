# Microsoft Developer Studio Project File - Name="regex" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=regex - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "regex.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "regex.mak" CFG="regex - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "regex - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "regex - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "regex - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "regex - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "regex"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "regex - Win32 Release"

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
# ADD CPP /nologo /G6 /MT /W3 /GX /Ox /Ob0 /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_RELEASE" /YX /FD /c
# SUBTRACT CPP /Ot
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

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
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "regex___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "regex___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GX /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /FR /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /GX /ZI /Od /D "_MBCS" /D "_LIB" /D "RAD_DEBUG" /D "RAD_PC" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "regex___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "regex___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MD /W3 /GX /Ox /Ob0 /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
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

# Name "regex - Win32 Release"
# Name "regex - Win32 Debug"
# Name "regex - Win32 Tools Debug"
# Name "regex - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\debug.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\engine.c

!IF  "$(CFG)" == "regex - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\main.c

!IF  "$(CFG)" == "regex - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regcomp.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regerror.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regexec.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regfree.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regperform.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\split.c

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\cclass.h
# End Source File
# Begin Source File

SOURCE=.\cname.h
# End Source File
# Begin Source File

SOURCE=.\engine.h

!IF  "$(CFG)" == "regex - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regcomp.h

!IF  "$(CFG)" == "regex - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regerror.h

!IF  "$(CFG)" == "regex - Win32 Release"

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regex2.h
# End Source File
# Begin Source File

SOURCE=.\regexec.h

!IF  "$(CFG)" == "regex - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regfree.h

!IF  "$(CFG)" == "regex - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Debug"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "regex - Win32 Tools Release"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\regtypes.h
# End Source File
# Begin Source File

SOURCE=.\utils.h
# End Source File
# End Group
# Begin Group "regex++ (John Maddock)"

# PROP Default_Filter ""
# Begin Source File

SOURCE="..\regex++\src\cregex.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\include\cregex.h"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\fileiter.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\include\fileiter.h"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_cls.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_coll.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_dbg.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_mss.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_nls.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_nlsw.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_psx.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_psxw.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_strw.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\re_thrd.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\regex.cpp"
# End Source File
# Begin Source File

SOURCE="..\regex++\include\regex.h"
# End Source File
# Begin Source File

SOURCE="..\regex++\src\regfac.cpp"
# End Source File
# End Group
# End Target
# End Project

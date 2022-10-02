# Microsoft Developer Studio Project File - Name="mayaModifierStack4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=mayaModifierStack4 - Win32 Tools Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mayaModifierStack4.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mayaModifierStack4.mak" CFG="mayaModifierStack4 - Win32 Tools Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mayaModifierStack4 - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "mayaModifierStack4 - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "mayaModifierStack4"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mayaModifierStack4 - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "mayaModifierStack4___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "mayaModifierStack4___Win32_Tools_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /Zi /Od /I "..\..\sdks\maya4_0\include" /I "..\..\toollib\inc" /I "..\..\lib\maya\inc" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "NT_PLUGIN" /FR /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /GR /GX /Zi /Od /I "..\..\sdks\maya4_0\include" /I "..\..\toollib\inc" /I "..\..\lib\maya\inc" /I "../../../radmath" /D "_MBCS" /D "_LIB" /D "NT_PLUGIN" /D "RAD_PC" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_DEBUG" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "mayaModifierStack4 - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "mayaModifierStack4___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "mayaModifierStack4___Win32_Tools_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /O2 /I "..\..\sdks\maya4_0\include" /I "..\..\toollib\inc" /I "..\..\lib\maya\inc" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "NT_PLUGIN" /YX /FD /c
# ADD CPP /nologo /G6 /MD /W3 /GR /GX /O2 /I "..\..\sdks\maya4_0\include" /I "..\..\toollib\inc" /I "..\..\lib\maya\inc" /I "../../../radmath" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "NT_PLUGIN" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /D "RAD_TUNE" /YX /FD /c
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

# Name "mayaModifierStack4 - Win32 Tools Debug"
# Name "mayaModifierStack4 - Win32 Tools Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\mayaModifierStack.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\inc\mayaModifier.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\mayaModifierStack.hpp
# End Source File
# Begin Source File

SOURCE=.\mayaModifierStack.rc
# End Source File
# End Group
# End Target
# End Project

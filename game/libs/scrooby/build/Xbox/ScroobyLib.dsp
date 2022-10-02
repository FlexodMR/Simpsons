# Microsoft Developer Studio Project File - Name="ScroobyLib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=ScroobyLib - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ScroobyLib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ScroobyLib.mak" CFG="ScroobyLib - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ScroobyLib - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "ScroobyLib - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "ScroobyLib - Xbox tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "ScroobyLib"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe

!IF  "$(CFG)" == "ScroobyLib - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ScroobyLib___Xbox_Release"
# PROP BASE Intermediate_Dir "ScroobyLib___Xbox_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ScroobyLib___Xbox_Release"
# PROP Intermediate_Dir "ScroobyLib___Xbox_Release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /GR /O2 /I "../../../radmath" /I "../../../pure3d" /I "../../../radcore/inc" /I "../../inc" /I "../../src" /I "..\..\..\radcontent\inc" /D "WIN32" /D "_XBOX" /D "RAD_CONSOLE" /D "RAD_XBOX" /D "RAD_RELEASE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ScroobyLib - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "ScroobyLib___Xbox_Debug"
# PROP BASE Intermediate_Dir "ScroobyLib___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ScroobyLib___Xbox_Debug"
# PROP Intermediate_Dir "ScroobyLib___Xbox_Debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "../../../radmath" /I "../../../pure3d" /I "../../../radcore/inc" /I "../../inc" /I "../../src" /I "..\..\..\radcontent\inc" /D "_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_CONSOLE" /D "RAD_XBOX" /D "RAD_DEBUG" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ScroobyLib - Xbox tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "ScroobyLib___Xbox_tune"
# PROP BASE Intermediate_Dir "ScroobyLib___Xbox_tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GR /Zi /Od /I "../../../pure3d/p3d" /I "../../../pure3d" /I "../../../radcore/inc" /I "../../inc" /I "../../src" /D "_DEBUG" /D "WIN32" /D "_XBOX" /D "SCROOBY_RUNTIME" /D "COMPILING_PURE3D_STATIC" /D "P2D_UNICODE" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /O2 /I "../../../radmath" /I "../../../pure3d" /I "../../../radcore/inc" /I "../../inc" /I "../../src" /I "..\..\..\radcontent\inc" /D "NDEBUG" /D "WIN32" /D "_XBOX" /D "RAD_CONSOLE" /D "RAD_XBOX" /D "RAD_TUNE" /YX /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "ScroobyLib - Xbox Release"
# Name "ScroobyLib - Xbox Debug"
# Name "ScroobyLib - Xbox tune"
# Begin Group "FE Core"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\FeApp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeApp.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeBoundedDrawable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeBoundedDrawable.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeDrawable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeDrawable.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeEntity.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeEntity.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeGroup.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeGroup.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLanguage.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLanguage.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLayer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLayer.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeMovie.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeMovie.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeOwner.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FePage.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FePage.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeParent.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeParent.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FePolygon.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FePolygon.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeProject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeProject.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FePure3dObject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FePure3dObject.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeScreen.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeScreen.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeSprite.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeSprite.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeText.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeText.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeTextBible.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeTextBible.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeTextStyle.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeTextStyle.h
# End Source File
# Begin Source File

SOURCE=..\..\src\tLinearTable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\tLinearTable.h
# End Source File
# End Group
# Begin Group "Scrooby Interface"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\scrooby\App.cpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\App.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\BoundedDrawable.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Drawable.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Enums.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Group.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Layer.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Movie.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Page.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Polygon.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Project.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Pure3dObject.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\ResourceManager.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Screen.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Scrooby.hpp
# End Source File
# Begin Source File

SOURCE=..\..\inc\Sprite.h
# End Source File
# Begin Source File

SOURCE=..\..\inc\Text.h
# End Source File
# End Group
# Begin Group "FE Loaders"

# PROP Default_Filter ""
# Begin Group "XML"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\utility\BufferReader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\BufferReader.h
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLParser.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLParser.h
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLTree.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLTree.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\src\FeChunkHandler.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeChunkHandler.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLoaders.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLoaders.h
# End Source File
# Begin Source File

SOURCE=..\..\src\FeLoadTags.h
# End Source File
# End Group
# Begin Group "Utility Classes"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\utility\debugMessages.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\debugMessages.h
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\EnumConversion.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\EnumConversion.h
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\memory.h
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\rVector.hpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\Util.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\Util.h
# End Source File
# End Group
# Begin Group "Resource Manager"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\ResourceManager\FeResourceManager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\ResourceManager\FeResourceManager.h
# End Source File
# End Group
# Begin Group "String Classes"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\strings\pcstring.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\pcstring.h
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\stricmp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\stricmp.h
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\UnicodeString.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\unicodeString.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\includePaths.txt
# End Source File
# End Target
# End Project

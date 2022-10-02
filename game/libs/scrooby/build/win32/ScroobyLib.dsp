# Microsoft Developer Studio Project File - Name="ScroobyLib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ScroobyLib - Win32 Tune
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ScroobyLib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ScroobyLib.mak" CFG="ScroobyLib - Win32 Tune"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ScroobyLib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ScroobyLib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "ScroobyLib - Win32 Tune" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "ScroobyLib"
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ScroobyLib - Win32 Release"

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
# ADD CPP /nologo /MT /W3 /GR /O2 /I "..\..\..\radcore\inc" /I "..\..\inc" /I "..\..\src" /I "..\..\..\pure3d" /I "..\..\..\radmath" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "SCROOBY_RUNTIME" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_RELEASE" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "NDEBUG"
# ADD RSC /l 0x1009 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\scroobywr.lib"

!ELSEIF  "$(CFG)" == "ScroobyLib - Win32 Debug"

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
# ADD CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\..\pure3d" /I "..\..\..\radcore\inc" /I "..\..\inc" /I "..\..\src" /I "..\..\..\radmath" /D "WIN32" /D "_MBCS" /D "_LIB" /D "SCROOBY_RUNTIME" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_DEBUG" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\..\lib\scroobywd.lib"

!ELSEIF  "$(CFG)" == "ScroobyLib - Win32 Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "ScroobyLib___Win32_Tune"
# PROP BASE Intermediate_Dir "ScroobyLib___Win32_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Tune"
# PROP Intermediate_Dir "Tune"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GR /ZI /Od /I "..\..\..\pure3d" /I "..\..\..\pure3d\p3d" /I "..\..\inc" /I "..\..\src" /I "..\..\src\strings" /I "..\..\src\p2d" /I "..\..\src\utility" /I "..\..\..\ftech\inc" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "SCROOBY_RUNTIME" /D "P2D_UNICODE" /D "SCROOBY_VERBOSE" /FR /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /MT /W3 /GR /Z7 /O2 /I "..\..\..\pure3d" /I "..\..\..\radcore\inc" /I "..\..\inc" /I "..\..\src" /I "..\..\..\radmath" /D "WIN32" /D "_MBCS" /D "_LIB" /D "SCROOBY_RUNTIME" /D "RAD_PC" /D "RAD_WIN32" /D "RAD_TUNE" /FR /FD /c
# ADD BASE RSC /l 0x1009 /d "_DEBUG"
# ADD RSC /l 0x1009 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"Debug\ScroobyD.lib"
# ADD LIB32 /nologo /out:"..\..\lib\scroobywt.lib"

!ENDIF 

# Begin Target

# Name "ScroobyLib - Win32 Release"
# Name "ScroobyLib - Win32 Debug"
# Name "ScroobyLib - Win32 Tune"
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

SOURCE=..\..\src\utility\AsyncFileLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\utility\AsyncFileLoader.h
# End Source File
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

SOURCE=..\..\src\tLinearTable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\tLinearTable.h
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

SOURCE=..\..\Src\strings\UnicodeString.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\unicodeString.h
# End Source File
# End Group
# End Target
# End Project

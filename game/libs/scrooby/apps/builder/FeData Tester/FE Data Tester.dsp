# Microsoft Developer Studio Project File - Name="FE Data Tester" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=FE Data Tester - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "FE Data Tester.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FE Data Tester.mak" CFG="FE Data Tester - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FE Data Tester - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "FE Data Tester - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "FE Data Tester - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "res\\" /I "..\XML\xmllib_src" /I "..\..\common\\" /I "..\..\common\strings" /I "..\..\common\ImageLib\inc" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "STRICT" /D "FE_DATA_TESTER" /FR /YX"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 ../../Common/ImageLib/Lib/ImageR.lib /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "FE Data Tester - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "res\\" /I "..\XML\xmllib_src" /I "..\..\common\\" /I "..\..\common\strings" /I "..\..\common\ImageLib\inc" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /D "STRICT" /D "FE_DATA_TESTER" /FR /YX"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x1009 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 ../../Common/ImageLib/Lib/ImageD.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "FE Data Tester - Win32 Release"
# Name "FE Data Tester - Win32 Debug"
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\bitmap1.bmp
# End Source File
# Begin Source File

SOURCE=".\res\FE Data Tester.ico"
# End Source File
# Begin Source File

SOURCE=".\res\FE Data Tester.rc2"
# End Source File
# Begin Source File

SOURCE=".\res\FE Data TesterDoc.ico"
# End Source File
# Begin Source File

SOURCE=.\res\ico00001.ico
# End Source File
# Begin Source File

SOURCE=.\res\ico00002.ico
# End Source File
# Begin Source File

SOURCE=.\res\ico00003.ico
# End Source File
# Begin Source File

SOURCE=.\res\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\res\output_w.ico
# End Source File
# Begin Source File

SOURCE=.\res\Toolbar.bmp
# End Source File
# End Group
# Begin Group "MFC Classes"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\ChildFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\ChildFrm.h
# End Source File
# Begin Source File

SOURCE=".\FE Data Tester.cpp"
# End Source File
# Begin Source File

SOURCE=".\FE Data Tester.h"
# End Source File
# Begin Source File

SOURCE=".\FE Data Tester.rc"
# End Source File
# Begin Source File

SOURCE=".\FE Data TesterDoc.cpp"
# End Source File
# Begin Source File

SOURCE=".\FE Data TesterDoc.h"
# End Source File
# Begin Source File

SOURCE=".\FE Data TesterView.cpp"
# End Source File
# Begin Source File

SOURCE=".\FE Data TesterView.h"
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "FE Data"

# PROP Default_Filter ""
# Begin Group "NamedElements"

# PROP Default_Filter ""
# Begin Group "GDI"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIMultiSprite.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIMultiSprite.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIMultiText.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIMultiText.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIPolygon.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIPolygon.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDISprite.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDISprite.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIText.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Gdi\GDIText.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\FeData\NamedElements\BoxDrawingElement.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\BoxDrawingElement.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\DrawingElement.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\DrawingElement.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Group.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Group.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Layer.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Layer.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\MultiSprite.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\MultiSprite.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\MultiText.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\MultiText.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\NamedElement.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\NamedElement.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Page.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Page.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\PageElement.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\PageElement.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Polygon.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Polygon.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Project.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Project.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\ProjectElement.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\ProjectElement.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Screen.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Screen.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Sprite.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Sprite.h
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Text.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\NamedElements\Text.h
# End Source File
# End Group
# Begin Group "Helpers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\Helpers\ElementList.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\EnumConversion.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\EnumConversion.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\FileName.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\FileName.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\OutputMessage.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\OutputMessage.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\ResourceFileManager.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\ResourceFileManager.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\ResourceManager.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\ResourceManager.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\Vertex.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Helpers\Vertex.h
# End Source File
# End Group
# Begin Group "Loaders"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\Loaders\BoxDrawingElementLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\BoxDrawingElementLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\DrawingElementLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\DrawingElementLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\GroupLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\GroupLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\LayerLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\LayerLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\MultiSpriteLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\MultiSpriteLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\MultiTextLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\MultiTextLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\PageLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\PageLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\PolygonLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\PolygonLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\ProjectLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\ProjectLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\ScreenLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\ScreenLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\SpriteLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\SpriteLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\TextLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\TextLoader.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\VertexLoader.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Loaders\VertexLoader.h
# End Source File
# End Group
# Begin Group "Savers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\Savers\BoxDrawingElementSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\BoxDrawingElementSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\DrawingElementSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\DrawingElementSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\GroupSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\GroupSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\LayerSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\LayerSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\MultiSpriteSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\MultiSpriteSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\MultiTextSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\MultiTextSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\PageSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\PageSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\PolygonSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\PolygonSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\ProjectSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\ProjectSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\ScreenSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\ScreenSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\SpriteSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\SpriteSaver.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\TextSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Savers\TextSaver.h
# End Source File
# End Group
# Begin Group "DrawingContexts"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\DrawingContexts\DrawingContext.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\DrawingContexts\DrawingContext.h
# End Source File
# Begin Source File

SOURCE=..\FeData\DrawingContexts\GDIDrawingContext.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\DrawingContexts\GDIDrawingContext.h
# End Source File
# End Group
# Begin Group "Factories"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\Factories\BaseFactory.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Factories\BaseFactory.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Factories\GDIFactory.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Factories\GDIFactory.h
# End Source File
# End Group
# Begin Group "Resources"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\Resources\Image.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\Image.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\Resource.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\Resource.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\TextBible.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\TextBible.h
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\TextStyle.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\Resources\TextStyle.h
# End Source File
# End Group
# Begin Group "ResourceFiles"

# PROP Default_Filter ""
# Begin Group "GDI."

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\FeData\ResourceFiles\Gdi\GDIImageFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\Gdi\GDIImageFile.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ImageFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ImageFile.h
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\PageFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\PageFile.h
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ProjectFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ProjectFile.h
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ResourceFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ResourceFile.h
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ScreenFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\ScreenFile.h
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\TextBibleFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\TextBibleFile.h
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\TextStyleFile.cpp
# End Source File
# Begin Source File

SOURCE=..\FeData\ResourceFiles\TextStyleFile.h
# End Source File
# End Group
# End Group
# Begin Group "Common"

# PROP Default_Filter ""
# Begin Group "Strings"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\common\strings\pcstring.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\strings\pcstring.h
# End Source File
# Begin Source File

SOURCE=..\..\common\strings\unicodeChar.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\strings\unicodeChar.h
# End Source File
# Begin Source File

SOURCE=..\..\common\strings\UnicodeString.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\strings\unicodeString.h
# End Source File
# End Group
# Begin Group "Localization"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\common\localization\languageDatabase.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\localization\languageDatabase.h
# End Source File
# Begin Source File

SOURCE=..\..\common\localization\languageEntry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\localization\languageEntry.h
# End Source File
# End Group
# Begin Group "Excel"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\common\excel\ExcelFile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\excel\ExcelFile.h
# End Source File
# End Group
# Begin Group "Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\common\files\gfefile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\files\gfefile.h
# End Source File
# End Group
# End Group
# Begin Group "GUI"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Gui\MessageListCtrl.cpp
# End Source File
# Begin Source File

SOURCE=..\Gui\MessageListCtrl.h
# End Source File
# Begin Source File

SOURCE=..\Gui\OutputWindow.cpp
# End Source File
# Begin Source File

SOURCE=..\Gui\OutputWindow.h
# End Source File
# Begin Source File

SOURCE=..\Gui\sizecbar.cpp
# End Source File
# Begin Source File

SOURCE=..\Gui\sizecbar.h
# End Source File
# End Group
# Begin Source File

SOURCE=".\FE Data Tester.reg"
# End Source File
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# End Target
# End Project

# Microsoft Developer Studio Project File - Name="XCon" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=XCon - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "XCon.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "XCon.mak" CFG="XCon - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "XCon - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "XCon - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "XCon - Win32 Tools Debug" (based on "Win32 (x86) Application")
!MESSAGE "XCon - Win32 Tools Release" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "XCon"
# PROP Scc_LocalPath ".."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "XCon - Win32 Release"

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
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "." /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../pure3d/toollib/inc" /I "../../tools" /I "../../src/xml" /I "../../common" /I "../../src/strings" /I "../../common/ImageLib/inc" /I "../../../radcore/inc" /I "../../src" /D "NDEBUG" /D "JSFILE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "PLAT_WIN95TOOL" /D "STRICT" /D "SCROOBY_TOOL" /D "_AFXDLL" /YX"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386 /nodefaultlib:"LIBC.LIB" /out:"../bin/Scrooby.exe"
# SUBTRACT LINK32 /incremental:yes /debug

!ELSEIF  "$(CFG)" == "XCon - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "." /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../pure3d/toollib/inc" /I "../../tools" /I "../../src/xml" /I "../../common" /I "../../src/strings" /I "../../common/ImageLib/inc" /I "../../../radcore/inc" /I "../../src" /D "_AFXDLL" /D "XP_PC" /D "JSFILE" /D "_DEBUG" /D "USE_JS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "PLAT_WIN95TOOL" /D "STRICT" /D "SCROOBY_TOOL" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 ws2_32.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"LIBCD.LIB" /nodefaultlib:"LIBC.LIB" /out:"Debug/Scrooby.exe" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "XCon - Win32 Tools Debug"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "XCon___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "XCon___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "XCon___Win32_Tools_Debug"
# PROP Intermediate_Dir "XCon___Win32_Tools_Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "." /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../pure3d/toollib/inc" /I "../../tools" /I "../../src/xml" /I "../../common" /I "../../src/strings" /I "../../common/ImageLib/inc" /I "../../../radcore/inc" /I "../../src" /D "XP_PC" /D "JSFILE" /D "_DEBUG" /D "USE_JS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "PLAT_WIN95TOOL" /D "STRICT" /D "SCROOBY_TOOL" /FR /FD /GZ /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /Gm /GR /GX /ZI /Od /I "." /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../pure3d/toollib/inc" /I "../../tools" /I "../../src/xml" /I "../../common" /I "../../src/strings" /I "../../common/ImageLib/inc" /I "../../../radcore/inc" /I "../../src" /I "../../../radmath" /D "_AFXDLL" /D "_CONSOLE" /D "_MBCS" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "PLAT_WIN95TOOL" /D "SCROOBY_TOOL" /D "STRICT" /D "RAD_WIN32" /D "RAD_DEBUG" /D "RAD_CONSOLE" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 ws2_32.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"LIBCD.LIB" /nodefaultlib:"LIBC.LIB" /out:"Debug/Scrooby.exe" /pdbtype:sept
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ws2_32.lib /nologo /subsystem:windows /debug /machine:I386 /out:"Debug/Scrooby.exe" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none /incremental:no

!ELSEIF  "$(CFG)" == "XCon - Win32 Tools Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "XCon___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "XCon___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "XCon___Win32_Tools_Release"
# PROP Intermediate_Dir "XCon___Win32_Tools_Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GR /GX /O2 /I "." /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../pure3d/toollib/inc" /I "../../tools" /I "../../src/xml" /I "../../common" /I "../../src/strings" /I "../../common/ImageLib/inc" /I "../../../radcore/inc" /I "../../src" /D "NDEBUG" /D "JSFILE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "PLAT_WIN95TOOL" /D "STRICT" /D "SCROOBY_TOOL" /D "_AFXDLL" /YX"stdafx.h" /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "." /I "../../../pure3d/constants" /I "../../../pure3d/toollib/chunks16/inc" /I "../../../pure3d/toollib/inc" /I "../../tools" /I "../../src/xml" /I "../../common" /I "../../src/strings" /I "../../common/ImageLib/inc" /I "../../../radcore/inc" /I "../../src" /I "../../../radmath" /D "NDEBUG" /D "JSFILE" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "PLAT_WIN95TOOL" /D "STRICT" /D "SCROOBY_TOOL" /D "_AFXDLL" /D "RAD_RELEASE" /D "RAD_PC" /D "RAD_WIN32" /YX"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386 /nodefaultlib:"LIBC.LIB" /out:"../bin/Scrooby.exe"
# SUBTRACT BASE LINK32 /incremental:yes /debug
# ADD LINK32 /nologo /subsystem:windows /machine:I386 /nodefaultlib:"LIBC.LIB" /out:"../bin/Scrooby.exe"
# SUBTRACT LINK32 /incremental:yes /debug

!ENDIF 

# Begin Target

# Name "XCon - Win32 Release"
# Name "XCon - Win32 Debug"
# Name "XCon - Win32 Tools Debug"
# Name "XCon - Win32 Tools Release"
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\Res\Clip.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Cursor.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Editable.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Editable.ico
# End Source File
# Begin Source File

SOURCE=.\Res\Exportable.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Exportable.ico
# End Source File
# Begin Source File

SOURCE=.\Res\Folder.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\FolderSel.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Font.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Group.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\hard_cod.ico
# End Source File
# Begin Source File

SOURCE=.\Res\hard_cos.ico
# End Source File
# Begin Source File

SOURCE=.\Res\ico00001.ico
# End Source File
# Begin Source File

SOURCE=.\Res\ico00002.ico
# End Source File
# Begin Source File

SOURCE=.\Res\ico00003.ico
# End Source File
# Begin Source File

SOURCE=.\Res\ico00004.ico
# End Source File
# Begin Source File

SOURCE=.\Res\ico00005.ico
# End Source File
# Begin Source File

SOURCE=.\Res\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\Res\Image.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\ImageMulti.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Layer.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\not_sele.ico
# End Source File
# Begin Source File

SOURCE=.\Res\NotLoaded.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\OutputDebug.ico
# End Source File
# Begin Source File

SOURCE=.\Res\OutputError.ico
# End Source File
# Begin Source File

SOURCE=.\Res\OutputFunny.ico
# End Source File
# Begin Source File

SOURCE=.\Res\OutputInformation.ico
# End Source File
# Begin Source File

SOURCE=.\Res\OutputWarning.ico
# End Source File
# Begin Source File

SOURCE=.\Res\Overlay.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\OverlayVis.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Poly.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\pure3dfi.ico
# End Source File
# Begin Source File

SOURCE=.\Res\ReadOnly.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Screen.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\selected.ico
# End Source File
# Begin Source File

SOURCE=.\Res\selectio.ico
# End Source File
# Begin Source File

SOURCE=.\Res\Sprite.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\SpriteShow.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\String.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\StringLang.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\StringMulti.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Text.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\text_bib.ico
# End Source File
# Begin Source File

SOURCE=.\Res\text_biS.ico
# End Source File
# Begin Source File

SOURCE=.\Res\TextBible.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\TextStyle.bmp
# End Source File
# Begin Source File

SOURCE=.\res\Toolbar.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Tree.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\tree18.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\tree24.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\tree25.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Viewable.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Viewable.ico
# End Source File
# Begin Source File

SOURCE=.\res\XCon.ico
# End Source File
# Begin Source File

SOURCE=.\res\XCon.rc2
# End Source File
# Begin Source File

SOURCE=.\res\XConDoc.ico
# End Source File
# Begin Source File

SOURCE=.\Res\XY.ico
# End Source File
# End Group
# Begin Group "XCon Files"

# PROP Default_Filter ""
# Begin Group "Obsolete"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\docArrayType.h
# End Source File
# Begin Source File

SOURCE=.\platform.h
# End Source File
# Begin Source File

SOURCE=.\XObject.cpp
# End Source File
# Begin Source File

SOURCE=.\XObject.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\DlgInsert.cpp
# End Source File
# Begin Source File

SOURCE=.\DlgInsert.h
# End Source File
# Begin Source File

SOURCE=.\DlgProp.cpp
# End Source File
# Begin Source File

SOURCE=.\DlgProp.h
# End Source File
# Begin Source File

SOURCE=.\LayerOrganizerDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\LayerOrganizerDlg.h
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\PageDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\PageDlg.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\ResourceDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\ResourceDlg.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\TabView.cpp
# End Source File
# Begin Source File

SOURCE=.\TabView.h
# End Source File
# Begin Source File

SOURCE=.\TreeDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\TreeDlg.h
# End Source File
# Begin Source File

SOURCE=.\XCon.cpp
# End Source File
# Begin Source File

SOURCE=.\XCon.h
# End Source File
# Begin Source File

SOURCE=.\XCon.rc
# End Source File
# Begin Source File

SOURCE=.\XConDoc.cpp
# End Source File
# Begin Source File

SOURCE=.\XConDoc.h
# End Source File
# Begin Source File

SOURCE=.\XConDocClip.cpp
# End Source File
# Begin Source File

SOURCE=.\XConDocIns.cpp
# End Source File
# Begin Source File

SOURCE=.\XConView.cpp
# End Source File
# Begin Source File

SOURCE=.\XConView.h
# End Source File
# End Group
# Begin Group "FeData"

# PROP Default_Filter ""
# Begin Group "Drawing Contexts"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\DrawingContexts\DrawingContext.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\DrawingContexts\DrawingContext.h
# End Source File
# Begin Source File

SOURCE=.\FeData\DrawingContexts\GDIDrawingContext.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\DrawingContexts\GDIDrawingContext.h
# End Source File
# End Group
# Begin Group "Factories"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\Factories\BaseFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Factories\BaseFactory.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Factories\GDIFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Factories\GDIFactory.h
# End Source File
# End Group
# Begin Group "Helpers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\Helpers\Color.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\Color.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\DescriptionManager.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\DescriptionManager.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\DrawingElementDescriptionList.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\DrawingElementDescriptionList.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\ElementList.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\EnumConversion.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\EnumConversion.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\FileName.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\FileName.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\NameManager.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\NameManager.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\OutputMessage.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\OutputMessage.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\ResourceFileManager.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\ResourceFileManager.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\ResourceManager.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\ResourceManager.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\TextList.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\TextList.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\TokenList.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\TokenList.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\Util.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\Util.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\Vertex.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Helpers\Vertex.h
# End Source File
# End Group
# Begin Group "Loaders"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\Loaders\BoxDrawingElementLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\BoxDrawingElementLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\DrawingElementLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\DrawingElementLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\GroupLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\GroupLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\LayerLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\LayerLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\MovieLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\MovieLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\MultiSpriteLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\MultiSpriteLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\MultiTextLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\MultiTextLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\PageLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\PageLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\PolygonLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\PolygonLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\ProjectLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\ProjectLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\Pure3dObjectLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\Pure3dObjectLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\ScreenLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\ScreenLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\SpriteLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\SpriteLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\TextLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\TextLoader.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\VertexLoader.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Loaders\VertexLoader.h
# End Source File
# End Group
# Begin Group "NamedElements"

# PROP Default_Filter ""
# Begin Group "GDI"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIMovie.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIMovie.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIMultiSprite.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIMultiSprite.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIMultiText.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIMultiText.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIPolygon.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIPolygon.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIPure3dObject.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIPure3dObject.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDISprite.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDISprite.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIText.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Gdi\GDIText.h
# End Source File
# End Group
# Begin Group "Descriptions"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\BoxDrawingElementDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\BoxDrawingElementDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\DrawingElementDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\DrawingElementDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\GroupDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\GroupDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\MovieDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\MovieDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\MultiSpriteDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\MultiSpriteDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\MultiTextDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\MultiTextDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\NamedElementDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\NamedElementDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\PageElementDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\PageElementDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\PolygonDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\PolygonDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\ProjectElementDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\ProjectElementDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\Pure3dObjectDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\Pure3dObjectDescription.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\SpriteDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Descriptions\SpriteDescription.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\FeData\NamedElements\BoxDrawingElement.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\BoxDrawingElement.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Chunkable.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Chunkable.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\DrawingElement.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\DrawingElement.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Group.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Group.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Layer.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Layer.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Movie.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Movie.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\MultiSprite.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\MultiSprite.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\MultiText.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\MultiText.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\NamedElement.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\NamedElement.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Page.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Page.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\PageElement.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\PageElement.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Polygon.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Polygon.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Project.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Project.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\ProjectElement.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\ProjectElement.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Pure3dObject.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Pure3dObject.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Screen.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Screen.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Sprite.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Sprite.h
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Text.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\NamedElements\Text.h
# End Source File
# End Group
# Begin Group "ResourceFiles"

# PROP Default_Filter ""
# Begin Group "GDI."

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\ResourceFiles\Gdi\GDIImageFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\Gdi\GDIImageFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\Gdi\GDITextStyleFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\Gdi\GDITextStyleFile.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ImageFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ImageFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\MovieClipFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\MovieClipFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\PageFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\PageFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ProjectFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ProjectFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\Pure3dFileFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\Pure3dFileFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ResourceFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ResourceFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ScreenFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\ScreenFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\TextBibleFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\TextBibleFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\TextStyleFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\ResourceFiles\TextStyleFile.h
# End Source File
# End Group
# Begin Group "Resources"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\Resources\Image.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\Image.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\MovieClip.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\MovieClip.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\Pure3dFile.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\Pure3dFile.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\Resource.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\Resource.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\TextBible.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\TextBible.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\TextStyle.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Resources\TextStyle.h
# End Source File
# End Group
# Begin Group "Savers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FeData\Savers\BoxDrawingElementSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\BoxDrawingElementSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\DrawingElementSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\DrawingElementSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\GroupSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\GroupSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\HashedNameExporter.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\HashedNameExporter.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\LayerSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\LayerSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\MovieSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\MovieSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\MultiSpriteSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\MultiSpriteSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\MultiTextSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\MultiTextSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\PageSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\PageSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\PolygonSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\PolygonSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\ProjectSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\ProjectSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\Pure3dObjectSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\Pure3dObjectSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\ScreenSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\ScreenSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\SpriteSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\SpriteSaver.h
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\TextSaver.cpp
# End Source File
# Begin Source File

SOURCE=.\FeData\Savers\TextSaver.h
# End Source File
# End Group
# End Group
# Begin Group "GUI"

# PROP Default_Filter ""
# Begin Group "SortedListCtrl"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\GenericItemInfo.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\GenericItemInfo.h
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\GenericSortedListCtrl.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\GenericSortedListCtrl.h
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\ItemInfo.h
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\SortedHeaderCtrl.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\SortedHeaderCtrl.h
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\SortedListCtrl.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\SortedListCtrl\SortedListCtrl.h
# End Source File
# End Group
# Begin Group "Undo"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Gui\Undo\Action.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\Action.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionAddFromDescription.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionAddFromDescription.h
# End Source File
# Begin Source File

SOURCE=.\GUI\Undo\ActionAlign.cpp
# End Source File
# Begin Source File

SOURCE=.\GUI\Undo\ActionAlign.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionBoxDrawingElement.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionBoxDrawingElement.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionDeleteSelection.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionDeleteSelection.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionDrawingElement.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionDrawingElement.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionGroup.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionGroup.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionLayer.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionLayer.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionLayerSettings.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionLayerSettings.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionManager.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionManager.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMove.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMove.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMoveInHierarchy.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMoveInHierarchy.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMoveLayerInPage.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMoveLayerInPage.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMovePageInScreen.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMovePageInScreen.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMovie.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMovie.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMultiObjectSelection.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMultiObjectSelection.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMultiSprite.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMultiSprite.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMultiText.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionMultiText.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionPage.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionPage.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionPolygon.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionPolygon.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionPure3dObject.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionPure3dObject.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionRename.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionRename.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionScreenSettings.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionScreenSettings.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionSelectionChange.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionSelectionChange.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionSprite.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionSprite.h
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionText.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\Undo\ActionText.h
# End Source File
# End Group
# Begin Group "Property Dialogs"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\Gui\Property Dialogs\BoxDrawingElementPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\BoxDrawingElementPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\DrawingElementPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\DrawingElementPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\GUI\Property Dialogs\GroupPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\GUI\Property Dialogs\GroupPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\GUI\Property Dialogs\LayerPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\GUI\Property Dialogs\LayerPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MoviePropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MoviePropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MultiSpritePropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MultiSpritePropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MultiTextPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MultiTextPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MultiTextSelectPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\MultiTextSelectPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\PrimPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\PrimPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\ProjectPropertiesDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\ProjectPropertiesDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\Pure3dObjectPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\Pure3dObjectPropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\GUI\Property Dialogs\ResourceP3dPropDialog.cpp"
# End Source File
# Begin Source File

SOURCE=".\GUI\Property Dialogs\ResourceP3dPropDialog.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\ResourcePropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\ResourcePropDlg.h"
# End Source File
# Begin Source File

SOURCE=.\SettingsDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\SettingsDialog.h
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\SpritePropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\SpritePropDlg.h"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\TextPropDlg.cpp"
# End Source File
# Begin Source File

SOURCE=".\Gui\Property Dialogs\TextPropDlg.h"
# End Source File
# End Group
# Begin Source File

SOURCE=.\Gui\MessageListCtrl.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\MessageListCtrl.h
# End Source File
# Begin Source File

SOURCE=.\Gui\MultiTreeCtrl.cpp
# ADD CPP /I ".."
# End Source File
# Begin Source File

SOURCE=.\Gui\MultiTreeCtrl.h
# End Source File
# Begin Source File

SOURCE=.\Gui\OutputWindow.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\OutputWindow.h
# End Source File
# Begin Source File

SOURCE=.\Gui\ProjectTree.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\ProjectTree.h
# End Source File
# Begin Source File

SOURCE=.\Gui\ProjectWindow.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\ProjectWindow.h
# End Source File
# Begin Source File

SOURCE=.\Gui\SelectionList.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\SelectionList.h
# End Source File
# Begin Source File

SOURCE=.\Gui\sizecbar.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\sizecbar.h
# End Source File
# Begin Source File

SOURCE=.\Gui\TreeState.cpp
# End Source File
# Begin Source File

SOURCE=.\Gui\TreeState.h
# End Source File
# End Group
# Begin Group "Common"

# PROP Default_Filter ""
# Begin Group "Excels"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\common\excel\ExcelFile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\excel\ExcelFile.h
# End Source File
# End Group
# Begin Group "Localization"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\common\localization\languageDatabase.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\localization\languageEntry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\toollib\tlTextBible.cpp
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
# Begin Source File

SOURCE=..\..\common\files\TextFileWriter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\common\files\TextFileWriter.h
# End Source File
# End Group
# End Group
# Begin Group "strings"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\utility\memory.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\strings\pcstring.cpp
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
# End Group
# Begin Group "XML"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\src\utility\StreamReader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLParser.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLParser.h
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLSaver.cpp
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLSaver.h
# End Source File
# Begin Source File

SOURCE=..\..\src\xml\XMLTree.cpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\version.cpp
# End Source File
# Begin Source File

SOURCE=.\version.h
# End Source File
# End Target
# End Project

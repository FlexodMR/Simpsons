# Microsoft Developer Studio Project File - Name="pure3d" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Xbox Static Library" 0x0b04

CFG=pure3d - Xbox Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Pure3D.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Pure3D.mak" CFG="pure3d - Xbox Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "pure3d - Xbox Release" (based on "Xbox Static Library")
!MESSAGE "pure3d - Xbox Debug" (based on "Xbox Static Library")
!MESSAGE "pure3d - Xbox Tune" (based on "Xbox Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "pure3d"
# PROP Scc_LocalPath "."
CPP=cl.exe

!IF  "$(CFG)" == "pure3d - Xbox Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pure3d\release"
# PROP Intermediate_Dir "obj\pure3d\release"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "_XBOX" /D "NDEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /GR /Zi /O2 /Ob2 /I "../../../../code/" /I "../.." /I "../../.." /I "../../lib/libpng" /I "../../lib/zlib" /I "../../../radcore/inc" /I "../../../radmath" /I "../../../radcontent/inc" /D "PNG_USER_MEM_SUPPORTED" /D "NDEBUG" /D "RAD_RELEASE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pure3dxr.lib"

!ELSEIF  "$(CFG)" == "pure3d - Xbox Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "pure3d___Xbox_Debug"
# PROP BASE Intermediate_Dir "pure3d___Xbox_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj\pure3d\debug"
# PROP Intermediate_Dir "obj\pure3d\debug"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_XBOX" /D "_DEBUG" /YX /FD /G6 /Zvc6 /c
# ADD CPP /nologo /W3 /Gm /GR /Zi /Od /I "../../../../code/" /I "../.." /I "../../.." /I "../../lib/libpng" /I "../../lib/zlib" /I "../../../radcore/inc" /I "../../../radmath" /I "../../../radcontent/inc" /D "PNG_USER_MEM_SUPPORTED" /D "_DEBUG" /D "RAD_DEBUG" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"../lib/pure3dxd.lib"

!ELSEIF  "$(CFG)" == "pure3d - Xbox Tune"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "pure3d___Xbox_Tune"
# PROP BASE Intermediate_Dir "pure3d___Xbox_Tune"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj\pure3d\tune"
# PROP Intermediate_Dir "obj\pure3d\tune"
# PROP Target_Dir ""
RSC=rc.exe
# ADD BASE CPP /nologo /W3 /GR /O2 /I "../.." /I "../../lib/freetype/include" /I "../../lib/libpng" /I "../../lib/zlib" /D "WIN32" /D "_XBOX" /D "NDEBUG" /FD /G6 /Zvc6 /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /W3 /GR /Zi /O2 /Ob2 /I "../../../../code/" /I "../.." /I "../../.." /I "../../lib/libpng" /I "../../lib/zlib" /I "../../../radcore/inc" /I "../../../radmath" /I "../../../radcontent/inc" /D "PNG_USER_MEM_SUPPORTED" /D "NDEBUG" /D "RAD_TUNE" /D "WIN32" /D "_XBOX" /D "RAD_XBOX" /D "RAD_CONSOLE" /FD /G6 /Ztmp /c
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\pure3dr.lib"
# ADD LIB32 /nologo /out:"../lib/pure3dxt.lib"

!ENDIF 

# Begin Target

# Name "pure3d - Xbox Release"
# Name "pure3d - Xbox Debug"
# Name "pure3d - Xbox Tune"
# Begin Group "core headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\ambientlight.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\billboardobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\bmp.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\camera.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\chunkfile.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\context.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\debugdraw.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\directionallight.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\displaylist.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\drawable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\dxtn.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\entity.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\entitytable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\error.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\file.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\fileftt.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\font.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\gameattr.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\geometry.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\image.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\imageconverter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\imagefactory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\imagefont.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\inventory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\inventoryiterator.inl
# End Source File
# Begin Source File

SOURCE=..\..\p3d\light.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\lightschooser.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\loadmanager.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\locator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\lzr.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\matrixstack.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\memheap.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\memory.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\memorysection.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\mipmapfilter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\p3dtypes.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\plat_filemap.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\plat_types.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\platform.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\png.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\pointcamera.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\pointlight.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\primgroup.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\pure3d.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\rawimage.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\refcounted.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\safecast.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\shader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\spotlight.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\sprite.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\table.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\targa.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\task.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\textdataparser.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\textparser.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\textstring.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\texture.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\texturefont.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\unicode.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\utility.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\vectorcamera.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\version.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\vertexlist.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\view.hpp
# End Source File
# End Group
# Begin Group "core source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\ambientlight.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\billboardobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\bmp.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\camera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\cameraloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\chunkfile.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\context.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\debugdraw.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\directionallight.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\displaylist.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\drawable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\dxtn.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\entity.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\error.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\file.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\fileftt.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\font.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\gameattr.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\geometry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\image.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\imageconverter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\imagefactory.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\imagefont.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\inventory.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\light.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\lightloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\lightschooser.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\loaders.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\loadmanager.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\locator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\lzr.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\matrixstack.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\memheap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\memory.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\memorysection.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\mipmapfilter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\png.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\pointcamera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\pointlight.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\primgroup.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\rawimage.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\refcounted.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\shader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\spotlight.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\sprite.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\table.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\targa.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\textdataparser.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\textstring.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\texture.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\texturefont.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\unicode.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\utility.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\vectorcamera.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\vertexlist.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\view.cpp
# End Source File
# End Group
# Begin Group "anim headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\anim\animate.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\animatedobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\billboardobjectanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\cameraanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\channel.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\compositedrawable.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\drawablepose.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\event.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\eventanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\expression.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\expressionanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\instancedgeometry.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\lightanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\multicontroller.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\polyskin.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\pose.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\poseanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\sequencer.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\shaderanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\skeleton.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\textureanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexanimcontroller.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexanimkey.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexanimobject.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexoffsetexpression.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\visibilityanimation.hpp
# End Source File
# End Group
# Begin Group "anim source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\anim\animate.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\animatedobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\billboardobjectanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\cameraanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\channel.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\compositedrawable.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\drawablepose.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\event.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\eventanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\expression.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\expressionanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\expressionoffsets.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\instancedgeometry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\lightanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\multicontroller.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\polyskin.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\pose.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\poseanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\sequencer.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\shaderanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\skeleton.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\textureanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexanimcontroller.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexanimkey.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexanimobject.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\vertexoffsetexpression.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\anim\visibilityanimation.cpp
# End Source File
# End Group
# Begin Group "effects headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\effects\effect.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\optic.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\opticconstants.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\opticlensflare.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\opticloader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlearray.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleconstants.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleemitter.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlegenerator.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleloader.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlepool.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlesystem.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particletype.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleutility.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\transitionmanager.hpp
# End Source File
# End Group
# Begin Group "effects source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\effects\effect.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\optic.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\opticlensflare.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\opticloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlearray.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleemitter.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlegenerator.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleloader.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlepool.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particlesystem.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particletype.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\particleutility.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\effects\transitionmanager.cpp
# End Source File
# End Group
# Begin Group "scenegraph headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\scenegraph\nodeanimation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\scenegraph\scenegraph.hpp
# End Source File
# End Group
# Begin Group "scenegraph source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\scenegraph\nodeanimation.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\scenegraph\scenegraph.cpp
# End Source File
# End Group
# Begin Group "constants"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\constants\atenum.hpp
# End Source File
# Begin Source File

SOURCE=..\..\constants\chunkids.hpp
# End Source File
# Begin Source File

SOURCE=..\..\constants\chunks.h
# End Source File
# Begin Source File

SOURCE=..\..\constants\psenum.hpp
# End Source File
# End Group
# Begin Group "xbox headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\platform\xbox\plat_filemap.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\platform\xbox\plat_types.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\platform\xbox\platform.hpp
# End Source File
# End Group
# Begin Group "xbox source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\platform\xbox\plat_filemap.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\platform\xbox\platform.cpp
# End Source File
# End Group
# Begin Group "shadow"

# PROP Default_Filter ""
# Begin Group "implementation"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\p3d\shadow\implementation.hpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\shadow\shadow_common.cpp
# End Source File
# Begin Source File

SOURCE=..\..\p3d\shadow\shadow_generic.cpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\p3d\shadow.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\..\..\constants\version.hpp
# End Source File
# End Target
# End Project

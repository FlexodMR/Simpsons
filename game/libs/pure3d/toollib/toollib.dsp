# Microsoft Developer Studio Project File - Name="toollib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=toollib - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "toollib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "toollib.mak" CFG="toollib - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "toollib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib - Win32 Tools Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "toollib - Win32 Tools Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "toollib"
# PROP Scc_LocalPath "."
CPP=snCl.exe
RSC=rc.exe

!IF  "$(CFG)" == "toollib - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GR /GX /Zi /O2 /I ".." /I "../.." /I "../lib" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../../radmath" /I "../../../code/constants" /D "NDEBUG" /D "RAD_TUNE" /D "_WINDOWS" /D "TOOLLIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /FD /c
# SUBTRACT CPP /Fr /YX
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 Release\tlcompileinfo.obj /nologo /out:"lib\toollibr.lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Desc=Generating compile fingerprint...
PreLink_Cmds=..\tools\commandline\bin\compileinfo "//depot/stable/current/pure3d/toollib" > Release\tlcompileinfo.cpp	cl /nologo /G6 /MT /c Release\tlcompileinfo.cpp /FoRelease\tlcompileinfo.obj
# End Special Build Tool

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /GX /Z7 /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GR /GX /Zi /Od /I ".." /I "../.." /I "../lib" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../../radmath" /I "../../../code/constants" /D "RAD_DEBUG" /D "_WINDOWS" /D "TOOLLIB" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /D "RAD_PC" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 /nologo
# ADD LIB32 Debug\tlcompileinfo.obj /nologo /out:"lib\toollibd.lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Desc=Generating compile fingerprint...
PreLink_Cmds=..\tools\commandline\bin\compileinfo "//depot/stable/current/pure3d/toollib" > Debug\tlcompileinfo.cpp	cl /nologo /G6 /MTd /W3 /GR /GX /ZI /Od /c Debug\tlcompileinfo.cpp /FR"Debug/" /Fo"Debug/" /Fd"Debug/"
# End Special Build Tool

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "ToolsDebug"
# PROP BASE Intermediate_Dir "ToolsDebug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ToolsDebug"
# PROP Intermediate_Dir "ToolsDebug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /GR /GX /Zi /Od /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "P3DWIN95" /D "TOOLLIB" /FR /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /GR /GX /ZI /Od /I ".." /I "../.." /I "../lib" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../../radmath" /I "../../../code/constants" /D "RAD_DEBUG" /D "_WINDOWS" /D "TOOLLIB" /D "RAD_PC" /D "_DEBUG" /D "WIN32" /D "RAD_WIN32" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 Hybrid\tlcompileinfo.obj /nologo /out:"lib\toollibh.lib"
# ADD LIB32 ToolsDebug\tlcompileinfo.obj /nologo /out:"lib\toollibtd.lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Desc=Generating compile fingerprint...
PreLink_Cmds=..\tools\commandline\bin\compileinfo "//depot/stable/current/pure3d/toollib" > ToolsDebug\tlcompileinfo.cpp	cl /nologo /MTd /c ToolsDebug\tlcompileinfo.cpp /FoToolsDebug\tlcompileinfo.obj
# End Special Build Tool

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ToolsRelease"
# PROP BASE Intermediate_Dir "ToolsRelease"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ToolsRelease"
# PROP Intermediate_Dir "ToolsRelease"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /MD /W3 /Gi /GR /GX /O2 /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../pddi/ps2" /I "../pddi/" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "P3DWIN95" /D "TOOLLIB" /FR /FD /c
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /G6 /MD /W3 /Gi /GR /GX /O2 /I ".." /I "../.." /I "../lib" /I "inc" /I "chunks16/inc" /I "../constants" /I "../lib/freetype/include/freetype" /I "../lib/freetype/include" /I "../lib/libpng" /I "../lib/zlib" /I "../lib/s3tc/include" /I "../../radmath" /I "../../../code/constants" /D "RAD_TUNE" /D "NDEBUG" /D "_WINDOWS" /D "TOOLLIB" /D "RAD_PC" /D "WIN32" /D "RAD_WIN32" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x1009
# ADD RSC /l 0x1009
BSC32=snBsc.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=snLib.exe
# ADD BASE LIB32 Release\tlcompileinfo.obj /nologo /out:"lib\toollibr.lib"
# ADD LIB32 ToolsRelease\tlcompileinfo.obj /nologo /out:"lib\toollibtr.lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Desc=Generating compile fingerprint...
PreLink_Cmds=..\tools\commandline\bin\compileinfo "//depot/stable/current/pure3d/toollib" > ToolsRelease\tlcompileinfo.cpp	cl /nologo /G6 /MT /c ToolsRelease\tlcompileinfo.cpp /FoToolsRelease\tlcompileinfo.obj
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "toollib - Win32 Release"
# Name "toollib - Win32 Debug"
# Name "toollib - Win32 Tools Debug"
# Name "toollib - Win32 Tools Release"
# Begin Group "inc"

# PROP Default_Filter "*.h,*.hpp"
# Begin Source File

SOURCE=.\inc\ChunkManip.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\DataManip.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\dospath.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\getopt.h
# End Source File
# Begin Source File

SOURCE=.\inc\glob.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\greyscale.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\hash.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\lzr.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\lzrf.hpp
# End Source File
# Begin Source File

SOURCE=..\pddi\ps2\packet.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\porc.hpp
# End Source File
# Begin Source File

SOURCE=..\pddi\ps2\ps2prim.hpp
# End Source File
# Begin Source File

SOURCE="..\pddi\ps2\quad-vu\regmap.h"
# End Source File
# Begin Source File

SOURCE=.\inc\simdata.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlAdjEdgeList.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlAdjFaceList.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlAnimatedObject.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlAnimation.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlBillboardObject.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlBillboardObjectAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlBox.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlBSPTree.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlBuffer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlByteStream.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlcamera.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlCameraAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlChannel.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlCollisionObject.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlColour.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlCompositeDrawable.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlCompressedByteStream.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlDataChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlEdge.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlEntity.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlentitytable.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlEventAnimation.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlExportInfo.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlExpression.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlExpressionAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlExpressionOffsets.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFile.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFileByteStream.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFlexibleJoint.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFlexibleObject.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFont.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFourCC.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlFrameController.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlGameAttr.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlGCComponentQuantizer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlGCPrimBuffer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlHashList.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlHashTable.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlHeightField.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlHistory.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlImage.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlImageQuantizer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlIndexedSkinVertex.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlIndexedVertex.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlinventory.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlIterator.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlKeyDefs.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlLight.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlLightAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlLightGroup.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlLightmap.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlLoadManager.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlLocator.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlMatrix.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlMemByteStream.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlMultiController.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlOffsetList.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlOffsetSkinVertex.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlOpticEffect.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlParticleSystem.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPDDI.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPhotonMap.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPhysicsObject.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPlane.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPoint.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPose.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPoseAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPrimBuffer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPrimGroup.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPrimGroupMesh.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlPS2PrimBuffer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlQuat.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlRay.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlRC.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSafeEntityCaster.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlScenegraph.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlScenegraphTransformAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSegment.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlShader.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlShaderAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSimpleShader.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSkeleton.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSkin.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSkinVertex.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSphere.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlSprite.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlString.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlStringTable.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTable.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTarga.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTextDataParser.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTexture.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTextureAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTranAnimKeys.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTriangle.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTriangleFactory.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTriangleIntersect.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTriangleIntersectFactory.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTriMesh.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTriMeshIntersect.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTsEdge.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTsTriangle.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTsTriangleToTriStripConverter.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTsVertexCache.h
# End Source File
# Begin Source File

SOURCE=.\inc\tlTsVertexConnectivity.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlTypes.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlUV.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlVertex.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlVertexAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlVertexAnimKey.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlVisAnim.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\tlXBOXPrimBuffer.hpp
# End Source File
# Begin Source File

SOURCE=.\inc\toollib.hpp
# End Source File
# End Group
# Begin Group "src"

# PROP Default_Filter "*.c,*.cpp"
# Begin Source File

SOURCE=.\src\dospath.cpp
# End Source File
# Begin Source File

SOURCE=.\src\getopt.c
# End Source File
# Begin Source File

SOURCE=.\src\getopt1.c
# End Source File
# Begin Source File

SOURCE=.\src\glob.cpp
# End Source File
# Begin Source File

SOURCE=.\src\greyscale.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hash.cpp
# End Source File
# Begin Source File

SOURCE=.\src\lzr.cpp
# End Source File
# Begin Source File

SOURCE=.\src\lzrf.cpp
# End Source File
# Begin Source File

SOURCE=..\pddi\ps2\packet.cpp
# End Source File
# Begin Source File

SOURCE=.\src\porc.cpp
# End Source File
# Begin Source File

SOURCE=..\pddi\ps2\ps2prim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlAdjEdgeList.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlAdjFaceList.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlAnimatedObject.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlAnimation.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlBillboardObject.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlBillboardObjectAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlBox.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlBSPTree.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlBuffer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlByteStream.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlCamera.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlCameraAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlChannel.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlCollisionObject.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlColour.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlCompositeDrawable.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlCompressedByteStream.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlDataChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlEdge.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlEntity.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlEntityTable.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlEventAnimation.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlExportInfo.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlExpression.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlExpressionAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlExpressionOffsets.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFile.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFileByteStream.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFlexibleJoint.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFlexibleObject.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFont.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFourCC.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlFrameController.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlGameAttr.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlGCComponentQuantizer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlGCPrimBuffer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlHashTable.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlHeightField.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlHistory.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlImage.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlImageQuantizer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlIndexedSkinVertex.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlIndexedVertex.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlInventory.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlLight.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlLightAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlLightGroup.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlLightmap.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlLoadManager.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlLocator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlMatrix.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlMemByteStream.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlMultiController.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlOffsetList.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlOffsetSkinVertex.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlOpticEffect.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlParticleSystem.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPhotonMap.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPhysicsObject.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPlane.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPoint.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPose.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPoseAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPrimGroup.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPrimGroupMesh.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlPS2PrimBuffer.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlQuat.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlRay.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlScenegraph.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlScenegraphTransformAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSegment.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlShader.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlShaderAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSimpleShader.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSkeleton.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSkin.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSkinVertex.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSphere.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlSprite.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlString.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlStringTable.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTable.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTextDataParser.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTexture.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTextureAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTranAnimKeys.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTriangle.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTriangleFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTriangleIntersect.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTriangleIntersectFactory.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTriMesh.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTriMeshIntersect.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTsEdge.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTsTriangle.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTsTriangleToTriStripConverter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTsVertexCache.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlTsVertexConnectivity.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlUV.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlVertex.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlVertexAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlVertexAnimKey.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlVisAnim.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tlXBOXPrimBuffer.cpp
# End Source File
# End Group
# Begin Group "chunk16inc"

# PROP Default_Filter "*.h,*.hpp"
# Begin Group "chunkinc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\chunks16\inc\tlAnimatedObjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlAnimationChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlAnimCollDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlAnimDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlAnimDSGWrapper.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlAnimObjDSGWrapperChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlAttributeTableChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlBBoxChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlBillboardObjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlBreakableObjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlBSphereChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlChannelChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlCollisionObjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlDynaPhysDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlEntityDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlExpressionChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlExtraMatrixChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFenceDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFencelineChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFlexibleJointChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFlexibleObjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFollowCamDataChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFontChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFrameControllerChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlGameAttrChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlImageChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlInstaEntityDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlInstancesChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlInstAnimDynaPhysDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlInstaStaticPhysDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlInstParticleSystemChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlIntersectDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlIntersectionChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlLensFlareDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlLightChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlLocatorChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlMemorySectionChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlMeshChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlObjectAttributeChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlOpticEffectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlParticleSystemChunk.hpp
# End Source File
# Begin Source File

SOURCE=..\..\..\game\libs\pure3d\toollib\chunks16\inc\tlPedpathChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlPhotonMapChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlPhysicsObjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlPhysWrapperChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlPrimGroupChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlRoadChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlRoadSegmentChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlRoadSegmentDataChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlScenegraphChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlScroobyProjectChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlSetChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlShaderChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlShadowSkinChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlSkinChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlSmartPropChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlSpriteChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlStaticPhysDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlTerrainTypeChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlTextureChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlTreeDSGChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWalkerCamDataChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWallChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWBLocatorChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWBRailCamChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWBSplineChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWBTriggerVolumeChunk.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlWorldSphereDSGChunk.hpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\chunks16\inc\tlCameraAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlCameraChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlCompositeDrawableChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlEntityChannelChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlExportInfoChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlExpressionAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlFrameControllerChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlHistoryChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlLightAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlLightGroupChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlMultiControllerChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlPoseAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlScenegraphTransformAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlSkeletonChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlTextureAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlVertexAnimChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlVertexOffsetExpressionChunk16.hpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\inc\tlVisibilityAnimChunk16.hpp
# End Source File
# End Group
# Begin Group "chunk16src"

# PROP Default_Filter "*.cpp,*.c"
# Begin Group "chunksrc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\chunks16\src\tlAnimatedObjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlAnimationChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlAnimCollDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlAnimDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlAnimDSGWrapper.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlAnimObjDSGWrapperChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlAttributeTableChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlBBoxChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlBillboardObjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlBreakableObjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlBSphereChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlChannelChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlCollisionObjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlDynaPhysDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlEntityDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlExpressionChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlExtraMatrixChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFenceDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFencelineChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFlexibleJointChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFlexibleObjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFollowCamDataChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFontChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFrameControllerChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlGameAttrChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlImageChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlInstaEntityDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlInstancesChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlInstAnimDynaPhysDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlInstaStaticPhysDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlInstParticleSystemChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlIntersectDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlIntersectionChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlLensFlareDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlLightChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlLocatorChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlMemorySectionChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlMeshChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlObjectAttributeChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlOpticEffectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlParticleSystemChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlPedpathChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlPhotonMapChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlPhysicsObjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlPhysWrapperChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlPrimGroupChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlRoadChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlRoadSegmentChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlRoadSegmentDataChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlScenegraphChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlScroobyProjectChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlSetChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlShaderChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlShadowSkinChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlSkinChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlSmartPropChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlSpriteChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlStatePropChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlStaticPhysDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlTerrainTypeChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlTextureChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlTreeDSGChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWalkerCamDataChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWallChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWBLocatorChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWBRailCamChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWBSplineChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWBTriggerVolumeChunk.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlWorldSphereDSGChunk.cpp
# End Source File
# End Group
# Begin Source File

SOURCE=.\chunks16\src\tlCameraAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlCameraChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlCompositeDrawableChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlEntityChannelChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlExportInfoChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlExpressionAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlFrameControllerChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlHistoryChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlLightAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlLightGroupChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlMultiControllerChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlPoseAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlScenegraphTransformAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlSkeletonChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlTextureAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlVertexAnimChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlVertexOffsetExpressionChunk16.cpp
# End Source File
# Begin Source File

SOURCE=.\chunks16\src\tlVisibilityAnimChunk16.cpp
# End Source File
# End Group
# Begin Group "chunks16"

# PROP Default_Filter "*.sc"
# Begin Group "chunks"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Schema16\tlAnimatedObjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimatedObjectChunk.sc
InputName=tlAnimatedObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimatedObjectChunk.sc
InputName=tlAnimatedObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimatedObjectChunk.sc
InputName=tlAnimatedObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimatedObjectChunk.sc
InputName=tlAnimatedObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlAnimationChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimationChunk.sc
InputName=tlAnimationChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimationChunk.sc
InputName=tlAnimationChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimationChunk.sc
InputName=tlAnimationChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimationChunk.sc
InputName=tlAnimationChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlAnimCollDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimCollDSGChunk.sc
InputName=tlAnimCollDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimCollDSGChunk.sc
InputName=tlAnimCollDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimCollDSGChunk.sc
InputName=tlAnimCollDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimCollDSGChunk.sc
InputName=tlAnimCollDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlAnimDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGChunk.sc
InputName=tlAnimDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGChunk.sc
InputName=tlAnimDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGChunk.sc
InputName=tlAnimDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGChunk.sc
InputName=tlAnimDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlAnimDSGWrapper.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGWrapper.sc
InputName=tlAnimDSGWrapper

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGWrapper.sc
InputName=tlAnimDSGWrapper

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGWrapper.sc
InputName=tlAnimDSGWrapper

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimDSGWrapper.sc
InputName=tlAnimDSGWrapper

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlAnimObjDSGWrapperChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAnimObjDSGWrapperChunk.sc
InputName=tlAnimObjDSGWrapperChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlAttributeTableChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAttributeTableChunk.sc
InputName=tlAttributeTableChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAttributeTableChunk.sc
InputName=tlAttributeTableChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAttributeTableChunk.sc
InputName=tlAttributeTableChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlAttributeTableChunk.sc
InputName=tlAttributeTableChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlBBoxChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBBoxChunk.sc
InputName=tlBBoxChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBBoxChunk.sc
InputName=tlBBoxChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBBoxChunk.sc
InputName=tlBBoxChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBBoxChunk.sc
InputName=tlBBoxChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlBillboardObjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBillboardObjectChunk.sc
InputName=tlBillboardObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBillboardObjectChunk.sc
InputName=tlBillboardObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBillboardObjectChunk.sc
InputName=tlBillboardObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBillboardObjectChunk.sc
InputName=tlBillboardObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlBreakableObjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBreakableObjectChunk.sc
InputName=tlBreakableObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBreakableObjectChunk.sc
InputName=tlBreakableObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBreakableObjectChunk.sc
InputName=tlBreakableObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBreakableObjectChunk.sc
InputName=tlBreakableObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlBSphereChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBSphereChunk.sc
InputName=tlBSphereChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBSphereChunk.sc
InputName=tlBSphereChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBSphereChunk.sc
InputName=tlBSphereChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlBSphereChunk.sc
InputName=tlBSphereChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlChannelChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlChannelChunk.sc
InputName=tlChannelChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlChannelChunk.sc
InputName=tlChannelChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlChannelChunk.sc
InputName=tlChannelChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlChannelChunk.sc
InputName=tlChannelChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlCollisionObjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCollisionObjectChunk.sc
InputName=tlCollisionObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCollisionObjectChunk.sc
InputName=tlCollisionObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCollisionObjectChunk.sc
InputName=tlCollisionObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCollisionObjectChunk.sc
InputName=tlCollisionObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlDynaPhysDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlDynaPhysDSGChunk.sc
InputName=tlDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlDynaPhysDSGChunk.sc
InputName=tlDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlDynaPhysDSGChunk.sc
InputName=tlDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlDynaPhysDSGChunk.sc
InputName=tlDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlEntityDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityDSGChunk.sc
InputName=tlEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityDSGChunk.sc
InputName=tlEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityDSGChunk.sc
InputName=tlEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityDSGChunk.sc
InputName=tlEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlExpressionChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionChunk.sc
InputName=tlExpressionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionChunk.sc
InputName=tlExpressionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionChunk.sc
InputName=tlExpressionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionChunk.sc
InputName=tlExpressionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlExtraMatrixChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExtraMatrixChunk.sc
InputName=tlExtraMatrixChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExtraMatrixChunk.sc
InputName=tlExtraMatrixChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExtraMatrixChunk.sc
InputName=tlExtraMatrixChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExtraMatrixChunk.sc
InputName=tlExtraMatrixChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFenceDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFenceDSGChunk.sc
InputName=tlFenceDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFenceDSGChunk.sc
InputName=tlFenceDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFenceDSGChunk.sc
InputName=tlFenceDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFenceDSGChunk.sc
InputName=tlFenceDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFencelineChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFencelineChunk.sc
InputName=tlFencelineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFencelineChunk.sc
InputName=tlFencelineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFencelineChunk.sc
InputName=tlFencelineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFencelineChunk.sc
InputName=tlFencelineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFlexibleJointChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleJointChunk.sc
InputName=tlFlexibleJointChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleJointChunk.sc
InputName=tlFlexibleJointChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleJointChunk.sc
InputName=tlFlexibleJointChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleJointChunk.sc
InputName=tlFlexibleJointChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFlexibleObjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleObjectChunk.sc
InputName=tlFlexibleObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleObjectChunk.sc
InputName=tlFlexibleObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleObjectChunk.sc
InputName=tlFlexibleObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFlexibleObjectChunk.sc
InputName=tlFlexibleObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFollowCamDataChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFollowCamDataChunk.sc
InputName=tlFollowCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFollowCamDataChunk.sc
InputName=tlFollowCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFollowCamDataChunk.sc
InputName=tlFollowCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFollowCamDataChunk.sc
InputName=tlFollowCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFontChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFontChunk.sc
InputName=tlFontChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFontChunk.sc
InputName=tlFontChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFontChunk.sc
InputName=tlFontChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFontChunk.sc
InputName=tlFontChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFrameControllerChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk.sc
InputName=tlFrameControllerChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk.sc
InputName=tlFrameControllerChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk.sc
InputName=tlFrameControllerChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk.sc
InputName=tlFrameControllerChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlGameAttrChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlGameAttrChunk.sc
InputName=tlGameAttrChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlGameAttrChunk.sc
InputName=tlGameAttrChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlGameAttrChunk.sc
InputName=tlGameAttrChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlGameAttrChunk.sc
InputName=tlGameAttrChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlImageChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlImageChunk.sc
InputName=tlImageChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlImageChunk.sc
InputName=tlImageChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlImageChunk.sc
InputName=tlImageChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlImageChunk.sc
InputName=tlImageChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlInstaEntityDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaEntityDSGChunk.sc
InputName=tlInstaEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaEntityDSGChunk.sc
InputName=tlInstaEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaEntityDSGChunk.sc
InputName=tlInstaEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaEntityDSGChunk.sc
InputName=tlInstaEntityDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlInstancesChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstancesChunk.sc
InputName=tlInstancesChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstancesChunk.sc
InputName=tlInstancesChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstancesChunk.sc
InputName=tlInstancesChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstancesChunk.sc
InputName=tlInstancesChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlInstAnimDynaPhysDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstAnimDynaPhysDSGChunk.sc
InputName=tlInstAnimDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstAnimDynaPhysDSGChunk.sc
InputName=tlInstAnimDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstAnimDynaPhysDSGChunk.sc
InputName=tlInstAnimDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstAnimDynaPhysDSGChunk.sc
InputName=tlInstAnimDynaPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlInstaStaticPhysDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaStaticPhysDSGChunk.sc
InputName=tlInstaStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaStaticPhysDSGChunk.sc
InputName=tlInstaStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaStaticPhysDSGChunk.sc
InputName=tlInstaStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstaStaticPhysDSGChunk.sc
InputName=tlInstaStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlInstParticleSystemChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstParticleSystemChunk.sc
InputName=tlInstParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstParticleSystemChunk.sc
InputName=tlInstParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstParticleSystemChunk.sc
InputName=tlInstParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlInstParticleSystemChunk.sc
InputName=tlInstParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlIntersectDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectDSGChunk.sc
InputName=tlIntersectDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectDSGChunk.sc
InputName=tlIntersectDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectDSGChunk.sc
InputName=tlIntersectDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectDSGChunk.sc
InputName=tlIntersectDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlIntersectionChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectionChunk.sc
InputName=tlIntersectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectionChunk.sc
InputName=tlIntersectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectionChunk.sc
InputName=tlIntersectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlIntersectionChunk.sc
InputName=tlIntersectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlLensFlareDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLensFlareDSGChunk.sc
InputName=tlLensFlareDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLensFlareDSGChunk.sc
InputName=tlLensFlareDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLensFlareDSGChunk.sc
InputName=tlLensFlareDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLensFlareDSGChunk.sc
InputName=tlLensFlareDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlLightChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightChunk.sc
InputName=tlLightChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightChunk.sc
InputName=tlLightChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightChunk.sc
InputName=tlLightChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightChunk.sc
InputName=tlLightChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlLocatorChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLocatorChunk.sc
InputName=tlLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLocatorChunk.sc
InputName=tlLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLocatorChunk.sc
InputName=tlLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLocatorChunk.sc
InputName=tlLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlMemorySectionChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMemorySectionChunk.sc
InputName=tlMemorySectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMemorySectionChunk.sc
InputName=tlMemorySectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMemorySectionChunk.sc
InputName=tlMemorySectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMemorySectionChunk.sc
InputName=tlMemorySectionChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlMeshChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMeshChunk.sc
InputName=tlMeshChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMeshChunk.sc
InputName=tlMeshChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMeshChunk.sc
InputName=tlMeshChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMeshChunk.sc
InputName=tlMeshChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlObjectAttributeChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlObjectAttributeChunk.sc
InputName=tlObjectAttributeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlObjectAttributeChunk.sc
InputName=tlObjectAttributeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlObjectAttributeChunk.sc
InputName=tlObjectAttributeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlObjectAttributeChunk.sc
InputName=tlObjectAttributeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlOpticEffectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlOpticEffectChunk.sc
InputName=tlOpticEffectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlOpticEffectChunk.sc
InputName=tlOpticEffectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlOpticEffectChunk.sc
InputName=tlOpticEffectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlOpticEffectChunk.sc
InputName=tlOpticEffectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlParticleSystemChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlParticleSystemChunk.sc
InputName=tlParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlParticleSystemChunk.sc
InputName=tlParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlParticleSystemChunk.sc
InputName=tlParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlParticleSystemChunk.sc
InputName=tlParticleSystemChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlPedpathChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPedpathChunk.sc
InputName=tlPedpathChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPedpathChunk.sc
InputName=tlPedpathChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPedpathChunk.sc
InputName=tlPedpathChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPedpathChunk.sc
InputName=tlPedpathChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlPhotonMapChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhotonMapChunk.sc
InputName=tlPhotonMapChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhotonMapChunk.sc
InputName=tlPhotonMapChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhotonMapChunk.sc
InputName=tlPhotonMapChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhotonMapChunk.sc
InputName=tlPhotonMapChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlPhysicsObjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysicsObjectChunk.sc
InputName=tlPhysicsObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysicsObjectChunk.sc
InputName=tlPhysicsObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysicsObjectChunk.sc
InputName=tlPhysicsObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysicsObjectChunk.sc
InputName=tlPhysicsObjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlPhysWrapperChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysWrapperChunk.sc
InputName=tlPhysWrapperChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysWrapperChunk.sc
InputName=tlPhysWrapperChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysWrapperChunk.sc
InputName=tlPhysWrapperChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPhysWrapperChunk.sc
InputName=tlPhysWrapperChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlPrimGroupChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPrimGroupChunk.sc
InputName=tlPrimGroupChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPrimGroupChunk.sc
InputName=tlPrimGroupChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPrimGroupChunk.sc
InputName=tlPrimGroupChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPrimGroupChunk.sc
InputName=tlPrimGroupChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlRoadChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadChunk.sc
InputName=tlRoadChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadChunk.sc
InputName=tlRoadChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadChunk.sc
InputName=tlRoadChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadChunk.sc
InputName=tlRoadChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlRoadSegmentChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentChunk.sc
InputName=tlRoadSegmentChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentChunk.sc
InputName=tlRoadSegmentChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentChunk.sc
InputName=tlRoadSegmentChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentChunk.sc
InputName=tlRoadSegmentChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlRoadSegmentDataChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentDataChunk.sc
InputName=tlRoadSegmentDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentDataChunk.sc
InputName=tlRoadSegmentDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentDataChunk.sc
InputName=tlRoadSegmentDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlRoadSegmentDataChunk.sc
InputName=tlRoadSegmentDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlScenegraphChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphChunk.sc
InputName=tlScenegraphChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphChunk.sc
InputName=tlScenegraphChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphChunk.sc
InputName=tlScenegraphChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphChunk.sc
InputName=tlScenegraphChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlScroobyProjectChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScroobyProjectChunk.sc
InputName=tlScroobyProjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScroobyProjectChunk.sc
InputName=tlScroobyProjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScroobyProjectChunk.sc
InputName=tlScroobyProjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScroobyProjectChunk.sc
InputName=tlScroobyProjectChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlSetChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputNam
ProjDir=.
InputPath=.\Schema16\tlSetChunk.sc
InputName=tlSetChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputNam
ProjDir=.
InputPath=.\Schema16\tlSetChunk.sc
InputName=tlSetChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputNam
ProjDir=.
InputPath=.\Schema16\tlSetChunk.sc
InputName=tlSetChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputNam
ProjDir=.
InputPath=.\Schema16\tlSetChunk.sc
InputName=tlSetChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlShaderChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShaderChunk.sc
InputName=tlShaderChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShaderChunk.sc
InputName=tlShaderChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShaderChunk.sc
InputName=tlShaderChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShaderChunk.sc
InputName=tlShaderChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlShadowSkinChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShadowSkinChunk.sc
InputName=tlShadowSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShadowSkinChunk.sc
InputName=tlShadowSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShadowSkinChunk.sc
InputName=tlShadowSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlShadowSkinChunk.sc
InputName=tlShadowSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlSkinChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkinChunk.sc
InputName=tlSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkinChunk.sc
InputName=tlSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkinChunk.sc
InputName=tlSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkinChunk.sc
InputName=tlSkinChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlSmartPropChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSmartPropChunk.sc
InputName=tlSmartPropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSmartPropChunk.sc
InputName=tlSmartPropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSmartPropChunk.sc
InputName=tlSmartPropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSmartPropChunk.sc
InputName=tlSmartPropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlSpriteChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSpriteChunk.sc
InputName=tlSpriteChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSpriteChunk.sc
InputName=tlSpriteChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSpriteChunk.sc
InputName=tlSpriteChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSpriteChunk.sc
InputName=tlSpriteChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlStatePropChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStatePropChunk.sc
InputName=tlStatePropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStatePropChunk.sc
InputName=tlStatePropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStatePropChunk.sc
InputName=tlStatePropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStatePropChunk.sc
InputName=tlStatePropChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlStaticPhysDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStaticPhysDSGChunk.sc
InputName=tlStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStaticPhysDSGChunk.sc
InputName=tlStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStaticPhysDSGChunk.sc
InputName=tlStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlStaticPhysDSGChunk.sc
InputName=tlStaticPhysDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlTerrainTypeChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTerrainTypeChunk.sc
InputName=tlTerrainTypeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTerrainTypeChunk.sc
InputName=tlTerrainTypeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTerrainTypeChunk.sc
InputName=tlTerrainTypeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTerrainTypeChunk.sc
InputName=tlTerrainTypeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlTextureChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureChunk.sc
InputName=tlTextureChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureChunk.sc
InputName=tlTextureChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureChunk.sc
InputName=tlTextureChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureChunk.sc
InputName=tlTextureChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlTreeDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTreeDSGChunk.sc
InputName=tlTreeDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTreeDSGChunk.sc
InputName=tlTreeDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTreeDSGChunk.sc
InputName=tlTreeDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTreeDSGChunk.sc
InputName=tlTreeDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWalkerCamDataChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWalkerCamDataChunk.sc
InputName=tlWalkerCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWalkerCamDataChunk.sc
InputName=tlWalkerCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWalkerCamDataChunk.sc
InputName=tlWalkerCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWalkerCamDataChunk.sc
InputName=tlWalkerCamDataChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWallChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWallChunk.sc
InputName=tlWallChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWallChunk.sc
InputName=tlWallChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWallChunk.sc
InputName=tlWallChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWallChunk.sc
InputName=tlWallChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWBLocatorChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBLocatorChunk.sc
InputName=tlWBLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBLocatorChunk.sc
InputName=tlWBLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBLocatorChunk.sc
InputName=tlWBLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBLocatorChunk.sc
InputName=tlWBLocatorChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWBRailCamChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBRailCamChunk.sc
InputName=tlWBRailCamChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBRailCamChunk.sc
InputName=tlWBRailCamChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBRailCamChunk.sc
InputName=tlWBRailCamChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBRailCamChunk.sc
InputName=tlWBRailCamChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWBSplineChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBSplineChunk.sc
InputName=tlWBSplineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBSplineChunk.sc
InputName=tlWBSplineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBSplineChunk.sc
InputName=tlWBSplineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBSplineChunk.sc
InputName=tlWBSplineChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWBTriggerVolumeChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBTriggerVolumeChunk.sc
InputName=tlWBTriggerVolumeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBTriggerVolumeChunk.sc
InputName=tlWBTriggerVolumeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBTriggerVolumeChunk.sc
InputName=tlWBTriggerVolumeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWBTriggerVolumeChunk.sc
InputName=tlWBTriggerVolumeChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlWorldSphereDSGChunk.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWorldSphereDSGChunk.sc
InputName=tlWorldSphereDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWorldSphereDSGChunk.sc
InputName=tlWorldSphereDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWorldSphereDSGChunk.sc
InputName=tlWorldSphereDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlWorldSphereDSGChunk.sc
InputName=tlWorldSphereDSGChunk

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\Schema16\tlCameraAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCameraAnimChunk16.sc
InputName=tlCameraAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCameraAnimChunk16.sc
InputName=tlCameraAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCameraAnimChunk16.sc
InputName=tlCameraAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCameraAnimChunk16.sc
InputName=tlCameraAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=Schema16\tlCameraChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=Schema16\tlCameraChunk16.sc
InputName=tlCameraChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=Schema16\tlCameraChunk16.sc
InputName=tlCameraChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=Schema16\tlCameraChunk16.sc
InputName=tlCameraChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=Schema16\tlCameraChunk16.sc
InputName=tlCameraChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlCompositeDrawableChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCompositeDrawableChunk16.sc
InputName=tlCompositeDrawableChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCompositeDrawableChunk16.sc
InputName=tlCompositeDrawableChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCompositeDrawableChunk16.sc
InputName=tlCompositeDrawableChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlCompositeDrawableChunk16.sc
InputName=tlCompositeDrawableChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlEntityChannelChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityChannelChunk16.sc
InputName=tlEntityChannelChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityChannelChunk16.sc
InputName=tlEntityChannelChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityChannelChunk16.sc
InputName=tlEntityChannelChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlEntityChannelChunk16.sc
InputName=tlEntityChannelChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlExportInfoChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExportInfoChunk16.sc
InputName=tlExportInfoChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExportInfoChunk16.sc
InputName=tlExportInfoChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExportInfoChunk16.sc
InputName=tlExportInfoChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExportInfoChunk16.sc
InputName=tlExportInfoChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlExpressionAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionAnimChunk16.sc
InputName=tlExpressionAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionAnimChunk16.sc
InputName=tlExpressionAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionAnimChunk16.sc
InputName=tlExpressionAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlExpressionAnimChunk16.sc
InputName=tlExpressionAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlFrameControllerChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk16.sc
InputName=tlFrameControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk16.sc
InputName=tlFrameControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk16.sc
InputName=tlFrameControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlFrameControllerChunk16.sc
InputName=tlFrameControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlHistoryChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlHistoryChunk16.sc
InputName=tlHistoryChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlHistoryChunk16.sc
InputName=tlHistoryChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlHistoryChunk16.sc
InputName=tlHistoryChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlHistoryChunk16.sc
InputName=tlHistoryChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlLightAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightAnimChunk16.sc
InputName=tlLightAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightAnimChunk16.sc
InputName=tlLightAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightAnimChunk16.sc
InputName=tlLightAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightAnimChunk16.sc
InputName=tlLightAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlLightGroupChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightGroupChunk16.sc
InputName=tlLightGroupChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightGroupChunk16.sc
InputName=tlLightGroupChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightGroupChunk16.sc
InputName=tlLightGroupChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlLightGroupChunk16.sc
InputName=tlLightGroupChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlMultiControllerChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMultiControllerChunk16.sc
InputName=tlMultiControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMultiControllerChunk16.sc
InputName=tlMultiControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMultiControllerChunk16.sc
InputName=tlMultiControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlMultiControllerChunk16.sc
InputName=tlMultiControllerChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlPoseAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPoseAnimChunk16.sc
InputName=tlPoseAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPoseAnimChunk16.sc
InputName=tlPoseAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPoseAnimChunk16.sc
InputName=tlPoseAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlPoseAnimChunk16.sc
InputName=tlPoseAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlScenegraphTransformAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphTransformAnimChunk16.sc
InputName=tlScenegraphTransformAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphTransformAnimChunk16.sc
InputName=tlScenegraphTransformAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphTransformAnimChunk16.sc
InputName=tlScenegraphTransformAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlScenegraphTransformAnimChunk16.sc
InputName=tlScenegraphTransformAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlSkeletonChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkeletonChunk16.sc
InputName=tlSkeletonChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkeletonChunk16.sc
InputName=tlSkeletonChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkeletonChunk16.sc
InputName=tlSkeletonChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlSkeletonChunk16.sc
InputName=tlSkeletonChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlTextureAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureAnimChunk16.sc
InputName=tlTextureAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureAnimChunk16.sc
InputName=tlTextureAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureAnimChunk16.sc
InputName=tlTextureAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlTextureAnimChunk16.sc
InputName=tlTextureAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlVertexAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build
ProjDir=.
InputPath=.\Schema16\tlVertexAnimChunk16.sc
InputName=tlVertexAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build
ProjDir=.
InputPath=.\Schema16\tlVertexAnimChunk16.sc
InputName=tlVertexAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build
ProjDir=.
InputPath=.\Schema16\tlVertexAnimChunk16.sc
InputName=tlVertexAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build
ProjDir=.
InputPath=.\Schema16\tlVertexAnimChunk16.sc
InputName=tlVertexAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlVertexOffsetExpressionChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVertexOffsetExpressionChunk16.sc
InputName=tlVertexOffsetExpressionChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVertexOffsetExpressionChunk16.sc
InputName=tlVertexOffsetExpressionChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVertexOffsetExpressionChunk16.sc
InputName=tlVertexOffsetExpressionChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVertexOffsetExpressionChunk16.sc
InputName=tlVertexOffsetExpressionChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\Schema16\tlVisibilityAnimChunk16.sc

!IF  "$(CFG)" == "toollib - Win32 Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVisibilityAnimChunk16.sc
InputName=tlVisibilityAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVisibilityAnimChunk16.sc
InputName=tlVisibilityAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Debug"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVisibilityAnimChunk16.sc
InputName=tlVisibilityAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "toollib - Win32 Tools Release"

# Begin Custom Build - DataFilesCreator - $(InputName)
ProjDir=.
InputPath=.\Schema16\tlVisibilityAnimChunk16.sc
InputName=tlVisibilityAnimChunk16

BuildCmds= \
	..\tools\commandline\bin\DataFilesCreator  -I $(ProjDir)/Schema16/  -s $(InputName).sc  -O $(ProjDir)/chunks16/src/ -i $(ProjDir)/chunks16/inc/

"$(ProjDir)/chunks16/src/$(InputName).cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(ProjDir)/chunks16/inc/$(InputName).hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "constants"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\constants\atenum.hpp
# End Source File
# Begin Source File

SOURCE=..\constants\chunkids.hpp
# End Source File
# Begin Source File

SOURCE=..\constants\chunks.h
# End Source File
# Begin Source File

SOURCE=..\constants\psenum.hpp
# End Source File
# End Group
# Begin Group "libinc"

# PROP Default_Filter "*.hpp"
# Begin Source File

SOURCE=..\lib\libpng\png.h
# End Source File
# Begin Source File

SOURCE=..\lib\libpng\pngconf.h
# End Source File
# Begin Source File

SOURCE=..\lib\zlib\zconf.h
# End Source File
# Begin Source File

SOURCE=..\lib\zlib\zlib.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\tools\commandline\ChunkFilesCreator\chunk_hpp_cpp.tpl
# End Source File
# Begin Source File

SOURCE=..\..\constants\version.hpp
# End Source File
# Begin Source File

SOURCE=..\lib\s3tc\Lib\s3tc.lib
# End Source File
# End Target
# End Project

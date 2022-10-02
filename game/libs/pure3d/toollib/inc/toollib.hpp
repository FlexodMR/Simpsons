/*===========================================================================
    File:: toollib.hpp

    This header file includes everything you need from toollib
    
    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TOOLLIB_HPP
#define _TOOLLIB_HPP

extern char* compileTime;
extern char* compileUser;
extern char* compileInfo;
extern char* compileChangelist;
extern char* compileServer;

#include <constants/version.hpp>

#include "tlChunk16.hpp"
#include "tlDataChunk.hpp"

// All the Object level files

#include "tlAdjEdgeList.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlEdge.hpp"
#include "tlEntity.hpp"
#include "tlFont.hpp"
#include "tlGameAttr.hpp"
#include "tlHashList.hpp"
#include "tlHeightField.hpp"
#include "tlImage.hpp"
#include "tlImageQuantizer.hpp"
#include "tlIndexedVertex.hpp"
#include "tlInventory.hpp"
#include "tlIterator.hpp"
#include "tlLight.hpp"
#include "tlLocator.hpp"
#include "tlPose.hpp"
#include "tlPS2PrimBuffer.hpp"
#include "tlXBOXPrimBuffer.hpp"
#include "tlPrimBuffer.hpp"
#include "tlPrimGroup.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlRay.hpp"
#include "tlSimpleShader.hpp"
#include "tlSkeleton.hpp"
#include "tlSkin.hpp"
#include "tlSkinVertex.hpp"
#include "tlSprite.hpp"
#include "tlString.hpp"
#include "tlStringTable.hpp"
#include "tlTable.hpp"
#include "tlTexture.hpp"
#include "tlTriMesh.hpp"
#include "tlTriMeshIntersect.hpp"
#include "tlTriangle.hpp"
#include "tlTriangleFactory.hpp"
#include "tlTriangleIntersect.hpp"
#include "tlTriangleIntersectFactory.hpp"
#include "tlVertex.hpp"


// Animation things

#include "tlChannel.hpp"
#include "tlFrameController.hpp"
#include "tlMultiController.hpp"
#include "tlAnimation.hpp"
#include "tlVisAnim.hpp"
#include "tlTextureAnim.hpp"
#include "tlCameraAnim.hpp"
#include "tlLightAnim.hpp"
#include "tlExpressionAnim.hpp"
#include "tlPoseAnim.hpp"
#include "tlScenegraphTransformAnim.hpp"
#include "tlBillboardObjectAnim.hpp"
#include "tlEventAnimation.hpp"

// Animated Object
#include "tlAnimatedObject.hpp"

// Particle System
#include "tlParticleSystem.hpp"

// Optic Effect
#include "tlOpticEffect.hpp"

// Billboard Objects
#include "tlBillboardObject.hpp"

// Expressions
#include "tlExpression.hpp"
#include "tlExpressionOffsets.hpp"

// lighting tool kit
#include "tlLightmap.hpp"
#include "tlPhotonMap.hpp"


//vertex animation 
#include "tlVertexAnimKey.hpp"
#include "tlVertexAnim.hpp"
// Other stuff

#include "tlColour.hpp"
#include "tlTable.hpp"
#include "tlHistory.hpp"
#include "tlLoadManager.hpp"
#include "tlFile.hpp"
#include "tlFileByteStream.hpp"
#include "tlMemByteStream.hpp"
#include "dospath.hpp"
#include "hash.hpp"
#include "glob.hpp"
#include "getopt.h"
#include "lzr.hpp"

//Simpsons SRR2
#include "tlWallChunk.hpp"
#include "tlFenceLineChunk.hpp"
#include "tlIntersectionChunk.hpp"
#include "tlRoadSegmentChunk.hpp"
#include "tlRoadChunk.hpp"
#include "tlWBLocatorChunk.hpp"
#include "tlWBTriggerVolumeChunk.hpp"
#include "tlWBSplineChunk.hpp"
#include "tlEntityDSGChunk.hpp"
#include "tlStaticPhysDSGChunk.hpp"
#include "tlFenceDSGChunk.hpp"
#include "tlDynaPhysDSGChunk.hpp"
#include "tlTreeDSGChunk.hpp"
#include "tlInstancesChunk.hpp"
#include "tlFollowCamDataChunk.hpp"
#include "tlWalkerCamDataChunk.hpp"
#include "tlAnimCollDSGChunk.hpp"
#include "tlAnimDSGChunk.hpp"
#include "tlInstaEntityDSGChunk.hpp"
#include "tlInstaStaticPhysDSGChunk.hpp"
#include "tlWorldSphereDSGChunk.hpp"
#include "tlRoadSegmentDataChunk.hpp"
#include "tlInstAnimDynaPhysDSGChunk.hpp"


#include "tlObjectAttributeChunk.hpp"
#include "tlPhysWrapperChunk.hpp"
#include "tlAttributeTableChunk.hpp"
#include "tlWBRailCamChunk.hpp"

#include "tlBreakableObjectChunk.hpp"
#include "tlInstParticleSystemChunk.hpp"

#include "tlPedpathChunk.hpp"
#include "tlExtraMatrixChunk.hpp"

#include "tlLensFlareDSGChunk.hpp"

#endif


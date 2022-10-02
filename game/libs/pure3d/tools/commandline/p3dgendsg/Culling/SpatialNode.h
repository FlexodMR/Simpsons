#ifndef __SPATIAL_NODE_H__
#define __SPATIAL_NODE_H__

#include "OctTreeNode.h"
#include "Plane3f.h"
#include "ContiguousBinNode.h"
#include "ReserveArray.h"
#include "BoxPts.h"

//#include <render/DSG/StaticEntityDSG.h>
//#include <render/DSG/StaticPhysDSG.h>
//#include <render/DSG/IntersectDSG.h>

class StaticEntityDSG;
class StaticPhysDSG;
class IntersectDSG;
class DynaPhysDSG;
class FenceDSG;
class RoadPlaceholderDSG;
class PathPlaceholderDSG;
class AnimDSG;

////////////////////////////////////////////////////////////////
//
// A SpatialNode is data 
//    usually attached to a ContiguousBinNode 
// with Spatial Capabilities encompassing the following:
//
// -A Subdivision Plane representing the plane which subdivides
//    the Space contained at the current node into two discrete
//    volumes contained in the child nodes
//

class SpatialNode 
{
public:
   SpatialNode();
   ~SpatialNode();

   AAPlane3f         mSubDivPlane;
   ReserveArray<StaticEntityDSG*>   mSEntityElems; //mSpatialElems;
   ReserveArray<StaticPhysDSG*>     mSPhysElems;   //mDynamicElems;
   ReserveArray<IntersectDSG*>      mIntersectElems;
   ReserveArray<DynaPhysDSG*>       mDPhysElems;
   ReserveArray<FenceDSG*>          mFenceElems;
   ReserveArray<RoadPlaceholderDSG*> mRoadElems;
   ReserveArray<PathPlaceholderDSG*> mPathElems;
   ReserveArray<AnimDSG*>            mAnimElems;

   //Debug
   BoxPts   mBBox;

protected:
};


inline SpatialNode::SpatialNode(){}

inline SpatialNode::~SpatialNode(){}


#endif
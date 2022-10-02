/*===========================================================================
    boundingvolumes.hpp
    created: Jan 27, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _BOUNDINGVOLUMES_HPP
#define _BOUNDINGVOLUMES_HPP

#include <maya/MDagPath.h>

#include "tlCollisionObject.hpp"
#include "tlInventory.hpp"
#include "exporteroptions.hpp"
#include "scene.hpp"

bool IsBoundVol(MDagPath dagPath);
namespace BoundVol 
{

    enum BoundResult {
        SUCCESS,
        INVALID_OBJECT,
        INVALID_DAG_NODE,
        NO_GEOMETRY_PARENT
    };

    enum BoundType {
        INVALID_BOUND_TYPE,
        BBOX,
        BSPHERE,
        BCYLINDER,
        BCAPSULE,
        BPLANE,
        BNODE
    };
};


class BoundingVolumeProcess
{
public:
    static void Export( const SceneNode* shapeNode, tlInventory* inventory);

    class PhysicsAttributes
    {
    public:
        enum BehaviorEnum
        {
            kBehaviorRoll = 0,
            kBehaviorSlide,
            kBehaviorBounce,
            kBehaviorSpin
        };

        enum DynamicEnum
        {
            kDynamicStatic = 0,
            kDynamicMoveable,
            kDynamicDynamic
        };

        PhysicsAttributes():
            mPhysicsOwner( NULL ),
            mIsDynamic(0),
            mStringData(NULL),
            mBehavior(0),
            mDefaultArea(0)
            // Mass removed at Martin Courchesne's request: 22 Jan 2002
//            mMass(0.0f),
        {}       

        ~PhysicsAttributes(){delete mStringData;}

// Mass removed at Martin Courchesne's request: 22 Jan 2002
//        float   mMass;

        const SceneNode*        mPhysicsOwner;
        int                     mIsDynamic;
        char*                   mStringData;
        short                   mBehavior;
        int                     mDefaultArea;
    };

protected:
    static const SceneNode*     mCollisionOwnerRoot;    // The top-most level Transform node at which to start the Collision export.
    static tlCollisionObject*   mCollisionObject;       // The Collision Object in which to store the Collision Volumes.
    static tlSkeleton*          mCollisionSkeleton;     // The skeleton for the Collision hierarchy, if applicable.
    static BoundingVolumeProcess::PhysicsAttributes*   mPhysicsAttributes;     // The Physics Attributes, if found.
    static int                  mDefaultSkeletonOwner;

private:

    static void FindPhysicsAttributes( const SceneNode* node );

    static const SceneNode* FindCollisionObjectParent( const SceneNode* node );

    // Functions renamed by Bryan Ewert on 24 Jan 2002
    // I just couldn't grasp the meaning of "ParentCollisionVolumes" and
    // "ParentLevelCollisionVolumes".

    static bool TraverseNonCollisionHierarchy(  tlBBoxVolume* parentVolume,
                                                const SceneNode* node,
                                                const SceneNode* parentnode,
                                                const tlMatrix nodeMatrix,
                                                const bool worldSpaceBoundingVolumes);

    static bool AddCollisionForHierarchyLevel(  tlBBoxVolume* parentVolume,
                                                const SceneNode* node,
                                                const SceneNode* parentnode,
                                                const tlMatrix nodeMatrix,
                                                const bool worldSpaceBoundingVolumes);

    static bool BoundingVolumeProcess::BoundingNode(    tlBBoxVolume* parentBBox,
                                                        const SceneNode* node,
                                                        const SceneNode* parentnode,
                                                        const tlMatrix nodeMatrix,
                                                        const bool worldSpaceBoundingVolumes );

    static tlMatrix GetCollisionVolumeParentSpace( const SceneNode* root, const SceneNode* child );

    static tlCollisionVolume* CreateCollisionVolume( const SceneNode* node,
                                                     const tlMatrix transform,
                                                     int skeletonBoneIndex = -1);

}; 

#endif // _BOUNDINGVOLUMES_HPP


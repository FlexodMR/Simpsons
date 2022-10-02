/*===========================================================================
    boundingvolumes.cpp
    created: Jan 27, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

/* SEARCH STRINGS

void BoundingVolumeProcess::Export
bool BoundingVolumeProcess::TraverseNonCollisionHierarchy
bool BoundingVolumeProcess::AddCollisionForHierarchyLevel

// Build world-space transformations for Bounding Volume.
// Builds a matrix transformation relative to 'parentnode'.

*/

#pragma warning( disable : 4786 )   // that annoying "identifier was truncated in the debug information" warning.

#include <maya/MFnDagNode.h>
#include <maya/MItDag.h>
#include <maya/MObject.h>
#include <maya/MDagPath.h>
#include <maya/MStatus.h>
#include <maya/MFnMesh.h>
#include <maya/MPlug.h>
#include <maya/MFnTransform.h>
#include <maya/MEulerRotation.h>
#include <maya/MGlobal.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MAnimUtil.h>
#include <maya/MAnimControl.h>
#include <maya/MTime.h>
#include <maya/MItDag.h>
#include <maya/MDistance.h>
#include <maya/MBoundingBox.h>
#include <maya/MFnIkJoint.h>
#include <maya/MPlugArray.h>

#include <string.h>

#include "boundingvolumes.hpp"
#include "exportFunctions.hpp"
#include "exporterutility.hpp"
#include "mayanodes.hpp"
#include "plugValue.hpp"
#include "transformmatrix.hpp"
#include "tlMatrix.hpp"
#include "tlSkin.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlPhysicsObject.hpp"
#include "simdata.hpp"

#include <bewert_debug.h>

const SceneNode*                BoundingVolumeProcess::mCollisionOwnerRoot = NULL;    // The top-most level Transform node at which to start the Collision export.
tlCollisionObject*              BoundingVolumeProcess::mCollisionObject = NULL;
tlSkeleton*                     BoundingVolumeProcess::mCollisionSkeleton = NULL;     // The skeleton for the Collision hierarchy, if applicable.
BoundingVolumeProcess::PhysicsAttributes*   BoundingVolumeProcess::mPhysicsAttributes = NULL;     // The Physics Attributes, if found.
int                             BoundingVolumeProcess::mDefaultSkeletonOwner = (-1);

//-----------------------------------------------------------------------------------

// *** BEGIN DIAGNOSTIC / DEBUGGING ***
// The following are used only for diagnostics....
//   ... their use can be removed without impact to functionality.

static const unsigned int kNumCollisionTypes = BBoxVolumeType + 1;
static const char* CollisionVolumeTypeNames[kNumCollisionTypes] =
{
    "Best Fit",
    "Sphere",
    "Cylinder",
    "Capsule",
    "Oriented BoundingBox",
    "Wall",
    "Bounding Box"
};

// *** END DIAGNOSTIC / DEBUGGING ***

/* *** BEGIN OBSOLETE ***

//===========================================================================
// CheckForBV
//===========================================================================
// Description: Determines if the specified node (which is expected to be
//              a Bounding Node) has any descendents that are Bounding
//              Volumes.
//
// Constraints: *** THIS FUNCTION IS NOT USED! ***
//
// Parameters:  const SceneNode* node: The node from which to trace - expected to
//                               be a Bounding Node.
//
// Return:      TRUE if this bounding node has descendents that are bounding
//              volumes; else FALSE.
//
//===========================================================================
bool CheckForBV( const SceneNode *node )
{
    int kidCount = node->ChildCount();
    if (kidCount == 0) return false;
    int i;

    const SceneNode *kidTransformNode;
    const SceneNode *kidShapeNode;

    //First check for bounding vol children
    for (i = 0; i < kidCount; i++)
    {
        kidTransformNode = node->Child( i );
        if (kidTransformNode->ChildCount() > 0)
        {
            kidShapeNode = kidTransformNode->Child( 0 );
            if ( kidShapeNode->MayaTypeId() == P3D_BOUNDING_VOLUME_ID )
                return true;
            // check that an extra transform was not added
            else if ( kidShapeNode->ChildCount() > 0 )
            {
                const SceneNode* trueKidShape = kidShapeNode->Child(0);
                if ( trueKidShape->MayaTypeId() == P3D_BOUNDING_VOLUME_ID )
                return true;
            }

        }
    }

    //Then recursively check for b.v. children under child b.nodes
    for (i = 0; i < kidCount; i++)
    {
        kidTransformNode = node->Child( i );
        if (kidTransformNode->ChildCount() > 0)
        {
            kidShapeNode = kidTransformNode->Child( 0 );
            if ( kidShapeNode!=NULL && kidShapeNode->MayaTypeId() == P3D_BOUNDING_NODE_ID )
            {
                if (CheckForBV(kidTransformNode))
                    return true;
            }
        }
    }

    return false;

}

//===========================================================================
// FindParentGeometry
//===========================================================================
// Description: Traverse up the hierarchy from the specified SceneNode
//              looking for a non-joint transform.
//
// Constraints: *** THIS FUNCTION IS NEVER CALLED! ***
//
// Parameters:
//
// Return:
//
//===========================================================================
const SceneNode* FindParentGeometry( const SceneNode* node, tlMatrix& transform)
{
    const SceneNode* parent = NULL;
    const SceneNode* parentShape = NULL;

    transform.IdentityMatrix();
    tlMatrix currentTransform;

    // go up the hierarchy until I find a non-joint parent or a parent with a bn or
    // bv as its first child.
    // Accumulate transforms as I go

    while ( parent != SceneNode::WorldRoot() )
    {
        parent = node->Parent();
        parentShape = parent->Child(0);

        //accumulate matrices
        node->BindMatrix( currentTransform );
        transform = transform * currentTransform; //try this way first,

        // If the parent is not a joint, it should be the geomParent's transform node.
        // But check to make sure there wasn't an extra transform added when a bv
        // was parented to a bounding node

        if (parent->MayaType() != MFn::kJoint)
        {
            if (parentShape->ChildCount() > 0)
            {
                const SceneNode* grandChild = parentShape->Child(0);
                if (grandChild->MayaTypeId() != P3D_BOUNDING_VOLUME_ID
                    && parentShape->MayaTypeId() != P3D_BOUNDING_NODE_ID )
                {
                    return parentShape;
                }
            }
            else
                return parentShape;
        }

        else if ( parentShape->MayaTypeId() != P3D_BOUNDING_VOLUME_ID
                && parentShape->MayaTypeId() != P3D_BOUNDING_NODE_ID )
        {
            return parent;
        }


        node = parent;
    }
    return NULL;

}

// *** THIS FUNCTION IS NOT USED! ***
void checkSceneGraph()
{
    return;
    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        const SceneNode* node = it.Node();
        assert(node);
    }
}


*** END OBSOLETE *** */

//---------------------------------------------------------------------------------

//===========================================================================
// BoundingVolumeProcess::FindCollisionObjectParent
//===========================================================================
// Description: Traverses the hierarchy upward from the specified node
//              and finds the transform which is the appropriate parent
//              for this node.  If the node is part of joint hierarchy this
//              parent will be the joint flagged as "isSkeletonRoot".  Else
//              the parent will be the first mesh encountered.  If no
//              mesh is found then the first non-joint transform will be
//              returned.
//
// Constraints:
//
// Parameters:  const SceneNode* node: Node at which to begin the traversal.
//
// Return:      (const SceneNode*): Pointer to the appropriate SceneNode to
//                                  use as the parent for the Collision
//                                  hierarchy.
//
//===========================================================================
const SceneNode* BoundingVolumeProcess::FindCollisionObjectParent
(
    const SceneNode* node
)
{
    const SceneNode* parent = NULL;
    const SceneNode* currentRoot = node;

    //
    // If the specified node is a skeleton joint (or if its parent is a
    // skeleton joint) AND said joint is part of a skinning rig where the
    // user has flagged a joint as "Skeleton Root":
    //
    //  -> Parent will be the Skeleton Joint flagged as "isSkeletonRoot"
    //
    if  (
            ( node->SkeletonJointID() != -1) ||
            ( node->Parent()->SkeletonJointID() != -1 )
        )
    {
        while ( parent != SceneNode::WorldRoot() )
        {
            parent = currentRoot->Parent();

            if( parent->IsValidSkeletonRoot() )
            {
                //
                // If the parent is not a joint, it should be the geomParent's transform node.
                // But check to make sure there wasn't an extra transform added when a bv
                // was parented to a bounding node
                //
                return parent;
            }
            currentRoot = parent;
        }
    }

    //
    // 2)Go up the hierarchy and see if there are any parented Meshes
    //
    //  -> Parent will be the first transform whose shape node is a mesh.
    //
    parent = NULL;
    currentRoot = node;
    while ( parent != SceneNode::WorldRoot() )
    {
        parent = currentRoot->Parent();

        if( parent->MayaType() != MFn::kJoint )
        {
            if((parent->ChildCount()>0) && (parent->Child(0)->MayaType() == MFn::kMesh))
            {
                //
                // If the parent is not a joint, it should be the geomParent's transform node.
                // But check to make sure there wasn't an extra transform added when a bv
                // was parented to a bounding node
                //
                return parent;
            }
        }
        currentRoot = parent;
    }

    //
    // 3)Go up the hierarchy and just pick the first NON-Joint as the parented...
    // This is the last ditch attempt
    //
    //  -> Parent will be first transform that is not a joint.
    //  -> Special case returns WorldRoot if it is encountered before another valid node.
    //
    parent = NULL;
    currentRoot = node;
    while ( parent != SceneNode::WorldRoot() )
    {
        parent = currentRoot->Parent();

        if(parent == SceneNode::WorldRoot())
        {
            //
            // This case is basically for unparented
            // free floating bounding volumes.
            //
            return currentRoot;
        }
        else if( parent->MayaType() != MFn::kJoint )
        {
            //
            // If the parent is not a joint, it should be the geomParent's transform node.
            // But check to make sure there wasn't an extra transform added when a bv
            // was parented to a bounding node
            //
            return parent;
        }

        currentRoot = parent;
    }

    return currentRoot;
}


//===========================================================================
// GetBoundType     (local)
//===========================================================================
// Description: Returns the appropriate BoundType enumeration to identify
//              the type of Bounding Volume for the specified node.
//
//              This type is determined by querying the value of the node's
//              ".boundingType" attribute.  If the specified node is a
//              Bounding Node (instead of Bounding Volume) this implies
//              the type BNODE and the ".boundingType" attribute does not apply.
//
// Constraints:
//
// Parameters:  const SceneNode* node: The node to examine.
//
// Return:      (BoundType): Enumeration identifying type of bounding volume.
//
//===========================================================================
BoundVol::BoundType GetBoundType( const SceneNode* node)
{
    MStatus status;
    int type = -1;

    if (node->MayaTypeId() == P3D_BOUNDING_NODE_ID)
    {
        //
        // bounding Nodes do not have the typeplug
        //
        return BoundVol::BNODE;
    }

    if ( PlugValue( node->MayaObject(), "boundingType", type)==false )
    {
//        MGlobal::displayError("Error finding bounding type");
        gExportLog.Add( CExportLogEntry( ExportLog::kInvalidBoundingVolumeType, node->MayaPath() ) );
        return BoundVol::INVALID_BOUND_TYPE;
    }
    switch (type)
    {
    case 0:
        {
        return BoundVol::BBOX;
        break;
        }
    case 1:
        {
        return BoundVol::BSPHERE;
        break;
        }
    case 2:
        {
        return BoundVol::BCYLINDER;
        break;
        }
    case 3:
        {
        // ** NOTE: A Capsule Volume may be optimized to a Sphere Volume! **
        //          See tlCylinderVolume::Chunk()
        return BoundVol::BCAPSULE;
        break;
        }
    case 4:
        {
        return BoundVol::BPLANE;
        break;
        }
    default:
        return BoundVol::INVALID_BOUND_TYPE;
    }

}


//---------------------------------------------------------------------------------

tlMatrix BoundingVolumeProcess::GetCollisionVolumeParentSpace
(
    const SceneNode* root,
    const SceneNode* child
)
{

    const SceneNode* currentChild = child;
    tlMatrix transform;
    transform.IdentityMatrix();

    //
    // Go up the hierarchy until I find a non-joint parent or a parent with a bn or
    // bv as its first child.  Or if there is a skeleton joint
    //
    if(child->SkeletonJointID() != -1)
    {
        //
        // First find the joint to parent too
        //
        while(  (currentChild->IsNotInSkeleton())   &&
                (currentChild != SceneNode::WorldRoot())      &&
                (currentChild != root)
           )
        {
            currentChild = currentChild->Parent();
        }

        child->BindMatrixToParent(currentChild, transform);
    }
    else
    {
        child->BindMatrixToParent(root, transform);
    }

    return(transform);
}

//===========================================================================
// AdjustMatrixForOrientation
//===========================================================================
// Description: If, for Cylinder/Capsule volumes, the user has chosen a
//              'Max'/'Med' orientation other than the default of 'XY'
//              then the volume will render at a 90° angle to what it should
//              be.  After obtaining the local-space orientation for a
//              Bounding Volume it is re-oriented to the default 'XY'.
//
// Constraints: For Cylinder/Capsule volumes only.
//
//  Parameters: tlMatrix& matrix: The local LHS matrix queried from the
//                                Bounding Volume.
//              SceneNode* pNode: SceneNode representing the Bounding
//                                Volume's Shape node. This is to obtain
//                                the '.boundingType', '.max' and '.med'
//                                attributes.
//
//      Return: (void)
//
//===========================================================================
void AdjustMatrixForOrientation( tlMatrix& matrix, SceneNode* pNode )
{
    short boundingType;
    short maxAxis, medAxis;

    PlugValue( pNode->MayaObject(), "boundingType", boundingType );
    PlugValue( pNode->MayaObject(), "max", maxAxis );
    PlugValue( pNode->MayaObject(), "med", medAxis );

    tlMatrix orientMatrix;

    if ( boundingType == 2 || boundingType == 3 )    // Only Cylinder and Capsule
    {
        if ( maxAxis == 1 )     // Convert YX and YZ orientation to XY
        {
            if ( medAxis == 0 )
            {
                orientMatrix.SetRow( 0, tlPoint( 0.0, 1.0, 0.0 ) );
                orientMatrix.SetRow( 1, tlPoint( 1.0, 0.0, 0.0 ) );
                matrix = orientMatrix * matrix; // Swap X and Y
            }
            if ( medAxis == 2 )
            {
                orientMatrix.SetRow( 0, tlPoint( 0.0, 1.0, 0.0 ) );
                orientMatrix.SetRow( 1, tlPoint( 1.0, 0.0, 0.0 ) );
                matrix = orientMatrix * matrix; // Swap Y and X -> { Y, Z, X } becomes { X, Z, Y }

                orientMatrix.IdentityMatrix();

                orientMatrix.SetRow( 1, tlPoint( 0.0, 0.0, 1.0 ) );
                orientMatrix.SetRow( 2, tlPoint( 0.0, 1.0, 0.0 ) );
                matrix = orientMatrix * matrix; // Swap Z and Y -> { X, Z, Y } becomes { X, Y, Z }
            }
        }


        if ( maxAxis == 2 )     // // Convert ZX and ZY orientation to XY
        {
            if ( medAxis == 0 )
            {
                orientMatrix.SetRow( 0, tlPoint( 0.0, 0.0, 1.0 ) );
                orientMatrix.SetRow( 2, tlPoint( 1.0, 0.0, 0.0 ) );
                matrix = orientMatrix * matrix; // Swap Z and X -> { Z, X, Y } becomes { X, Z, Y }

                orientMatrix.IdentityMatrix();

                orientMatrix.SetRow( 1, tlPoint( 0.0, 0.0, 1.0 ) );
                orientMatrix.SetRow( 2, tlPoint( 0.0, 1.0, 0.0 ) );
                matrix = orientMatrix * matrix; // Swap Z and Y -> { X, Z, Y } becomes { X, Y, Z }
            }
            if ( medAxis == 1 )
            {
                orientMatrix.SetRow( 0, tlPoint( 0.0, 0.0, 1.0 ) );
                orientMatrix.SetRow( 2, tlPoint( 1.0, 0.0, 0.0 ) );
                matrix = orientMatrix * matrix; // Swap Z and X -> { Z, Y, X } becomes { X, Y, Z }
            }
        }
    }
}

//===========================================================================
// BoundingVolumeProcess::AddCollisionForHierarchyLevel
//===========================================================================
// Description: Called from BoundingVolumeProcess::TraverseNonCollisionHierarchy().
//
//              Builds the sub-heirarchy for the Bounding Volume collision
//              at its current level.
//
// Constraints: ** NOTE: A Capsule Volume may be optimized to a Sphere Volume! **
//                       See tlCylinderVolume::Chunk()
//
// Parameters:  tlBBoxVolume* parentVolume: The BoundingBox Volume (a.k.a.
//                  "Bounding Node") to which all of the child Bounding
//                  Volumes will be added.
//
//              const SceneNode* node:
//
//              const SceneNode* parentnode:
//
//              const bool worldSpace: Flag to indicate whether bounding
//                  volumes are evaluated in worldspace.
//
// Return:      (bool): Returns TRUE if at least one Bounding Volume was
//                      created while traversing the hierarchy of the
//                      specified SceneNode.
//
//===========================================================================
bool BoundingVolumeProcess::AddCollisionForHierarchyLevel
(
    tlBBoxVolume* parentVolume,
    const SceneNode* node,
    const SceneNode* parentnode,
    const tlMatrix nodeMatrix,
    const bool worldSpaceBoundingVolumes
)
{
    bool addedChildVolume = false;

    //
    // Get all collision volumes at this level
    //
    int childCount = node->ChildCount();
    for(int childIndex = 0 ; childIndex < childCount; childIndex++)
    {
        // Note: This is the ONLY place in this class where a
        //       SceneNode is actually modified -- its
        //       SetProcessed() flag is set to TRUE below.
        SceneNode* boundingVolume = node->Child(childIndex);
        SceneNode* boundingVolumeShape = NULL;
        assert(boundingVolume);

        if(boundingVolume->ChildCount()>0)
        {
            boundingVolumeShape = boundingVolume->Child(0);
        }

        // FIRST, check to see if this is an unprocessed Bounding Node.
        // If so, we must create a new tlBBox (non-oriented bounding box)
        // as the new parent for Bounding Volumes at this level.
        //
        // Consider the hierarchy:
        //
        //    object
        //      -> P3D_BVol
        //          -> P3D_BVol_Shape
        //      -> P3D_BNode
        //          -> P3D_BNode_Shape
        //          -> transform
        //              -> P3D_BVol
        //                  -> P3D_BVolShape
        //      -> P3D_BVol
        //          -> P3D_BVol_Shape
        //
        // If we processed all Bounding Volumes at the first level all at once
        // then all of the volumes under the object would get processed, and
        // the Bounding Node tlBBox would never get created.
        //
        // Also, we must call the recursive "Process under extra transform nodes"
        // _after_ processing Bounding Nodes or the Volumes will get processed
        // ahead of the Bounding Node.

        if( boundingVolumeShape && ( boundingVolumeShape->MayaTypeId() == P3D_BOUNDING_NODE_ID ) && ( !boundingVolumeShape->Processed() ) )
        {
            addedChildVolume |= BoundingNode( parentVolume, boundingVolume, parentnode, nodeMatrix, worldSpaceBoundingVolumes );

            boundingVolume->SetProcessed(true);
            boundingVolumeShape->SetProcessed(true);
        }

        // Put this in to handle the case where an extra transform is added
        // between the parent node and the Bounding Volume (those lovely
        // nodes Maya insists on added when parenting to skeletons with
        // non-identity transformations).
        addedChildVolume |= AddCollisionForHierarchyLevel( parentVolume, boundingVolume, parentnode, nodeMatrix, worldSpaceBoundingVolumes );

        // It is possible that this was already processed via a Bounding Node.
        if( boundingVolumeShape && ( boundingVolumeShape->MayaTypeId() == P3D_BOUNDING_VOLUME_ID ) && ( !boundingVolumeShape->Processed() ) )
        {
            CDEBUG << "     -> ADDING Bounding Volume: " << boundingVolumeShape->Name() << endl;

            tlMatrix transform;
            //
            // Make sure in the correct space
            //
            if( worldSpaceBoundingVolumes )
            {
//                CDEBUG << "BoundingVolumeProcess -> Obtain WORLD Matrix." << endl;

                // Build world-space transformations for Bounding Volume.

//                CDEBUG << mCollisionOwnerRoot->Name() << " is not in a Scenegraph." << endl;

                // Use the SceneNode instead of the raw MDagPath, because
                // we need to monitor for WorldRoot and ScenegraphRoot.
                SceneNode* pNode = boundingVolumeShape;

                MDagPath dagTransform = boundingVolumeShape->MayaPath();
                if ( !dagTransform.hasFn( MFn::kTransform ) )
                {
                    dagTransform.pop();
                    pNode = pNode->Parent();
                }

                // Grab the inclusive matrix for the Bounding Volume's transform.
                // This is used to assign the .translate below.
                MMatrix mat = dagTransform.inclusiveMatrix();

                // For each node, working upward, derive the local-space, LHS matrix.
                TransformMatrix tm( dagTransform );
                tm.GetHierarchyMatrixLHS( transform );

                if ( pNode != NULL )
                {
                    pNode = pNode->Parent();

//                    CDEBUG << "Start @ " << pNode->Name() << endl;
                }

                bool bContinueOnMayaDAG = false;
                while ( pNode ) // && ( pNode != SceneNode::WorldRoot() ) )   // dagTransform.length() > 1 )
                {
//                    CDEBUG << "BoundingVolumeProcess -> POP to " << pNode->Name() << endl;

                    // If we've reached the WorldRoot and it's NOT the top-level node
                    // in Maya then the user has performed an Export Selected on a DAG
                    // nested within a hierarchy. We still need to work upward to
                    // concatenate a world-space transformation, but the SceneNode
                    // hierarchy won't help us anymore. Bail here and continue using
                    // MDagPath below.
                    if ( pNode == SceneNode::WorldRoot() )
                    {
//                        CDEBUG << " (ROOT: " << dagTransform.fullPathName() << ")" << endl;;

                        // If this is the World Root BUT it is not an assembly transform
                        // then it is necessary to continue this trek using Maya's DAG.

                        if ( dagTransform.length() > 1 )
                        {
//                            CDEBUG << "   (NOT ASSEMBLY)" << endl;

                            bContinueOnMayaDAG = true;
                        }

                        break;
                    }

                    dagTransform = pNode->MayaPath();
//                        dagTransform.pop();

//                    CDEBUG << "  >> " << pNode->Name() << " is " << ( pNode->IsValidScenegraphRoot() ? "" : "NOT " ) << "a ScenegraphRoot" << endl;

                    // If this node is the Scenegraph Root, STOP NOW!
                    // The Scenegraph will provide the transformations to this node,
                    // and we only need the transformation local to the Scenegraph.

                // *** DISABLED ***  I haven't determined that this is the correct solution.
                //                   However, I'm leaving the commented code here for future reference,
                //                   should I have problems in future for which this may be relevant.
//                    if ( pNode->IsValidScenegraphRoot() )
//                    {
//                        // Offset the position matrix by the world-space position of the Scenegraph
//
//                        tlMatrix invmat;
//                        pNode->WorldMatrix( invmat );
//                        invmat = Inverse(invmat);
//                        transform = transform * invmat;
//                        CDEBUG << "Offset pos by " << MVector( invmat(3,0), invmat(3,1), invmat(3,2) ) << endl;
//                        mat = mat - invmat;
//                        break;
//                    }
//                    else

                    {
//                        CDEBUG << "  >> Get LHS matrix for " << pNode->Name() << endl;

                        // Concatenate matrix transformations as we ascend.
                        tm.Assign( dagTransform );
                        tlMatrix popMatrix;
                        tm.GetHierarchyMatrixLHS( popMatrix );

//                        CDEBUG << "POP matrix: " << endl;
//                        popMatrix.Print(0,4);

                        transform = transform * popMatrix;
                    }

                    // If this node is the Scenegraph Root, STOP NOW!
                    // The Scenegraph will provide the transformations to this node,
                    // and we only need the transformation local to the Scenegraph.
                    if ( pNode->IsValidScenegraphRoot() )
                    {
                        break;
                    }

                    pNode = pNode->Parent();
//                    if ( dagTransform == mCollisionOwnerRoot->MayaPath() ) break;

                }

                // SceneNode traversal no longer possible.. continue using MDagPath.
                // No consideration for WorldRoot or ScenegraphRoot necessary, nor possible.
                if ( bContinueOnMayaDAG )
                {
//                        dagTransform = pNode->MayaPath();

                    dagTransform.pop();

                    while ( dagTransform.length() > 0 )
                    {
                        // Concatenate matrix transformations as we ascend.
                        tm.Assign( dagTransform );
                        tlMatrix popMatrix;
                        tm.GetHierarchyMatrixLHS( popMatrix );

//                        CDEBUG << "BoundingVolumeProcess -> POP matrix on DAG: " << dagTransform.fullPathName() << endl;
//                        popMatrix.Print(0,4);

                        transform = transform * popMatrix;
                        dagTransform.pop();
                    }
                }

//                    CDEBUG << "Hierarchy matrix for boundingVolumeShape -> " << boundingVolumeShape->Name() << ": " << endl;
//                    transform.Print(0,0);

                // Bug fix: 17 Oct 2002
                // For Cylinder/Capsule volumes: If user has chosen a 'Max'/'Med' orientation
                // other than the default 'XY', then re-orient to 'XY'.
                AdjustMatrixForOrientation( transform, boundingVolumeShape );

                // All this matrix voodoo should give us our world-space position,
                // but it doesn't. So lock it in manually.
                transform.SetRow(3, tlPoint( mat(3,0), mat(3,1), -mat(3,2) ) );
            }
            else
            {
//                CDEBUG << "BoundingVolumeProcess -> Obtain OBJECT Matrix." << endl;

                // Builds a matrix transformation relative to 'parentnode'.
                transform = GetCollisionVolumeParentSpace(parentnode, boundingVolume);

                AdjustMatrixForOrientation( transform, boundingVolumeShape );

//                tlMatrix m;

//                parentnode->BindMatrix( m );
//                CDEBUG << "  -> Local bind matrix for: " << parentnode->Name() << endl;
//                m.Print(0,4);

//                boundingVolume->BindMatrix( m );
//                CDEBUG << "  -> Resulting bind matrix for: " << boundingVolume->Name() << endl;
//                m.Print(0,4);

            }

            tlCollisionVolume* childVolume = CreateCollisionVolume(boundingVolumeShape,
                                                                   transform,
                                                                   node->SkeletonJointID());

//            CDEBUG << "Create BVol with matrix: " << endl;
//            transform.Print(0,0);

            if(childVolume)
            {
                //
                // Now check if there are any influences
                //
                tlTable<InfluenceGroup *> boneInfluences = node->GetInfluences();

                if ( boneInfluences.Count() > 0 )
                {
                    for (int a = 0; a < boneInfluences.Count(); a++)
                    {
                        InfluenceGroup *boneInfluenceGroup = boneInfluences[a];
                        assert(boneInfluenceGroup);

                        MString meshFullName(boneInfluenceGroup->mesh);
                        char* meshName = NULL;

                        //
                        // Need to strip the Name
                        //
                        int pos = meshFullName.rindex('|');
                        if(pos < 0)
                        {
                            meshName = strnew(meshFullName.asChar());
                        }
                        else
                        {
                            meshName = strnew(meshFullName.substring(pos + 1, meshFullName.length()).asChar());
                        }

                        int meshIndex = mCollisionObject->GetOwnerIndex(meshName);
                        childVolume->SetOwnerIndex(meshIndex);

                        delete meshName;
                    }
                }
                else
                {
                    // Default the Owner to (-1)
                    childVolume->SetOwnerIndex(mDefaultSkeletonOwner);

                    // Note: If the Collision Object is not in a Composite Drawable then it will have
                    //       NO owners. See the AddOwnerName() calls below.
                    //       The GetOwnerIndex() method will always return (-1) if the owner list is 
                    //       empty. Thus, an owner of (-1) is the correct behavior here if the 
                    //       Bounding Volume not associated with a Composite Drawable.

                    int shape;
                    for ( shape = 0; shape < node->ChildCount(); shape++ )
                    {
                        int meshIndex = mCollisionObject->GetOwnerIndex( node->Child(shape)->Name() );
                        if ( meshIndex >= 0 )
                        {
                            childVolume->SetOwnerIndex(meshIndex);
                        }
                    }

                    // *** IF Bounding Volume is applied to a composite drawable
                    //     then warn if it has an invalid Owner Index.
                    if ( ( node->Skeleton() ) && ( ( childVolume->OwnerIndex() < 0 ) || ( childVolume->OwnerIndex() == mDefaultSkeletonOwner ) ) )
                    {
//                        MString                 message;
//                        message = "Bounding Volume \"";
//                        message += boundingVolumeShape->Name();
//                        message += "\" has no drawable Owner. Possible cause: Attached to Transform node, or to Joint that contributes no influence to mesh?";
//                        MGlobal::displayWarning( message );
                        gExportLog.Add( CExportLogEntry( ExportLog::kBoundingVolumeNoDrawableOwner, boundingVolumeShape->MayaPath() ) );
                    }

//                    if ( ( node->Skeleton() ) && ( childVolume->OwnerIndex() == mDefaultSkeletonOwner ) )
//                    {
//                        CDEBUG << "Associated with default 'skeleton' owner [" << mDefaultSkeletonOwner << "]: " << boundingVolumeShape->MayaPath().partialPathName() << endl;
//                    }
                }

                // If parentVolume is NOT NULL that means a Bounding Node was
                // introduced which generated a tlBBoxVolume.  Bounding Volumes
                // will be added to the tlBBoxVolume, and the tlBBoxVolume
                // will be added to mCollisionObject .
                if ( parentVolume != NULL )
                {
                    TList<tlCollisionVolume*>& list = parentVolume->SubVolume();
                    if ( list.GetSize() == 0 )
                    {
                        parentVolume->SetObjRefIndex( childVolume->ObjRefIndex() );
                    }

                    parentVolume->AddSubVolume( childVolume );
                }
                else
                // Adding directly to mCollisionObject -- let tlCollisionObject take care of details.
                {
                    MString message = boundingVolumeShape->MayaPath().partialPathName();
                    message = message + " (" + childVolume->ObjRefIndex() + ")";

                    gExportLog.Add( CExportLogEntry( ExportLog::kDebugProcessingBoundingVolume, message ) );

                    mCollisionObject->AddCollisionVolume( childVolume );
                }

//                parentVolume->AddSubVolume( childVolume );
                boundingVolume->SetProcessed(true);
                boundingVolumeShape->SetProcessed(true);
                addedChildVolume = true;
            }
        }
    }

    return addedChildVolume;
}

//===========================================================================
// BoundingVolumeProcess::BoundingNode
//===========================================================================
// Description:
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
bool BoundingVolumeProcess::BoundingNode
(
    tlBBoxVolume* parentBBox,
    const SceneNode* node,
    const SceneNode* parentnode,
    const tlMatrix nodeMatrix,
    const bool worldSpaceBoundingVolumes
)
{
    tlBBoxVolume* newBBox = new tlBBoxVolume;
    newBBox->mBuildExternally = true;

//            parentVolume->SetObjRefIndex( node->SkeletonJointID() );

    bool addedChildVolume = TraverseNonCollisionHierarchy(  newBBox,
                                                            node,
                                                            parentnode,
                                                            nodeMatrix,
                                                            worldSpaceBoundingVolumes );

    if ( addedChildVolume )
    {
        if ( parentBBox )
        {
            TList<tlCollisionVolume*>& list = parentBBox->SubVolume();
            if ( list.GetSize() == 0 )
            {
                parentBBox->SetObjRefIndex( newBBox->ObjRefIndex() );
            }

            parentBBox->AddSubVolume( newBBox );
        }
        else
        {
            mCollisionObject->AddCollisionVolume( newBBox );
        }
    }
    else
    {
        // New BBox was not used (why was this called then??)
        delete newBBox;
    }

    return addedChildVolume;
}

//===========================================================================
// BoundingVolumeProcess::TraverseNonCollisionHierarchy
//===========================================================================
// Description: Called from BoundingVolumeProcess::Export() to build the
//              hierarchy for nodes which are _not_ collision volumes.
//
//              Calls ::AddCollisionForHierarchyLevel() to add the collision
//              volumes for this level of the hierarchy.
//
// Constraints:
//
//  Parameters: tlBBoxVolume* parentVolume:
//
//              const SceneNode* node:
//
//              const SceneNode* parentNode:
//
//              const tlMatrix nodeMatrix: The matrix transformation for the
//                  collision volume.  This is compounded with the each recursive
//                  call to this function.
//
//              const bool worldSpace: Indicates whether bounding volumes are
//                                     evaluated in worldspace.
//
//      Return: (bool): TRUE if at least one Collision Volume was added
//                      during the traversal.
//
//===========================================================================
bool BoundingVolumeProcess::TraverseNonCollisionHierarchy
(
    tlBBoxVolume* parentVolume,
    const SceneNode* node,
    const SceneNode* parentnode,
    const tlMatrix nodeMatrix,
    const bool worldSpaceBoundingVolumes
)
{
    bool addedChildVolume = AddCollisionForHierarchyLevel(  parentVolume,
                                                            node,
                                                            parentnode,
                                                            nodeMatrix,
                                                            worldSpaceBoundingVolumes );
    //
    // Recursive call to all NON collision volumes
    //
    int childCount = node->ChildCount();
    for(int childIndex = 0 ; childIndex < childCount; childIndex++)
    {
        SceneNode* boundingVolume = node->Child(childIndex);
        SceneNode* boundingVolumeShape = NULL;

        if(boundingVolume->ChildCount()>0)
        {
            boundingVolumeShape = boundingVolume->Child(0);
        }

        if( boundingVolumeShape && ( boundingVolumeShape->MayaTypeId() == P3D_BOUNDING_NODE_ID ) && !boundingVolumeShape->Processed() )
        {
            addedChildVolume |= BoundingNode( parentVolume, boundingVolume, parentnode, nodeMatrix, worldSpaceBoundingVolumes );

            boundingVolume->SetProcessed(true);
            boundingVolumeShape->SetProcessed(true);
        }

        if( boundingVolumeShape && ( boundingVolumeShape->MayaTypeId() != P3D_BOUNDING_VOLUME_ID ) && !boundingVolumeShape->Processed() )
        {

//            // If the previous level of the hierarchy added at least one Bounding Volume
//            // then we want to add a Collision Volume chunk, and add a tlBBoxVolume as
//            // a subVolume to this.  This newly created Collision Volume will be used
//            // to store Collision data for this hierarchy level.
//            if ( addedChildVolume ) //  && ( node->Skeleton == NULL || node->SkeletonJointID() >= 0 ) )
//            {
//                tlBBoxVolume* newParentVolume = new tlBBoxVolume();
//
//                // I _think_ this should only be set IF
//                //  (a) The node is part of a Skeleton, AND
//                //  (b) The nodeType is a Joint.
//                if ( ( node->Skeleton() != NULL ) && ( node->MayaType() == MFn::kJoint ) )
//                {
//                    assert ( node->SkeletonJointID() >= 0 );
//                    newParentVolume->SetObjRefIndex(node->SkeletonJointID());
//                }
//
//                //
//                // Make sure to follow the transform Hierarchy
//                //
//                tlMatrix currentTransform, newNodeMatrix;
//                node->BindMatrix( currentTransform );
//                newNodeMatrix = currentTransform * nodeMatrix;
//
//                if( TraverseNonCollisionHierarchy(  newParentVolume,
//                                                    node->Child(childIndex),
//                                                    parentnode,
//                                                    newNodeMatrix,
//                                                    worldSpaceBoundingVolumes ) )
//                {
//                    //
//                    // Some child added volumes...
//                    // So Add this Branch to the parent
//                    //
//
//                    // Check the number of Collision Volumes added at this level.
//                    // If there was only one then it is was a bad idea to have added
//                    // the new CollisionVolume level and its tlBBoxVolume.
//                    // Back up, delete the CollisionVolume and add the append the
//                    // CollisionVolume to previous level.
//                    TList<tlCollisionVolume*>& subVolumes = newParentVolume->SubVolume();
//                    if(subVolumes.GetSize() == 1)
//                    {
//                        tlCollisionVolume* subVolume = subVolumes.GetAt(0);
//                        subVolumes.RemoveAt(0);
//                        delete newParentVolume;
//                        newParentVolume = NULL;
//                        parentVolume->AddSubVolume(subVolume);
//                    }
//                    else
//                    {
//                        parentVolume->AddSubVolume(newParentVolume);
//                    }
//
//                    addedChildVolume = true;
//                }
//                else
//                {
//                    //
//                    // If you are here then there are no more bounding Volumes!!
//                    // So delete the new boundingVolume that was constructed here
//                    //
//                    delete newParentVolume;
//                }
//            }
//            else
            {
                //
                // Just dispatch the parentVolume along
                //
                //
                // Make sure to follow the transform Hierarchy
                //
                tlMatrix currentTransform, newNodeMatrix;
                node->BindMatrix( currentTransform );
                newNodeMatrix = currentTransform * nodeMatrix;

//            clog << "  ++ CONTINUE TraverseNonCollisionHierarchy for " << collisionObject->GetName() << " (for child node #" << childIndex << ": " << node->Child(childIndex)->Name() << ")" << endl;
            // Only recurse hierarchy for Skeletons
                if ( ( mCollisionSkeleton != NULL ) || ( parentVolume != NULL ) )
                {
                    addedChildVolume |= TraverseNonCollisionHierarchy(  parentVolume,
                                                                        node->Child(childIndex),
                                                                        parentnode,
                                                                        newNodeMatrix,
                                                                        worldSpaceBoundingVolumes );
                }
            }
        }       // if NOT BoundingVolume node
    }       // for ( children )

    //
    // True if bounding Volumes added at this level or deeper
    //
    return addedChildVolume;
}

//===========================================================================
// BoundingVolumeProcess::Export
//===========================================================================
// Description: Called from SceneNode::BuildBoundingVolumes().
//
//              A Bounding Volume or Bounding Node has been detected
//              and this function is called to add the Collision object(s)
//              to the Inventory.
//
// Constraints:   Static: tlCollision (static = true) , no tlPhysics
//              Moveable: tlCollision (static = false), no tlPhysics
//               Dynamic: tlCollision (static = false), with tlPhysics
//
// Parameters:
//
// Return:
//
//===========================================================================
void BoundingVolumeProcess::Export
(
    const SceneNode* node,
    tlInventory* inventory
)
{
    //
    // This can go when CompositeCollisionObjects are supported
    //
    bool isCompositeCollisionObject = false;

    mCollisionOwnerRoot = FindCollisionObjectParent( node );

    CDEBUG << "Collision Parent for " << node->Name() << " is " << mCollisionOwnerRoot->Name() << endl;

    if( mCollisionOwnerRoot->ChildCount() > 0 )
    {
        if  (
                ( !mCollisionOwnerRoot->IsSkeletonRoot() ) &&
                ( mCollisionOwnerRoot->MayaType() == MFn::kJoint ) &&
                ( mCollisionOwnerRoot->Child(0)->MayaTypeId() != P3D_BOUNDING_VOLUME_ID )
            )
        {
            // *** This is a detached skeleton that is NOT a child of a mesh object
            // *** (it's likely a child of the world)
//            MString message = mCollisionOwnerRoot->Name();
//            message = message + " was identified as a * detached skeleton * and was not evaluated.";
//            MGlobal::displayWarning( message );

            gExportLog.Add( CExportLogEntry( ExportLog::kCollisionVolumeDetachedSkeleton, mCollisionOwnerRoot->MayaPath() ) );

            return;
        }

        // Allocate a new tlCollisionObject.
        mCollisionObject = new tlCollisionObject();
        mCollisionObject->SetName( mCollisionOwnerRoot->Name() );

        // Martin wants the defaults for this different than what the constructor defines.
        mCollisionObject->SetStaticAttribute( true );
        mCollisionObject->SetCanRoll( false );
        mCollisionObject->SetCanSlide( false );
        mCollisionObject->SetCanSpin( false );
        mCollisionObject->SetCanBounce( false );
        mCollisionObject->SetDefaultArea( 0 );

        //
        // If there is a skeleton for a composite drawable
        //
        mCollisionSkeleton = mCollisionOwnerRoot->Skeleton();

        // If there is no skeleton for this object, start attempt to find
        // Physics Attributes on the shape node.
        // Else start attempt with the transform (likely Skeleton Root).
        if ( ( mCollisionSkeleton == NULL ) && ( mCollisionOwnerRoot->ChildCount() > 0 ))
        {
            FindPhysicsAttributes( mCollisionOwnerRoot->Child(0) );
        }
        else
        {
            FindPhysicsAttributes( mCollisionOwnerRoot );
        }

        // If this is a Composite Drawable inform user from where
        // the Physics Attributes were obtained.
        if ( ( mPhysicsAttributes != NULL ) && ( mPhysicsAttributes->mPhysicsOwner != NULL ) && ( mCollisionSkeleton != NULL ) )
        {
            MString             message;
            message = "Physics attributes for \"";
            message += node->MayaPath().fullPathName();
            message += "\" obtained from: ";
            message += mPhysicsAttributes->mPhysicsOwner->Name();
//            MGlobal::displayInfo( message );
            gExportLog.Add( CExportLogEntry( ExportLog::kPhysicsAttributesFromCompositeDrawable, message ) );

        }

        //
        // First check for free floating Bounding Volumes.
        // : If the BoundingVolume shape is the immediate child
        // : of the top-level parent for this Collision hierarchy,
        // : then this is a stand-alone Bounding Volume.
        //
        const SceneNode* boundingVolumeShape = mCollisionOwnerRoot->Child(0);

        MTypeId  boundingVolumeShapeType = boundingVolumeShape->MayaTypeId();
        if(boundingVolumeShapeType == P3D_BOUNDING_VOLUME_ID)
        {
            mCollisionObject->SetName(boundingVolumeShape->Name());

            tlBBoxVolume* bboxVolume = new tlBBoxVolume();
            mCollisionObject->SetCollisionVolume(bboxVolume);

            tlMatrix            transform;
            mCollisionOwnerRoot->BindMatrix(transform);

//            CDEBUG << "Create BVol with matrix: " << endl;
//            transform.Print(0,0);

            tlCollisionVolume* collisionVolume = CreateCollisionVolume(boundingVolumeShape, transform);
//            collisionObject->SetCollisionVolume(collisionVolume);
            bboxVolume->AddSubVolume( collisionVolume );

        }
        else
        // This Bounding Volume is assigned to an object within a hierarchy.
        {

            bool worldSpaceBoundingVolumes = false;

            //
            // If you are here then there is a hierarchy
            // so we need a tlBBoxVolume to start
            //
            tlBBoxVolume* parentVolume = NULL;      // new tlBBoxVolume();
//            mCollisionObject->SetCollisionVolume(parentVolume);

            //
            // If there is a skeleton
            //
            if(mCollisionSkeleton != NULL)
            {
                mCollisionObject->SetNumSubObject(mCollisionSkeleton->GetNumJoints());

                //
                // Add Mesh reference information
                //
                tlCompositeDrawable *compositeDrawable = toollib_find<tlCompositeDrawable>(inventory, mCollisionSkeleton->GetName());
                if(compositeDrawable)
                {
                    isCompositeCollisionObject = true;
                    int skinCount  = compositeDrawable->GetSubSkins().Count();
                    int propCount  = compositeDrawable->GetSubProps().Count();
                    mDefaultSkeletonOwner = skinCount + propCount;          // Index to last item in list is default "__PrenotatoPerDuplicare_" owner.
                    mCollisionObject->SetNumOwner(mDefaultSkeletonOwner + 1);   // Add one to index to accomodate size.

                    // Note: Martin says he will optimize the resulting bounding volume hierarchy
                    //       to remove the unused "__PrenotatoPerDuplicare_" owner.

                    int i;
                    for(i = 0; i<skinCount; i++)
                    {
                        mCollisionObject->AddOwnerName(i, (const char*)(compositeDrawable->GetSubSkins())[i]->GetName());
                    }
                    for(i = 0; i<propCount; i++)
                    {
                        mCollisionObject->AddOwnerName(i+skinCount, (const char*)(compositeDrawable->GetSubProps())[i]->GetName());
                    }

                    mCollisionObject->AddOwnerName( mDefaultSkeletonOwner, "__PrenotatoPerDuplicare_" );

                }
                else
                {
                    assert(0 && "CompositeDrawables are assumed constructed before calling this");
                }
            }

            // If this Bounding Volume is NOT in a SceneGraph then it must be world-spaced
            else
            {
                if ( !mCollisionOwnerRoot->IsInScenegraph() )
                {
//                    CDEBUG << "Collision NOT in Scenegraph -> Use WorldSpace." << endl;

                    worldSpaceBoundingVolumes = true;
                    mCollisionObject->SetName(mCollisionOwnerRoot->Name());
                }

    //            if ( mCollisionOwnerRoot->IsInScenegraph() )
    //            {
    //                worldSpaceBoundingVolumes = false;
    //            }

                //  - If Physics attributes are NOT applied, OR
                //  - If Physics attributes are applied and have been set to STATIC.
                else if( ( mPhysicsAttributes == NULL ) || ( mPhysicsAttributes->mIsDynamic == PhysicsAttributes::kDynamicStatic ) )
                {
                    //
                    // We are not parented to a mesh so all bounding volumes are
                    // worldspaced
                    //
    //                CDEBUG << "Using world-space BV" << endl;

                    worldSpaceBoundingVolumes = true;
                }
            }

            //
            // Naming convention
            //
            if( boundingVolumeShape->MayaType() == MFn::kMesh )
            {
                mCollisionObject->SetName(boundingVolumeShape->Name());
            }
            if( isCompositeCollisionObject )
            {
                // ** THIS MAY NOT WORK RIGHT NOW ***
                //
                // This helps in the case where bounding Volumes
                // are intended for static collision... but are
                // attached to duplicate meshes. In the case
                // of using the SceneGraph for instancing collision
                // data on world objects that are static this makes
                // the names unique by using the transform name.
                //
    // *** STATIC object gets non-shape name here
//    CDEBUG << __LINE__ << ": mCollisionObject->SetName(mCollisionOwnerRoot->Name()) ) -> " << mCollisionOwnerRoot->Name() << endl;

                // BUG #766: Static stand-alone Bounding Volumes should use shape name.
                //           (10 Oct 2002) BUT if it is a child of a Composite Drawable, use owner name.
                mCollisionObject->SetName(mCollisionOwnerRoot->Name());
            }
            //
            // Build the Collision Hierarchy
            // In the local space of the root transform Hierarchy
            //
            tlMatrix nodeMatrix;
            nodeMatrix.IdentityMatrix();

            // collisionObject : The tlCollisionObject constructed for this SceneNode.
            // parentVolume : The tlBBoxVolume constructed and set as the collisionObject's CollisionVolume().
            // mCollisionOwnerRoot : The transformNode for this SceneNode.
            // nodeMatrix : Right here this is the identity matrix.
            // worldSpaceBoundingVolumes : BOOL flag to indicate whether bounding volumes are evaluated in worldspace.
            if(!TraverseNonCollisionHierarchy( parentVolume,
                                       mCollisionOwnerRoot,
                                       mCollisionOwnerRoot,
                                       nodeMatrix,
                                       worldSpaceBoundingVolumes ))
            {
                //
                // There was nothing to be built so delete
                // The parentVolume will be destroyed by the collisionObject
                //
                delete mCollisionObject;
                mCollisionObject = NULL;
            }
        }

        //
        // If there is a collisionObject then we've made it here without error.
        // Apply Physics attributes and store to Inventory.
        if( mCollisionObject != NULL )
        {
            mCollisionObject->EndAddCollisionVolume( mCollisionSkeleton );

            //
            // Always export an articulated default physics object for skeletons
            //

// ** BEGIN OBSOLETE: 25 Feb 2002
// ** Composite Drawables only have Physics Object if Dynamic (as logic states below)

//            if(mCollisionSkeleton != NULL)
//            {
//                tlPhysicsObject* physicsObject = new tlPhysicsObject;
//                tlSimDataHolder* simData = new tlSimDataHolder;
//
//                physicsObject->SetPhysicsObject(simData, mCollisionObject, mCollisionSkeleton);
//                physicsObject->SetName( mCollisionObject->GetName() );
//
//                physicsObject->ComputeInertiaFromCollisionVolume( mCollisionObject );
//
//                // This will result in one tlPhysicsJointChunk added as a subchunk
//                // to the tlPhysicsObjectChunk for each Joint in the skeleton.
//                // These are generated by tlPhysicsObject::Chunk().
//                inventory->Store(physicsObject);
//            }
//            else

// ** END OBSOLETE

            if( mPhysicsAttributes != NULL )
            {
                mCollisionObject->mStringData.SetName( mPhysicsAttributes->mStringData );

                //
                // Do we need to create a physics object?
                //
                if( ( mPhysicsAttributes->mIsDynamic == PhysicsAttributes::kDynamicDynamic ) )  // || (mCollisionSkeleton != NULL ))
                {
                    tlPhysicsObject* physicsObject = new tlPhysicsObject;
                    tlSimDataHolder* simData = new tlSimDataHolder;

            // *** Dynamic object gets _Shape name here
                    CDEBUG << __LINE__ << ": physicsObject->SetName(mCollisionObject->GetName()) -> " << mCollisionObject->GetName() << endl;
                    physicsObject->SetName(mCollisionObject->GetName());

                    // Note: Set name for tlSimDataHolder -- tlPhysicsObject adopts this name
                    //       and reverts to "NoName" if not set here.
                    simData->SetName( mCollisionObject->GetName() );

                    // Note: SetPhysicsObject() rewrites String Data with that from tlSimDataHolder.
                    physicsObject->mStringData.SetName(mPhysicsAttributes->mStringData);
                    simData->mStringData.SetName( mPhysicsAttributes->mStringData );

                    physicsObject->SetRestingSensitivity(1.0f);

                    // Bug fix (I hope) 2 Jul 2002:
                    // tlPhysicsObject::SetPhysicsObject() calculates the volume for this
                    // collision object. Volume MUST be greater than zero else the
                    // Physics chunk will not be written.
                    /* if(isCompositeCollisionObject) */
                    physicsObject->SetPhysicsObject(simData, mCollisionObject, mCollisionSkeleton);

                    inventory->Store(physicsObject);

                    delete simData; // Not stored by physicsObject.. just used for data.
                }
            }

            //
            // Finally store it
            //
//            collisionObject->FixCollisionVolume(mCollisionSkeleton);
            if ( inventory->Store( mCollisionObject ) < 0 )
            {
                cerr << "**** ERROR: Inventory Collision ****" << endl;
            }

        }

        if(mPhysicsAttributes)
        {
            delete mPhysicsAttributes;
            mPhysicsAttributes = NULL;
        }
    }       // if ( ChildCount > 0 )
}

//===========================================================================
// BoundingVolumeProcess::FindPhysicsAttributes
//===========================================================================
// Description: Allocates and assigns the Physics attribute for the specified
//              node.  If no Physics attributes are found on the current node
//              attempts to navigate to child (shape) node and tries again.
//              If that fails then a NULL result is returned.
//
// Constraints: The caller must call Delete on this object!
//
// Parameters:  SceneNode* node: Pointer to the Scene Node for which to
//                               retrieve the Physics attributes.
//
// Return:      (void)
//
//===========================================================================
void BoundingVolumeProcess::FindPhysicsAttributes
(
    const SceneNode* node
)
{
//    CDEBUG << "BoundingVolumeProcess::FindPhysicsAttributes( " << node->Name() << " )" << endl;

    if ( mPhysicsAttributes != NULL )
    {
        delete mPhysicsAttributes;
    }

    mPhysicsAttributes = new PhysicsAttributes;

    bool isDynamicFound = false;
    bool hasStringData = false;
    bool bBehaviorFound = false;

// Mass removed at Martin Courchesne's request: 22 Jan 2002
//    bool massFound = false;

    bool            bCanRoll, bCanSlide, bCanBounce, bCanSpin;
    bCanRoll = bCanSlide = bCanBounce = bCanSpin = false;

    isDynamicFound = PlugValue( node->MayaObject(), "isDynamic", mPhysicsAttributes->mIsDynamic);

    MString stringData;
    hasStringData     = PlugValue( node->MayaObject(), "stringData", stringData );
    mPhysicsAttributes->mStringData = strnew( stringData.asChar() );

    PlugValue( node->MayaObject(), "areaTag", mPhysicsAttributes->mDefaultArea );

    // The (roll/slide/bounce/spin) behavior is rolled into a single bitfield.
    bBehaviorFound =
    (
        ( PlugValue( node->MayaObject(), "canRoll",      bCanRoll ) )    &&
        ( PlugValue( node->MayaObject(), "canSlide",     bCanSlide ) )   &&
        ( PlugValue( node->MayaObject(), "canBounce",    bCanBounce ) )  &&
        ( PlugValue( node->MayaObject(), "canSpin",      bCanSpin ) )
    );

    if ( bCanRoll ) mPhysicsAttributes->mBehavior    |= ( 1 << PhysicsAttributes::kBehaviorRoll );
    if ( bCanSlide ) mPhysicsAttributes->mBehavior   |= ( 1 << PhysicsAttributes::kBehaviorSlide );
    if ( bCanBounce ) mPhysicsAttributes->mBehavior  |= ( 1 << PhysicsAttributes::kBehaviorBounce );
    if ( bCanSpin ) mPhysicsAttributes->mBehavior    |= ( 1 << PhysicsAttributes::kBehaviorSpin );

// Mass removed at Martin Courchesne's request: 22 Jan 2002
//    massFound      = node->PlugValue("mass",      physicsAttributes->mMass);

// Mass removed at Martin Courchesne's request: 22 Jan 2002
//    if(!massFound || !isDynamicFound || !hasStringData)

    // If this was not PARTIALLY successful, navigate to child node
    // and call this function recursively.
    // If the recursive call passes, all is well;
    // If the recursive call fails (and it will after running out of children)
    // then a NULL result will cascade back to the caller.
    if( !( isDynamicFound || bBehaviorFound ) )
    {
        delete mPhysicsAttributes;
        mPhysicsAttributes = NULL;

        if(node->ChildCount()>0)
        {
            const SceneNode* shapeNode = node->Child(0);

            if( shapeNode )
            {
                FindPhysicsAttributes( shapeNode );
            }
        }
    }

    if ( ( mPhysicsAttributes != NULL ) && ( mPhysicsAttributes->mPhysicsOwner == NULL ) )
    {
//      CDEBUG << "Physics Attributes from " << node->Name() << endl;

        mPhysicsAttributes->mPhysicsOwner = node;

        // Assign tlCollisionObject attributes
        mCollisionObject->SetStaticAttribute( mPhysicsAttributes->mIsDynamic == PhysicsAttributes::kDynamicStatic );
        mCollisionObject->SetCanRoll( ( mPhysicsAttributes->mBehavior & ( 1 << PhysicsAttributes::kBehaviorRoll ) ) > 0 );
        mCollisionObject->SetCanSlide( ( mPhysicsAttributes->mBehavior & ( 1 << PhysicsAttributes::kBehaviorSlide ) ) > 0 );
        mCollisionObject->SetCanSpin( ( mPhysicsAttributes->mBehavior & ( 1 << PhysicsAttributes::kBehaviorSpin ) ) > 0 );
        mCollisionObject->SetCanBounce( ( mPhysicsAttributes->mBehavior & ( 1 << PhysicsAttributes::kBehaviorBounce ) ) > 0 );
        mCollisionObject->SetDefaultArea( mPhysicsAttributes->mDefaultArea );
    }
}

//===========================================================================
// BoundingVolumeProcess::CreateCollisionVolume
//===========================================================================
// Description: Creates a tlCollisionVolume object of the required type and
//              with the required attributes, based on the specified node.
//
//              If a valid skeleton bone index is specified (valid is >= 0)
//              then this index is set as the object reference index for
//              the newly created tlCollisionVolume.
//
// Constraints:   Static: tlCollision (static = true) , no tlPhysics
//              Moveable: tlCollision (static = false), no tlPhysics
//               Dynamic: tlCollision (static = false), with tlPhysics
//
// Parameters:
//
// Return:
//
//===========================================================================
tlCollisionVolume* BoundingVolumeProcess::CreateCollisionVolume
(
    const SceneNode* node,
    const tlMatrix transform,
    int skeletonBoneIndex
)
{
    tlCollisionVolume* collisionVolume = NULL;

    if(node->MayaTypeId() != P3D_BOUNDING_VOLUME_ID)
    {
        // ** We should never see this. **
        // All calls to ::CreateCollisionVolume() are wrapped in
        // ( if ( MayaTypeId() == P3D_BOUNDING_VOLUME_ID ) )

        //assert(0 && "Collision volume requested for a non-Bounding Volume node.");
        collisionVolume = new tlBBoxVolume();
        return(collisionVolume);
    }

    float unitScaleFactor = SceneNode::UIScale();

    float width, height, length, radius;
    int med, max;

    // These are really physics attributes
// Mass removed at Martin Courchesne's request: 22 Jan 2002
//    float mass = 0;
    bool isDynamic = false;

    PlugValue( node->MayaObject(), "width",  width);
    PlugValue( node->MayaObject(), "height", height);
    PlugValue( node->MayaObject(), "length", length);
    PlugValue( node->MayaObject(), "radius", radius);
    PlugValue( node->MayaObject(), "med",    med);
    PlugValue( node->MayaObject(), "max",    max);

    //
    // Convert back to Maya units so it exports the right size
    //
    width  *= unitScaleFactor;
    height *= unitScaleFactor;
    length *= unitScaleFactor;
    radius *= unitScaleFactor;

    //
    // Since most Bounding Volumes are constructed by half dimentions
    //
    float halfWidth   = width/2.0F;
    float halfHeight  = height/2.0F;
    float halfLength  = length/2.0F;

    //
    // Need to setup the position and orientation
    //

    tlPoint position;
    tlPoint xAxis(1,0,0), yAxis(0,1,0), zAxis(0,0,1), orient(0,0,0);

    position = transform.GetRow(3);
    position *= unitScaleFactor;
    xAxis = transform[0];
    yAxis = transform[1];
    zAxis = transform[2];

    switch (GetBoundType(node))
    {
        case BoundVol::BBOX:
        {

            collisionVolume = new tlOBBoxVolume(position,
                                                            xAxis,
                                                            yAxis,
                                                            zAxis,
                                                            halfWidth,
                                                            halfHeight,
                                                            halfLength);
        }
        break;

        case BoundVol::BSPHERE:
        {
            collisionVolume = new tlSphereVolume(position, radius);
        }
        break;

        case BoundVol::BCYLINDER:
        case BoundVol::BCAPSULE:
        {
            float halfCylinderLength = halfHeight;
            orient = xAxis; // Cylinders and Capsules always orient on X

            bool isFlatEnd = false;
            if(GetBoundType(node) == BoundVol::BCYLINDER)
            {
                isFlatEnd = true;
            }

            // ** NOTE: A Capsule Volume may be optimized to a Sphere Volume! **
            //          See tlCylinderVolume::Chunk()
            collisionVolume = new tlCylinderVolume( position,
                                                    orient,
                                                    halfCylinderLength,
                                                    radius,
                                                    isFlatEnd );
        }
        break;

    case BoundVol::BPLANE:
        {
            collisionVolume = new tlWallVolume(position, yAxis);
        }
        break;

    case BoundVol::BNODE:
        {
            collisionVolume = new tlBBoxVolume();
        }
        break;

    default:
        //return BoundVol::INVALID_OBJECT;
        break;
    }

    if( (skeletonBoneIndex != -1) && (collisionVolume) )
    {
        //
        // You need to tell the collision volume what
        // Skeleton joint to reference
        //
        collisionVolume->SetObjRefIndex(skeletonBoneIndex);
    }

    //assert(collisionVolume != NULL);
    return(collisionVolume);
}


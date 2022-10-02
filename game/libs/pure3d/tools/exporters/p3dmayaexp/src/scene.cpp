/*===========================================================================
    scene.cpp
    created: Aug 30, 2000
    Eric Honsch

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

/* SEARCH STRINGS

// Allocate new ScenegraphTransformAnimNode
// Allocate new CompositeDrawableAnimNode
// Allocate new SkeletonAnimNode
// Allocate new CameraAnimNode
// Allocate new LightAnimNode

void SceneNode::BuildScenegraphs(void)
void SceneNode::BuildVertexAnimation(
void SceneNode::BuildAnimatedObjectFactories(void)
MStatus SceneNode::BuildLights(

*/

#pragma warning(disable:4786) // in here because Rodin's STL use causes warnings
#include "scene.hpp"
#include "scenegraph.hpp"
#include "transformmatrix.hpp"
#include "exporteroptions.hpp"
#include "exportFunctions.hpp"
#include "exportLog.h"
#include "meshprocess.hpp"
#include "particleSystem.hpp"
#include "opticEffects.hpp"
#include "billboardObject.hpp"
#include "boundingVolumes.hpp"
#include "animnode.hpp"
#include "vertexAnimationAnimNode.hpp"
#include "deformerExpression.hpp"
#include "exporterutility.hpp"
#include "p3dEventAnim.h"       // p3dEventAnim node MTypeId
#include "p3dEventKey.h"        // p3dEventKey node MTypeId
#include <p3dDecayRange/p3dDecayRangeNode.h>    // p3dDecayRange node MTypeId
#include "mayanodes.hpp"        // hardcoded Maya IDs for custom nodes
#include "plugValue.hpp"

#include "tlString.hpp"
#include "tlSkeleton.hpp"
#include "tlTriMesh.hpp"
#include "tlInventory.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlSkin.hpp"
#include "tlPoseAnim.hpp"
#include "tlVisAnim.hpp"
#include "tlIndexedSkinVertex.hpp"
#include "tlFrameController.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlScenegraph.hpp"
#include "tlScenegraphTransformAnim.hpp"
#include "tlMultiController.hpp"
#include "tlCamera.hpp"
#include "tlCameraAnim.hpp"
#include "tlLight.hpp"
#include "tlLightAnim.hpp"
#include "tlLightGroup.hpp"
//#include "tlDeformPolySkin.hpp"
#include "tlShader.hpp"
#include "tlGameAttr.hpp"
#include "tlLocator.hpp"
#include "tlOpticEffect.hpp"
#include "tlBillboardObject.hpp"
#include "tlAnimatedObject.hpp"

#include <maya/MFnDependencyNode.h>
#include <maya/MString.h>
#include <maya/MItDag.h>
#include <maya/MGlobal.h>
#include <maya/MPlug.h>
#include <maya/MDagPathArray.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MFnSkinCluster.h>
#include <maya/MFnSet.h>
#include <maya/MDistance.h>
#include <maya/MSelectionList.h>
#include <maya/MFloatArray.h>
#include <maya/MMatrix.h>
#include <maya/MAnimControl.h>
#include <maya/MPlugArray.h>
#include <maya/MAnimUtil.h>
#include <maya/MFnCamera.h>
#include <maya/MColor.h>
#include <maya/MFnAmbientLight.h>
#include <maya/MFnPointLight.h>
#include <maya/MFnDirectionalLight.h>
#include <maya/MfnSpotLight.h>
//added for gameattr stuff to work
#include <maya/MFnStringData.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnMatrixData.h>
#include <math.h>

//#define DEBUG_MEMORY_TRACK
#include <bewert_debug.h>

const long p3dScenegraphRoot                    = 0x0001;
const long p3dSkeletonRoot                      = 0x0002;
const long p3dTraversalStop                     = 0x0004;
const long p3dNoCull                            = 0x0008;
const long p3dPreserveBoneLength                = 0x0010;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

const long p3dXAxisMirror                       = 0x0020;
const long p3dYAxisMirror                       = 0x0040;
const long p3dZAxisMirror                       = 0x0080;

// END DEPRECATE

const long p3dCyclic                            = 0x0100;
const long p3dNotInSkeleton                     = 0x0200;
const long p3dHighPrecisionRotAngle             = 0x0400;
const long p3dCreateAnimatedObjFactory          = 0x0800;
const long p3dCreateAnimatedObj                 = 0x1000;

// static members

tlInventory            *SceneNode::mInventory = NULL;
SceneNode              *SceneNode::mWorldRoot = NULL;
CMayaDagSelection       SceneNode::mDagSelection;
tlTable<SmoothMeshInfo> SceneNode::mSmoothMeshes;
bool                    SceneNode::mMayaAutoKeyframeEnabled = false;
tlStringTable           SceneNode::mAnimatedObjectFactories;
tlStringTable           SceneNode::mMaterialNodes;
MStringArray            SceneNode::mNamingConflicts;
tlTable<tlLightGroup*>  SceneNode::mScenegraphLightGroupTable;

// **************************************
//
// Struct Influence Group
// Operator ==
//
//
bool InfluenceGroup::operator==(const InfluenceGroup &ig)
{
    if (strcmp(mesh, ig.mesh)) return false;
    if (influences.Count() != ig.influences.Count()) return false;

    // I should probably check to see if the influences are the same
    // but not for now
    return true;
}


// **************************************
//
// Struct Influence Group
// Add Influence
//
//
void InfluenceGroup::AddInfluence(int vertex, float weight)
{
    if (weight < min_weight) return;

    Influence i;
    i.vertex = vertex;
    i.weight = weight;
    influences.Append(i);
}


// *****************************************************
//
// Class SceneNode
// Base class constructor
//
//
SceneNode::SceneNode(MDagPath &path, SceneNode *parent) :
    mPath(path),
    mProcessed(false),
    mMesh(NULL),
    mMeshVertexLookup(NULL),
    mSkeleton(NULL),
    mSkeletonJointID(-1),
    mScenegraph(NULL),
    mScenegraphLightGroup(NULL),
    mParent(parent),

// BEGIN DEPRECATE -> MappedJoint Deprecated: 08 Oct 2002

    mSkeletonMirrorJointName(NULL),
    mSkeletonMirrorEulerX(1.0),
    mSkeletonMirrorEulerY(1.0),
    mSkeletonMirrorEulerZ(1.0),

// END DEPRECATE

    mHasVertexAnimation( false ),
    mHasVertexPositionAnimation( true ),
    mHasVertexNormalAnimation( true ),
    mVertexNormalUseVertexFace( false ),
    mHasVertexColourAnimation( false ),
    mVertexColourUseVertexFace( false ),
    mHasVertexUvAnimation( false ),
    mVertexPositionThreshold( 0.01F ),
    mVertexNormalThreshold( 0.025F ),
    mVertexColourThreshold( 0.01F ),
    mVertexUvThreshold( 0.001F ),
    mVertexPositionInterpolate( true ),
    mVertexNormalInterpolate( true ),
    mVertexColourInterpolate( true ),
    mVertexUv0Interpolate( true ),
    mVertexUv1Interpolate( true ),
    mVertexUv2Interpolate( true ),
    mVertexUv3Interpolate( true ),
    mHasScenegraphAnimation( false )
{
    mFnDag.setObject(mPath.node());

    mNodeName                   = ExporterOptions::BuildNodeName(mFnDag.name());
    mFullNodeName               = strnew(mPath.fullPathName().asChar());

    mFileReference              = mFnDag.isFromReferencedFile();
    mIsInstance                 = mFnDag.isInstanced();
    mInstanceNumber             = path.instanceNumber();

    mScenegraphRoot             = false;
    mSkeletonRoot               = false;
    mNotInSkeleton              = false;
    mTraversalStop              = false;
    mNoCull                     = false;
    mCyclic                     = false;
    mIsIntermediate             = false;
    mIsVisibilityAnimated       = false;
    mHPRotAngle                 = false;
    mPreserveBoneLength         = false;
    mExtraJointSortOrder        = 0;

    mCreateAnimatedObjFactory   = false;
    mCreateAnimatedObj          = false;

    // Boolean flags collapsed into ".p3dBooleanAttributes" plug:
    BooleanState( p3dScenegraphRoot,               mScenegraphRoot );
    // This does not yet consider if parent node is in a Scenegraph.
    mIsInScenegraph             = mScenegraphRoot || ExporterOptions::ExportNISScenegraph();

//    mAnimOptimization.Initialize( path.node() );

    BooleanState( p3dSkeletonRoot,                 mSkeletonRoot );
    BooleanState( p3dNotInSkeleton,                mNotInSkeleton );
    BooleanState( p3dTraversalStop,                mTraversalStop );
    BooleanState( p3dNoCull,                       mNoCull );
    BooleanState( p3dCyclic,                       mCyclic );
    BooleanState( p3dHighPrecisionRotAngle,        mHPRotAngle );

    BooleanState( p3dCreateAnimatedObjFactory,     mCreateAnimatedObjFactory );
    BooleanState( p3dCreateAnimatedObj,            mCreateAnimatedObj );

    BooleanState( p3dPreserveBoneLength,           mPreserveBoneLength );

    // Non-boolean flags:
    PlugValue( mPath.node(), "p3dExtraJointSortOrder",        mExtraJointSortOrder);
    if ( !PlugValue( mPath.node(), "p3dDrawOrder",            mDrawOrder ) )
    {
        mDrawOrder = 0.5F;
    }

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

    bool mirX, mirY, mirZ;
    BooleanState( p3dXAxisMirror,                  mirX );
    BooleanState( p3dYAxisMirror,                  mirY );
    BooleanState( p3dZAxisMirror,                  mirZ );

// END DEPRECATE

// BEGIN DEPRECATE -> MappedJoint Deprecated: 08 Oct 2002

    mSkeletonMirrorEulerX = (mirX)?(-1.0f):(1.0f);
    mSkeletonMirrorEulerY = (mirY)?(-1.0f):(1.0f);
    mSkeletonMirrorEulerZ = (mirZ)?(-1.0f):(1.0f);

    MString mSMJN;
    PlugValue( mPath.node(), "p3dMappedJoint",                mSMJN);    // Deprecated 08 Oct 2002
    mSMJN = strnew( mSMJN.asChar() );

// END DEPRECATE

    PlugValue( mPath.node(), "hasVertexAnimation",            mHasVertexAnimation );
    PlugValue( mPath.node(), "hasVertexPositionAnimation",    mHasVertexPositionAnimation );
    PlugValue( mPath.node(), "hasVertexNormalAnimation",      mHasVertexNormalAnimation );
    PlugValue( mPath.node(), "hasVertexColourAnimation",      mHasVertexColourAnimation );
    PlugValue( mPath.node(), "hasVertexUVAnimation",          mHasVertexUvAnimation );

    PlugValue( mPath.node(), "vertexPositionThreshold",       mVertexPositionThreshold );
    PlugValue( mPath.node(), "vertexPositionInterpolate",     mVertexPositionInterpolate );
    PlugValue( mPath.node(), "vertexNormalThreshold",         mVertexNormalThreshold );
    PlugValue( mPath.node(), "vertexNormalInterpolate",       mVertexNormalInterpolate );
    PlugValue( mPath.node(), "vertexNormalAnimationType",     mVertexNormalUseVertexFace );
    PlugValue( mPath.node(), "vertexColourThreshold",         mVertexColourThreshold );
    PlugValue( mPath.node(), "vertexColourInterpolate",       mVertexColourInterpolate );
    PlugValue( mPath.node(), "vertexColourAnimationType",     mVertexColourUseVertexFace );
    PlugValue( mPath.node(), "vertexUVThreshold",             mVertexUvThreshold );
    PlugValue( mPath.node(), "vertexUV0Interpolate",          mVertexUv0Interpolate );
    PlugValue( mPath.node(), "vertexUV1Interpolate",          mVertexUv1Interpolate );
    PlugValue( mPath.node(), "vertexUV2Interpolate",          mVertexUv2Interpolate );
    PlugValue( mPath.node(), "vertexUV3Interpolate",          mVertexUv3Interpolate );

    PlugValue( mPath.node(), "intermediateObject",            mIsIntermediate);

    // Bug #658: Don't create STRN chunk if this is a transform whose
    // only purpose is to animate a transform for a Camera or Light.
    if ( MayaType() != MFn::kTransform )
    {
        // Don't set HasScenegraphAnimation to TRUE until a shape node
        // is found. No point animating a hierarchy of transforms that
        // control no drawable.  Is there??
        mHasScenegraphAnimation = true;

        if ( ( MayaType() != MFn::kCamera ) &&
             ( !MayaObject().hasFn( MFn::kLight ) ) &&
             ( MayaType() != MFn::kNurbsCurve )  &&
             ( MayaType() != MFn::kNurbsSurface )
           )
        {
            SceneNode* pParent = Parent();
            while ( pParent )
            {
                pParent->mHasScenegraphAnimation = true;
                pParent = pParent->Parent();
            }
        }
    }

    ComputeIsEverVisible();
}


// *****************************************************
//
// Class SceneNode
// Default Destructor
//
//
SceneNode::~SceneNode()
{
    int a;
    for (a = 0; a < mChildren.Count(); a++)
    {
        SceneNode* pChild = mChildren[a];
        delete mChildren[a];
    }


    if (mMeshVertexLookup != NULL) delete[] mMeshVertexLookup;
    strdelete(mFullNodeName);
    strdelete(mNodeName);
    mFullNodeName = NULL;
    mNodeName = NULL;

    // MEMORY LEAK PATCH: 31 May 2002
    delete mMesh;
    mMesh = NULL;
    // END MEMORY LEAK PATCH

    // MEMORY LEAK PATCH: 31 May 2002
    for ( a = 0; a < mInfluences.Count(); a++ )
    {
        delete mInfluences[a];
    }
    mInfluences.ZeroCount();
    // END MEMORY LEAK PATCH

// BEGIN DEPRECATE -> MappedJoint Deprecated: 08 Oct 2002

    strdelete(mSkeletonMirrorJointName);
    mSkeletonMirrorJointName = NULL;

// END DEPRECATE

    // MEMORY LEAK PATCH: 04 Jun 2002
    // If the tlPrimGroupMesh drawable entities have not have been added
    // to the Inventory then delete them here.
    a = mDrawables.Count();
    while ( a-- )
    {
        if ( !mDrawablesInInventory[a] )
        {
//            CDEBUG << "!! " << MayaPath().fullPathName() << "[" << InstanceNumber() << "]: Delete Drawable #" << a << ": " << mDrawables[a]->GetName() << endl;
            tlEntity* pEntity = mDrawables[a];
            delete mDrawables[a];
            mDrawables.Delete( a, 1 );
            mDrawablesInInventory.Delete( a, 1 );
        }
    }
    // END MEMORY LEAK PATCH

    // mScenegraphLightGroup is not deleted here!
    // The table of all LightGroups is deleted within ::Cleanup().

    mMaterialNodes.Delete( 0, mMaterialNodes.Count() );
}

//===========================================================================
// SceneNode::HasNamingConflict     (static)
//===========================================================================
// Description: Determines if duplicate names exist in the current
//              hierarchy.
//
// Constraints:
//
//  Parameters:
//
//      Return:
//
//===========================================================================
bool SceneNode::HasNamingConflict( void )
{
    bool                        bHasNamingConflict = false;

    tlTable<TLUID>              allNames;

    mNamingConflicts.clear();
    MDagPathArray               conflictDags;

    SceneIterator it; //iterate through all nodes
    for (; !it.Done(); it.Next() )
    {
        SceneNode* node = it.Node();

        // Don't bother user if this is going to be culled.
        if ( !node->IsEverVisible() ) continue;
        if ( node->IsIntermediateObject() ) continue;
        if ( node->IsInstance() && ( node->InstanceNumber() > 0 ) ) continue;

        TLUID                tlUID = tlEntity::MakeUID( node->Name() );

        if ( allNames.Find( tlUID ) )
        {
            mNamingConflicts.append( MString( node->Name() ) );
            conflictDags.append( node->MayaPath() );
            bHasNamingConflict = true;
        }

        allNames.Append( tlUID );
    }

    // If there's a naming conflict:
    //   A. Report conflicting names to user.
    //   B. Select clashing objects in scene so user knows where to look.
    if ( bHasNamingConflict )
    {
        MSelectionList          conflictSelection;
//        MString                 conflict;
        int                     c;

//        conflict = "Please resolve naming conflicts: { ";
        for ( c = 0; c < mNamingConflicts.length(); c++ )
        {
//            conflict += mNamingConflicts[c];
//            conflictSelection.add( conflictDags[c] );
//            if ( c < ( mNamingConflicts.length() - 1 ) )
//            {
//                conflict += ", ";
//            }

            gExportLog.Add( CExportLogEntry( ExportLog::kNamingConflict, conflictDags[c] ) );
        }
//        conflict += " }.";

//        MGlobal::displayError( conflict );
//        MGlobal::setActiveSelectionList( conflictSelection );
    }

    return bHasNamingConflict;
}

//===========================================================================
// SceneNode::Find
//===========================================================================
// Description: Returns a (SceneNode*) - a child of the World Root - whose
//              name matches the specified name.
//
// Constraints:
//
//  Parameters: const char *nodename: NULL-terminated string - the name
//                  you're looking for.
//
//      Return: (SceneNode*): Pointer to the SceneNode matching the name.
//                            NULL if no matching node is found.
//
//===========================================================================
SceneNode *SceneNode::Find(const char *nodename)
{
    if (mWorldRoot == NULL) return NULL;
    return mWorldRoot->FindChild(nodename);
}


//===========================================================================
// SceneNode::FindChild
//===========================================================================
// Description: Returns a (SceneNode*) - a child of 'this' - whose
//              name matches the specified name.
//
// Constraints:
//
//  Parameters: const char *nodename: NULL-terminated string - the name
//                  you're looking for.
//
//      Return: (SceneNode*): Pointer to the SceneNode matching the name.
//                            NULL if no matching node is found.
//
//===========================================================================
SceneNode *SceneNode::FindChild(const char *nodename)
{
    if (!strcmp(nodename, Name())) return this;
    if (!strcmp(nodename, FullName())) return this;

    int a;
    for (a = 0; a < ChildCount(); a++)
    {
        SceneNode *node = Child(a)->FindChild(nodename);
        if (node != NULL) return node;
    }

    return NULL;
}


// *****************************************************
//
// Class SceneNode
// Append Child
// returns the index of the appended child
//
int SceneNode::AppendChild(SceneNode *c)
{
    int child_id = mChildren.Count();
    mChildren.Append(c);
    return child_id;
}


// *****************************************************
//
// Class SceneNode
// Remove Child (by name)
//
//
SceneNode *SceneNode::RemoveChild(char *name)
{
    int a;
    for (a = 0; a < ChildCount(); a++)
    {
        if (!strcmp(name, mChildren[a]->Name()))
        {
            SceneNode *node = mChildren[a];
            mChildren.Delete(a, 1);
            return node;
        }
    }
    return NULL;
}


// ****************************************************
//
// Class SceneNode
// remove Child  (by node)
//
//
SceneNode *SceneNode::RemoveChild(SceneNode *node)
{
    int a;
    for (a = 0; a < ChildCount(); a++)
    {
        if (node == mChildren[a])
        {
            SceneNode *node = mChildren[a];
            mChildren.Delete(a, 1);
            return node;
        }
    }
    return NULL;
}


// *****************************************************
//
// Class SceneNode
// Add influnce Group
//
//
void SceneNode::AddInfluenceGroup(InfluenceGroup *group)
{
    mInfluences.Append(group);
}


// *****************************************************
//
// Class SceneNode
// Add Weights to mesh
//
//
void SceneNode::AddJointWeightsToMesh(char *fullmeshname, tlTriMesh *mesh, tlTable<tlIndexedSkinVertex *> *vertex_lookup)
{
    int a;
    for (a = 0; a < mInfluences.Count(); a++)
    {
        InfluenceGroup *ig = mInfluences[a];
        if (strcmp(fullmeshname, ig->mesh)) continue;


        int b;
        for (b = 0; b < ig->influences.Count(); b++)
        {

            int vertex_index = ig->influences[b].vertex;

            int num_verts = vertex_lookup[vertex_index].Count();
            int v;
            for (v = 0; v < num_verts; v++)
            {
                if (mSkeletonJointID < 0)
                {
//                    MString w;
//                    w = "Vertex ";
//                    w += vertex_index;
//                    w += " on mesh \"";
//                    w += ig->mesh;
//                    w += "\" has influences out of the skeleton (";
//                    w += Name();
//                    w += ") - Assigning to ";

                    // Check the Parent to this Joint.  If it is in a skeleton
                    // and a valid Skeleton Joint ID then use it instead.
                    SceneNode* upJoint = this->Parent();
                    if ( ( upJoint->Skeleton() != NULL ) && ( upJoint->SkeletonJointID() >= 0 ) )
                    {
                        vertex_lookup[vertex_index][v]->AddJointWeight(upJoint->SkeletonJointID(), ig->influences[b].weight);
//                        w += "parent of this Joint.";
                    }
                    else
                    // No choice.. must weight to root skeleton.
                    {
                        vertex_lookup[vertex_index][v]->AddJointWeight(0, ig->influences[b].weight);
//                        w += "Root Joint.";
                    }

//                    MGlobal::displayWarning(w);
                    gExportLog.Add( CExportLogEntry( ExportLog::kInfluenceOutsideSkeletonRemapped, ig->node->MayaPath() ) );
                }
                else
                {
                    vertex_lookup[vertex_index][v]->AddJointWeight(mSkeletonJointID, ig->influences[b].weight);
                }
            }
        }
    }
}


// *********************************************************
//
// Class Scene Node
// Influenced Mesh
// returns the name of the first influenced mesh by
// hierarchy that this node belongs to
//
char *SceneNode::InfluencedMesh(void) const
{

    if (mSkeleton == NULL) return NULL;

    int a;
    for (a = 0; a < mSmoothMeshes.Count(); a++)
    {
        if (mSmoothMeshes[a].skeleton == mSkeleton)
        {
            return mSmoothMeshes[a].node->Name();
        }
    }

    return NULL;
}


// *****************************************************
//
// Class SceneNode
// Worldspace position
//
//
void SceneNode::WorldPosition(tlPoint &p) const
{
    p = mWorldPosition;
}


// *****************************************************
//
// Class SceneNode
// Worldspace bind position
//
//
void SceneNode::BindWorldPosition(tlPoint &p) const
{
    p = mBindWorldPosition;
}


// *****************************************************
//
// Class SceneNode
// Hierarchy Matrix
//
//
void SceneNode::Matrix(tlMatrix &m) const
{
    m = mMatrix;
}


// *****************************************************
//
// Class SceneNode
// Bind Hierarchy Matrix
//
//
void SceneNode::BindMatrix(tlMatrix &m) const
{
    m = mBindMatrix;
}


// *****************************************************
//
// Class SceneNode
// World Hierarchy Matrix
//
//
void SceneNode::WorldMatrix(tlMatrix &m) const
{
    m = mWorldMatrix;
}


// *****************************************************
//
// Class SceneNode
// World Hierarchy Matrix
//
//
//void SceneNode::ScenegraphRootMatrix(tlMatrix &m) const
//{
//    m = mScenegraphRootMatrixLHS;
//}


// *****************************************************
//
// Class SceneNode
// World Hierarchy Matrix
//
//
void SceneNode::BindWorldMatrix(tlMatrix &m) const
{
    m = mBindWorldMatrix;
}


// *****************************************************
//
// Class SceneNode
// UI Scale
//
//
float SceneNode::UIScale(void)  // STATIC
{
    return (float) MDistance::internalToUI(1.0);
}


// *****************************************************
//
// Class SceneNode
// UI Scale
//
//
float SceneNode::InternalScale(void)    // STATIC
{
    return (float) MDistance::uiToInternal(1.0);
}


//*****************************************************
//
// Class SceneNode
//
//
// Returns true if object is visible at current frame
bool SceneNode::IsVisible(void) const
{
    // If the camera's transform node isn't visible then don't export it
    bool vis = false;
    bool enableoverride = true;
    bool overridevis = true;
    PlugValue( mPath.node(), "visibility", vis);
    PlugValue( mPath.node(), "overrideEnabled", enableoverride);
    PlugValue( mPath.node(), "overrideVisibility", overridevis);

    // here's the truth table for visibility in Maya
    // visibility      enableoverride      overridevis      visible?
    //     0               0                    0              0
    //     0               0                    1              0
    //     0               1                    0              0
    //     0               1                    1              0
    //     1               0                    0              1
    //     1               0                    1              1
    //     1               1                    0              0
    //     1               1                    1              1


    return vis && (!enableoverride || overridevis);
    // An object is visible if it's visibility flag is set
    // and either override is not enabled or override visibility is true

}


// *****************************************************
//
// Class SceneNode
// returns true if object is ever visible
//
//
bool SceneNode::ComputeIsEverVisible( void )
{

    if (mIsIntermediate) return false;

    bool visible = IsVisible();

    MStatus     status;
    MPlug visplug = mFnDag.findPlug("visibility", &status);

    bool connected  = visplug.isConnected();

    // check if this object is on a hidden layer

    bool enableoverride = true;
    bool overridevis = true;
    PlugValue( mPath.node(), "overrideEnabled", enableoverride);
    PlugValue( mPath.node(), "overrideVisibility", overridevis);
    if(enableoverride && !overridevis)
    {
        mIsEverVisible = false;
        return false;
    }

    //
    // Test and set if animated
    //
    MObjectArray anims;
    bool isanimated = MAnimUtil::findAnimation(visplug, anims);

    if (!isanimated)
    {
        mIsEverVisible = visible;
        return visible;
    }
    else
    {
        // *** TO DO: If incoming is animCurve, check that more than
        //            a single key has been set; else not animated.
        mIsVisibilityAnimated = true;
    }

    // if it is visible now, it must be visible sometime!
    if (visible)
    {
        mIsEverVisible = visible;
        return visible;
    }

    // If the visibility plug isn't connected its current
    // visibility state is permanent
    if (!connected)
    {
        mIsEverVisible = visible;
        return visible;
    }

    MFnAnimCurve anim(anims[0]);

    unsigned int a;
    for (a = 0; a < anim.numKeys(); a++)
    {
        bool animvis = (0.5 < anim.value(a));
        if (animvis)
        {
            mIsEverVisible = true;
            return true;
        }
    }

    mIsEverVisible = false;
    return mIsEverVisible;
}


/*  ****** PlugValue -- all overloads replaced by template function in scene.hpp ******

// *****************************************************
//
// Class SceneNode
//
//
bool SceneNode::PlugValue(char *plugname, int &value) const
{
    MStatus status;
    MPlug plug = mFnDag.findPlug(plugname, &status);
    if (status != MS::kSuccess) return false;

#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MPlug::getValue( long & )
    long                        lval;
#else
// Maya v4 declares MPlug::getValue( int & )
    int                         lval;
#endif

    status = plug.getValue(lval);
    if (status != MS::kSuccess) return false;

    value = (int) lval;
    return true;
}


// *****************************************************
//
// Class SceneNode
//
//
bool SceneNode::PlugValue(char *plugname, bool &value) const
{
    MStatus status;
    MPlug plug = mFnDag.findPlug(plugname, &status);
    if (status != MS::kSuccess) return false;

    status = plug.getValue(value);
    if (status != MS::kSuccess) return false;

    return true;
}


// *****************************************************
//
// Class SceneNode
//
//
//
bool SceneNode::PlugValue(char *plugname, char *&value) const
{
    MStatus status;
    MPlug plug = mFnDag.findPlug(plugname, &status);
    if (status != MS::kSuccess) return false;

    MString string;
    status = plug.getValue(string);
    if (status != MS::kSuccess) return false;

    value = strnew(string.asChar());

    return true;
}


// *****************************************************
//
// Class SceneNode
//
//
bool SceneNode::PlugValue(char *plugname, float &value) const
{
    MStatus status;
    MPlug plug = mFnDag.findPlug(plugname, &status);
    if (status != MS::kSuccess) return false;

    status = plug.getValue(value);
    if (status != MS::kSuccess) return false;

    return true;
}


// *****************************************************
//
// Class SceneNode
//
//
bool SceneNode::PlugValue(char *plugname, double &value) const
{
    MStatus status;
    MPlug plug = mFnDag.findPlug(plugname, &status);
    if (status != MS::kSuccess) return false;

    status = plug.getValue(value);
    if (status != MS::kSuccess) return false;

    return true;
}

*/

//===========================================================================
// SceneNode::BooleanState
//===========================================================================
// Description: Determines the on|off state of a Pure3D bitflag stored in 
//              the multi-purpose ".p3dBooleanAttribute" attribute.
//
// Constraints: This single attribute is used for multi-bit querying because
//              a Maya limitation prevents the required number of dynamic
//              attributes being added to a single node.  Therefore they were
//              collapsed into this single bitflag.
//
// Parameters:  const int plugId: The position (bit) for the flag to query.
//              bool& value: Storage for the on|off state of the flag.
//
// Return:      (bool): TRUE if plug found and queried successfully;
//                      else FALSE.
//
//===========================================================================
bool SceneNode::BooleanState(const int plugId, bool &value) const
{
    MStatus status;
    MPlug plug = mFnDag.findPlug("p3dBooleanAttributes", &status);
    if (status != MS::kSuccess) return false;

#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MPlug::getValue( long & )
    long                        longvalue;
#else
// Maya v4 declares MPlug::getValue( int & )
    int                         longvalue;
#endif

    status = plug.getValue(longvalue);
    if (status != MS::kSuccess) return false;

    value = ((longvalue & plugId) != 0);

    return true;
}


// *****************************************************
//
// CLass SceneNode
// Is Smooth Bound
//
bool SceneNode::IsSmoothBound(int *index) const
{
    int a;
    for (a = 0; a < mSmoothMeshes.Count(); a++)
    {
        if (!strcmp(FullName(), mSmoothMeshes[a].meshname))
        {
            if (index != NULL) *index = a;
            return true;
        }
    }

    return false;
}


// *****************************************************
//
// Class SceneNode
// RestoreBindPose
//
void SceneNode::RestoreBindPose(void)
{
    MStatus status;

    MItDag it(MItDag::kDepthFirst, MFn::kJoint, &status);
    if (!status)
        return;

    // Find the joints and restore the associated bindPose
    for ( ; !it.isDone(); it.next())
    {
        MFnDependencyNode node(it.item(), &status);
        if (!status)
            continue;

        MPlug plug = node.findPlug("bindPose", &status);
        if (!status)
            continue;

        // find all connections to the "bindPose" attribute
        MPlugArray plugArray;
        if (plug.connectedTo(plugArray, false, true, &status))
        {
            if (!status)
                continue;

            for (unsigned i = 0; i < plugArray.length(); ++i)
            {
                MPlug otherPlug = plugArray[i];
                MObject otherObject = otherPlug.node(&status);
                if (!status)
                    continue;

                // if this is a dagPose, then it's probably the bindPose
                if (otherObject.hasFn(MFn::kDagPose))
                {
                    MString command = "dagPose -r -bp ";
                    command += it.fullPathName(&status);
                    if (!status)
                        continue;

                    status = MGlobal::executeCommand(command, false, false );
                    if ( status != MS::kSuccess )
                    {
                        MDagPath                dagNoPose;
                        it.getPath( dagNoPose );
                        gExportLog.Add( CExportLogEntry( ExportLog::kUnableToAchieveBindPose, dagNoPose ) );
                    }
                    break;
                }
            }
        }
    }
}


// *****************************************************
//
// Class SceneNode
// Disable Dynameics
//
void SceneNode::DisableDynamics(void)
{
    MString command = "setState all off;";
    MGlobal::executeCommand(command);

    // v17.0 - 25 Apr 2002
    // Bug fix: Between Maya v3 and Maya v4 the use of the 'autoKeyframe' command changed
    //          ever so slightly.  It now requires the -state flag along with the -q flag.
    command = "autoKeyframe -q -state";
    int result;
    MGlobal::executeCommand(command, result);

    mMayaAutoKeyframeEnabled = (result != 0);
    if (mMayaAutoKeyframeEnabled)
    {
        command = "autoKeyframe -state off";
        MGlobal::executeCommand(command);
    }

}


// *****************************************************
//
// Class SceneNode
// Enable Dynamics
//
void SceneNode::EnableDynamics(void)
{
    // NOTE: There is NO EASY WAY to implement a "restore to initial state"
    //       behavior, as the enable state is stored on every individual
    //       node.  The Maya 'setState' script is a convenient blanket
    //       statement that twiddles each node ON or OFF explicitly.
    MString command = "setState all on;";
    MGlobal::executeCommand(command);

    if (mMayaAutoKeyframeEnabled)
    {
        command = "autoKeyframe -state on";
        MGlobal::executeCommand(command);
        mMayaAutoKeyframeEnabled = false;
    }
}


//===========================================================================
// SceneNode::Build         (static)
//===========================================================================
// Description: Builds the SceneNode heirarchy.
//
//              The specified MDagPathArray should be a list of all
//              top-level DAGs that need to be exported (in other words,
//              the list should not contain any DAGs which are children of
//              other DAGs in the list).
//
//              The SceneNode has one and only one mWorldRoot variable, so the
//              heirarchy is built such that the first DAG in the list is
//              considered the WorldRoot, and all remaining DAGs are added
//              as children to this root SceneNode.
//
// Constraints: This adds only DAG nodes - not DG nodes!!  If you've
//              developed a custom DG node it can NOT be added to the
//              SceneNode heirarchy here!
//
// Parameters:  MDagPathArray& selection: An array of DAGs to add to the
//                  SceneNode heirarchy.  All DAGs should represent a
//                  unique "entry point" to its heirarchy; in other words,
//                  no DAG in the list should be a child of another DAG.
//
// Return:      (void)
//
//===========================================================================
MStatus SceneNode::Build(MDagPathArray &selection)
{
    MStatus                             status = MS::kSuccess;

    // Clear all of the static stuff first
    mSmoothMeshes.ZeroCount();

    unsigned int                        dag;
    bool                                bFoundValidRoot = false;

    // Regardless of what the user has or has not selected,
    // we need a WorldRoot.  Use Maya's "world" object for this.
    MItDag                      itDag( MItDag::kBreadthFirst );
    MDagPath                    dagPath;
    itDag.getPath( dagPath );

    mWorldRoot = new SceneNode( dagPath );

    // If Export All then the first (and only) node in the CMayaDagSelection
    // will be Maya's world root, which is currently loaded in 'dagPath'.
    // In this case just export from here.
    if ( ( selection.length() == 1 ) && ( selection[0] == dagPath ) )
    {
        mWorldRoot->BuildChildren();
    }

    else
    for ( dag = 0; dag < selection.length(); dag++ )
    {
//          if ( !bFoundValidRoot )
//          {
//                mWorldRoot = new SceneNode( selection[dag] );
//
//                // If this node is never visible, don't use it as WorldRoot
//                if ( !( mWorldRoot->NoCull() || mWorldRoot->IsEverVisible() ) )
//                {
//                     delete mWorldRoot;
//                     mWorldRoot = NULL;
//                     continue;
//                }
//
//                bFoundValidRoot = true;
//                mWorldRoot->BuildChildren();
//
//                // If the exporter options request that the entire world be a scenegraph, force it
//                if (ExporterOptions::ExportNISScenegraph())
//                {
//                    mWorldRoot->mScenegraphRoot = true;
//                }
//          }
//          else

        SceneNode*                  sn;
        sn = new SceneNode( selection[dag], mWorldRoot );
        sn->mIsInScenegraph = sn->mScenegraphRoot;
        mWorldRoot->AppendChild( sn );
        sn->BuildChildren();
    }

//     if ( !bFoundValidRoot )
//     {
//          status = MS::kFailure;
//     }

     return status;
}


//===========================================================================
// SceneNode::BuildChildren
//===========================================================================
// Description: Traverses the Maya heirarchy for the DAG represented by this
//              SceneNode object, recursively creating new SceneNode objects
//              and adding these as children to this one.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void SceneNode::BuildChildren()
{
    MDagPath                            dagParent = this->MayaPath();

    MFnDagNode                          fnParent( dagParent );

    unsigned int numchildren = fnParent.childCount();

    unsigned int a;
    for (a = 0; a < numchildren; a++)
    {
        // get the child object
        MStatus status;
        MObject child = fnParent.child(a, &status);
        if (status != MStatus::kSuccess) continue;

        MFnDagNode                      fnChild(child, &status);
        if (status != MStatus::kSuccess) continue;
        if (fnChild.inUnderWorld()) continue; // Don't include the UnderWorld in our graph

        // create a dag path to the child and create the child scenenode
//        status = childpath.push(child);
//        if (status != MStatus::kSuccess) continue;

        MDagPath                        dagChild;
        fnChild.getPath( dagChild );

        // Because MFnDagNode::parent() returns an MObject and
        // not a MDagPath I lose the full path in the case where
        // I am dealing with an instanced shape.
        // Here I loop through all of the paths for the object..
        MDagPathArray                allPaths;
        fnChild.getAllPaths( allPaths );
        unsigned int p;
        for ( p = 0; p < allPaths.length(); p++ )
        {
            // Now whichever of these paths has 'dagParent' (see above)
            // as its parent is the path I should use.
            MDagPath            dagUp( allPaths[p] );
            dagUp.pop();
            if ( dagUp == dagParent )
            {
                dagChild = allPaths[p];
                break;
            }
        }

        // Now I have the full path to the object respecting its
        // true hierarchy and retaining its instance index.

        if ( ShouldSkipDAG( dagChild ) )
        {
            continue;
        }

        SceneNode *childnode = new SceneNode( dagChild, this );
        // Inherits parent's InScenegraph state if not a Scenegraph of its own.
        if ( !childnode->mIsInScenegraph ) childnode->mIsInScenegraph = this->mIsInScenegraph;

//        childpath.pop();

        // add the new node to our children list then build its children
        AppendChild(childnode);
        childnode->BuildChildren();
    }
}


//===========================================================================
// SceneNode::ShouldSkipDAG       (static)
//===========================================================================
// Description: Determines if the specified DAG should be excluded from
//              exporting.  Maya's internal "groundPlane" object is one
//              of these, for example.
//
// Constraints: Only top-level DAGs (those whose dagtPath has a depth
//              of 1) need to be included in this query.
//
// Parameters:  const MDagPath& dag: The DAG to check.
//
// Return:      (bool): TRUE if the specified DAG should be excluded;
//                      FALSE if it may be processed normally.
//
//===========================================================================
bool SceneNode::ShouldSkipDAG( const MDagPath& dag )
{
    const unsigned int kNumNames = 2;
    const char* skipNames[kNumNames] =
    {
        "|groundPlane_transform",
        "|p3dExporterOptions1"
    };
    const unsigned int kNumTypes = 1;
    const MTypeId skipTypes[kNumTypes] =
    {
        P3D_EXPORTER_OPTIONS_ID,
    };
    const unsigned int kNumAPITypes = 8;
    const MFn::Type skipAPITypes[kNumAPITypes] =
    {
        MFn::kAimConstraint,
        MFn::kOrientConstraint,
        MFn::kScaleConstraint,
        MFn::kPointConstraint,
        MFn::kPoleVectorConstraint,
        MFn::kGeometryConstraint,
        MFn::kTangentConstraint,
        MFn::kNormalConstraint
    };

    bool                        bSkipDAG = false;

    MString                     dagName = dag.fullPathName();
    unsigned int                n;

    MFnDependencyNode           fnDependNode( dag.node() );

    for ( n = 0; n < kNumNames; n++ )
    {
        if ( dagName == skipNames[n] )
        {
            bSkipDAG = true;
            break;
        }
    }

    for ( n = 0; n < kNumTypes; n++ )
    {
        if ( ( fnDependNode.typeId() == skipTypes[n] ) ||
             ( ( dag.childCount() == 1 ) && ( MFnDependencyNode(dag.child(0)).typeId() == skipTypes[n] ) )
           )
        {
            bSkipDAG = true;
            break;
        }
    }

    for ( n = 0; n < kNumAPITypes; n++ )
    {
        if ( dag.node().apiType() == skipAPITypes[n] )
        {
            bSkipDAG = true;
            break;
        }
    }

    return bSkipDAG;
}

//===========================================================================
// SceneNode::CullInvisibleNodes
//===========================================================================
// Description: Traverses the current SceneNode heirarchy and finds all nodes
//              which are never visible within the time range shown in Maya's
//              Range Slider.  When such a node is found it is deleted from
//              the SceneNode heirarchy (all of its children are deleted
//              as well), the SceneIterator is reset and restarted.
//
// Constraints: This current algorithm is O(n^2).  Perhaps it should be rewritten?
//
//              It is possible that the WorldRoot may never be visible.  If
//              such is the case then the entire tree will be deleted.
//              Limitations within the SceneIterator make this a "bad thing"
//              so in this special case the WorldRoot is set to NULL and
//              the iterator is aborted.
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void SceneNode::CullInvisibleNodes(void)
{

    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();

        if (node->NoCull()) continue;
        if (node->IsEverVisible()) continue;

        SceneNode *parent = node->Parent();
        if (parent != NULL) parent->RemoveChild(node);

        // Delete the node and all of its children
        delete node;

        // Added by Bryan Ewert on 06/11/2001
        // If the node we've deleted is the World Root, break out
        if ( node == mWorldRoot )
        {
          mWorldRoot = NULL;
          break;
        }

        // We have just hooped the hierarchy, start over
        it.Reset();
    }
}


// *********************************************
//
// Class SceneNode
// Cleaup
//
//
void SceneNode::Cleanup(void)
{
    if (mWorldRoot != NULL) delete mWorldRoot;
    mWorldRoot = NULL;
    AnimNode::Reset();

    // MEMORY LEAK PATCH: 31 May 2002
    size_t i;
    for ( i = 0; i < mScenegraphLightGroupTable.Count(); i++ )
    {
        // Only delete LightGroups that have NO LIGHTS.
        // If a LightGroup has any lights it will have been added to
        // the Inventory and will still be required!
        // (Yes, this is lame.. I'm hoping to change it in future.)
        if ( mScenegraphLightGroupTable[i]->NumberOfLights() == 0 )
        {
            delete mScenegraphLightGroupTable[i];
        }
    }
    mScenegraphLightGroupTable.ZeroCount();
    // END MEMORY LEAK PATCH
    // If user has aborted in the middle of Skins processing
    // then the Exporter will have disabled Dynamics.
    // Turn them on before bailing.
    EnableDynamics();
}


// ************************************************
//
// Class SceneNode
// Build Matrices
//
void SceneNode::BuildMatrices(void)
{
    if (mWorldRoot == NULL) return;
    mWorldRoot->BuildChildMatrices();
}


// ************************************************
//
// Class SceneNode
// Build Child Matrices
//
void SceneNode::BuildChildMatrices(void)
{
    MStatus status;

    // --------  Build local transformations from this DAG  --------

    TransformMatrix tm(mPath);

    // --------  Warn user of undesired matrix behaviors  --------

    if ( (tm.GetShearXY() != 0.0f) ||
         (tm.GetShearXZ() != 0.0f) ||
         (tm.GetShearYZ() != 0.0f) )
    {
//        MString msg = "Transform \"";
//        msg += mNodeName;
//        msg += "\" contains shear; skeletons may not export correctly";
//        MGlobal::displayWarning(msg);
        gExportLog.Add( CExportLogEntry( ExportLog::kContainsShear, this->MayaPath() ) );
    }

    if ( tm.HasNegativeScale() )
    {
//        MString msg = "Transform \"";
//        msg += mNodeName;
//        msg += "\" has negative scale; Normals may not export correctly";
//        MGlobal::displayWarning(msg);
        gExportLog.Add( CExportLogEntry( ExportLog::kNegativeScale, this->MayaPath() ) );
    }

    // --------  Get LHS local matrix  --------

    tm.GetHierarchyMatrixLHS(mMatrix);

//    CDEBUG << "SceneNode::BuildChildMatrices() -> GetHierarchyMatrixLHS of " << this->Name() << endl;
//    mMatrix.Print(0,4);

    // --------  If this is a Scenegraph root, build world-space matrix from DAG          --------
    // --------  This will serve as the root transformation for the Scenegraph            --------
    // --------  NOTE: This is potentially different than mWorldMatrix. If the user       ---------
    // --------        Exports Selected from mid-point in a hierarchy then the SceneNode  ---------
    // --------        will not represent the DAGs above the Scenegraph node.             ---------

//    if ( this->IsValidScenegraphRoot() )
//    {
//        mScenegraphRootMatrixLHS = mMatrix;
//
//        MDagPath                dagTransform( mPath );
//        tlMatrix                popMatrix;
//
//        dagTransform.pop();
//
//        while ( dagTransform.length() > 0 )
//        {
//            // Concatenate matrix transformations as we ascend.
//            tm.Assign( dagTransform );
//            tm.GetHierarchyMatrixLHS( popMatrix );
//            CDEBUG << "SceneNode::BuildChildMatrices() -> POP matrix: " << dagTransform.fullPathName() << endl;
//            popMatrix.Print(0,4);
//            mScenegraphRootMatrixLHS = mScenegraphRootMatrixLHS * popMatrix;
//            dagTransform.pop();
//        }
//    }

    // --------  Store the world-space position for the object.  --------

    MMatrix inMatrix = mPath.inclusiveMatrix(&status);
    if (status)
    {
        mWorldPosition.x = (float)inMatrix(3, 0);
        mWorldPosition.y = (float)inMatrix(3, 1);
        mWorldPosition.z = -(float)inMatrix(3, 2);
    }

    // --------  If this object is a child, move its world position relative to its parent  --------
    // --------  NOTE: This relies on a suitable matrix stored in the parent SceneNode!  --------
    // --------  NOTE: If this node is a Scenegraph root then retain its absolute coordinates  --------

    tlMatrix parentMatrixLHS;

    if ( ( mParent != 0 ) ) // && !this->IsValidScenegraphRoot() )
    {
        mParent->WorldMatrix(parentMatrixLHS);

        tlMatrix invParent = Inverse(parentMatrixLHS);
        tlPoint thisPos = mWorldPosition * invParent;
        mMatrix.SetRow(3, thisPos);
    }

    // --------  The LHS world matrix for this object is the LHS local matrix post-multiplied by the parent's LHS world matrix  --------
    // --------  NOTE: This relies on a suitable matrix stored in the parent SceneNode!  --------
    // --------        If there is no parent then parentMatrixLHS will be the identity matrix here.  --------

//CDEBUG << "SceneNode::BuildChildMatrices() -> Child world matrix for " << this->Name() << endl;
//mMatrix.Print(0,4);
//CDEBUG << "×" << endl;
//parentMatrixLHS.Print(0,4);

    mWorldMatrix = mMatrix * parentMatrixLHS;

//CDEBUG << "=" << endl;
//mWorldMatrix.Print(0,4);
//CDEBUG << endl;


    int a;
    for (a = 0; a < mChildren.Count(); a++)
    {
        mChildren[a]->BuildChildMatrices();
    }
}


// ***********************************************
//
// Class SceneNode
// Build Bind Matrices
//
void SceneNode::BuildBindMatrices(void)
{
    if (mWorldRoot == NULL) return;
    mWorldRoot->BuildChildBindMatrices();
}


// ***********************************************
//
// Class SceneNode
// Build Child Bind
//
void SceneNode::BuildChildBindMatrices(void)
{
    MStatus status;

    TransformMatrix tm(mPath);
    if ((tm.GetShearXY() != 0.0f) ||
         (tm.GetShearXZ() != 0.0f) ||
         (tm.GetShearYZ() != 0.0f))
    {
//        MString msg = "Transform ";
//        msg += mNodeName;
//        msg += " contains shear; skeletons may not export correctly";
//        MGlobal::displayWarning(msg);
        gExportLog.Add( CExportLogEntry( ExportLog::kContainsShear, this->MayaPath() ) );
    }
    tm.GetHierarchyMatrixLHS(mBindMatrix);

    MMatrix inMatrix = mPath.inclusiveMatrix(&status);
    if (status)
    {
        mBindWorldPosition.x = (float)inMatrix(3, 0);
        mBindWorldPosition.y = (float)inMatrix(3, 1);
        mBindWorldPosition.z = -(float)inMatrix(3, 2);
    }

    tlMatrix parentMatrix;

    if (mParent != 0)
    {
        mParent->BindWorldMatrix(parentMatrix);

        tlMatrix invParent = Inverse(parentMatrix);
        tlPoint thisPos = mBindWorldPosition * invParent;
        mBindMatrix.SetRow(3, thisPos);
    }

    mBindWorldMatrix = mBindMatrix * parentMatrix;

    int a;
    for (a = 0; a < mChildren.Count(); a++)
    {
        mChildren[a]->BuildChildBindMatrices();
    }
}


// ******************************************************
//
// Class Scenenode
// Build Finds the concatenated matricies between nodes
//
void SceneNode::BindMatrixToParent( const SceneNode* parent, tlMatrix& transform ) const
{

    const SceneNode* currentChild = this;
    transform.IdentityMatrix();
    tlMatrix currentTransform;

    //
    // Go up the hierarchy until I find a non-joint parent or a parent with a bn or
    // bv as its first child.
    // Accumulate transforms as I go
    //
    while( currentChild != SceneNode::WorldRoot() && currentChild != parent)
    {
        //
        // Accumulate matrices
        //
        currentChild->BindMatrix( currentTransform );
        transform = transform * currentTransform;

        currentChild = currentChild->Parent();
    }
}


// ******************************************************
//
// Class Scenenode
// Build Skeletons
//
void SceneNode::BuildSkeletons(void)
{
    if (mWorldRoot == NULL) return;

    mWorldRoot->FindSkeletonRoots();

    //
    // Get the sorting done earlier... sort ALL skeletons
    //
    tlInventory::Iterator<tlSkeleton> skeletonIT(mInventory);

    tlSkeleton* currSkeleton = skeletonIT.First();
    while(currSkeleton)
    {
        currSkeleton->Sort();
        currSkeleton = skeletonIT.Next();
    }

    //
    // Re-Index all skeletonJoints
    //
    SceneIterator it;
    for (; !it.Done(); it.Next())
    {
        SceneNode* node = it.Node();
        assert(node);

        if(currSkeleton = node->Skeleton())
        {
            int skeletonJointIndex = currSkeleton->GetSortedJointIndex(node->SkeletonJointID());
            node->mSkeletonJointID = skeletonJointIndex;
        }
    }
}


// ****************************************************
//
// Class SceneNode
// Find Skeleton Roots
//
void SceneNode::FindSkeletonRoots(void)
{
    if (mTraversalStop) return;
    if (mProcessed) return;

    if ( IsValidSkeletonRoot() )
    {
        mSkeleton = new tlSkeleton;
        mSkeleton->SetName(Name());
        mSkeletonJointID = 0;

// ** BEGIN OBSOLETE ** Old school -- should use AnimNode class for all animation now.
//        tlPoseAnim *anim = NULL;
//        tlPoseVisAnim *visAnim = NULL;
//
//        if (ExporterOptions::ExportAnimations())
//        {
//            // ** Animation now via AnimNode:  see ::BuildChildSkeleton()
//            //
//
//            anim = new tlPoseAnim;
//            char animname[256];
//            ExporterOptions::BuildAnimationName( kPoseAnimationMode, Name(), animname );
//            anim->SetName(animname);
//
//            clog << " ++ Allocated tlPoseAnim @ " << hex << anim << dec << endl;
//
//            //
//            // Make a visibility animation for this skeleton...
//            // This will animate a tCompositeDrawable
//            //
//
//            if( ExporterOptions::ExportVisibilityAnimations() )
//            {
//                // ** Animation now via AnimNode:  see ::BuildChildSkeleton()
//                //
//
//                // new tlAnimation : uses tlInventory::Store() * with FrameController
//                visAnim = new tlPoseVisAnim;
//                char visName[256];
//                ExporterOptions::BuildAnimationName( kPoseVisibilityAnimationMode, Name(), visName );
//                visAnim->SetName(visName);
//
//                clog << " ++ Allocated tlPoseVisAnim @ " << hex << visAnim << dec << endl;
//            }
//
//        }
// ** END OBSOLETE **

        this->BuildChildSkeleton( this );   // OBSOLETE -> , anim, visAnim);

        float uiscale = UIScale();
        mSkeleton->Scale(uiscale, uiscale, uiscale);

        if (!IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
        {
            mInventory->Store(mSkeleton);
        }
    }
    else
    {
        int a;
        for (a = 0; a < ChildCount(); a++)
        {
            Child(a)->FindSkeletonRoots();
        }
    }
}


// *****************************************************
//
// Class SceneNode
// BuildChildSkeleton
//
//
void SceneNode::BuildChildSkeleton( SceneNode *parent )  // OBSOLETE -> , tlPoseAnim *anim, tlPoseVisAnim *visAnim)
{
    if (mTraversalStop && (this != parent)) return;
    if (mProcessed) return;

    bool skelnode = false;
    bool ikjoint = false;   // temporary hack for getting IK

    if (mPath.apiType() == MFn::kJoint)     skelnode = true;
    if (mPath.apiType() == MFn::kTransform) skelnode = true;
    if (mPath.apiType() == MFn::kLodGroup)  skelnode = true;
    if (mPath.apiType() == MFn::kIkHandle)   { skelnode = true; ikjoint = true; }
    if (mChildren.Count()>0)
    {
        if (mChildren[0]->MayaTypeId() == EMITTER_ID)
        {
            mNotInSkeleton = true;
        }
        else if (mChildren[0]->MayaTypeId() == P3D_BILLBOARD_QUAD_ID)
        {
            if (mParent->mChildren.Count()>0)
            {
                if (mParent->mChildren[0]->MayaTypeId() == P3D_BILLBOARD_QUAD_GROUP_ID)
                {
                    mNotInSkeleton = true;
                }
            }
        }
        else if ( ( mChildren[0]->MayaTypeId() == P3D_BOUNDING_VOLUME_ID ) || ( mChildren[0]->MayaTypeId() == P3D_BOUNDING_VOLUME_ID ) )
        {
            mNotInSkeleton = true;
        }
    }

    // If the node isn't a joint or transform but a mesh AND the node isn't marked
    // with a traversal AND its parent is part of a hierarchy, AND this node is a mesh,
    // then this node is actually part of the hierarchy at the same joint ID as its parent.
    // This makes generating compound meshes much easier
    // WHEW!
    //
    if(!skelnode)
    {
        if ((mPath.apiType() == MFn::kMesh) && (parent->Skeleton() != NULL))
        {
            mSkeleton = parent->Skeleton();
            mSkeletonJointID = parent->SkeletonJointID();
//            clog << "  -> Reassigning JointID to parent: #" << mSkeletonJointID << endl;

            if(parent->IsNotInSkeleton())
            {
                this->mNotInSkeleton = true;
            }
        }
        return;
    }
    else if(IsNotInSkeleton())
    {
        //
        // Addition... the user flags this joint as not being part of the
        // skeleton... then it still needs to reference the appropriate
        // joint in the skeleton.
        //
        if(parent->Skeleton() != NULL)
        {
            mSkeleton = parent->Skeleton();
            mSkeletonJointID = parent->SkeletonJointID();

            //
            // Flag any child Mesh
            //
            if( ( this->ChildCount() > 0 ) && ( Child(0)->mPath.apiType() == MFn::kMesh ) )
            {
                Child(0)->mNotInSkeleton = true;
                Child(0)->mSkeleton = parent->Skeleton();
                Child(0)->mSkeletonJointID = parent->SkeletonJointID();
            }
        }
        return;
    }

    // If this Joint has a Sort Order specified, or if this Joint's parent has
    // a Sort Order specified (or enforced by the Exporter), AND
    // if this Joint's Sort Order does not increment that of its parent,
    // adjust to incremental and flag a warning
    if (
            ( ( this->mExtraJointSortOrder > 0 ) || ( parent->mExtraJointSortOrder > 0 ) ) &&
            ( this->mExtraJointSortOrder <= parent->mExtraJointSortOrder )
        )
    {
//        MString                 warning;
//        warning = "Non-incremental Sort Order specified for \"";
//        warning += this->Name();
//        warning += "\". Adjusting to: ";
//        warning += ( parent->mExtraJointSortOrder + 1 );
//
//        MGlobal::displayWarning( warning );

        gExportLog.Add( CExportLogEntry( ExportLog::kInvalidSortOrder, this->MayaPath() ) );

        this->mExtraJointSortOrder = ( parent->mExtraJointSortOrder + 1 );
    }

    mProcessed = true;

    int parent_joint_id;
    mSkeleton = parent->Skeleton();
    parent_joint_id = parent->SkeletonJointID();

    tlSkeletonJoint *joint = new tlSkeletonJoint;
    joint->SetName(Name());
    joint->SetParent(parent_joint_id);

    tlMatrix bind_pose = mBindMatrix;

    joint->SetRestPose(bind_pose);
    joint->SetPreserveBoneLengths(mPreserveBoneLength);
    joint->SetEndSortPriority(mExtraJointSortOrder);

// BEGIN DEPRECATE -> MappedJoint Deprecated: 08 Oct 2002

    if(mSkeletonMirrorJointName == NULL)
    {
        // SUPPRESS this warning .. it doesn't mean anything anymore.
    //    gExportLog.Add( CExportLogEntry( ExportLog::kMappedJointNotSpecified, this->MayaPath() ) );

        joint->SetMappedJointName(mNodeName);
    }
    else
    {
        joint->SetMappedJointName(mSkeletonMirrorJointName);
    }

    joint->SetXAxisMap(mSkeletonMirrorEulerX);
    joint->SetYAxisMap(mSkeletonMirrorEulerY);
    joint->SetZAxisMap(mSkeletonMirrorEulerZ);

// END DEPRECATE

    mSkeletonJointID = mSkeleton->AddJoint(joint);

    if (ExporterOptions::ExportAnimations())
    {
        // Allocate new SkeletonAnimNode
        AnimNode* pAnimNode = new SkeletonAnimNode(this);
        pAnimNode->SetIsCyclic( this->IsCyclic() );
        AnimNode::AddNode(pAnimNode);

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//        //
//        // Set Mirrored Animation data
//        //
//        if(ExporterOptions::ExportMirroredAnim())
//        {
//            pAnimNode->SetIsMirrored( true );
//        }

// END DEPRECATE

        // Set "hint" on AnimNode object as to what type of Visibility Animation to generate.
        if ( ExporterOptions::ExportVisibilityAnimations() ) // && ( mSkeletonJointID == 0 ) )
        {
            pAnimNode->SetVisibilityType( AnimNode::kVisibilityTypePose );
        }
    }

    // If this node is the start of a scenegraph, include it but don't include its children
//    if (IsScenegraphRoot()) return;

    int a;
    for (a = 0; a < ChildCount(); a++)
    {
        Child(a)->BuildChildSkeleton( this ); // OBSOLETE -> , anim, visAnim);
    }
}


// ***************************************************
//
// Class SceneNode
// Build SceneGraphs
//
//
void SceneNode::BuildScenegraphs(void)
{
    CMayaDagSelection& dagSelection = SceneNode::DagSelection();

    MDagPathArray           dagArray;

    if ( ExporterOptions::ExportNISScenegraph() )
    {
        int numChildren = SceneNode::WorldRoot()->ChildCount();

        SceneNode** ppNodes = new SceneNode* [numChildren];

        for ( int c = 0; c < numChildren; c++ )
        {
            ppNodes[c] = SceneNode::WorldRoot()->Child( c );
        }

// #pragma message( " ------------  RELEASE: Remove the single WorldRoot Scenegraph and replace with (SceneNode**) array  ------------" )
//        SceneNode* pRoot = SceneNode::WorldRoot();
        tlScenegraph* psg = CExporterScenegraph::CreateScenegraph( ExporterOptions::NISScenegraphName(), ppNodes, numChildren, SceneNode::Inventory() );

        delete [] ppNodes;
    }

    // If an NIS Scenegraph was created, these would have been created in the process.
    else
    {

        SceneIterator           it;
        for ( /* nothing */; !it.Done(); it.Next() )
        {
            if ( it.Node()->IsScenegraphRoot() )
            {
                CDEBUG << "Build Scenegraph for: " << it.Node()->MayaPath().partialPathName().asChar() << endl;

//                tlMatrix m;
//                it.Node()->WorldMatrix(m);
//                m.Print(0,4);

                tlScenegraph* psg = CExporterScenegraph::CreateScenegraph( it.Node(), SceneNode::Inventory() );
            }
        }

// ** This was rather pointless. This would only detect Scenegraph nodes if they
//    were tagged on the selected items. Items below the root hierarchies would
//    never know they are supposed to be Scenegraphs.
// ?? I wish I'd made note of my logic for doing it this way....

//        unsigned int d;
//        dagSelection.GetDags( dagArray );
//        for ( d = 0; d < dagArray.length(); d++ )
//        {
//            CDEBUG << "Build Selected - Scenegraph -> Looking for: " << dagArray[d].partialPathName() << endl;
//            SceneNode* node = SceneNode::Find( dagArray[d].partialPathName().asChar() );
//            if ( node != NULL )
//            {
//                if ( node->IsScenegraphRoot() )
//                {
//                    tlScenegraph* psg = CExporterScenegraph::CreateScenegraph( node, SceneNode::Inventory() );
//    //                SceneNode::Inventory()->Store( psg );
//                }
//            }
//        }
    }

//    SceneIterator it;
//    for (; !it.Done(); it.Next())
//    {
//        SceneNode *node = it.Node();
//        if (node->IsScenegraphRoot()) node->BuildChildScenegraph(node);
//    }
}



// ***************************************************
//
// Class SceneNode
// Build Joint Weights
//
//
void SceneNode::BuildJointWeights(void)
{

    if (mWorldRoot == NULL) return;

    MStatus status;

    MItDependencyNodes scit(MFn::kSkinClusterFilter);

    // Iterate through all of the skin cluster in Maya space
    while (!scit.isDone())
    {
        MObject scobj = scit.item();

        // Mesh node should be immediately downstream of skinCluster.
        // If not then there is additional construction history that may affect 
        // the topology for the deformed mesh. This is a NO-NO!
        // (See "deformerExpression.cpp" for SkinClusterHasDownstreamTopologyChange() source.)
        bool bHasTopologyChange = SkinClusterHasDownstreamTopologyChange( scobj );

        MFnSkinCluster sc(scobj);

        MObject set = sc.deformerSet();
        MFnSet setfn(set);

        // generate a list of objects the skin cluster deforms
        MSelectionList obj_list;
        setfn.getMembers(obj_list, true);

        // If the set of skinCluster members is ZERO then there
        // is no point doing anything below
        if ( obj_list.length() > 0 )
        {
            // generate the influence groups and the influenceObject to SceneNode mapping
            MDagPathArray influence_objects;

            // Influence count is the number of joints in the skinCluster.
            unsigned int influence_count = sc.influenceObjects(influence_objects, &status);
            SceneNode **influence_nodes = new SceneNode*[influence_count];
            InfluenceGroup **influence_groups = new InfluenceGroup*[influence_count];

            unsigned int a;

            // Find the mapping between influenceObjects and SceneNode objects
            for (a = 0; a < influence_count; a++)
            {
                // Added by Bryan Ewert on 05 Jul 2002
                // First create a SceneNode of this influence object (because of its handy ::IsEverVisible() method).
                // If this influence node is never visible the remaining processing
                // will simply generate an error, so don't bother.
                SceneNode testNode( influence_objects[a] );
                if ( !testNode.IsEverVisible() ) continue;

                SceneNode *in = SceneNode::Find(influence_objects[a].fullPathName().asChar());

                if (in == NULL)
                {
    //                MString w;
    //                w = "Influence Object ";
    //                w += influence_objects[a].fullPathName().asChar();
    //                w += " influences skin cluster ";
    //                w += sc.name();
    //                w += " but cannot be found!";
    //                MGlobal::displayWarning(w);

                    gExportLog.Add( CExportLogEntry( ExportLog::kInfluenceObjectNotFound, influence_objects[a] ) );

                    influence_nodes[a] = in;    // NULL
                    continue;
                }

                if  (
                        ( (in->Skeleton() == NULL) || (in->SkeletonJointID() < 0) ) &&
                        !in->IsTraversalStop()      // stop bugging me about Traversal Stop joints!
                    )
                {
    //                MString w;
    //                w = "Node ";
    //                w += in->Name();
    //                w += " influences skin cluster ";
    //                w += sc.name();
    //                w += " but is not in a skeleton!";
    //                MGlobal::displayWarning(w);

                    gExportLog.Add( CExportLogEntry( ExportLog::kInfluenceObjectIsNotSkeleton, in->MayaPath() ) );
                }

                influence_nodes[a] = in;
            }

            // Get the weights for each mesh and stuff the influence groups per node
            for (a = 0; a < obj_list.length(); a++)
            {
                MDagPath meshpath;
                MObject  meshobj;
                status = obj_list.getDagPath(a, meshpath, meshobj);

                // Only export skin cluster weights that correspond to a mesh
                if (meshpath.apiType() != MFn::kMesh) continue;

                MFnDagNode mesh(meshpath.node());
                //cout << " Getting weights for mesh: " << mesh.name().asChar() << endl;

                // Warn user if skin's vertex weighting indices are compromised by downstream construction history.
                // Error is only relevant if Export Animations is enabled.
                if ( bHasTopologyChange && ExporterOptions::ExportAnimations() )
                {
                    gExportLog.Add( CExportLogEntry( ExportLog::kSkinClusterHasDownstreamTopologyModifiers, meshpath ) );
                }

                // Add this mesh to the list of smooth bound meshes
                SmoothMeshInfo smi;

                smi.node = SceneNode::Find(meshpath.fullPathName().asChar());

                // If the node isn't here it means it was probably culled because
                // it was never visible.  If there is no skin to export, skip the node weights
                if (smi.node == NULL) continue;

                // Don't bother building skins for a referenced mesh if we aren't
                // going to export it anyway
                if (smi.node->IsFileReference() && ExporterOptions::ExportAnimReferencesOnly()) continue;

                smi.meshname  = strnew(meshpath.fullPathName().asChar());

                smi.skeleton  = NULL;
                smi.bindroot  = NULL;

                for(int n = 0; n < influence_count; n++)
                {
                    if (influence_nodes[n] != NULL && influence_nodes[n]->Skeleton())
                    {
                        smi.skeleton  = influence_nodes[n]->Skeleton();
                        smi.bindroot  = influence_nodes[n];
                        break;
                    }
                }

                smi.processed = false;
                mSmoothMeshes.Append(smi);

                // Make the influence groups for the mesh
                // Also find the Scenenode that corresponds with this in
                unsigned int i;
                for (i = 0; i < influence_count; i++)
                {
                    influence_groups[i] = new InfluenceGroup;   // MEMORY LEAK FIXED: 31 May 2002
                    influence_groups[i]->mesh = strnew(smi.meshname);
                    influence_groups[i]->node = smi.node;

                    // I am using .1% as the minimum weight for a joint on a vertex,
                    // let toollib sort it out later
                    influence_groups[i]->min_weight = 0.001F;
                }

                MFloatArray weights;
                weights.clear();
                weights.setSizeIncrement(influence_count * 1000U);
                sc.getWeights(meshpath, meshobj, weights, influence_count);

                // figure out how many verts there are in this mesh
                int vertex_count = weights.length() / influence_count;
                int vertex;

                // Loop through the verts and add the weights to each influence group
                for (vertex = 0; vertex < vertex_count; vertex++)
                {
                    int vertex_offset = vertex * influence_count;
                    unsigned int index;
                    for (index = 0; index < influence_count; index++)
                    {
                        InfluenceGroup *ig = influence_groups[index];
                        ig->AddInfluence(vertex, weights[vertex_offset + index]);
                    }
                }

                // Add the new influence groups to their nodes IF there are any influences
                // greater then the min_weight tolerance
                for (a = 0; a < influence_count; a++)
                {
                    // Add the influence group to the nodes list else delete it
                    if ((influence_groups[a]->influences.Count() > 0) && (influence_nodes[a] != NULL))
                    {
                        influence_nodes[a]->AddInfluenceGroup(influence_groups[a]);
                    }
                    else
                    {
                        strdelete(influence_groups[a]->mesh);
                        delete influence_groups[a];
                    }

                    influence_groups[a] = NULL;
                }
            }

            // Don't for get to clean up the temp mapping arrays
            delete[] influence_nodes;
            delete[] influence_groups;
        }

        // Next skin cluster
        scit.next();
    }
}


// ********************************************
//
// Class SceneNode
// Build Meshes
//
//
MStatus SceneNode::BuildTriMeshes(void)
{
    MStatus     status = MS::kSuccess;

    MeshProcess meshprocess;
    SceneIterator it;

    for ( ; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();
        if (node->Processed()) continue;
        // Ignore intermediate objects
        if (node->IsIntermediateObject()) continue;

        if (node->MayaType() == MFn::kMesh)
        {
            int sb_index = 0;
            bool smooth_bound = node->IsSmoothBound(&sb_index);
            if (smooth_bound) smooth_bound = (mSmoothMeshes[sb_index].skeleton != NULL);

            meshprocess.SetInventory(mInventory);

            node->mMesh = meshprocess.BuildTriMesh(node->MayaPath(), sb_index, smooth_bound, &node->mMeshVertexLookup, &status);

            node->mProcessed = true;
        }

        if ( status != MS::kSuccess ) break;
    }

    return status;
}


// ********************************************
//
// Class SceneNode
// Add Joint Weights To Meshes
//
//
void SceneNode::AddJointWeightsToMeshes(void)
{
    int a;
    SceneIterator it;

    for (a = 0; a < mSmoothMeshes.Count(); a++)
    {
        SceneNode *node = mSmoothMeshes[a].node;
        if (node == NULL)
        {
            // cout << "No Node for smooth mesh " << meshname << endl;
            continue;
        }
        if (node->mMesh == NULL)
        {
            // cout << "Mesh Node " << meshname << " has no TriMesh!!!" << endl;
            continue;
        }
        if (mSmoothMeshes[a].skeleton == NULL)
        {
            // cout << "Smooth Bound Mesh " << meshname << " has no hierarchy!!!" << endl;
            continue;
        }

        for (it.Reset() ; !it.Done(); it.Next())
        {
            it.Node()->AddJointWeightsToMesh(mSmoothMeshes[a].meshname, node->mMesh, node->mMeshVertexLookup);
        }

//        tlTriMesh *mesh = node->mMesh;
        const tlTable<tlTriangle*> &faces = node->mMesh->GetFaces();

        int f;
        for (f = 0; f < faces.Count(); f++)
        {
            int v;
            for (v = 0; v < 3; v++)
            {
                tlVertex *vert = (tlVertex *) faces[f]->GetVertex(v);
                tlIndexedSkinVertex *iv = dynamic_cast<tlIndexedSkinVertex *>(vert);
                if (iv == NULL)
                {
//                    MString msg = "Bad vertex in face ";
//                    msg += f;
//                    msg += ", vertex ";
//                    msg += v;
//                    MGlobal::displayWarning(msg);
                    gExportLog.Add( CExportLogEntry( ExportLog::kToollibIndexedSkinVertexInvalid, node->MayaPath() ) );
                }
                else if (iv->NumJointWeights() < 1)
                {
//                    MString msg = "No vertex weight on vertex ";
//                    msg += iv->GetVertexIndex();
//                    MGlobal::displayWarning(msg);
                    gExportLog.Add( CExportLogEntry( ExportLog::kToollibIndexedSkinVertexInvalid, node->MayaPath() ) );
                }
            }
        }
    }
}


// *********************************************
//
// Class SceneNode
// Build Skins
//
//
void SceneNode::BuildSkins(void)
{
    MeshProcess mp(mInventory);

    tlTable<int> used_meshes;

    int a;
    for (a = 0; a < mSmoothMeshes.Count(); a++)
    {
        used_meshes.ZeroCount();
        SceneNode *node = mSmoothMeshes[a].node;
        if (node == NULL)
        {
            // cout << "No Node for smooth mesh " << meshname << endl;
            continue;
        }
        if (node->mMesh == NULL)
        {
            // cout << "Mesh Node " << meshname << " has no TriMesh!!!" << endl;
            continue;
        }
        if (mSmoothMeshes[a].skeleton == NULL)
        {
//            MString msg = "Smooth Bound Mesh ";
//            msg += node->mMesh->GetName();
//            msg += " has no hierarchy, instead will be exported as standard mesh.";
//            MGlobal::displayWarning(msg);
            gExportLog.Add( CExportLogEntry( ExportLog::kSmoothMeshHasNoSkeleton, node->MayaPath() ) );
            continue;
        }

        // Not really neccesary but safer
        if (mSmoothMeshes[a].processed) continue;

        used_meshes.Append(a);

        // Step 1: Build tlSkins from TriMesh(es)
        tlSkin *skin = new tlSkin(*node->mMesh, mSmoothMeshes[a].skeleton->GetName());
        mSmoothMeshes[a].processed = true;
        delete node->mMesh;
        node->mMesh = NULL;

        // Step 2: Put mesh in skeleton-local space
        SceneNode *hroot = Find(mSmoothMeshes[a].skeleton->GetName());
        int drawable_index = -1;
        if (hroot != 0)
        {
            if (hroot->Parent() != 0)
            {
                tlMatrix wbh;
                hroot->Parent()->BindWorldMatrix(wbh);
                skin->Transform(Inverse(wbh));
            }
        }

        // Step 3: Scale mesh to UI units
        float uiscale = UIScale();
        skin->Scale(uiscale, uiscale, uiscale);

        // Step 4: Put tlSkins in inventory
        if (!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
        {
            if ( mInventory->Store(skin) != 0 )
            {
                delete skin; skin = NULL;
            }
        }

        // If Inventory store fails there was likely a naming conflict
        // resulting from a duplicated or imported skeleton.
        if ( skin != NULL )
        {
            // Step 5: Export Deformer Expressions for skin
            DeformerExpression::Export(mInventory, node, skin);

            // Step 6: Post-process the mesh
            float averageVReuse;
            float averageLen;
            unsigned long numOfReuse;
            if (ExporterOptions::TristripMeshes()) skin->ConvertTrianglesToTriangleStrips(averageVReuse, averageLen, numOfReuse);
            if (ExporterOptions::DeindexMeshes())  skin->Deindex();
        }
    }
}

//===========================================================================
// SceneNode::IsValidScenegraphRoot()
//===========================================================================
// Description: It is possible that more than one node within a hierarchy
//              may be tagged as "ScenegraphRoot".
//              This function returns TRUE only if (a) the current node
//              (this) is tagged as Scenegraph Root, and (b) no other node
//              higher up this node's hierarchy is tagged as Scenegraph Root.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if this is the highest Scenegraph Root in this
//                      hierarchy; FALSE if this is not a Scenegraph Root or
//                      if another up the hierarchy is a Scenegraph Root.
//
//===========================================================================
bool SceneNode::IsValidScenegraphRoot() const
{
    bool        bIsValid = false;

    if ( IsScenegraphRoot() )
    {
        bIsValid = true;

        SceneNode* parent = this->Parent();

        while( parent != NULL )
        {
            if ( parent->IsScenegraphRoot() )
            {
                bIsValid = false;
                break;
            }

            parent = parent->Parent();
        }
    }

    return bIsValid;
}

//===========================================================================
// SceneNode::IsValidSkeletonRoot()
//===========================================================================
// Description: Bug fix #358.
//
//              It is possible that more than one node within a hierarchy
//              may be tagged as "Skeleton Root".  There may be only one.
//              This function returns TRUE only if (a) the current node
//              (this) is tagged as Skeleton Root, and (b) no other node
//              higher up this node's hierarchy is tagged as Skeleton Root.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if this is the highest Skeleton Root in this
//                      hierarchy; FALSE if this is not a Skeleton Root or
//                      if another up the hierarchy is a Skeleton Root.
//
//===========================================================================
bool SceneNode::IsValidSkeletonRoot() const
{
    bool        bIsValid = false;

    if ( IsSkeletonRoot() )
    {
        bIsValid = true;

        SceneNode* parent = this->Parent();

        while( parent != NULL )
        {
            if ( parent->IsSkeletonRoot() )
            {
                bIsValid = false;
                break;
            }

            parent = parent->Parent();
        }
    }

    return bIsValid;
}

// *********************************************
//
// Class SceneNode
// Now Builds CompositeSkins instead of CompoundMeshes
//
void SceneNode::BuildMeshes(void)
{
    //
    // Need to know if we are exporting a skeleton here
    //
    SceneIterator it;
    for ( ; !it.Done(); it.Next())
    {
        bool bAddedToInventory = false;

        tlPrimGroupMesh *pgmesh = NULL;

        SceneNode *node = it.Node();

        // Must cache SceneNodes and PrimGroups added here
        // so they may be processed for Vertex Animation below.
        tlTable<tlPrimGroupMesh*> newDrawables;
        tlTable<SceneNode*> drawableNodes;

        if (!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
        {
            // Warn user of art error if more than one node
            // in a hierarchy is tagged as Skeleton Root.
            if ( node->IsSkeletonRoot() && !node->IsValidSkeletonRoot() )
            {
//                MString w;
//                w = w + "The Skeleton Root tag for ";
//                w = w + node->Name();
//                w = w + " will be ignored because a parent is also tagged as Skeleton Root.";
//                MGlobal::displayWarning( w );
                gExportLog.Add( CExportLogEntry( ExportLog::kDuplicateSkeletonRoot, node->MayaPath() ) );

            }

            if( node->IsValidSkeletonRoot() )
            {
                //
                // We have a skeleton root so we are going to create a skin
                //
                tlSkeleton* skeleton = node->Skeleton();
                if(skeleton)
                {

                    //
                    // Could have been created in the
                    // BuildParticleSystems(void)
                    // BuildOpticEffects(void)
                    //
                    tlCompositeDrawable *skin = toollib_find<tlCompositeDrawable>(mInventory, skeleton->GetName());
                    if (skin == NULL)
                    {
                        skin = new tlCompositeDrawable();
                        skin->SetName(node->Name());
                        skin->SetSkeletonName(skeleton->GetName());

                        if ( mInventory->Store(skin) == 0 ) bAddedToInventory = true;

                        //
                        // This is so the scene graph can find it.
                        //

                        tlEntity* drawable = skin;
                        node->mDrawables.Append(drawable);
                        node->mDrawablesInInventory.Append( bAddedToInventory );
                    }


                    //
                    // Search the smoothBound meshes to see of they reference
                    // the skeleton to be exported... if so store their Name
                    // Add to the list of smoothBoundMeshes
                    //
//                    tlInventory::Iterator<tlSkin>* skinIt =
//                        new tlInventory::Iterator<tlSkin>(mInventory);
//
//                    tlSkin* subSkin = skinIt->First();
//                    while(subSkin)
//                    {
//                        if(!strcmp(subSkin->GetSkeletonName(), skin->GetSkeletonName()) )
//                        {
//                            //
//                            // Found a smoothbound mesh that references
//                            // this skeleton... so add it as a skin
//                            //
//                            skin->AddSkinReference(subSkin->GetName());
//                        }
//                        subSkin = skinIt->Next();
//                    }

                    tlInventory::Iterator<tlSkin> skinIt = tlInventory::Iterator<tlSkin>(mInventory);

                    tlSkin* subSkin = skinIt.First();
                    while(subSkin)
                    {
                        if(!strcmp(subSkin->GetSkeletonName(), skin->GetSkeletonName()) )
                        {
                            // Bug fix: 11 Jun 2002
                            // Skins now have their 'IsTranslucent' flag set properly.

                            //
                            // Check if it's translucent
                            //
                            bool isDrawableTranslucent = false;

                            //
                            // Only need to search until we know if the
                            // drawable is translucent or not
                            //
                            for(int j=0; (j < subSkin->NumPrimGroups()) && (isDrawableTranslucent == false); j++)
                            {
                                const tlPrimGroup* primGroup = subSkin->GetPrimGroup(j);
                                assert(primGroup && "No primGroup");
                                const char* shaderName = primGroup->GetMaterial();

                                tlShader* shader = toollib_find<tlShader>(mInventory, shaderName);
                                if(shader)
                                {
                                    isDrawableTranslucent = shader->GetTranslucency();
                                }
                            }

                            // End bug fix: 11 Jun 2002

                            //
                            // Found a smoothbound mesh that references
                            // this skeleton... so add it as a skin
                            //
                            tlCompositeDrawableSkin* pCDSkin;
                            pCDSkin = skin->AddSkinReference(subSkin->GetName(), isDrawableTranslucent );
                            if ( pCDSkin != NULL )
                            {
                                // Set Sort Order for this subSkin.
                                // The subSkin is queried from the Inventory and NOT from the SceneNode hierarchy.
                                // Find the SceneNode to get the value.
                                SceneNode* pNode = Find( subSkin->GetName() );
                                if ( pNode != NULL )
                                {
                                    pCDSkin->SetSortOrder( pNode->DrawOrder() );
                                }

                                // Warn user if requesting vertex animation on smooth-bound mesh.
                                if ( pNode->HasVertexAnimation() )
                                {
                                    gExportLog.Add( CExportLogEntry( ExportLog::kVertexAnimationOnSmoothBoundMesh, pNode->MayaPath() ) );
                                }
                            }
                        }
                        subSkin = skinIt.Next();
                    }

                    //
                    // Traverse the remaining children of the SceneNodeGraph for any
                    // drawables that are part of the sub Hierarchy
                    //
                    SceneIterator decendentsIT(node);
                    for ( ; !decendentsIT.Done(); decendentsIT.Next())
                    {
                        SceneNode *decendant = decendentsIT.Node();
                        int numberOfDrawables = decendant->mDrawables.Count();

                        if (decendant->mMesh == NULL) continue;

                        bool bAddAsDrawable = false;
                        bool bAddedDecendentToInventory = false;

                        // Make a new tlPrimGroupMesh
                        // NOTE: Creating a tlPrimGroupMesh from a tlTriMesh will
                        //       optimize the vertices from the tlTriMesh, deleting
                        //       unnecessary duplicates.  See comments in
                        //       tlPrimGroupMesh::tlPrimGroupMesh(const tlTriMesh& trimesh).
                        pgmesh = new tlPrimGroupMesh(*decendant->mMesh);

                        // NOTE: tlPrimGroupMesh is constructed with its
                        //       separate primGroups.

                        // Log error if any primGroup exceeds maximum vertex count.
                        for ( int pg = 0; pg < pgmesh->NumPrimGroups(); pg++ )
                        {
                            if ( pgmesh->GetPrimGroup( pg )->NumVertices() >= 0x00010000 )  // > 65535 vertices
                            {
                                gExportLog.Add( CExportLogEntry( ExportLog::kPrimGroupExceedsMaxVertexCount, node->MayaPath() ) );
                                break;
                            }
                        }

                        // Add the component tlPrimGroupMesh to the CompositeDrawable
                        if (decendant->Skeleton() != 0)
                        {
                            if (!decendant->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
                            {
                                //
                                // Transform mesh into node's local space
                                //
                                tlMatrix wm;
                                if(decendant->IsNotInSkeleton())
                                {
                                    //
                                    // In this case you need to concatenate
                                    // the Parent Bone that is actually part
                                    // of the skeleton
                                    //
                                    SceneNode* decendantParent = decendant->Parent();
                                    while( decendantParent && decendantParent->IsNotInSkeleton())
                                    {
                                        decendantParent = decendantParent->Parent();
                                    }
                                    decendantParent->BindWorldMatrix(wm);
                                }
                                else
                                {
                                    decendant->BindWorldMatrix(wm);
                                }

                                pgmesh->Transform(Inverse(wm));

                                //
                                // Check if it's translucent
                                //
                                bool isDrawableTranslucent = false;

                                //
                                // Only need to search until we know if the
                                // drawable is translucent or not
                                //
                                for(int j=0;(j<pgmesh->NumPrimGroups()) && (isDrawableTranslucent == false) ;j++)
                                {
                                    const tlPrimGroup* primGroup = pgmesh->GetPrimGroup(j);
                                    assert(primGroup && "No primGroup");
                                    const char* shaderName = primGroup->GetMaterial();

                                    tlShader* shader = toollib_find<tlShader>(mInventory, shaderName);
                                    if(shader)
                                    {
                                        isDrawableTranslucent = shader->GetTranslucency();
                                    }
                                }

                                tlCompositeDrawableProp* prop;
                                prop = skin->AddPropReference( pgmesh->GetName(),
                                                        decendant->SkeletonJointID(),
                                                        0,
                                                        isDrawableTranslucent
                                                       );
                                if ( prop != NULL )
                                {
                                    prop->SetSortOrder( decendant->DrawOrder() );
                                }

                            }
                        }
                        else
                        {
                            bAddAsDrawable = true;
                        }

                        float uiscale = UIScale();
                        pgmesh->Scale(uiscale, uiscale, uiscale);

                        if (!decendant->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
                        {
                            if ( mInventory->Store(pgmesh) == 0 ) bAddedDecendentToInventory = true;
                        }

                        // Add the tlPrimGroupMesh as a drawable if it does NOT have a Skeleton,
                        // and flag whether or not this drawable made it into the Inventory.
                        if ( bAddAsDrawable )
                        {
                            tlEntity* drawable = pgmesh;
                            decendant->mDrawables.Append(drawable);
                            decendant->mDrawablesInInventory.Append( bAddedDecendentToInventory );
                        }

                        // Only bother stripping/indexing/processing if this was added to the Inventory
                        // (else it's likely an instance and such data will have been processed the first time).
                        if ( bAddedDecendentToInventory )
                        {
                            float averageVReuse;
                            float averageLen;
                            unsigned long numOfReuse;
                            if (ExporterOptions::TristripMeshes()) pgmesh->ConvertTrianglesToTriangleStrips(averageVReuse, averageLen, numOfReuse);
                            if (ExporterOptions::DeindexMeshes())  pgmesh->Deindex();

                            newDrawables.Append( pgmesh );
                            drawableNodes.Append( decendant );

                        // Export Deformer Expressions for sub-skin of skin
                        // .. but.. but.. Deformer Expressions are not valid unless the mesh is a skin??
//                        CDEBUG << "// Export Deformer Expressions for sub-skin of skin: " << pgmesh->GetName() << endl;
//                            DeformerExpression::Export(mInventory, decendant, pgmesh);
                        }

                        // If this wasn't treated as a drawable (won't clean up with mDrawablesInInventory array),
                        // if it wasn't added to the Inventory (won't delete with Inventory),
                        // then this was likely an instanced node that was processed merely for the fun of it.
                        if ( !bAddAsDrawable && !bAddedDecendentToInventory )
                        {
                            delete pgmesh;
                            pgmesh = NULL;
                        }
                    }
                }
                else
                {
//                    MString w( node->Name() );
//                    w = w + " is tagged as a Skeleton Root but is not a Skeleton... Children wont be processed";
//                    MGlobal::displayWarning( w );
                    gExportLog.Add( CExportLogEntry( ExportLog::kInvalidSkeletonRoot, node->MayaPath() ) );
                }

            }
            else
            {
                //
                // Need to handle normal geometries NOT part of a skeleton!... these
                // will be processed above
                //
                tlSkeleton* skeleton = node->Skeleton();
                if((skeleton == NULL) && (node->mMesh))
                {
                    // make a new tlPrimGrouMesh
                    // NOTE: Creating a tlPrimGroupMesh from a tlTriMesh will
                    //       optimize the vertices from the tlTriMesh, deleting
                    //       unnecessary duplicates.  See comments in
                    //       tlPrimGroupMesh::tlPrimGroupMesh(const tlTriMesh& trimesh).
                    pgmesh = new tlPrimGroupMesh(*node->mMesh);    // MEMORY LEAK FIXED: 04 Jun 2002

                    // NOTE: tlPrimGroupMesh is constructed with its
                    //       separate primGroups.

                    // Log error if any primGroup exceeds maximum vertex count.
                    for ( int pg = 0; pg < pgmesh->NumPrimGroups(); pg++ )
                    {
                        if ( pgmesh->GetPrimGroup( pg )->NumVertices() >= 0x00010000 )  // > 65535 vertices
                        {
                            gExportLog.Add( CExportLogEntry( ExportLog::kPrimGroupExceedsMaxVertexCount, node->MayaPath() ) );
                            break;
                        }
                    }

                    if (!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
                    {
                        if ( mInventory->Store(pgmesh) == 0 ) bAddedToInventory = true;
                    }

                    tlEntity* drawable = pgmesh;
                    node->mDrawables.Append(drawable);
                    node->mDrawablesInInventory.Append( bAddedToInventory );

                    float uiscale = UIScale();
                    pgmesh->Scale(uiscale, uiscale, uiscale);

                    if ( bAddedToInventory )
                    {
                        float averageVReuse;
                        float averageLen;
                        unsigned long numOfReuse;
                        if (ExporterOptions::TristripMeshes()) pgmesh->ConvertTrianglesToTriangleStrips(averageVReuse,averageLen,numOfReuse);
                        if (ExporterOptions::DeindexMeshes())  pgmesh->Deindex();

                        newDrawables.Append( pgmesh );
                        drawableNodes.Append( node );

                    // Export Deformer Expressions for non-skinned mesh
                    // .. but.. but.. Deformer Expressions are not valid unless the mesh is a skin??
//                    CDEBUG << "// Export Deformer Expressions for non-skinned mesh: " << pgmesh->GetName() << endl;
//                        DeformerExpression::Export(mInventory, node, pgmesh);
                    }

                    // MEMORY LEAK PATCH: 04 Jun 2002
                    // Don't delete (tlPrimGroupMesh* pgmesh) here - it is needed
                    // within ::BuildScenegraph() to obtain transform data.
                    // Assign bogus name to this pgmesh and delete within
                    // SceneNode destructor for those not found in inventory.
//                    else
//                    {
//                        MString name( pgmesh->GetName() );
//                        name = name + "__Instance_" + node->InstanceNumber();
//                        pgmesh->SetName( name.asChar() );
//                    }
                    // END MEMORY LEAK PATCH

                }
            }       // if ( IsValidSkeletonRoot() | else() )

//            if ( bAddedToInventory && ( pgmesh != NULL ) )
//            {
//                if ( node->IsValidSkeletonRoot() )
//                {
//                    SceneIterator decendentsIT(node);
//                    for ( ; !decendentsIT.Done(); decendentsIT.Next())
//                    {
//                        SceneNode *decendent = decendentsIT.Node();
//                        BuildVertexAnimation( decendent, pgmesh, mInventory );
//                    }
//                }
//                else
//                {
//                    BuildVertexAnimation( node, pgmesh, mInventory );
//                }
//            }

            // Now we have a list of all new PrimGroupMesh entities that have
            // been added to the Inventory.  Process each for Vertex Animation.
            for ( unsigned d = 0; d < newDrawables.Count(); d++ )
            {
                BuildVertexAnimation( drawableNodes[d], newDrawables[d], mInventory );
            }
        }

        if ( IsExportingCanceled() )
        {
            break;
        }
    }
}

//===========================================================================
// SceneNode::BuildVertexAnimation
//===========================================================================
// Description: Creates a new VertexAnimationAnimNode object for the
//              specified SceneNode.
//
// Constraints: Vertex Animation will NOT be exported if:
//                  (a) The Exporter setting Export Vertex Animation is
//                      not enabled.
//                  (b) The SceneNode is not of type MFn::kMesh.
//                  (c) The SceneNode does not have its "Eligible for
//                      Vertex Animation" setting enabled.
//                  (d) The SceneNode is a smooth-bound mesh.
//                  (e) The SceneNode is an Intermediate Object.
//
//
//  Parameters: SceneNode* pNode: Pointer to the SceneNode wrapping the Maya
//                  object for which to export Vertex Animation.
//              tlPrimGroupMesh *pgmesh: Pointer to the PrimGroupMesh object
//                  created for the SceneNode's mesh data.
//              tlInventory* pInventory: The global Inventory being exported.
//
//      Return: (void)
//
//===========================================================================
void SceneNode::BuildVertexAnimation( SceneNode* pNode, tlPrimGroupMesh *pgmesh, tlInventory* pInventory )
{
    if ( !ExporterOptions::ExportVertexAnimations() ) return;

    MStatus                     status;

    // Warn user if requesting vertex animation on smooth-bound mesh.
    if ( pNode->HasVertexAnimation() && pNode->IsSmoothBound() )
    {
        gExportLog.Add( CExportLogEntry( ExportLog::kVertexAnimationOnSmoothBoundMesh, pNode->MayaPath() ) );
    }

    if ( pNode->IsMesh() && pNode->HasVertexAnimation() && !pNode->IsSmoothBound() && !pNode->IsIntermediateObject() )
    {
        VertexAnimationAnimNode* pAnimNode = new VertexAnimationAnimNode( pNode, pgmesh, pInventory );
        pAnimNode->SetIsCyclic( pNode->IsCyclic() );
        AnimNode::AddNode( pAnimNode );
    }
}

// *********************************************
//
// Class SceneNode
// Build Animated Object Factories
//
//
void SceneNode::BuildAnimatedObjectFactories(void)
{
    tlInventory::Iterator<tlScenegraph> sgIt(mInventory);

    //now convert the flagged composite drawables to animated object factories
    for (int i = 0; i < mAnimatedObjectFactories.Count(); i++)
    {
        tlCompositeDrawable* compDraw = toollib_find<tlCompositeDrawable>(mInventory, mAnimatedObjectFactories[i]);
        if (compDraw)
        {

/* ****  AnimRange DISABLED for removal ****

//            if (AnimNode::NumAnimRanges()>0)
//            {
//                tlTable<tlFrameController*>** subAnims = new tlTable<tlFrameController*>*[AnimNode::NumAnimRanges()];
//                for (unsigned int i = 0; i < AnimNode::NumAnimRanges(); i++)
//                {
//                    subAnims[i] = AnimNode::GetAnimRange(i)->GetFrameControllers();
//                }
//
//                tlTable<tlFrameController*>* pTFC = subAnims[0];

                compDraw->ConvertToAnimatedObjectFactory(mInventory,false,AnimNode::NumAnimRanges(),subAnims);
                delete [] subAnims;
                // The ConvertToAOF has likely removed at least one FrameController from the Inventory.
                // This means the FrameController array in the AnimNode class is invalid.
                AnimNode::ReconcileWithInventory( mInventory );

                // The ConvertToAOF has likely removed at least one FrameController from the Inventory.
                // This means the FrameController array in the AnimNode class is invalid.
                AnimNode::ReconcileWithInventory( mInventory );

*/

                compDraw->ConvertToAnimatedObjectFactory( mInventory, false );

                for (tlScenegraph* sg = sgIt.First(); sg; sg = sgIt.Next())
                {
                    tlScenegraphDrawable* node = dynamic_cast<tlScenegraphDrawable*>(sg->Find((char*)compDraw->GetName()));
                    if (node)
                    {
                        char objectName[P3DMAXNAME + 1];
                        sprintf(objectName,"%s_Instance",compDraw->GetName());
                        node->SetName(objectName);
                        node->SetDrawable(objectName);
                    }
                }
//            }
        }
    }
    mAnimatedObjectFactories.Delete(0,mAnimatedObjectFactories.Count());
}

// *********************************************
//
// Class SceneNode
// Build Animated Objects
//
//
void SceneNode::BuildAnimatedObjects(void)
{
    // animated objects are inherently animated.  If no anims, no animated object.
    if (!ExporterOptions::ExportAnimations())
    {
        return;
    }

    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();

        char* factoryName = NULL;
        char  objectName[P3DMAXNAME + 1];
        char  controllerName[P3DMAXNAME + 1];
        float frameOffset = 0.0f;
        int   currentAnimation = 0;

        tlAnimatedObject* object = NULL;

        ExporterOptions::BuildAnimationName(kAnimatedObjectAnimationMode, node->Name(), controllerName);

        if (node->GetCreateAnimatedObjFactory())
        {
            factoryName = node->Name();
            mAnimatedObjectFactories.Append(factoryName);

            sprintf(objectName,"%s_Instance",node->Name());

            object = new tlAnimatedObject;
            object->SetName(objectName);
        }
        else if (node->MayaTypeId() == P3D_ANIMATED_OBJECT_ID)
        {
            MString nameString;
            PlugValue( node->MayaObject(), "factoryName",nameString);
            factoryName = strnew( nameString.asChar() );
            PlugValue( node->MayaObject(), "frameOffset",frameOffset);
            PlugValue( node->MayaObject(), "currentAnimation", currentAnimation);

            sprintf(objectName,"%s",node->Name());

            object = new tlAnimatedObject;
            object->SetName(objectName);

            node->mDrawables.Append(object);
            node->mDrawablesInInventory.Append( true ); // assumed, since Instances are handled above.
        }
        else
        {
            continue;
        }

        object->SetFactoryName(factoryName);
        object->SetStartingAnimation(currentAnimation);

        tlFrameController* controller = new tlFrameController;
        controller->SetName(controllerName);
        controller->SetType(Pure3DAnimationTypes::ANIMATED_OBJECT_AOBJ);
        controller->SetHierarchyName(objectName);
        controller->SetFrameOffset(frameOffset);
        AnimNode::AddFrameControllerToMultiController(controller);

        mInventory->Store(object);
        mInventory->Store(controller);
    }
}

//===========================================================================
// SceneNode::BuildCompositeDrawableVisibility
//===========================================================================
// Description: Adds visibility animations that have been applied to mesh
//              objects which are smooth bound to skeletons.  These smooth-
//              bound meshes become Composite Drawables within the Pure3D
//              export and thus are not affected by SceneGraphVisibility
//              animation.
//
//              The SceneNode class maintains a smSmoothMeshes array for
//              all composite drawables.  Just iterate this list, check
//              if the transform or the shape for the bound mesh has
//              visibility animation, and apply it.
//
//              The animation is applied via the CompositeDrawableAnimNode
//              class.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return:
//
//===========================================================================
void SceneNode::BuildCompositeDrawableVisibility( void )
{
    if (ExporterOptions::ExportAnimations() && ExporterOptions::ExportVisibilityAnimations())
    {
        int sm;
        for ( sm = 0; sm < mSmoothMeshes.Count(); sm++ )
        {
            SceneNode* visNode = NULL;
            const tlSkeleton* hierNode = mSmoothMeshes[sm].skeleton;
            const SceneNode* skinNode = mSmoothMeshes[sm].node;

            // Check Transform visibility first (takes precedence)
            if ( mSmoothMeshes[sm].node->Parent()->mIsVisibilityAnimated )
            {
                visNode = mSmoothMeshes[sm].node->Parent();
                // Allocate new CompositeDrawableAnimNode
                CompositeDrawableAnimNode* pCompDrawAnim = new CompositeDrawableAnimNode( visNode, hierNode, skinNode );
                pCompDrawAnim->SetIsCyclic( visNode->IsCyclic() );
                AnimNode::AddNode( pCompDrawAnim );
            }
            // Else, see if animation applied to shape.
            // (don't even know if the scenegraph traversal will detect this?)
            else if ( mSmoothMeshes[sm].node->mIsVisibilityAnimated )
            {
                visNode = mSmoothMeshes[sm].node;
                CompositeDrawableAnimNode* pCompDrawAnim = new CompositeDrawableAnimNode( visNode, hierNode, skinNode );
                pCompDrawAnim->SetIsCyclic( visNode->IsCyclic() );
                AnimNode::AddNode( pCompDrawAnim );
            }
        }
    }
}

// *********************************************
//
// Class SceneNode
// Build Particle Systems
//
//
void SceneNode::BuildParticleSystems(void)
{
    // Particle systems are inherently animated.  If no anims, no particles.
    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();
        if (node->Processed()) continue;

        tlParticleSystem *partSys = NULL;
        bool translucent = false;

        bool bAddedToInventory = false;

        if (node->MayaTypeId() == PARTICLE_SYSTEM_ID)
        {
            tlParticleSystemFactory* factory = ParticleSystemProcess::ExportParticleSystemFactory(node, mInventory);
            if (factory)
            {
                char* partSysName = ExporterOptions::BuildNodeName(node->Name());
                partSys = factory->CreateParticleSystem(partSysName);
                strdelete(partSysName);

                int preloadFrame;
                PlugValue( node->MayaObject(), "preloadFrame",preloadFrame);

                // create controller for this system
                tlFrameController* controller = new tlFrameController;

                char fcname[P3DMAXNAME + 1];
                ExporterOptions::BuildAnimationName(kEffectAnimationMode, partSys->GetName(), fcname);

                controller->SetType(Pure3DAnimationTypes::EFFECT_EFX);
                controller->SetName(fcname);
                controller->SetHierarchyName(partSys->GetName());
                controller->SetFrameOffset(preloadFrame);
                AnimNode::AddFrameControllerToMultiController(controller);

/* ****  AnimRange DISABLED for removal ****

                for (unsigned int j = 0; j < AnimNode::NumAnimRanges(); j++)
                {
                    AnimNode::GetAnimRange(j)->AddFrameController(controller);
                }

*/

                mInventory->Store(controller);
                if ( mInventory->Store(partSys) == 0 ) bAddedToInventory = true;

                for (int i = 0; i<factory->GetNumEmitters(); i++)
                {
                    tlSpriteEmitterFactory* emitter = dynamic_cast<tlSpriteEmitterFactory*>(factory->GetEmitterFactoryPtr(i));
                    if (emitter)
                    {
                        tlShader* shader = toollib_find<tlShader>(mInventory, emitter->GetShaderName());
                        if (shader)
                        {
                            if (shader->GetTranslucency()==true)
                            {
                                translucent = true;
                                break;
                            }
                        }
                    }
                }
            }
        }
        else
        {
            continue;
        }

        if (partSys)
        {
            // Add the tlCompositeDrawable node in necessary
            if (node->Parent()->Skeleton() != NULL)
            {
                if (!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
                {
                    tlCompositeDrawable *cs = toollib_find<tlCompositeDrawable>(mInventory, node->Parent()->Skeleton()->GetName());
                    if (cs == NULL)
                    {
                        bool bAddedToInventory = false;

                        cs = new tlCompositeDrawable;
                        cs->SetName(node->Parent()->Skeleton()->GetName());
                        cs->SetSkeletonName(node->Parent()->Skeleton()->GetName());

                        if ( mInventory->Store(cs) == 0 ) bAddedToInventory = true;

                        SceneNode *hroot = Find(cs->GetSkeletonName());
                        if (hroot != 0)
                        {
                            tlEntity* drawable = cs;
                            hroot->mDrawables.Append(drawable);
                            hroot->mDrawablesInInventory.Append( bAddedToInventory );
                        }
                    }

                    cs->AddEffectReference(partSys->GetName(), node->Parent()->SkeletonJointID(), 1);
                    (cs->FindEffect(partSys->GetName()))->SetTranslucency(translucent);
                    (cs->FindEffect(partSys->GetName()))->SetSortOrder( node->DrawOrder() );
                }
            }
            else
            {
                tlEntity* drawable = partSys;
                node->mDrawables.Append(drawable);
                node->mDrawablesInInventory.Append( bAddedToInventory );
            }
        }

        node->mProcessed = true;
    }
}

//**********************************************
//
// Class SceneNode
// Build Optic Effects
//
//
void SceneNode::BuildOpticEffects(void)
{
    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();
        if (node->Processed()) continue;

        if ((node->MayaTypeId() != P3D_LENS_FLARE_GROUP_ID) && (node->MayaTypeId() != P3D_LENS_FLARE_ID)) continue;

        bool translucent = false;

        tlLensFlareGroup* lensFlareGroup = LensFlareProcess::ExportLensFlareGroup(node, mInventory);
        if (lensFlareGroup)
        {
            tlShader* shader = toollib_find<tlShader>(mInventory, lensFlareGroup->GetShaderName());
            if (shader)
            {
                translucent = shader->GetTranslucency();
            }

            // Add to composite drawable
            if (node->Parent()->Skeleton() != NULL)
            {
                if (!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
                {
                    tlCompositeDrawable *cs = toollib_find<tlCompositeDrawable>(mInventory, node->Parent()->Skeleton()->GetName());
                    if (cs == NULL)
                    {
                        bool bAddedToInventory = false;

                        cs = new tlCompositeDrawable;
                        cs->SetName(node->Parent()->Skeleton()->GetName());
                        cs->SetSkeletonName(node->Parent()->Skeleton()->GetName());

                        if ( mInventory->Store(cs) == 0 ) bAddedToInventory = true;

                        SceneNode *hroot = Find(cs->GetSkeletonName());
                        if (hroot != 0)
                        {
                            tlEntity* drawable = cs;
                            hroot->mDrawables.Append(drawable);
                            hroot->mDrawablesInInventory.Append( bAddedToInventory );
                        }
                    }

                    cs->AddPropReference(lensFlareGroup->GetName(), node->Parent()->SkeletonJointID());
                    (cs->FindProp(lensFlareGroup->GetName()))->SetTranslucency(translucent);
                    (cs->FindProp(lensFlareGroup->GetName()))->SetSortOrder(node->DrawOrder());
                }
            }
            // Add to scenegraph
            else
            {
                node->mDrawables.Append(lensFlareGroup);
                node->mDrawablesInInventory.Append( true ); // Assumed ::Export() method for each will return NULL if unsuccessful.
            }
        }

        node->mProcessed = true;
    }
}


//**********************************************
//
// Class SceneNode
// Build Billboard Objects
//
//
void SceneNode::BuildBillboardObject(void)
{

    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();
        if ((node->MayaTypeId() != P3D_BILLBOARD_QUAD_ID)&&(node->MayaTypeId() != P3D_BILLBOARD_QUAD_GROUP_ID)) continue;
        if (node->Processed()) continue;

        tlBillboardQuadGroup* quadGroup = NULL;
        bool translucent = false;

        if (node->MayaTypeId()==P3D_BILLBOARD_QUAD_ID)
        {
            quadGroup = BillboardObjectProcess::ExportQuad(node, mInventory);
        }
        else if (node->MayaTypeId()==P3D_BILLBOARD_QUAD_GROUP_ID)
        {
            quadGroup = BillboardObjectProcess::ExportQuadGroup(node, mInventory);
        }

        if (quadGroup)
        {
            tlShader* shader = toollib_find<tlShader>(mInventory, quadGroup->GetShaderName());
            if (shader)
            {
                translucent = shader->GetTranslucency();
            }

            // Add the compound mesh node if necessary
            if (node->Parent()->Skeleton() != NULL)
            {
                if (!node->IsFileReference() || !ExporterOptions::ExportAnimReferencesOnly())
                {
                    tlCompositeDrawable *cs = toollib_find<tlCompositeDrawable>(mInventory, node->Parent()->Skeleton()->GetName());
                    if (cs == NULL)
                    {
                        bool bAddedToInventory = false;

                        cs = new tlCompositeDrawable;
                        cs->SetName(node->Parent()->Skeleton()->GetName());
                        cs->SetSkeletonName(node->Parent()->Skeleton()->GetName());

                        if ( mInventory->Store(cs) == 0 ) bAddedToInventory = true;

                        SceneNode *hroot = Find(cs->GetSkeletonName());
                        if (hroot != 0)
                        {
                            tlEntity* drawable = cs;
                            hroot->mDrawables.Append(drawable);
                            hroot->mDrawablesInInventory.Append( bAddedToInventory );
                        }
                    }

                    cs->AddPropReference(quadGroup->GetName(), node->Parent()->SkeletonJointID());
                    (cs->FindProp(quadGroup->GetName()))->SetTranslucency(translucent);
                    (cs->FindProp(quadGroup->GetName()))->SetSortOrder( node->DrawOrder() );

                }
            }
            else
            {
                node->mDrawables.Append(quadGroup);
                node->mDrawablesInInventory.Append( true ); // Assumed ::Export() will return NULL if failure.
            }
        }

        node->mProcessed = true;
    }
}

//===========================================================================
// SceneNode::BuildBoundingVolumes
//===========================================================================
// Description: Called from TraversalController::MainLoop().
//
//              Iterates the cached scene and invokes
//              BoundingVolumeProcess::Export() for all Bounding Volumes.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void SceneNode::BuildBoundingVolumes(void)
{
    SceneIterator it;

    for (; !it.Done(); it.Next())
    {
        SceneNode* node = it.Node();

        // Iterating children within the scene iterator may seem somewhat
        // illogical, but it is necessary to circumvent a problem.
        // If a Bounding Volume heirarchy is created in this way:
        //
        //    | groupA |
        //        -> | groupB |
        //               -> | volumeA |
        //               -> | volumeB |
        //        -> | groupC |
        //               -> | volumeC |
        //               -> | volumeD |
        //        -> | volumeE |
        //        -> | volumeF |
        //
        // This hierarchy would create two tlCollisionVolume chunks if
        // I were to start exporting at "volumeA" using "groupB" as
        // my base transform.  Once I back out of "groupB" to export
        // "volumeC" I would lose my base transform ("groupB") and thus
        // would start a new tlCollisionVolume chunk.
        //
        // By scanning children first I detect and start exporting at
        // "volumeE". Then the iterative scan within the BoundingVolume
        // class takes over and processes "groupB" and "groupC", placing
        // all volumes in one tlCollision chunk.
        //
        // NOTE: If all volumes appear in a group of a group then the
        //       previous behavior will still occur.  The iterative scan
        //       within the Bounding Volume class can only work from
        //       siblings of the first Bounding Volume; it won't
        //       "back out" looking for volumes in a sibling of parent
        //       transforms.

        int c;
        for ( c = 0; c < node->ChildCount(); c++ )
        {
            SceneNode* pChild = node->Child( c );

            if ( ( pChild->MayaType() == MFn::kJoint ) && ( pChild->ChildCount() > 0 ) )
            {
                pChild = pChild->Child(0);
            }

            if ( pChild->MayaTypeId() != P3D_BOUNDING_VOLUME_ID ) continue;
            if (pChild->Processed()) continue;

            // If Bounding Volume is instanced, process it ONLY if
            // it is the instance "source" (its instance number is 0)
            if ( pChild->IsInstance() && ( pChild->InstanceNumber() > 0 ) ) continue;

            BoundingVolumeProcess::Export(pChild, mInventory);
            pChild->mProcessed = true;

        }

// ** BEGIN OBSOLETE **
// ** The old code. Delete this once the above code proves reliable. **

//            if ( node->MayaTypeId() != P3D_BOUNDING_VOLUME_ID ) continue;
//    //          && node->MayaTypeId() != P3D_BOUNDING_NODE_ID) continue;
//            if (node->Processed()) continue;
//            // If Bounding Volume is instanced, process it ONLY if
//            // it is the instance "source" (its instance number is 0)
//            if ( node->IsInstance() && ( node->InstanceNumber() > 0 ) ) continue;
//
//            BoundingVolumeProcess::Export(node, mInventory);
//            node->mProcessed = true;

// ** END OBSOLETE **

    }
}

//===========================================================================
// SceneNode::BuildEventAnimations
//===========================================================================
// Description: Responsible for iterating SceneNode and finding all
//              p3dEventAnim nodes connected to exported objects.  The
//              event keys and data are queried from these nodes, allocated
//              into tlAnimation, tlEventChannel and tlEvent objects,
//              and finally added to the global tlInventory.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if all is well; FALSE if something went wrong.
//
//===========================================================================
bool SceneNode::BuildEventAnimations( void )
{
     bool                        bSuccess = true;

     MStatus                     status;
     SceneIterator it;

     // Loop through all items in SceneNode.
     // We'll trace each's .message attribute downstream to see if
     // if it's connected to a p3dEventAnim.message node/attribute.
     for (; !it.Done(); it.Next())
     {
          SceneNode* node = it.Node();

          MFnDependencyNode       fnDependNode( node->MayaPath().node() );
          MPlug                   plug;

          // Assign a unique groupId to each Animation Group.
          unsigned int            groupId = 0;

          // NOTE: This isn't necessarily how p3dEventAnim nodes will be
          //       associated with SceneNode objects.  It will need to be:
          //          a) A DG connection; or,
          //          b) Implement p3dEventAnim as a DAG node.
          plug = fnDependNode.findPlug( "message", &status );     // SceneNode::MayaNode() -> .message attribute
          if ( status == MS::kSuccess )
          {
                // Trace the .message attribute downstream.

                if ( plug.isConnected() )
                {
                     // Something is connected .. is it a p3dEventAnim node?

                     MPlugArray      connections;
                     plug.connectedTo( connections, false, /* asSrc */ true, &status );

                     int dest;
                     for ( dest = 0; dest < connections.length(); dest++ )
                     {
                          fnDependNode.setObject( connections[dest].node() );

                          if ( fnDependNode.typeId() == gP3DEventAnimID )
                          {
                                // OK .. found a p3dEventAnim node.
                                // Now determine how many (if any) p3dEventKeys are attached to it.
                                // It is the p3dEventKey node(s) which will define the
                                // event keys and, ultimately, the data blocks for the events.

                                MObjectArray            eventKeys;      // Array of p3dEventKey nodes connected to .key attribute
                                unsigned int            numKeys;        // Number of p3dEventKey nodes connected to .key attribute
                                numKeys = CEventAnim::GetConnectedKeys( connections[dest].node(), eventKeys );

                                // If no keys are created for this node,
                                // don't bother allocating a tlAnimation
                                // .. just skip it.
                                if ( numKeys == 0 ) continue;

                                // Each p3dEventAnim node represents an "eventAnim".
                                // It should be possible that a single tlAnimation may be allocated
                                // for all p3dEventAnim nodes.. this may require some redesign
                                // of the p3dEvent* node definitions.

                                // Allocate a tlAnimation - "eventAnim" - as P3D_ANIM_EVENT.
                                tlAnimation* pEventAnim = new tlAnimation;
                                pEventAnim->SetAnimationType( Pure3DAnimationTypes::EVENT_EVT );

                                // Assign tlAnimation fields: name, framerate, length, cyclic

                                // Name is derived from the node itself
                                pEventAnim->SetName( fnDependNode.name().asChar() );

                                // Framerate is derived from Maya
                                float frameRate = GetFrameRate( MTime() );

                                // NumFrames is derived from Maya
                                MTime minTime = MAnimControl::minTime();
                                MTime maxTime = MAnimControl::maxTime();
                                unsigned int numframes  = (maxTime.value() - minTime.value()) + 1;
                                pEventAnim->SetNumFrames( numframes );

                                plug = fnDependNode.findPlug( "cyclic", &status );
                                if ( status == MS::kSuccess )
                                {
                                     bool                bCyclic;
                                     plug.getValue( bCyclic );
                                     pEventAnim->SetCyclic( bCyclic );
                                }

                                // Cache the "address" -- assigned as the name of the tlAnimationGroup.
                                MString                 eventAddress;
                                plug = fnDependNode.findPlug( "address", &status );
                                if ( status == MS::kSuccess )
                                {
                                     MString             name;
                                     plug.getValue( eventAddress );
                                }

                                // A collection of p3dEventKeys (i.e. all of the p3dEventKey nodes
                                // connected to the current p3dEventAnim node) represent the
                                // "eventChannel".  Each p3dEventKey node specifies the "time"
                                // for an event, and the data elements for that key.

                                // Allocate a tlAnimationGroup - "eventChannel" - for Channel.
                                // Assign the tlAnimationGroup to a GroupId

                                tlAnimationGroup* pAnimationGroup = pEventAnim->AddAnimationGroup( groupId, eventAddress.asChar() );

                                // Set number of "keys" (events) occurring on this eventChannel.
                                pAnimationGroup->CreateEventChannel(tlFourCC(Pure3DAnimationChannels::Event::EVENT_EVT), numKeys );
                                tlEventChannel* pEventChannel = pAnimationGroup->GetEventChannel(Pure3DAnimationChannels::Event::EVENT_EVT);

                                groupId++;      // bump groupId so next will be unique.

                                // Extract the data from each p3dEventKey node.
                                int e;
                                for ( e = 0; e < numKeys; e++ )      // p3dEventAnim.key[] array
                                {
                                     MString         showMeDataAdded = "\t";        // debugging only

                                     tlEvent         event;
                                     int             time = minTime.value();

                                     fnDependNode.setObject( eventKeys[e] );

                                     // Get .time attribute from p3dEventKey node
                                     time = CEventKey::GetTime( eventKeys[e] ).value();

                                     // Get .name attribute from p3dEventKey node
                                     plug = fnDependNode.findPlug( "name", &status );
                                     if ( status == MS::kSuccess )
                                     {
                                          MString             keyName;
                                          plug.getValue( keyName );
                                          event.SetName( keyName.asChar() );
                                     }

                                     // Get .parameter attribute from p3dEventKey node
                                     plug = fnDependNode.findPlug( "parameter", &status );
                                     if ( status == MS::kSuccess )
                                     {
#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MPlug::getValue( long & )
                                          long parameter;
#else
// Maya v4 declares MPlug::getValue( int & )
                                          int parameter;
#endif
                                          plug.getValue( parameter );
                                          event.SetParam( parameter );
                                     }

                                     MPlug                   plugEventKeys;
                                     unsigned int            k;      // array of .key attributes

                                     // Each element of the '.key' array plug is one
                                     // piece of the data structure being broadcast
                                     // for this key of this event.
                                     plugEventKeys = fnDependNode.findPlug( "key", &status );     // p3dEventKey.key attribute
                                     if ( status == MS::kSuccess )
                                     {
                                          for ( k = 0; k < plugEventKeys.numElements(); k++ )      // p3dEventKey.key[] array
                                          {
                                                // Get Data and Data Type
                                                MPlug elementPlug = plugEventKeys[k];

#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MPlug::getValue( long & )
                                                long type;
#else
// Maya v4 declares MPlug::getValue( int & )
                                                int type;
#endif

                                                // Here arbitrarianism rears it's head again:
                                                // The data may be set as one of "int", "float" or "string"
                                                // and we need to add the data to the tlEvent
                                                // in the appropriate form.

                                                MString         data;

                                                MPlug           typePlug = elementPlug.child( kEventKeyAttrType );
                                                MPlug           dataPlug = elementPlug.child( kEventKeyAttrData );

                                                status = typePlug.getValue( type );
                                                if ( status != MS::kSuccess ) cerr << "!! FAILED to get Type plug value !!" << endl;

                                                status = dataPlug.getValue( data );
                                                if ( status != MS::kSuccess ) cerr << "!! FAILED to get Data plug value !!" << endl;

                                                showMeDataAdded = showMeDataAdded + type;
                                                showMeDataAdded = showMeDataAdded + ": ";

                                                switch( type )
                                                {
                                                     case CEventKey::kBoolean:
                                                     {
                                                          int     iValue;
                                                          sscanf( data.asChar(), "%d", &iValue );

                                                          if ( iValue != 0 ) iValue = 1;

                                                          event.AddData( iValue );

                                                          showMeDataAdded = showMeDataAdded + iValue;

                                                          break;
                                                     }
                                                     case CEventKey::kInt:
                                                     {
                                                          int     iValue;
                                                          sscanf( data.asChar(), "%d", &iValue );
                                                          event.AddData( iValue );

                                                          showMeDataAdded = showMeDataAdded + iValue;

                                                          break;
                                                     }
                                                     case CEventKey::kFloat:
                                                     {
                                                          float   fValue;
                                                          sscanf( data.asChar(), "%f", &fValue );
                                                          event.AddData( fValue );

                                                          showMeDataAdded = showMeDataAdded + fValue;

                                                          break;
                                                     }
                                                     case CEventKey::kString:
                                                     default:
                                                     {
                                                          event.AddData( data.asChar() );

                                                          showMeDataAdded = showMeDataAdded + data;

                                                          break;
                                                     }
                                                }

                                                showMeDataAdded = showMeDataAdded + "\n\t";

                                          }
                                     }

//                                clog << "  +++ Set Event Key @ time: " << time << " -> Data: " << endl << showMeDataAdded << endl;

                                     // Set the key on the tlEventChannel, passing in
                                     // the time for the key, and the data (a tlEvent object).
                                     // * This copies 'event' to pEventChannel->value[e] *
                                     pEventChannel->SetKey( e, time, event );

                                }       // for ( eventKeys )

                                // Associate "eventAnim" animation with current object
                                // ** Still haven't a sniff how to do this! **

                                // And, finally, store the tlAnimation in the tlInventory.
                                // * Note: This only _stores_ the pointer.. it doesn't copy the object! *
                                if ( mInventory->Store( pEventAnim ) < 0 )
                                {
                                     MGlobal::displayError( "! FAILED to store tlAnimation for tlEvent in inventory !" );
                                     delete pEventAnim;
                                     return false;
                                }

                          }       // if ( node is p3dEventAnim )

                     }       // for ( connections.length() -> each is a potential p3dEventAnim node )
                }       // if ( '.message' plug of SceneNode mesh is connected )
          }
     }       // for ( SceneNode iterator )

     return bSuccess;

}       // END SceneNode::BuildEventAnimations

// *********************************************
//
// Class SceneNode
// Build Cameras
//
//
void SceneNode::BuildCameras(void)
{
    SceneIterator it;
    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();

        if (node->MayaType() != MFn::kCamera) continue;

        MFnCamera camera(node->MayaObject());

        tlCamera *p3dcam = new tlCamera;

        p3dcam->SetName(node->Name());


        MPoint  p   = camera.eyePoint(MSpace::kObject);
        MVector lv  = camera.viewDirection(MSpace::kObject);
        MVector uv  = camera.upDirection(MSpace::kObject);
        double  fov = camera.horizontalFieldOfView();

        tlPoint lp((float)p.x, (float)p.y, (float)-p.z);
        tlPoint llv((float)lv.x, (float)lv.y, (float)-lv.z);
        tlPoint luv((float)uv.x, (float)uv.y, (float)-uv.z);

        tlMatrix worldmatrix;
        node->WorldMatrix(worldmatrix);

        tlPoint wp  = lp * worldmatrix;
        tlPoint wlv = VectorTransform(worldmatrix, llv);
        tlPoint wuv = VectorTransform(worldmatrix, luv);

        p3dcam->SetAspectRatio((float)camera.aspectRatio());
        p3dcam->SetNearClip((float)camera.nearClippingPlane());
        p3dcam->SetFarClip((float)camera.farClippingPlane());

        p3dcam->SetFOV((float)fov);
        p3dcam->SetPosition(wp);
        p3dcam->SetLook(wlv);
        p3dcam->SetUp(wuv);

        p3dcam->Scale(SceneNode::UIScale());

        mInventory->Store(p3dcam);

        if (ExporterOptions::ExportAnimations())
        {
            // Allocate new CameraAnimNode
            CameraAnimNode *can = new CameraAnimNode(node);
            // node is the camera shape.. use transform for Cyclic flag
            can->SetIsCyclic( node->Parent()->IsCyclic() );
            AnimNode::AddNode(can);
        }
    }
}


// *********************************************
//
// Class SceneNode
// Build Lights
//
//
MStatus SceneNode::BuildLights(void)
{
    MStatus     status = MS::kSuccess;

    SceneIterator it;
    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();

        tlLight *p3dlight = NULL;

        if (node->MayaType() == MFn::kAmbientLight)     p3dlight = node->BuildAmbientLight();
        if (node->MayaType() == MFn::kDirectionalLight) p3dlight = node->BuildDirectionalLight();
        if (node->MayaType() == MFn::kPointLight)       p3dlight = node->BuildPointLight();
        if (node->MayaType() == MFn::kSpotLight)        p3dlight = node->BuildSpotLight();
        if (p3dlight == NULL) continue;

        // AssignUniqueName() -> template function in Scene.hpp
        AssignUniqueName( mInventory, p3dlight );

        p3dlight->Scale(SceneNode::UIScale());

        // Decay Range
        MFnDependencyNode       fnDependNode( node->MayaObject() );
        MPlug worldMatrixPlug = fnDependNode.findPlug( "worldMatrix", &status );
        if ( status == MS::kSuccess )
        {
            // Lights should _never_ be instanced!
            // While Maya allows this, Alias strongly, strongly discourages it.
            worldMatrixPlug = worldMatrixPlug[0];   // ASSUME instance 0 (zero)

            MPlugArray          connectedTo;
            unsigned int i;
            worldMatrixPlug.connectedTo( connectedTo, false, true /* asSrc */, &status );
            for ( i = 0; i < connectedTo.length(); i++ )
            {
                fnDependNode.setObject( connectedTo[i].node() );
                if ( fnDependNode.typeId() == P3DDECAYRANGE_MTYPEID )
                {
                    int decayMode = DecayRange::kDecayModeSphere;
                    MVector innerRadius = MVector( 0.5, 0.5, 0.5 );
                    MVector outerRadius = MVector( 1.0, 1.0, 1.0 );
                    double rotateY = 0.0;

                    MPlug decayModePlug = fnDependNode.findPlug( "decayMode", &status );
                    if ( status == MS::kSuccess )
                    {
                        decayModePlug.getValue( decayMode );
                    }
                    MPlug innerRadiusPlug = fnDependNode.findPlug( "innerRadius", &status );
                    if ( status == MS::kSuccess )
                    {
                        innerRadiusPlug.child(0).getValue( innerRadius.x );
                        innerRadiusPlug.child(1).getValue( innerRadius.y );
                        innerRadiusPlug.child(2).getValue( innerRadius.z );
                        innerRadius *= SceneNode::UIScale();
                    }
                    MPlug outerRadiusPlug = fnDependNode.findPlug( "outerRadius", &status );
                    if ( status == MS::kSuccess )
                    {
                        outerRadiusPlug.child(0).getValue( outerRadius.x );
                        outerRadiusPlug.child(1).getValue( outerRadius.y );
                        outerRadiusPlug.child(2).getValue( outerRadius.z );
                        outerRadius *= SceneNode::UIScale();
                    }
                    MPlug rotateYPlug = fnDependNode.findPlug( "rotateY", &status );
                    if ( status == MS::kSuccess )
                    {
                        rotateYPlug.getValue( rotateY );
                    }

                    if ( decayMode == DecayRange::kDecayModeSphere ) p3dlight->SetDecayRangeType( tlLight::SPHERE_DECAY_RANGE );
                    else if ( decayMode == DecayRange::kDecayModeCube ) p3dlight->SetDecayRangeType( tlLight::CUBOID_DECAY_RANGE );
                    p3dlight->SetInnerDecayRange( tlPoint( innerRadius.x, innerRadius.y, innerRadius.z ) );
                    p3dlight->SetOuterDecayRange( tlPoint( outerRadius.x, outerRadius.y, outerRadius.z ) );
                    p3dlight->SetRotationY( static_cast<float>(rotateY) );
                }
            }
        }

        mInventory->Store(p3dlight);

        if (ExporterOptions::ExportAnimations())
        {
            // Allocate new LightAnimNode
            LightAnimNode *lan = new LightAnimNode(node, p3dlight);
            // node is Light shape node.. use Transform for Cyclic flag
            lan->SetIsCyclic( node->Parent()->IsCyclic() );
            AnimNode::AddNode(lan);
        }

        tlLightGroup *lg = node->ScenegraphLightGroup();
        if (lg != NULL)
        {
            const char *lightname = p3dlight->GetName();
            lg->AddLight(lightname);
        }
    }

    return status;
}


// ************************************************
//
// Class SceneNode
// Build Ambient Light
//
//
tlLight *SceneNode::BuildAmbientLight(void)
{

    MFnAmbientLight ambientlight(MayaObject());

    tlLight *light = new tlLight;
    light->SetName(Name());
    light->SetType(tlLight::Ambient);

    float constant = 1.0F;
    float linear   = 0.0F;
    float squared  = 0.0F;

    light->SetAttenuation(constant, linear, squared);

    MColor colour = ambientlight.color();
    float inten   = ambientlight.intensity();
    if(inten < 0.0f)
    {
        light->SetIlluminationType( tlLight::NEGATIVE_ILLUMINANT);
        inten *= -1.0f;
    }

    tlColour lc(colour.r * inten, colour.g * inten, colour.b * inten);

    // Position required for p3dDecayRange & Lights Chooser
    tlPoint worldpos;
    WorldPosition(worldpos);
    light->SetPosition(worldpos);

    light->SetColour(lc);
    light->SetEnabled(true);
    light->SetShadow( false );

    return light;
}


// ************************************************
//
// Class SceneNode
// Build Directional Light
//
//
tlLight *SceneNode::BuildDirectionalLight(void)
{
    // make sure that the light node is really a light node
    MFnDirectionalLight dirlight(MayaObject());


    // Create light
    tlLight *light = new tlLight;
    light->SetName(Name());
    light->SetType(tlLight::Directional);

    float constant = 1.0F;
    float linear   = 0.0F;
    float squared  = 0.0F;

    // Decay not used in directional lights
    light->SetAttenuation(constant, linear, squared);

    // The direction is transformed by the nodes above it
    tlMatrix worldmatrix;
    WorldMatrix(worldmatrix);

    tlPoint dv(0.0F, 0.0F, 1.0F);
    tlPoint wdv = VectorTransform(worldmatrix, dv); // 3 x 3

    bool  bShadow = dirlight.useDepthMapShadows( );
    bool  bIlluminates = true;
    PlugValue( mPath.node(), "p3dLightIlluminates", bIlluminates);

    MColor colour = dirlight.color();
    float inten   = dirlight.intensity();
    if(!bIlluminates)
    {
        light->SetIlluminationType(tlLight::ZERO_ILLUMINANT);
    }
    else if(inten < 0.0f)
    {
        light->SetIlluminationType(tlLight::NEGATIVE_ILLUMINANT);
        inten *= -1.0f;
    }
    tlColour lc(colour.r * inten, colour.g * inten, colour.b * inten);

    // Position required for p3dDecayRange & Lights Chooser
    tlPoint worldpos;
    WorldPosition(worldpos);
    light->SetPosition(worldpos);

    light->SetDirection(wdv);
    light->SetColour(lc);
    light->SetEnabled(true);
    light->SetShadow( bShadow );

    return light;
}


//===========================================================================
// SceneNode::BuildPointLight
//===========================================================================
// Description: Creates a tlLight object from the current Maya node.
//              (stored in member var 'mPath').
//
// Constraints: Decay type will use ONE of 'constant', 'linear' or 'squared'.
//
// Parameters:  (void)
//
// Return:      (tlLight*): The new Light.
//
//===========================================================================
tlLight *SceneNode::BuildPointLight(void)
{
    // make sure that the light node is really a light node
    MFnPointLight pointlight(MayaObject());
    
    // Create light
    tlLight *light = new tlLight;
    light->SetName(Name());
    light->SetType(tlLight::Point);
    
    float constant = 1.0F;
    float linear   = 0.0F;
    float squared  = 0.0F;

    // Decay not used in directional lights
    int decay_rate = pointlight.decayRate();
    
    // Maya uses only a single decay type.
    if (decay_rate == 1)
    {
        linear = 1.0F;
        constant = 0.0F;        // No 'constant' if decayType is 'linear'
    }
    if (decay_rate == 2)
    {
        squared = 1.0F;
        constant = 0.0F;        // No 'constant' if decayType is 'squared'
    }
    //if (decay_rate == 3) ???
    
    bool bShadow  = pointlight.useDepthMapShadows( );
    bool  bIlluminates = true;  // Bug fix: 06 Dec 2002 - Should default to TRUE (equates to tlLight::POSITIVE_ILLUMINANT
    PlugValue( mPath.node(), "p3dLightIlluminates", bIlluminates);

    MColor colour = pointlight.color();
    float inten   = pointlight.intensity();
    if(!bIlluminates)
    {
        light->SetIlluminationType(tlLight::ZERO_ILLUMINANT);
    }
    else if(inten < 0.0f)
    {
        light->SetIlluminationType(tlLight::NEGATIVE_ILLUMINANT);
        inten *= -1.0f;
    }
    tlColour lc(colour.r, colour.g, colour.b);
    
    // if intensity is less than 1, we change the colour of light.
    if( inten < 1.0 )
    {
        lc.red *= inten;
        lc.blue *= inten;
        lc.green *= inten;
    }
    // if intensity is >=1 we change the attenuation factors.
    else
    {
//      // The "old school" way...
//        float factor;
//        factor = sqrt( inten );
//        constant /= factor;           //decrease the affect of intensity
        constant    /= inten;
        linear      /= inten;
        squared     /= inten;
    }
    
    // Adjust for Maya's UI unit
    linear   /= UIScale();
    squared  /= ( UIScale() * UIScale() );
    
    light->SetAttenuation(constant, linear, squared);
    
    tlPoint worldpos;
    WorldPosition(worldpos);
    
    light->SetPosition(worldpos);
    light->SetColour(lc);
    light->SetEnabled(true);
    light->SetShadow( bShadow );
    
    return light;
}


//===========================================================================
// SceneNode::BuildSpotLight
//===========================================================================
// Description: Creates a tlLight object from the current Maya node.
//              (stored in member var 'mPath').
//
// Constraints: Decay type will use ONE of 'constant', 'linear' or 'squared'.
//              Maya's 3 decay regions are collapsed into a single region.
//              Maya's Barn Door settings are not currently implemented.
//
// Parameters:  (void)
//
// Return:      (tlLight*): The new Light.
//
//===========================================================================
tlLight *SceneNode::BuildSpotLight(void)
{
    MFnSpotLight spotlight(MayaObject());
    tlLight *light = new tlLight;
    light->SetName(Name());
    light->SetType(tlLight::Spot);


    //Set attenuation
    float constant = 1.0F;
    float linear   = 0.0F;
    float squared  = 0.0F;
    int decay_rate = spotlight.decayRate();

    // Maya uses only a single decay type.
    if (decay_rate == 1)
    {
        linear = 1.0F;
        constant = 0.0F;        // No 'constant' if decayType is 'linear'
    }
    if (decay_rate == 2)
    {
        squared = 1.0F;
        constant = 0.0F;        // No 'constant' if decayType is 'squared'
    }

    // Set direction
    tlMatrix worldmatrix;
    WorldMatrix(worldmatrix);
    tlPoint dv(0.0F, 0.0F, 1.0F);
    tlPoint wdv = VectorTransform(worldmatrix, dv); // 3 x 3
    light->SetDirection(wdv);

    //Set position
    tlPoint worldpos;
    WorldPosition(worldpos);
    light->SetPosition(worldpos);

    //set cone information
    //stuff in spotlight.hpp calls for:
    //cone(phi,theta,falloff)

    //is this the correct mapping?
    float phi = spotlight.coneAngle();
    float theta = spotlight.penumbraAngle();
    // Convert a negative theta to the corresponding positive value.
    if( theta < 0.0f )
    {
        const float PHI_MIN = 0.006f; // Minimum phi as defined by Maya.
        float delta_phi = ( phi - PHI_MIN ) / 2.0f; // Half width of spotlight.
        theta  = ( -theta > delta_phi ) ? delta_phi : -theta; // Safe positive.
        phi   -= theta * 2.0f;

//        MString w( "Negative Penumbra Angle of " );
//        w += Name();
//        w += " successfully converted.";
//        MGlobal::displayWarning( w );
        gExportLog.Add( CExportLogEntry( ExportLog::kDuplicateSkeletonRoot, this->MayaPath() ) );
    }
    float falloff = spotlight.dropOff();
    light->SetCone(phi, theta, falloff);


     //ought we to consider barn door effects?
     //if so, here is some stuff:
     /*
     if (spotlight.barnDoors() )
     {
        float leftBarnDoorAngle = spotlight.barnDoorAngle(leftBarnDoor);
        float rightBarnDoorAngle = spotlight.barnDoorAngle(rightBarnDoor);
        float topBarnDoorAngle = spotlight.barnDoorAngle(topBarnDoor);
        float bottomBarnDoorAngle = spotlight.barnDoorAngle(bottomBarnDoor);
     }
     */

    bool bShadow = spotlight.useDepthMapShadows( );
    bool  bIlluminates = true;  // Bug fix: 06 Dec 2002 - Should default to TRUE (equates to tlLight::POSITIVE_ILLUMINANT
    PlugValue( mPath.node(), "p3dLightIlluminates", bIlluminates);

    //set colour of light
    MColor colour = spotlight.color();
    float inten = spotlight.intensity();
    if(!bIlluminates)
    {
        light->SetIlluminationType(tlLight::ZERO_ILLUMINANT);
    }
    else if(inten < 0.0f)
    {
        light->SetIlluminationType(tlLight::NEGATIVE_ILLUMINANT);
        inten *= -1.0f;
    }

    // Added by Bryan Ewert on 02/11/2001
    // SpotLight Colour/Intensity modified to behave the same as PointLight

    //   tlColour lc(colour.r * inten, colour.g*inten, colour.b * inten);
    tlColour lc(colour.r, colour.g, colour.b);

    // if intensity is less than 1, we change the colour of light
    if( inten < 1.0 )
    {
        lc.red *= inten;
        lc.blue *= inten;
        lc.green *= inten;
    }
    // if intensity is >=1 we change the attenuation factor
    else
    {
        constant    /= inten;           //decrease the affect of intensity
        linear      /= inten;
        squared     /= inten;
    }

    // Adjust for Maya's UI unit
    linear   /= UIScale();
    squared  /= ( UIScale() * UIScale() );

    light->SetAttenuation(constant, linear, squared);

    // END Modifications by Bryan Ewert on 02/11/2001

    light->SetColour(lc);

    light->SetEnabled(true);

    light->SetShadow( bShadow );
    return light;
}


// *********************************************
//
// Class SceneNode
// Build Light Group
//
//
void SceneNode::BuildLightGroup(void)
{

    tlTable<char *> groupedlights;
    tlTable<tlLightGroup *> lgs;


    SceneIterator it;
    for (; !it.Done(); it.Next())
    {
        SceneNode *node = it.Node();

        // make sure that this light group hasn't been processed already
        tlLightGroup *lg = node->ScenegraphLightGroup();
        if (lg == NULL) continue;

        int b;
        for (b = 0; b < lgs.Count(); b++)
        {
            if (lgs[b] == lg)
            {
                lg = NULL;
                break;
            }
        }

        if (lg == NULL) continue;
        lgs.Append(lg);

        // Add this light group to the scenegraph
        int numlights = lg->NumberOfLights();
        if (numlights > 0)
        {
            // As with Lights, it is not logical that additional LightGroups
            // replace an existing LightGroup with the same name.
            // Thus, enforce a unique name.
            // This will only come into play if the user both
            // checks "NIS Scenegraph" and unchecks "Use Scenegraph Name
            // For LightGroup" options, allowing multiple LightGroups
            // to be created using the same custom name.

            // AssignUniqueName() -> template function in Scene.hpp
            AssignUniqueName( mInventory, lg );

            mInventory->Store(lg);
            tlScenegraphLightGroup *sglg = new tlScenegraphLightGroup;
            sglg->SetName(lg->GetName());
            sglg->SetLightGroup(lg->GetName());
            node->Scenegraph()->AddNode(sglg, "root");

            int a;
            for (a = 0; a < numlights; a++)
            {
                char *lightname = lg->LightName(a);
                groupedlights.Append(lightname);
            }
        }
    }



    // get the lights in the inventory and add them to this group
    tlInventory::Iterator<tlLight>* lightIt = new tlInventory::Iterator<tlLight>(mInventory);
    tlLightGroup *group = NULL;

    tlLight *light = lightIt->First();
    while (light)
    {
        bool lightexported = false;
        int a;
        for (a = 0; a < groupedlights.Count(); a++)
        {
            if (!strcmp(groupedlights[a], light->GetName()))
            {
                lightexported = true;
                break;
            }
        }

        if (!lightexported)
        {
            if (group == NULL)
            {
                group = new tlLightGroup;
                group->SetName(ExporterOptions::LightGroupName());
            }
            group->AddLight((char *)light->GetName());
        }
        light = lightIt->Next();
    }
    delete lightIt;

    if (group != NULL)
    {
        mInventory->Store(group);
    }
}

tlLightGroup* SceneNode::NewLightGroup( const char* sgName )
{
    tlLightGroup* plg = new tlLightGroup;

    if ( ExporterOptions::UseScenegraphNameForLightGroup() )
    {
        // Light groups for a scenegraph share names.
        // The unattached lightgroup is named from the exporter options
        plg->SetName( sgName );
    }
    else
    {
        plg->SetName( ExporterOptions::LightGroupName() );
    }

    mScenegraphLightGroupTable.Append( plg );
    return plg;
}


void SceneNode::BuildLocators(void)
{
    SceneIterator it;

    for (; !it.Done(); it.Next() )
    {
        SceneNode* node = it.Node();
        if (node->MayaType() != MFn::kLocator) continue;
        MFnDependencyNode locator(node->MayaObject());
        tlLocator *p3dLocator = new tlLocator;
        p3dLocator->SetName(node->Name());
//        MGlobal::displayInfo(node->Name());

        tlPoint newPosition;
        node->WorldPosition(newPosition);
        p3dLocator->SetPosition(newPosition);
        p3dLocator->Scale(SceneNode::UIScale());    // Compensate for Maya's UI Unit Preference.

        // If this fails to store, there was likely a naming conflict
        if ( mInventory->Store(p3dLocator) != 0 )
        {
            delete p3dLocator;
        }

    }  //finish iterating through all nodes in scene

}

void SceneNode::AddUniqueMaterialNode( const char* pMaterialName )
{
    mMaterialNodes.AppendUnique( pMaterialName );
}

//===========================================================================
// SceneNode::AddGameAttribute
//===========================================================================
// Description: Adds a game attribute (tlGameAttr chunk) to the SceneNode
//              inventory.  This is provided as a separate function because
//              it may be desirable to add a Pure3D game attribute to a 
//              node that is not in the SceneNode iterator (e.g. a Material
//              or other Dependency Graph node).
//              
//              If the GameAttribute being added from an object represented 
//              by a (SceneNode) instance, use its SceneNode::Name() as
//              the pName argument. If you don't specify a name, the node's
//              name (e.g. MFnDependencyNode::name()) will be used.
//
// Constraints: 
//
//  Parameters: const MObject& node: The object that owns the 
//                  "P3D_GameAttr" attribute.
//              const MObject& attr: The "P3D_GameAttr" attribute.
//              const char* pName: The name to use for the tlGameAttr.
//                  If NULL, the node's name will be used.
//
//      Return: 
//
//===========================================================================
bool SceneNode::AddGameAttribute( const MObject& node, const MObject& attr, const char* pName )
{
    MStatus                     status;

    MFnDependencyNode fnNode( node, &status );
    if ( status != MS::kSuccess ) return false;

    MObject data;

    MPlug strPlug( node, attr );      //we need to retrieve the contents of the P3D_GA attr
    status = strPlug.getValue(data);                   //put the string into the object 'data'
    if (status != MS::kSuccess)
    {
//            MGlobal::displayError("Couldn\'t get data from plug");
        gExportLog.Add( CExportLogEntry( ExportLog::kGameAttributeFailure, pName ) );
        return false;
    }

    MFnStringData str(data, &status);                  //convert object to stringdata
    if (status != MS::kSuccess)
    {
//            MGlobal::displayError("Error initalizing string data");
        gExportLog.Add( CExportLogEntry( ExportLog::kGameAttributeFailure, pName ) );
        return false;
    }

    tlGameAttr* gameAttr = new tlGameAttr;    //we've found a node with game attributes

    //parse string
    MString strData = str.string();                    //the P3D_GameAttr string separates its components with '~'

    MStringArray strArr;                               //so extract all the individual components into the attr. name array
    strData.split('~', strArr);

    for ( int i=0; i < strArr.length(); i++)                //for each custom attribute
    {
        MString curAttName = strArr[i];
        MObject curAttribute = fnNode.attribute(curAttName, &status);     //obtain the attribute

        if (status == MS::kFailure)
        {
//                MGlobal::displayError("Could not find attribute with name: " + curAttName );
            gExportLog.Add( CExportLogEntry( ExportLog::kGameAttributeFailure, pName ) );
            continue;
        }
         //we've found a game attribute so find its plug
        //MPlug curPlug = node->mFnDag.findPlug(curAttName, &status);
        MPlug curPlug( node, curAttribute );                     //create a non-networked plug for the attr.
        if (status == MS::kFailure)
        {
//                MGlobal::displayError("Could not find plug for attribute: " + curAttName );
            gExportLog.Add( CExportLogEntry( ExportLog::kGameAttributeFailure, pName ) );
            continue;
        }

        MFnTypedAttribute typedAttrib(curAttribute);                //don't want to say it's numeric yet- might be matrix

        if ((typedAttrib.attrType()!= MFnData::Type::kMatrix))      //test for matrix type (could do it another way to test for strings, etc.)
        {
            MFnNumericAttribute fnAttrib(curAttribute);              //it isn't a a matrix- assume it's numeric

            switch(fnAttrib.unitType())
            {

                case MFnNumericData::kShort:
                {

                    short value;
                    curPlug.getValue(value);
                    gameAttr->SetIntParam(fnAttrib.name().asChar(), value);
                }
                break;

                case MFnNumericData::kLong:
                {

#if ( MAYA_API_VERSION < 400 )
// Maya v3 uses (long)
                long value;
#else
// Maya v4+ uses (int)
                int value;
#endif

                    curPlug.getValue(value);
                    gameAttr->SetIntParam(fnAttrib.name().asChar(), value);
                }
                break;

                case MFnNumericData::kFloat:
                {
                    float value;
                    curPlug.getValue(value);
                    gameAttr->SetFloatParam(fnAttrib.name().asChar(), value);
                }
                break;

                case MFnNumericData::k3Float: //can be colour or vector
                {
                    if (fnAttrib.isUsedAsColor() )
                    {
                        tlColour colour;
                        if(curPlug.numChildren() == 3)
                        {
                            curPlug.child(0).getValue(colour.red);
                            curPlug.child(1).getValue(colour.green);
                            curPlug.child(2).getValue(colour.blue);
                        }
                        else
                        {
                            // How would this happen.. the numeric data type is k3Float?
                            MGlobal::displayInfo("Colour Attribute doesn't have 3 components!");
                        }
                        gameAttr->SetColourParam(fnAttrib.name().asChar(), colour);
                    }

                    else
                    {
                        tlPoint point;
                        if (curPlug.numChildren() == 3)
                        {
                            curPlug.child(0).getValue(point.x);
                            curPlug.child(1).getValue(point.y);
                            curPlug.child(2).getValue(point.z);
                        }
                        else
                        {
                            // How would this happen.. the numeric data type is k3Float?
                            MGlobal::displayInfo("Vector attribute doesn't have 3 components!");
                        }
                        gameAttr->SetVectorParam(fnAttrib.name().asChar(), point);
                    }
                }
                break;
                default:       //it is not, in fact, numeric
                {
//                        MGlobal::displayInfo("That type of custom attribute not currently supported");
                    gExportLog.Add( CExportLogEntry( ExportLog::kGameAttributeUnsupported, pName ) );
                }
            }; //end numeric switch
        }


        else  //the attribute is a matrix
        {
            MFnMatrixAttribute matAttrib(curAttribute);
            MMatrix attribMatrix;
            MFnMatrixData matData(curPlug);
            attribMatrix = matData.matrix();

            tlMatrix exportMatrix;
            attribMatrix.get(exportMatrix.element);    //convert it to a tlMatrix

            //there's some bizarre problem with saying matAttrib.name().asChar() - it returns an empty string
            //so instead we take the very last bit of the full name
            //e.g. pCone1.pConeShape1.MyMatrixType becomes just MyMatrixType
            MString matName = curPlug.name();

            MStringArray matStrArr;
            matName.split('.', matStrArr);

            gameAttr->SetMatrixParam(matStrArr[matStrArr.length()-1].asChar(), exportMatrix);
        }


    }  //end searching through string array

    if ( pName != NULL ) gameAttr->SetName( pName );
    else gameAttr->SetName( fnNode.name().asChar() );

    if ( ( mInventory->Store(gameAttr) ) != 0 ) return false;

    return true;
}

void SceneNode::BuildGameAttributes(void)
{
    MStatus                     status;

    int num = 0;
    int i=0;
    //idea: go through inventory.
    //for all nodes in scene iterator with GameAttr attribute, make GameAttrChunk

    SceneIterator it; //iterate through all nodes
    for (; !it.Done(); it.Next() )
    {
        SceneNode* node = it.Node();

        MFnDependencyNode fnNode(node->MayaObject());

        MObject attribute = fnNode.attribute("P3D_GameAttr", &status);//search for special game_attr attribute

        if (status == MS::kFailure)
        {

            continue;     //go to next node
        }

        AddGameAttribute( node->MayaObject(), attribute, node->Name() );

     }  //end sceneIterator loop

     // Now iterate all Materials for Game Attr
     for ( i = 0; i < mMaterialNodes.Count(); i++ )
     {
        MSelectionList          select;
        status = MGlobal::getSelectionListByName( mMaterialNodes[i], select );
        if ( status == MS::kSuccess )
        {
            MObject material;
            select.getDependNode( 0, material );

            MFnDependencyNode fnNode( material );
            MObject attribute = fnNode.attribute("P3D_GameAttr", &status);  //search for special game_attr attribute
            if ( status == MS::kSuccess )
            {
                AddGameAttribute( material, attribute, mMaterialNodes[i] );
            }
        }
     }
}


// ***************************************************
//
// Class SceneNode
// Build MultiController
//
//
void SceneNode::BuildMultiController(int numframes)
{

    // No anims, no multicontroller
    if (!ExporterOptions::ExportAnimations()) return;

     // Frame Controller: Multi Controller
    tlInventory::Iterator<tlFrameController>* fcIt =
            new tlInventory::Iterator<tlFrameController>(mInventory);

    tlFrameController *fc = fcIt->First();
    int count = 0;
    while (fc != NULL)
    {
        count++;
        fc = fcIt->Next();
    }

    // No frame controllers, no multicontroller
    if (count == 0) return;

    tlMultiController *mc = new tlMultiController(count);
    mc->SetName(ExporterOptions::MulticontrollerName());
    mc->SetLength((float)numframes);


    MTime time;
    mc->SetFramerate(GetFrameRate( time));


    fc = fcIt->First();
    int track = 0;
    while (fc != NULL)
    {
        tlMultiControllerTrackData              mctd;
        unsigned int                            fcFrames = numframes;

        mctd.name      = strnew(fc->GetName());
        mctd.starttime = 0.0F;

        // Get the animation attached to this FrameController
        tlAnimation* fcAnimation = toollib_find<tlAnimation>(mInventory, fc->AnimationName());
        if ( fcAnimation != NULL )
        {
            fcFrames = fcAnimation->GetNumFrames();
        }

        mctd.endtime   = (float)fcFrames;
        mctd.scale     = 1.0F;

        mc->SetTrackData(track, mctd);

        mctd.name = NULL;

        track++;
        fc = fcIt->Next();
    }
    mInventory->Store(mc);
    delete fcIt;
}


// ******************************************************************************
// ******************************************************************************
// ******************************************************************************
//
// Class SceneIterator
// Constructor
//
//
SceneIterator::SceneIterator(SceneNode *root) : mRoot(root)
{
    if (mRoot == NULL) mRoot = SceneNode::WorldRoot();
    Reset();
}



// ***********************************************
//
// Class SceneIterator
// Destructor
//
//
SceneIterator::~SceneIterator(void)
{
    mStack.ZeroCount();
    mDone = true;
}




// ***********************************************
//
// Class SceneIterator
// Reset
//
//
bool SceneIterator::Reset(void)
{

    mStack.ZeroCount();
    mCurrent = mRoot;
    if (mCurrent == NULL)
    {
        mDone = true;
        return false;
    }

    mDone = false;
    int child = -1;
    mStack.Append(child);
    return true;
}


// ***********************************************
//
// Class SceneIterator
// Next
//
//
bool SceneIterator::Next(void)
{
    if (mDone) return false;

    int nextchild = ++mStack[mStack.Count() - 1];

    // Is the next child valid?
    if (nextchild < mCurrent->ChildCount())
    {
        assert(mCurrent->Child(nextchild));
        mCurrent = mCurrent->Child(nextchild);
        int child = -1;
        mStack.Append(child);
        return true;
    }

    mStack.SetCount(mStack.Count() - 1);

    // The next child is not a child of mine, pop the stack and try again
    // Am I at the top of stack?
    if ((mCurrent == mRoot) && (mStack.Count() == 0))
    {
        mDone = true;
        return false;
    }

    mCurrent = mCurrent->Parent();

    // Have I reached the root?
    if (mCurrent == NULL)
    {
        mDone = true;
        return false;
    }

    return Next();
}








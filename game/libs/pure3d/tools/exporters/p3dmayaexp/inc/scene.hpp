//===========================================================================
// Copyright ©2000-2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     30 Aug 2000
// Modified:    December 3, 2001
// Version:     
//
// Component:   
//
// Description: This class is a mega-description for all of the data 
//              extracted from the current Maya Scene during export.
//
// Constraints: 
//
// Creator:     Eric Honsch
//
//===========================================================================

// Recompilation protection flag.
#ifndef _SCENE_HPP
#define _SCENE_HPP

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MDagPath.h>
#include <maya/MFnDagNode.h>
#include <mayaDagSelection.hpp>
#include "animOptimization.hpp"

#include "tlTable.hpp"
#include "tlStringTable.hpp"
#include "tlMatrix.hpp"
#include "tlPoint.hpp"

//===========================================================================
// Forward References
//===========================================================================

class AnimNode;

class tlEntity;
class tlTriMesh;
class tlPrimGroupMesh;
class tlSkeleton;
class tlInventory;
class tlPoseAnim;
class tlPoseVisAnim;
class tlScenegraph;
class tlScenegraphNode;
class tlIndexedSkinVertex;
class tlLight;
class tlLightGroup;

class SceneNode;                // for class SceneMeshInfo

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//******************************
//
//
class Influence
{
 public:
    int                          vertex;
    float                        weight;

    bool                         operator==(const Influence &i)        { return (vertex == i.vertex) && (weight == i.weight); }
};


//******************************
//
//
class InfluenceGroup 
{
 public:
    char*                       mesh;
    SceneNode*                  node;
    tlTable<Influence>          influences;

    void                        AddInfluence(int vertex, float weight);

    float                       min_weight;

    bool                        operator==(const InfluenceGroup &ig);
};


//*****************************
//
//
class SmoothMeshInfo
{
 public:
    char*                        meshname;
    tlSkeleton*                  skeleton;
    SceneNode*                   node;
    SceneNode*                   bindroot;
    bool                         processed;

    bool                         operator==(const SmoothMeshInfo &si)  { return false; }
};

//*****************************************************
//
// Class SceneNode
//
//
class SceneNode
{
 public:

     SceneNode(MDagPath &path, SceneNode *parent = NULL);
     ~SceneNode(); 

     MDagPath                   MayaPath(void) const                { return mPath; }
     MObject                    MayaObject(void) const              { return mPath.node(); }

    static CMayaDagSelection&   DagSelection( void )                { return mDagSelection; }

     static SceneNode*          Find(const char *nodename);
     SceneNode*                 FindChild(const char *nodename);

     char*                      Name(void) const                    { return mNodeName; }
     char*                      FullName(void) const                { return mFullNodeName; }
     bool                       Processed(void) const               { return mProcessed; }
     void                       SetProcessed(bool process)          { mProcessed = process; }

     SceneNode*                 Parent(void) const                  { return mParent; } 
     SceneNode*                 Child(int i) const                  { return mChildren[i]; }
     int                        ChildCount(void) const              { return mChildren.Count(); }

    int                         NumDrawables(void) const            { return mDrawables.Count(); }
    tlEntity*                   Drawable( int index ) const         { return mDrawables[index]; }
    
     int                        AppendChild(SceneNode *c);    // returns child num
     SceneNode*                 RemoveChild(char *name);      // returns child removed
     SceneNode*                 RemoveChild(SceneNode *node); // returns child removed

     void                       AddInfluenceGroup(InfluenceGroup *group);
     void                       AddJointWeightsToMesh(char *fullmeshname, tlTriMesh *mesh, tlTable<tlIndexedSkinVertex *> *vertex_lookup);
     char*                      InfluencedMesh(void) const;

     void                       WorldPosition(tlPoint &p) const;
     void                       Matrix(tlMatrix &m) const;
     void                       WorldMatrix(tlMatrix &m) const;
//     void                       ScenegraphRootMatrix(tlMatrix &m) const;
     void                       BindWorldPosition(tlPoint &p) const;
     void                       BindMatrix(tlMatrix &m) const;
     void                       BindWorldMatrix(tlMatrix &m) const;
     void                       BindMatrixToParent( const SceneNode* parent, tlMatrix& transform ) const;

     static float               UIScale(void);
     static float               InternalScale(void);

     tlSkeleton*                Skeleton(void) const               { return mSkeleton; }
     int                        SkeletonJointID(void) const        { return mSkeletonJointID; }
     void                       SetSkeletonJointId(int id)         { mSkeletonJointID = id; }

    void                        SetScenegraph( tlScenegraph* psg )                      { mScenegraph = psg; }
     tlScenegraph*              Scenegraph(void) const                                  { return mScenegraph; }
     void                       SetScenegraphLightGroup( tlLightGroup* pLightGroup )    { mScenegraphLightGroup = pLightGroup; }
     tlLightGroup*              ScenegraphLightGroup(void) const                        { return mScenegraphLightGroup; }

     MFn::Type                  MayaType(void) const               { return mPath.node().apiType(); }
     MTypeId                    MayaTypeId(void) const             { return MFnDependencyNode(mPath.node()).typeId(); }

     // Reference Info
     bool                       IsFileReference(void) const        { return  mFileReference; }
     bool                       IsInstance(void) const             { return  mIsInstance; }
     int                        InstanceNumber(void) const         { return  mInstanceNumber; }
     char*                      ReferenceFile(void);
    
     // Pure3D Maya Hierarchy attributes
     bool                       IsSkeletonRoot(void) const              { return mSkeletonRoot; }
     bool                       IsValidSkeletonRoot(void) const;
     bool                       IsHightPrecisionRotAngle( void ) const  { return mHPRotAngle; }
     bool                       IsScenegraphRoot(void) const            { return mScenegraphRoot; }
     bool                       IsValidScenegraphRoot(void) const;
     bool                       IsInScenegraph(void) const              { return mIsInScenegraph; }
     bool                       IsNotInSkeleton(void) const             { return mNotInSkeleton; }
     bool                       IsTraversalStop(void) const             { return mTraversalStop; }
     bool                       IsCyclic(void) const                    { return mCyclic; }
     bool                       NoCull(void) const                      { return mNoCull; }
     float                      DrawOrder( void ) const                 { return mDrawOrder; }
     bool                       HasScenegraphAnimation(void) const      { return mHasScenegraphAnimation; }

     void                       SetTraversalStop(bool stop)             { mTraversalStop = stop; }

    bool                        GetCreateAnimatedObjFactory(void) const     { return mCreateAnimatedObjFactory; }
    void                        SetCreateAnimatedObjFactory( bool caof )    { mCreateAnimatedObjFactory = caof; }

    bool                        GetCreateAnimatedObj(void)                  { return mCreateAnimatedObj; }
    void                        SetCreateAnimatedObj( bool cao )            { mCreateAnimatedObj = cao; }

     // Returns true if object is visible at current frame
     bool                       IsVisible(void) const;

     // returns true if object is ever visible 
     bool                       IsEverVisible(void) const          { return mIsEverVisible; }

     bool                       IsIntermediateObject(void)         { return mIsIntermediate; }

     bool                       IsSmoothBound(int *index = NULL) const;
     bool                       IsMesh(void) const                 { return ( mMesh?true:false ); }

     bool                       IsBoneLengthPreserved(void) const  { return mPreserveBoneLength; }
     bool                       IsVisibilityAnimated(void) const   { return mIsVisibilityAnimated; }

    bool                        HasVertexAnimation(void) const              { return mHasVertexAnimation; }
    bool                        HasVertexPositionAnimation(void) const      { return mHasVertexPositionAnimation; }
    float                       VertexPositionThreshold(void) const         { return mVertexPositionThreshold; }
    bool                        VertexPositionInterpolate(void) const       { return mVertexPositionInterpolate; }
    bool                        HasVertexNormalAnimation(void) const        { return mHasVertexNormalAnimation; }
    float                       VertexNormalThreshold(void) const           { return mVertexNormalThreshold; }
    bool                        VertexNormalInterpolate(void) const         { return mVertexNormalInterpolate; }
    bool                        VertexNormalUseVertexFace(void) const       { return mVertexNormalUseVertexFace; }
    bool                        HasVertexColourAnimation(void) const        { return mHasVertexColourAnimation; }
    float                       VertexColourThreshold(void) const           { return mVertexColourThreshold; }
    bool                        VertexColourInterpolate(void) const         { return mVertexColourInterpolate; }
    bool                        VertexColourUseVertexFace(void) const       { return mVertexColourUseVertexFace; }
    bool                        HasVertexUvAnimation(void) const            { return mHasVertexUvAnimation; }
    float                       VertexUvThreshold(void) const               { return mVertexUvThreshold; }
    bool                        VertexUv0Interpolate(void) const            { return mVertexUv0Interpolate; }
    bool                        VertexUv1Interpolate(void) const            { return mVertexUv1Interpolate; }
    bool                        VertexUv2Interpolate(void) const            { return mVertexUv2Interpolate; }
    bool                        VertexUv3Interpolate(void) const            { return mVertexUv3Interpolate; }

//    bool                        UseCustomAnimOptimization( void ) const     { return mAnimOptimization.Enable(); }
//    float                       AnimOptThresholdPos(void) const             { return mAnimOptimization.ThresholdPos(); }
//    float                       AnimOptThresholdRot(void) const             { return mAnimOptimization.ThresholdRot(); }
//    float                       AnimOptThresholdColour(void) const          { return mAnimOptimization.ThresholdColour(); }
//    float                       AnimOptThresholdFloat(void) const           { return mAnimOptimization.ThresholdFloat(); }
//    float                       AnimOptThresholdVector(void) const          { return mAnimOptimization.ThresholdVector(); }

/*  ****** PlugValue -- all overloads replaced by template function in scene.hpp ******

    // Gets the value of a plug in the Maya object, returns true if plug exists
    bool                       PlugValue(char *plugname, int    &value) const;
    bool                       PlugValue(char *plugname, bool   &value) const;
    bool                       PlugValue(char *plugname, char  *&value) const;
    bool                       PlugValue(char *plugname, float  &value) const;
    bool                       PlugValue(char *plugname, double &value) const;

*/

    // Gets the value of the special p3dBoolean Attribute
    bool                       BooleanState(const int plugId, bool &value) const;

    static SceneNode*          WorldRoot(void)                    { return mWorldRoot; }

    // You MUST set this before doing any work with SceneNodes
    static void                SetInventory(tlInventory *inv)     { mInventory = inv; }
    static tlInventory*        Inventory(void)                    { return mInventory; }

    // call this to build the scenegraph
    static MStatus             Build( MDagPathArray & selection );
    static void                BuildMatrices(void);
    static void                BuildBindMatrices(void);
    static void                BuildSkeletons(void);
    static void                BuildScenegraphs(void);
    static void                BuildMultiController(int numframes);

    static bool                ShouldSkipDAG( const MDagPath& dag );
    static void                CullInvisibleNodes(void);

    static void                BuildJointWeights(void);
    static MStatus             BuildTriMeshes(void);
    static void                AddJointWeightsToMeshes(void);
    static void                BuildSkins(void);
    static void                BuildMeshes(void);

    // Added by Bryan Ewert on 29 Apr 2002
    static void                BuildVertexAnimation( SceneNode* pNode, tlPrimGroupMesh *pgmesh, tlInventory* pInventory );

    static void                BuildAnimatedObjectFactories(void);
    static void                BuildAnimatedObjects(void);
    static void                BuildCompositeDrawableVisibility( void );
    static void                BuildParticleSystems(void);
    static void                BuildOpticEffects(void);
    static void                BuildBillboardObject(void);
    static void                BuildBoundingVolumes(void);
    static bool                BuildEventAnimations(void);
//     static MStatus              BuildVisibilityNodes(void);

    static void                 BuildCameras(void);
    static MStatus              BuildLights(void);
    static void                 BuildLightGroup(void);
    static tlLightGroup*        NewLightGroup( const char* sgName );

    static void                BuildLocators(void);

    static void                 BuildGameAttributes(void);
    static bool                 AddGameAttribute( const MObject& node, const MObject& attr, const char* pName );
    static void                 AddUniqueMaterialNode( const char* pMaterialName );

    static void                Cleanup(void);                  // deletes the SceneNode Hierarchy

    static void                RestoreBindPose(void);
    static void                DisableDynamics(void);
    static void                EnableDynamics(void);

    // Determines if duplicate names exist in the current hierarchy.
    static bool                 HasNamingConflict( void );

     tlTable<InfluenceGroup *>  GetInfluences(void) const      { return mInfluences; }

protected:

    static CMayaDagSelection    mDagSelection;

     MDagPath                   mPath;
     MFnDagNode                 mFnDag;

     char*                      mNodeName;
     char*                      mFullNodeName;
     bool                       mProcessed;                     // set when this node is claimed by a hierarchy 
     bool                       mFileReference;                 // If this is a reference to an object in this file
     bool                       mIsInstance;
     int                        mInstanceNumber;
     bool                       mIsIntermediate;
     bool                       mIsEverVisible;
     bool                       mIsVisibilityAnimated;          // needed for the scenegraph building of VisibilityNodes

     tlTriMesh*                 mMesh;
     tlTable<tlIndexedSkinVertex *>*    mMeshVertexLookup;

     tlSkeleton*                mSkeleton;
     int                        mSkeletonJointID;
     int                        mSkeletonEndEffectorJointID;    // only for IK animation

     tlTable<tlEntity*>         mDrawables;
     tlTable<bool>              mDrawablesInInventory;

     tlScenegraph*              mScenegraph;
     tlLightGroup*              mScenegraphLightGroup;
     static tlTable<tlLightGroup*>  mScenegraphLightGroupTable;

     SceneNode*                 mParent;
     tlTable<SceneNode *>       mChildren; 

     tlPoint                    mWorldPosition;
     tlMatrix                   mMatrix;
     tlMatrix                   mWorldMatrix;
     tlPoint                    mBindWorldPosition;
     tlMatrix                   mBindMatrix;
     tlMatrix                   mBindWorldMatrix;
//     tlMatrix                   mScenegraphRootMatrixLHS;

     bool                       mSkeletonRoot;
     bool                       mScenegraphRoot;
     bool                       mIsInScenegraph;
     bool                       mNotInSkeleton;
     bool                       mTraversalStop;
     bool                       mNoCull;
     bool                       mHPRotAngle;
     bool                       mPreserveBoneLength;
     int                        mExtraJointSortOrder;
     float                      mDrawOrder;
     bool                       mHasScenegraphAnimation;

    bool                        mHasVertexAnimation;
    bool                        mHasVertexPositionAnimation;
    float                       mVertexPositionThreshold;
    bool                        mVertexPositionInterpolate;
    bool                        mHasVertexNormalAnimation;
    float                       mVertexNormalThreshold;
    bool                        mVertexNormalInterpolate;
    bool                        mVertexNormalUseVertexFace;
    bool                        mHasVertexColourAnimation;
    float                       mVertexColourThreshold;
    bool                        mVertexColourInterpolate;
    bool                        mVertexColourUseVertexFace;
    bool                        mHasVertexUvAnimation;
    float                       mVertexUvThreshold;
    bool                        mVertexUv0Interpolate;
    bool                        mVertexUv1Interpolate;
    bool                        mVertexUv2Interpolate;
    bool                        mVertexUv3Interpolate;

    bool                        mCreateAnimatedObjFactory;
    bool                        mCreateAnimatedObj;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

     char*                      mSkeletonMirrorJointName;
     float                      mSkeletonMirrorEulerX;
     float                      mSkeletonMirrorEulerY;
     float                      mSkeletonMirrorEulerZ;

// END DEPRECATE

     bool                       mCyclic;

     tlTable<InfluenceGroup *>  mInfluences;

     static tlInventory*        mInventory;
     static SceneNode*          mWorldRoot;
     static                     tlTable<SmoothMeshInfo> mSmoothMeshes;

     static bool                mMayaAutoKeyframeEnabled;

//    CAnimOptimization           mAnimOptimization;

     // returns IsEverVisible
     bool                       ComputeIsEverVisible( void );

     void                       BuildChildren(void);
     void                       BuildChildMatrices(void);
     void                       BuildChildBindMatrices(void);

     void                       BuildChildSkeleton(SceneNode *parent );    // OBSOLETE -> , tlPoseAnim *anim, tlPoseVisAnim *visAnim );
     void                       BuildChildScenegraph(SceneNode *parent, bool transformOnly = false);

     void                       FindSkeletonRoots(void);

     tlLight*                   BuildAmbientLight(void);
     tlLight*                   BuildDirectionalLight(void);
     tlLight*                   BuildPointLight(void);
     tlLight*                   BuildSpotLight(void);

    static MStringArray         mNamingConflicts;

     static tlStringTable       mAnimatedObjectFactories;

    static tlStringTable        mMaterialNodes;      // List of all unique material nodes added.
};


//************************************
//
// Class Scene Iterator
//
class SceneIterator
{
     public:
     SceneIterator(SceneNode *root = NULL);
     ~SceneIterator();

     bool                        Done(void) { return mDone; }
     bool                        Reset(void);

     bool                        Next(void);
     SceneNode*                  Node(void) { return mCurrent; }

private:

     tlTable<int>                mStack;
     SceneNode*                  mRoot;
     SceneNode*                  mCurrent;
     bool                        mDone;

};

//===========================================================================
// template <class T> AssignUniqueName
//===========================================================================
// Description: Enforces a unique name for a tlEntity - one that does
//              not already exist in the Inventory.  Appends numerical 
//              suffix to generate unique name, if necessary.
//
// Constraints: 
//
//  Parameters: tlInventory* pInventory: Toollib inventory to search for
//                                       existing entities.
//              T* pEntity: Pointer to the entity type that requires
//                          a unique name.
//
//      Return: (bool): TRUE if entity was assigned a unique name;
//                      FALSE if it retained its original name.
//
//===========================================================================
template <class T> bool AssignUniqueName( tlInventory* pInventory, T* pEntity )
{
    bool bNameWasChanged = false;

    if ( toollib_find<T>( pInventory, pEntity->GetName() ) != NULL )
    {
        bNameWasChanged = true;

        const size_t MAX_NAME_SIZE = 1024;
        char* pNewName = new char [MAX_NAME_SIZE];
        memset( pNewName, 0, MAX_NAME_SIZE );

        unsigned int instance = 1;

        do
        {
            sprintf( pNewName, "%s%d", pEntity->GetName(), instance++ );
        }
        while ( toollib_find<T>( pInventory, pNewName ) != NULL );

        pEntity->SetName( pNewName );

        delete [] pNewName;
    }

    return bNameWasChanged;
}


//===========================================================================
// Inlines
//===========================================================================

#endif // _SCENE_HPP


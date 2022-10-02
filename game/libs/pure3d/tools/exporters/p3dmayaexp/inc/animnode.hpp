/*===========================================================================
    animnode.hpp
    created: Jan 21, 2000
    Eric Honsch

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

/* SEARCH STRINGS

class TextureAnimNode : public AnimNode
class DeformerExpressionAnimNode : public AnimNode
class VertexAnimationAnimNode : public AnimNode

*/


#ifndef _ANIMNODE_HPP
#define _ANIMNODE_HPP

#include <maya/MDagPath.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MPointArray.h>
#include <maya/MColorArray.h>
#include <maya/MFloatArray.h>
#include <maya/MFloatVectorArray.h>

#include "exporteroptions.hpp"
#include "textureprocess.hpp"
// #include "animRange.hpp"     // REMOVED for redesign
#include "inventoryEntity.hpp"
#include "animOptimization.hpp"

#include <stack.hpp>
#include "tlTable.hpp"
#include "tlChannel.hpp"
#include "tlExpressionAnim.hpp"
#include "tlTextureAnim.hpp"
#include "tlVertexAnim.hpp"
#include "tlVertexAnimKey.hpp"
#include "tlMatrix.hpp"
#include "tlUV.hpp"
#include "tlMultiController.hpp"

class tlInventory;
class tlLight;
class tlJointAnimGroup;
class tlPrimGroupMesh;
//class tlExpressionAnim;
class tlExpressionMixer;
class tlPoseAnim;
class tlPoseVisAnim;
class tlFrameController;
class tlSkeleton;
class tlScenegraphTransformAnim;
class tlLightAnim;
class tlCameraAnim;
class tlVisAnim;
class tlBillboardQuadGroupAnim;
class tlEmitterAnimation;
class tlGeneratorAnimation;
class tlVertexAnim;
class SceneNode;

//**************************************************************
// Class Anim Node
//**************************************************************
class AnimNode
{
public:

    enum AnimNodeVisibilityTypeEnum
    {
        kVisibilityTypeNone,
        kVisibilityTypeScenegraph,
        kVisibilityTypePose,
    };

    AnimNode(SceneNode* node );
    virtual ~AnimNode() { ; }

    static void                 Reset(void);
    static void                 AddNode(AnimNode* node);
    static MStatus              Export(void);
    static void                 FinalizeNodes(void);        // Adds Anim to Inventory, Builds Frame Controllers, and adds FC to inventory.
    static void                 AddFrameControllerToMultiController( tlFrameController* controller );
    static void                 RemoveFrameController( tlFrameController* controller );
    static bool                 ValidateName( const char* inName, char* outName );

/* ****  AnimRange DISABLED for removal ****

    static void                 ReconcileWithInventory( tlInventory* pInventory );
    static tlMultiController*   BuildMultiController( AnimRange& animRange );
    static void                 AddAnimRange( const AnimRange& range );
    static unsigned int         NumAnimRanges( void ) { return mAnimRanges.Count(); }
    static AnimRange*           GetAnimRange( unsigned int i ) { return &(mAnimRanges[i]); }
    int                         GetMinFrame();
    int                         GetMaxFrame();

*/

    static tlMultiController*   BuildMultiController( void );

    void                        SetVisibilityType( AnimNodeVisibilityTypeEnum visType )    { mVisType = visType; }
    AnimNodeVisibilityTypeEnum  VisibilityType( void ) const    { return mVisType; }
                 
//    void                        SetVisibilityAnimation(tlVisAnim* visAnim);
    tlVisAnim*                  GetVisibilityAnimation();

    void                        SetIsCyclic( bool bIsCyclic );
    bool                        IsCyclic( void ) const;

    bool                        EvalIsInterpolated( const MObject& node, const char** pAttributes, unsigned int numAttributes ) const;
    bool                        EvalIsInterpolated( const char** pAttributes, unsigned int numAttributes ) const;
    bool                        EvalIsInterpolated( const MPlug& plug, const MTime& startTime, const MTime& endTime ) const;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    void                        SetIsMirrored( bool bIsMirrored );
//    bool                        IsMirrored( void ) const;

// END DEPRECATE

protected:

    virtual void                SetupNode(int numframes, float framerate, int startframe = 0 ) = 0;
    virtual void                FillNode(int frame) = 0;
    virtual void                OptimizeNode(void) = 0;
    virtual tlFrameController*  FinalizeNode(void) = 0;
    void                        SetFinal( bool bFinal = true )             { mbFinalized = bFinal; }
    bool                        Finalized(void) const       { return mbFinalized; }
    virtual void                CleanUp(void) = 0;

    virtual bool                SetupVisibility(int numframes, float frameRate);
    virtual void                FillVisibility(int frame);
    virtual tlFrameController*  FinalizeVisibility(void);

    SceneNode*                                  mSceneNode;
    InventoryEntity<tlVisAnim*>*                mAnimNodeVisibility;    // A single Visibility Animation may apply to multiple children of a Composite Drawable.
    tlBoolChannel                               mVisibilityChannel;     
    AnimNodeVisibilityTypeEnum                  mVisType;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    bool                                        mbIsMirrored;

// END DEPRECATE

    bool                                        mbIsCyclic;
    bool                                        mbIsInterpolated;
    const char*                                 mFrameControllerName;

    CAnimOptimization                           mAnimOptimization;

private:
    // See notes in description for AnimNodeVisibilityAnimation above.
    static InventoryEntity<tlVisAnim*>*             mRootAnimNodeVisibility;        // Array of all Skeleton Root Visibility Animations
    static tlTable< InventoryEntity<tlVisAnim*>* >  mAnimNodeVisibilityTable;   
        
    static tlTable<AnimNode*>                   mNodes;
    static tlTable<TLUID>                       mIDs;       // UIDs for all non-static Anims, used to detect clashes.

    static tlTable<tlFrameController*>          mFrameControllers;

    bool                                        mbFinalized;

/* ****  AnimRange DISABLED for removal ****

    static tlTable<AnimRange>                   mAnimRanges;

*/

};

/*
//**************************************************************
// Class VisibilityAnimNode
//**************************************************************
class VisibilityAnimNode : public AnimNode
{
public:

    VisibilityAnimNode(SceneNode *node) : AnimNode(node) { ; }
    virtual ~VisibilityAnimNode() { ; }

protected:

    virtual void SetupNode(int numframes, float framerate) { ; }
    virtual void FillNode(int frame) { ; }
    virtual void OptimizeNode(void) { ; }
    virtual void FinalizeNode(void) { ; }
};
*/

//**************************************************************
// Class SkeletonAnimNode
//**************************************************************
class SkeletonAnimNode : public AnimNode
{
public:

    SkeletonAnimNode(SceneNode *node ) : AnimNode(node), mAnimation( NULL ), mJoint( NULL ) { ; }
    virtual ~SkeletonAnimNode() { ; }

    static void                                     Reset( void );

protected:

    virtual void SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    virtual void                CleanUp(void);

    static CStack<InventoryEntity<tlPoseAnim*>* >   mRootAnimation;     // Remember this to assign tlPoseAnim to child joints.
    InventoryEntity<tlPoseAnim*>*                   mAnimation;
    tlJointAnimGroup*                               mJoint;
};

//**************************************************************
// Class CompositeDrawableAnimNode
//**************************************************************
class CompositeDrawableAnimNode : public AnimNode
{
public:

    CompositeDrawableAnimNode(SceneNode *node, const tlSkeleton* hierNode, const SceneNode* skinNode);
    virtual ~CompositeDrawableAnimNode() { CleanUp(); }

protected:

    virtual void SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    InventoryEntity<tlPoseVisAnim*>*            mAnimation;
    const tlSkeleton*                           mHierNode;
    const SceneNode*                            mSkinNode;
};

//**************************************************************
// Class ScenegraphTransformAnimNode
//**************************************************************
class ScenegraphTransformAnimNode : public AnimNode
{
public:

    ScenegraphTransformAnimNode(SceneNode *node) : AnimNode(node), mAnimation(NULL) { ; }
    virtual ~ScenegraphTransformAnimNode() { ; }
    
protected:

    virtual void SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    tlScenegraphTransformAnim *mAnimation;
};

//**************************************************************
// Class CameraAnimNode
//**************************************************************
class CameraAnimNode : public AnimNode
{
public:

    CameraAnimNode(SceneNode *node) : AnimNode(node), mAnimation(NULL) { ; }
    virtual ~CameraAnimNode() { ; }

protected:

    virtual void SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    tlCameraAnim* mAnimation;
};

//**************************************************************
// Class LightAnimNode
//**************************************************************
class LightAnimNode : public AnimNode
{
public:

    LightAnimNode(SceneNode *node, const tlLight *light) : AnimNode(node), mAnimation(NULL), mLight(light)  { ; }
    virtual ~LightAnimNode() { ; }

protected:

    virtual void SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    tlLightAnim*                mAnimation;
    const tlLight*              mLight;
};

//**************************************************************
// Class TextureAnimNode
//**************************************************************
class TextureAnimNode : public AnimNode
{
public:

    TextureAnimNode( const MObject& textureNode, const MString& colour, const MString& alpha, const MDagPath& dagPath, int volumeDepth = 1, bool bExportMipmaps = false, int mipmapMin = 0 );
    virtual ~TextureAnimNode();

    const char*                                 GetCurrentColourFile( void ) const;
    static bool                                 HasQueuedTexture( const MString& textureName );

    static void                                 Clear( void );

protected:

    virtual void                                SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void                                FillNode(int frame);
    virtual void                                OptimizeNode(void);
    virtual tlFrameController*                  FinalizeNode(void);

    void                                        CleanUp(void);

    void                                        ReadScalars();
    TextureLayer*                               AddCurrentTextureToInventory( tlInventory* pInventory );

    tlTextureAnim*                              mAnimation;

    MObject                                     mTextureNode;
    MString                                     mTextureName;
    const char*                                 mCurrentColourFile;

    // Keep track of Texture nodes that are already queued for processing.
    static MStringArray                         mQueuedTextureNames;

    MString                                     mColourChannel;
    MString                                     mAlphaChannel;
    int                                         mVolumeDepth;
    bool                                        mbExportMipmaps;
    int                                         mMipmapMin;

    static tlTable<TextureLayer*>               mUniqueTextureLayers;

private:
    MObject                                     mColourNode;        // The file/projection/ramp texture connected to .colour of Texture
    MDagPath                                    mDagPath;           // The object to which the shader is applied, to derive procedural textures via 'convertSolidTx'

    bool                                        mbHasColour;
    bool                                        mbColourIsAnimated;
    TextureLayer::TextureConnectionType         mColourType;
    MString                                     mColourBaseName;
    tlColour                                    mDiffuse;
    double                                      mTransparency;

    MObject                                     mAlphaNode;         // The file/projection/ramp texture connected to .alpha of Texture
    bool                                        mbHasAlpha;
    bool                                        mbAlphaIsAnimated;
    TextureLayer::TextureConnectionType         mAlphaType;
    MString                                     mAlphaBaseName;

};

//**************************************************************
// Class DeformerExpressionAnimNode
//**************************************************************
class DeformerExpressionAnimNode : public AnimNode
{
public:

//    DeformerExpressionAnimNode(tlExpressionAnim* eAnim, tlExpressionMixer* mixer) : AnimNode(NULL), exprAnim(NULL), exprMixer(mixer) { exprAnim = new tlExpressionAnim( *eAnim ); }

    // *** 15 Feb 2002 ***
    // Animations are now allocated on-the-fly within ::SetupNode().
    // The index here is to the tlExpressionAnim array in the VertexOffsetAnimProcess Class.
    // [16 Oct 2002] The (SceneNode*) provides access to the AnimOptimization settings.
    DeformerExpressionAnimNode( unsigned int index, SceneNode* pSceneNode ) : AnimNode(pSceneNode), exprAnim(NULL), exprMixer(NULL), exprIndex( index ) { ; }
    virtual ~DeformerExpressionAnimNode() { ; } 

protected:

    virtual void SetupNode(int numframes, float framerate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    unsigned int                exprIndex;
    tlExpressionAnim*           exprAnim;
    tlExpressionMixer*          exprMixer;
};


//**************************************************************
// Class VertexAnimationAnimNode
//**************************************************************
//
//   See vertexAnimationAnimNode.hpp
//
//**************************************************************


//**************************************************************
// Class ShaderAnimNode
//**************************************************************
//
//   See shaderAnimNode.hpp
//
//**************************************************************

//**************************************************************
// Particle AnimNodes
//**************************************************************
//
//   See particleAnimNode.hpp
//
//**************************************************************


//**************************************************************
// Class BillboardQuadGroupAnimNode
//**************************************************************
class BillboardQuadGroupAnimNode : public AnimNode
{
public:
    BillboardQuadGroupAnimNode(SceneNode *node) : AnimNode(node), mAnimation(NULL) { ; }
    ~BillboardQuadGroupAnimNode() { ; }
  
    void AddQuadAnim(SceneNode* quad);

protected: 
    enum {
        NONE,
        SINGLE_SIDED,
        DOUBLE_SIDED
    };   

    virtual void SetupNode(int numFrames, float frameRate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    tlBillboardQuadGroupAnim*  mAnimation;
    tlTable<SceneNode*>        mQuads;
};



#endif // _ANIMNODE_HPP


//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     04 November, 2002
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PARTICLEANIMNODE_HPP_
#define __PARTICLEANIMNODE_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include "animnode.hpp"

//===========================================================================
// Forward References
//===========================================================================

class tlParticleAnimation;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//**************************************************************
// Class BaseParticleAnimNode
//**************************************************************
class BaseParticleAnimNode : public AnimNode
{
public:
    BaseParticleAnimNode(tlParticleAnimation* anim, SceneNode *node) : AnimNode(node), particleAnim(anim) { ; }
    ~BaseParticleAnimNode() { ; }

    void SetOverLifeStartFrame(int frame) { overLifeStartFrame = frame; }

protected: 
    virtual void SetupNode(int numFrames, float frameRate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    int                  overLifeStartFrame;
    tlParticleAnimation* particleAnim;
};

//**************************************************************
// Class SpriteParticleAnimNode
//**************************************************************
class SpriteParticleAnimNode : public BaseParticleAnimNode
{
public:
    SpriteParticleAnimNode(tlParticleAnimation* anim, SceneNode *node) : BaseParticleAnimNode(anim, node) { ; }
    ~SpriteParticleAnimNode() { ; }

protected: 
    virtual void SetupNode(int numFrames, float frameRate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual tlFrameController* FinalizeNode(void);
};

//**************************************************************
// Class BaseEmitterAnimNode
//**************************************************************
class BaseEmitterAnimNode : public AnimNode
{
public:
    BaseEmitterAnimNode(tlEmitterAnimation* anim, SceneNode *node) : AnimNode(node), emitterAnim(anim), numBlendStateNodes(0) { ; }
    ~BaseEmitterAnimNode() { ; }

    void SetAnimStartFrame(int frame) { animStartFrame = frame; }

    virtual void AddBlendStateNode(MObject& dependNode);

protected: 
    virtual void SetupNode(int numFrames, float frameRate, int startFrame = 0 );
    virtual void FillNode(int frame);
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    int                 animStartFrame;
    tlEmitterAnimation* emitterAnim;
    int                 numBlendStateNodes;
    MFnDependencyNode   blendStateNodes[256];
};

//**************************************************************
// Class SpriteEmitterAnimNode
//**************************************************************
class SpriteEmitterAnimNode : public BaseEmitterAnimNode
{
public:
    SpriteEmitterAnimNode(tlEmitterAnimation* anim, SceneNode *node) : BaseEmitterAnimNode(anim,node) { ; }
    ~SpriteEmitterAnimNode() { ; }

    virtual void AddBlendStateNode(MObject& dependNode);

protected: 
    virtual void SetupNode(int numFrames, float frameRate, int startFrame = 0 );
    virtual void FillNode(int frame);
};

//**************************************************************
// Class BaseGeneratorAnimNode
//**************************************************************
class BaseGeneratorAnimNode : public AnimNode
{
public:
    BaseGeneratorAnimNode(tlGeneratorAnimation* anim, SceneNode *node) : AnimNode(node), generatorAnim(anim), numBlendStateNodes(0) { ; }
    ~BaseGeneratorAnimNode() { ; }

    void SetAnimStartFrame(int frame) { animStartFrame = frame; }

    virtual void AddBlendStateNode(MObject& dependNode);

protected: 
    virtual void SetupNode(int numFrames, float frameRate, int startFrame = 0 );
    virtual void FillNode(int frame) = 0;
    virtual void OptimizeNode(void);
    virtual tlFrameController* FinalizeNode(void);

    void                        CleanUp(void);

    int                     animStartFrame;
    tlGeneratorAnimation*   generatorAnim;
    int                     numBlendStateNodes;
    MFnDependencyNode       blendStateNodes[256];
};

//**************************************************************
// Class PointGeneratorAnimNode
//**************************************************************
class PointGeneratorAnimNode : public BaseGeneratorAnimNode
{
public:
    PointGeneratorAnimNode(tlGeneratorAnimation* anim, SceneNode *node) : BaseGeneratorAnimNode(anim, node) { ; }
    ~PointGeneratorAnimNode() { ; }

    void AddBlendStateNode(MObject& dependNode);

protected: 
    virtual void FillNode(int frame);
};

//**************************************************************
// Class PlaneGeneratorAnimNode
//**************************************************************
class PlaneGeneratorAnimNode : public BaseGeneratorAnimNode
{
public:
    PlaneGeneratorAnimNode(tlGeneratorAnimation* anim, SceneNode *node) : BaseGeneratorAnimNode(anim, node) { ; }
    ~PlaneGeneratorAnimNode() { ; }

    void AddBlendStateNode(MObject& dependNode);

protected: 
    virtual void FillNode(int frame);
};

//**************************************************************
// Class SphereGeneratorAnimNode
//**************************************************************
class SphereGeneratorAnimNode : public BaseGeneratorAnimNode
{
public:
    SphereGeneratorAnimNode(tlGeneratorAnimation* anim, SceneNode *node) : BaseGeneratorAnimNode(anim, node) { ; }
    ~SphereGeneratorAnimNode() { ; }

    void AddBlendStateNode(MObject& dependNode);

protected: 
    virtual void FillNode(int frame);
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __PARTICLEANIMNODE_HPP_

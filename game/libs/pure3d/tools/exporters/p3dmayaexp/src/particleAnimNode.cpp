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
//===========================================================================
// Includes
//===========================================================================

#include "particleAnimNode.hpp"

#include "scene.hpp"
#include "plugValue.hpp"

#include "tlParticleSystem.hpp"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

static const unsigned int NUM_SPEEDOVERLIFE_ATTRIBUTES = 1;
static const char* SPEEDOVERLIFE_ATTRIBUTES[NUM_SPEEDOVERLIFE_ATTRIBUTES] =
{
    "speedOverLife"
};

static const unsigned int NUM_WEIGHTOVERLIFE_ATTRIBUTES = 1;
static const char* WEIGHTOVERLIFE_ATTRIBUTES[NUM_WEIGHTOVERLIFE_ATTRIBUTES] =
{
    "weightOverLife"
};

static const unsigned int NUM_SPINOVERLIFE_ATTRIBUTES = 1;
static const char* SPINOVERLIFE_ATTRIBUTES[NUM_SPINOVERLIFE_ATTRIBUTES] =
{
    "spinOverLife"
};

static const unsigned int NUM_SIZEOVERLIFE_ATTRIBUTES = 1;
static const char* SIZEOVERLIFE_ATTRIBUTES[NUM_SIZEOVERLIFE_ATTRIBUTES] =
{
    "sizeOverLife"
};

static const unsigned int NUM_COLOUROVERLIFE_ATTRIBUTES = 3;
static const char* COLOUROVERLIFE_ATTRIBUTES[NUM_COLOUROVERLIFE_ATTRIBUTES] =
{
    "redOverLife", "greenOverLife", "blueOverLife"
};

static const unsigned int NUM_ALPHAOVERLIFE_ATTRIBUTES = 1;
static const char* ALPHAOVERLIFE_ATTRIBUTES[NUM_ALPHAOVERLIFE_ATTRIBUTES] =
{
    "alphaOverLife"
};

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//**************************************************************
// Class BaseParticleAnimNode
//**************************************************************

//===========================================================================
// BaseParticleAnimNode::SetupNode
//===========================================================================
// Description: Creates and allocates the necessary animation objects for
//              the particle animation.
//
// Constraints: Note that particles follow their own rules when it comes to
//              start- and end-frames. They do _not_ use the frame range as
//              dictated by the AnimRange class.
//
//  Parameters: int numFrames: Not used.
//              float frameRate: Not used.
//              int startFrame: Used to adjust the 'overLifeStartFrame' for
//                              the particle system.
//
//      Return: (void)
//
//===========================================================================
void
BaseParticleAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )
{
    overLifeStartFrame -= startFrame;

    if (!particleAnim)
        return;

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    tlBaseParticleAnimGroup dummy;

    tlBaseParticleAnimGroup* group = particleAnim->SetOverLifeAnimation(dummy);
    group->CreateStandardChannels(particleAnim->GetNumFrames());

    group->GetSpeedOverLifeChannel()->EnableInterpolation( this->EvalIsInterpolated( SPEEDOVERLIFE_ATTRIBUTES, NUM_SPEEDOVERLIFE_ATTRIBUTES ) );
    group->GetWeightOverLifeChannel()->EnableInterpolation( this->EvalIsInterpolated( WEIGHTOVERLIFE_ATTRIBUTES, NUM_WEIGHTOVERLIFE_ATTRIBUTES ) );
}

//===========================================================================
// BaseParticleAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Billboard Quads.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
BaseParticleAnimNode::FillNode(int f)
{
    float frame = f - overLifeStartFrame;

    if ((!particleAnim)||(frame>=particleAnim->GetNumFrames())||(frame<0.0f))
        return;

    float speed;
    float weight;

    PlugValue( mSceneNode->MayaObject(), "speedOverLife", speed);
    PlugValue( mSceneNode->MayaObject(), "weightOverLife", weight);

    tlBaseParticleAnimGroup* group = particleAnim->GetOverLifeAnimation();
    group->GetSpeedOverLifeChannel()->SetKey(frame,frame,speed);
    group->GetWeightOverLifeChannel()->SetKey(frame,frame,weight);
}

//===========================================================================
// BaseParticleAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Billboard animation.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
BaseParticleAnimNode::OptimizeNode(void)
{
    if ( particleAnim )
    {
#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }

        particleAnim->RoughOptimization( tolerances );
#endif // ANIMNODE_DISABLE_OPTIMIZE
    }
}

//===========================================================================
// BaseParticleAnimNode::FinalizeNode
//===========================================================================
// Constraints: NOT USED for particle animation.
//
//  Parameters: (void)
//
//      Return: Always NULL. Not used.
//
//===========================================================================
tlFrameController*
BaseParticleAnimNode::FinalizeNode(void)
{
    return NULL;
}

//===========================================================================
// BaseParticleAnimNode::CleanUp
//===========================================================================
// Constraints: NOT USED for particle animation.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
BaseParticleAnimNode::CleanUp(void)
{
}

//**************************************************************
// Class SpriteParticleAnimNode
//**************************************************************

//===========================================================================
// SpriteParticleAnimNode::SetupNode
//===========================================================================
// Description: Creates and allocates the necessary animation objects for
//              the sprite particle animation.
//
// Constraints: Note that particles follow their own rules when it comes to
//              start- and end-frames. They do _not_ use the frame range as
//              dictated by the AnimRange class.
//
//  Parameters: int numFrames: Not used.
//              float frameRate: Not used.
//              int startFrame: Used to adjust the 'overLifeStartFrame' for
//                              the particle system.
//
//      Return: (void)
//
//===========================================================================
void
SpriteParticleAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )
{
    overLifeStartFrame -= startFrame;

    if (!particleAnim)
        return;

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    int textureAnimMode;
    PlugValue( mSceneNode->MayaObject(), "textureAnimationMode",textureAnimMode);

    tlSpriteParticleAnimGroup dummy;

    tlSpriteParticleAnimGroup* group = (tlSpriteParticleAnimGroup*)particleAnim->SetOverLifeAnimation(dummy);
    group->CreateStandardChannels(particleAnim->GetNumFrames());

    group->GetAlphaOverLifeChannel()->EnableInterpolation( EvalIsInterpolated( ALPHAOVERLIFE_ATTRIBUTES, NUM_ALPHAOVERLIFE_ATTRIBUTES ) );
    group->GetColourOverLifeChannel()->EnableInterpolation( EvalIsInterpolated( COLOUROVERLIFE_ATTRIBUTES, NUM_COLOUROVERLIFE_ATTRIBUTES ) );
    group->GetSizeOverLifeChannel()->EnableInterpolation( EvalIsInterpolated( SIZEOVERLIFE_ATTRIBUTES, NUM_SIZEOVERLIFE_ATTRIBUTES ) );
    group->GetSpinOverLifeChannel()->EnableInterpolation( EvalIsInterpolated( SPINOVERLIFE_ATTRIBUTES, NUM_SPINOVERLIFE_ATTRIBUTES ) );

    if(textureAnimMode==2) //specified
    {
        group->GetTextureOverLifeChannel()->EnableInterpolation(false);
    }
    else
    {
        group->DeleteTextureOverLifeChannel();
    }
}

//===========================================================================
// SpriteParticleAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Sprite Particles.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNode.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
SpriteParticleAnimNode::FillNode(int f)
{
    float frame = f - overLifeStartFrame;

    if ((!particleAnim)||(frame>=particleAnim->GetNumFrames())||(frame<0.0f))
        return;

    int particleAngleType;
    PlugValue( mSceneNode->MayaObject(), "particleAngleType",particleAngleType);

    int textureAnimMode;
    PlugValue( mSceneNode->MayaObject(), "textureAnimationMode",textureAnimMode);

    float red;
    float green;
    float blue;
    float alpha;
    float spin;
    float size;
    int   texture;

    PlugValue( mSceneNode->MayaObject(), "redOverLife", red);
    PlugValue( mSceneNode->MayaObject(), "greenOverLife", green);
    PlugValue( mSceneNode->MayaObject(), "blueOverLife", blue);
    PlugValue( mSceneNode->MayaObject(), "alphaOverLife", alpha);
    PlugValue( mSceneNode->MayaObject(), "spinOverLife", spin);
    PlugValue( mSceneNode->MayaObject(), "sizeOverLife", size);
    PlugValue( mSceneNode->MayaObject(), "textureFrameOverLife", texture);

    tlSpriteParticleAnimGroup* group = (tlSpriteParticleAnimGroup*)particleAnim->GetOverLifeAnimation();
    group->GetColourOverLifeChannel()->SetKey(frame,frame,tlColour(red,green,blue));
    group->GetAlphaOverLifeChannel()->SetKey(frame,frame,(int)(alpha*255.0f));
    if(particleAngleType!=2) //not motioned-aligned
    {
        group->GetSpinOverLifeChannel()->SetKey(frame,frame,spin);
    }
    group->GetSizeOverLifeChannel()->SetKey(frame,frame,size);
    if(textureAnimMode==2) //specified
    {
        group->GetTextureOverLifeChannel()->SetKey(frame,frame,texture-1);
    }

    BaseParticleAnimNode::FillNode(f);
}

//===========================================================================
// SpriteParticleAnimNode::FinalizeNode
//===========================================================================
// Description: Performs an optimization on this Billboard animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints: Note that this returns NULL for the Frame Controller.
//              Particle Systems follow their own rules for this, too.
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
tlFrameController*
SpriteParticleAnimNode::FinalizeNode(void)
{
    int particleAngleType;
    PlugValue( mSceneNode->MayaObject(), "particleAngleType",particleAngleType);

    if ( particleAnim )
    {
        tlSpriteParticleAnimGroup* group = (tlSpriteParticleAnimGroup*)particleAnim->GetOverLifeAnimation();
        if (group->GetColourOverLifeChannel()->IsStatic())
        {
            group->DeleteColourOverLifeChannel();
        }
        if (group->GetAlphaOverLifeChannel()->IsStatic())
        {
            group->DeleteAlphaOverLifeChannel();
        }
        if(particleAngleType==2) //not motioned-aligned
        {
            group->DeleteSpinOverLifeChannel();
        }
    }

    return NULL;
}

//**************************************************************
// Class BaseEmitterAnimNode
//**************************************************************
void
BaseEmitterAnimNode::AddBlendStateNode(MObject& dependNode)
{
    if (!emitterAnim)
        return;

    blendStateNodes[numBlendStateNodes].setObject(dependNode);
    emitterAnim->AddBlendState(tlBaseEmitterAnimGroup())->SetName(blendStateNodes[numBlendStateNodes].name().asChar());
    numBlendStateNodes++;
}

//===========================================================================
// BaseEmitterAnimNode::SetupNode
//===========================================================================
// Description: Creates and allocates the necessary animation objects for
//              the particle emitter.
//
// Constraints: Note that particles follow their own rules when it comes to
//              start- and end-frames. They do _not_ use the frame range as
//              dictated by the AnimRange class.
//
//  Parameters: int numFrames: Not used.
//              float frameRate: Not used.
//              int startFrame: Used to adjust the 'animStartFrame' for
//                              the particle emitter.
//
//      Return: (void)
//
//===========================================================================
void
BaseEmitterAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )
{
    animStartFrame -= startFrame;

    if (!emitterAnim)
        return;

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    int infiniteLife;
    PlugValue( mSceneNode->MayaObject(), "infiniteLife",infiniteLife);
    for (int i = 0; i < emitterAnim->GetNumBlendStates(); i++)
    {
        tlBaseEmitterAnimGroup* state = emitterAnim->GetBlendState(i);
        state->CreateStandardChannels(emitterAnim->GetNumFrames());
        if (infiniteLife)
        {
            state->DeleteLifeChannel();
            state->DeleteLifeVarChannel();
        }
        //translation, rotation, and visibility is only needed for first state
        if (i!=0)
        {
            state->DeleteTranslationChannel();
            state->DeleteRotationChannel();
            state->DeleteVisibilityChannel();
        }

        // TODO: Set interpolation ON/OFF
    }

    if (!ExporterOptions::ExportVisibilityAnimations())
    {
        emitterAnim->GetBlendState(0)->DeleteVisibilityChannel();
    }
}

//===========================================================================
// BaseEmitterAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Particle Emitters.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
BaseEmitterAnimNode::FillNode(int f)
{
    int key = f - animStartFrame;
    float frame = IsCyclic() ? key : f;

    if ((!emitterAnim)||(key>=emitterAnim->GetNumFrames())||(key<0))
        return;

    int infiniteLife;
    PlugValue( mSceneNode->MayaObject(), "infiniteLife",infiniteLife);

    int maxParticles;
    PlugValue( mSceneNode->MayaObject(), "maxNumberOfParticles",maxParticles);

    float unitScaleFactor;
    PlugValue( mSceneNode->MayaObject(), "displaySize",unitScaleFactor);
    unitScaleFactor /= SceneNode::InternalScale();

    tlMatrix hmatrix;
    mSceneNode->Parent()->Matrix(hmatrix);

    tlBaseEmitterAnimGroup* state = emitterAnim->GetBlendState(0);
    state->GetTranslationChannel()->SetKey(key,frame,hmatrix.GetRow(3)*SceneNode::UIScale());
    state->GetRotationChannel()->SetKey(key,frame,tlQuat(hmatrix));
    if (state->GetVisibilityChannel())
    {
        state->GetVisibilityChannel()->SetKey(key,frame,mSceneNode->Parent()->IsVisible());
    }

    for (int i = 0; i < emitterAnim->GetNumBlendStates(); i++)
    {
        state = emitterAnim->GetBlendState(i);

        float emissionRate;
        float numParticles;
        float life;
        float lifeVar;
        float speed;
        float speedVar;
        float weight;
        float weightVar;
        float gravity;
        float drag;

        blendStateNodes[i].findPlug("emissionRate").getValue(emissionRate);
        blendStateNodes[i].findPlug("numberOfParticles").getValue(numParticles);
        blendStateNodes[i].findPlug("life").getValue(life);
        blendStateNodes[i].findPlug("lifeVariance").getValue(lifeVar);
        blendStateNodes[i].findPlug("speed").getValue(speed);
        blendStateNodes[i].findPlug("speedVariance").getValue(speedVar);
        blendStateNodes[i].findPlug("weight").getValue(weight);
        blendStateNodes[i].findPlug("weightVariance").getValue(weightVar);
        blendStateNodes[i].findPlug("gravity").getValue(gravity);
        blendStateNodes[i].findPlug("drag").getValue(drag);

        state->GetEmissionRateChannel()->SetKey(key,frame,maxParticles>emissionRate ? (emissionRate>=0.0f ? emissionRate : 0.0f) : maxParticles);
        state->GetNumParticlesChannel()->SetKey(key,frame,maxParticles>numParticles ? numParticles : maxParticles);
        if (infiniteLife==0)
        {
            state->GetLifeChannel()->SetKey(key,frame,life>0.0f ? life : 0.0f);
            state->GetLifeVarChannel()->SetKey(key,frame,lifeVar);
        }
        state->GetSpeedChannel()->SetKey(key,frame,speed*unitScaleFactor);
        state->GetSpeedVarChannel()->SetKey(key,frame,speedVar*unitScaleFactor);
        state->GetWeightChannel()->SetKey(key,frame,0.01f*weight);
        state->GetWeightVarChannel()->SetKey(key,frame,weightVar);
        state->GetGravityChannel()->SetKey(key,frame,-gravity*unitScaleFactor);
        state->GetDragChannel()->SetKey(key,frame,1.0f-drag);
    }
}

//===========================================================================
// BaseEmitterAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Billboard animation.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
BaseEmitterAnimNode::OptimizeNode(void)
{
    if ( emitterAnim )
    {
#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }

        emitterAnim->RoughOptimization( tolerances );
#endif // ANIMNODE_DISABLE_OPTIMIZE

        tlBaseEmitterAnimGroup* state = emitterAnim->GetBlendState(0);
        tlBoolChannel* channel = state->GetVisibilityChannel();
        if ((state)&&(channel)&&(channel->IsStatic()))
        {
            state->DeleteVisibilityChannel();
        }
    }
}

//===========================================================================
// BaseEmitterAnimNode::FinalizeNode
//===========================================================================
// Constraints: NOT USED for the base emitter.
//
//  Parameters: (void)
//
//      Return: Always NULL. Not used.
//
//===========================================================================
tlFrameController*
BaseEmitterAnimNode::FinalizeNode(void)
{
    return NULL;
}

//===========================================================================
// BaseEmitterAnimNode::CleanUp
//===========================================================================
// Constraints: NOT USED for the base emitter.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
BaseEmitterAnimNode::CleanUp(void)
{
}

//**************************************************************
// Class SpriteEmitterAnimNode
//**************************************************************
void
SpriteEmitterAnimNode::AddBlendStateNode(MObject& dependNode)
{
    if (!emitterAnim)
        return;

    blendStateNodes[numBlendStateNodes].setObject(dependNode);
    emitterAnim->AddBlendState(tlSpriteEmitterAnimGroup())->SetName(blendStateNodes[numBlendStateNodes].name().asChar());
    numBlendStateNodes++;
}

void
SpriteEmitterAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )
{
    if (!emitterAnim)
        return;

    BaseEmitterAnimNode::SetupNode(numFrames,frameRate, startFrame);

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    int particleAngleType;
    PlugValue( mSceneNode->MayaObject(), "particleAngleType",particleAngleType);
    for (int i = 0; i < emitterAnim->GetNumBlendStates(); i++)
    {
        if (particleAngleType==2) //motion-aligned
        {
            tlSpriteEmitterAnimGroup* state = (tlSpriteEmitterAnimGroup*)emitterAnim->GetBlendState(i);
            state->DeleteSpinChannel();
            state->DeleteSpinVarChannel();
        }

        // TODO: Set interpolation ON/OFF
    }
}

//===========================================================================
// SpriteEmitterAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Billboard Quads.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
SpriteEmitterAnimNode::FillNode(int f)
{
    int key = f - animStartFrame;
    float frame = IsCyclic() ? key : f;

    if ((!emitterAnim)||(key>=emitterAnim->GetNumFrames())||(key<0))
        return;

    int particleAngleType;
    PlugValue( mSceneNode->MayaObject(), "particleAngleType",particleAngleType);

    float unitScaleFactor;
    PlugValue( mSceneNode->MayaObject(), "displaySize",unitScaleFactor);
    unitScaleFactor /= SceneNode::InternalScale();

    for (int i = 0; i < emitterAnim->GetNumBlendStates(); i++)
    {
        tlSpriteEmitterAnimGroup* state = (tlSpriteEmitterAnimGroup*)emitterAnim->GetBlendState(i);

        float red, green, blue, colourVar;
        float alpha, alphaVar;
        float spin, spinVar;
        float size, sizeVar;

        blendStateNodes[i].findPlug("red").getValue(red);
        blendStateNodes[i].findPlug("green").getValue(green);
        blendStateNodes[i].findPlug("blue").getValue(blue);
        blendStateNodes[i].findPlug("alpha").getValue(alpha);
        blendStateNodes[i].findPlug("colourVariance").getValue(colourVar);
        blendStateNodes[i].findPlug("alphaVariance").getValue(alphaVar);
        blendStateNodes[i].findPlug("spin").getValue(spin);
        blendStateNodes[i].findPlug("spinVariance").getValue(spinVar);
        blendStateNodes[i].findPlug("size").getValue(size);
        blendStateNodes[i].findPlug("sizeVariance").getValue(sizeVar);

        state->GetColourChannel()->SetKey(key,frame,tlColour(red,green,blue));
        state->GetColourVarChannel()->SetKey(key,frame,(int)(colourVar*255.0f));
        state->GetAlphaChannel()->SetKey(key,frame,(int)(alpha*255.0f));
        state->GetAlphaVarChannel()->SetKey(key,frame,(int)(alphaVar*255.0f));
        if (particleAngleType!=2)  //motioned-aligned
        {
            state->GetSpinChannel()->SetKey(key,frame, rmt::DegToRadian(spin));
            state->GetSpinVarChannel()->SetKey(key,frame, rmt::DegToRadian(spinVar));
        }
        state->GetSizeChannel()->SetKey(key,frame,0.5f*size*unitScaleFactor);
        state->GetSizeVarChannel()->SetKey(key,frame,0.5f*sizeVar*unitScaleFactor);
    }

    BaseEmitterAnimNode::FillNode(f);
}

//**************************************************************
// Class BaseGeneratorAnimNode
//**************************************************************
void
BaseGeneratorAnimNode::AddBlendStateNode(MObject& dependNode)
{
    if (!generatorAnim)
        return;

    blendStateNodes[numBlendStateNodes].setObject(dependNode);
    generatorAnim->AddBlendState(tlBaseGeneratorAnimGroup())->SetName(blendStateNodes[numBlendStateNodes].name().asChar());
    numBlendStateNodes++;
}

void
BaseGeneratorAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )
{
    animStartFrame -= startFrame;

    if (!generatorAnim)
        return;

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    for (int i = 0; i < generatorAnim->GetNumBlendStates(); i++)
    {
        tlBaseGeneratorAnimGroup* state = generatorAnim->GetBlendState(i);
        state->CreateStandardChannels(generatorAnim->GetNumFrames());
        // TODO: Set interpolation ON/OFF  (once this actually does something...)
    }
}

//===========================================================================
// BaseGeneratorAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Billboard animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
BaseGeneratorAnimNode::OptimizeNode(void)
{
    if ( generatorAnim )
    {
#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }

        generatorAnim->RoughOptimization( tolerances );
#endif // ANIMNODE_DISABLE_OPTIMIZE
    }
}

tlFrameController*
BaseGeneratorAnimNode::FinalizeNode(void)
{
    return NULL;
}

void
BaseGeneratorAnimNode::CleanUp(void)
{
}

//**************************************************************
// Class PointGeneratorAnimNode
//**************************************************************
void
PointGeneratorAnimNode::AddBlendStateNode(MObject& dependNode)
{
    if (!generatorAnim)
        return;

    blendStateNodes[numBlendStateNodes].setObject(dependNode);
    generatorAnim->AddBlendState(tlPointGeneratorAnimGroup())->SetName(blendStateNodes[numBlendStateNodes].name().asChar());
    numBlendStateNodes++;
}

//===========================================================================
// PointGeneratorAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Billboard Quads.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
PointGeneratorAnimNode::FillNode(int f)
{
    int key = f - animStartFrame;
    float frame = IsCyclic() ? key : f;

    if ((!generatorAnim)||(key>=generatorAnim->GetNumFrames())||(key<0))
        return;

    for (int i = 0; i < generatorAnim->GetNumBlendStates(); i++)
    {
        tlPointGeneratorAnimGroup* state = (tlPointGeneratorAnimGroup*)generatorAnim->GetBlendState(i);

        float horizSpread;
        float vertSpread;
        float radialVar;

        blendStateNodes[i].findPlug("horizEmissionSpread").getValue(horizSpread);
        blendStateNodes[i].findPlug("vertEmissionSpread").getValue(vertSpread);
        blendStateNodes[i].findPlug("radialVariance").getValue(radialVar);

        state->GetHorizSpreadChannel()->SetKey(key,frame, rmt::DegToRadian(horizSpread));
        state->GetVertSpreadChannel()->SetKey(key,frame, rmt::DegToRadian(vertSpread));
        state->GetRadialVarChannel()->SetKey(key,frame,radialVar);
    }
}

//**************************************************************
// Class PlaneGeneratorAnimNode
//**************************************************************
void
PlaneGeneratorAnimNode::AddBlendStateNode(MObject& dependNode)
{
    if (!generatorAnim)
        return;

    blendStateNodes[numBlendStateNodes].setObject(dependNode);
    generatorAnim->AddBlendState(tlPlaneGeneratorAnimGroup())->SetName(blendStateNodes[numBlendStateNodes].name().asChar());
    numBlendStateNodes++;
}

//===========================================================================
// PlaneGeneratorAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Billboard Quads.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
PlaneGeneratorAnimNode::FillNode(int f)
{
    int key = f - animStartFrame;
    float frame = IsCyclic() ? key : f;

    if ((!generatorAnim)||(key>=generatorAnim->GetNumFrames())||(key<0))
        return;

    float unitScaleFactor;
    PlugValue( mSceneNode->MayaObject(), "displaySize",unitScaleFactor);
    unitScaleFactor /= SceneNode::InternalScale();

    for (int i = 0; i < generatorAnim->GetNumBlendStates(); i++)
    {
        tlPlaneGeneratorAnimGroup* state = (tlPlaneGeneratorAnimGroup*)generatorAnim->GetBlendState(i);

        float horizSpread;
        float vertSpread;
        float radialVar;
        float length;
        float width;

        blendStateNodes[i].findPlug("horizEmissionSpread").getValue(horizSpread);
        blendStateNodes[i].findPlug("vertEmissionSpread").getValue(vertSpread);
        blendStateNodes[i].findPlug("radialVariance").getValue(radialVar);
        blendStateNodes[i].findPlug("length").getValue(length);
        blendStateNodes[i].findPlug("width").getValue(width);

        state->GetHorizSpreadChannel()->SetKey(key,frame, rmt::DegToRadian(horizSpread));
        state->GetVertSpreadChannel()->SetKey(key,frame, rmt::DegToRadian(vertSpread));
        state->GetRadialVarChannel()->SetKey(key,frame,radialVar);
        state->GetHeightChannel()->SetKey(key,frame,length*unitScaleFactor);
        state->GetWidthChannel()->SetKey(key,frame,width*unitScaleFactor);
    }
}

//**************************************************************
// Class SphereGeneratorAnimNode
//**************************************************************
void
SphereGeneratorAnimNode::AddBlendStateNode(MObject& dependNode)
{
    if (!generatorAnim)
        return;

    blendStateNodes[numBlendStateNodes].setObject(dependNode);
    generatorAnim->AddBlendState(tlSphereGeneratorAnimGroup())->SetName(blendStateNodes[numBlendStateNodes].name().asChar());
    numBlendStateNodes++;
}

//===========================================================================
// SphereGeneratorAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Billboard Quads.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
SphereGeneratorAnimNode::FillNode(int f)
{
    int key = f - animStartFrame;
    float frame = IsCyclic() ? key : f;

    if ((!generatorAnim)||(key>=generatorAnim->GetNumFrames())||(key<0))
        return;

    float unitScaleFactor;
    PlugValue( mSceneNode->MayaObject(), "displaySize",unitScaleFactor);
    unitScaleFactor /= SceneNode::InternalScale();

    for (int i = 0; i < generatorAnim->GetNumBlendStates(); i++)
    {
        tlSphereGeneratorAnimGroup* state = (tlSphereGeneratorAnimGroup*)generatorAnim->GetBlendState(i);

        float radialVar;
        float height;

        blendStateNodes[i].findPlug("radialVariance").getValue(radialVar);
        blendStateNodes[i].findPlug("height").getValue(height);

        state->GetRadialVarChannel()->SetKey(key,frame,radialVar);
        state->GetRadiusChannel()->SetKey(key,frame,height*unitScaleFactor);
    }
}

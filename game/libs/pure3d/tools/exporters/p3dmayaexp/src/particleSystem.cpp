/*===========================================================================
    particleSystems.cpp
    created: Jan 27, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#include <maya/MGlobal.h>
#include <maya/MObject.h>
#include <maya/MAnimControl.h>
#include <maya/MDistance.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MItDependencyGraph.h>
#include <maya/MPlugArray.h>

#include <string.h>

#include "psenum.hpp"
#include "tlShader.hpp"
#include "tlTexture.hpp"
#include "tlImage.hpp"
#include "tlString.hpp"
#include "materialprocess.hpp"
#include "exporterutility.hpp"
#include "mayanodes.hpp"
#include "plugValue.hpp"
#include "scene.hpp"
#include "particleAnimNode.hpp"
#include "particleSystem.hpp"

enum {
    POINT_GENERATOR,
    PLANE_GENERATOR,
    SPHERE_GENERATOR
}; 

enum {
    SPRITE_PARTICLE,
};

enum {
    WIREFRAME,
    WIREFRAME_SHADED,
    SMOOTH_SHADED,
    FLAT_SHADED,
    LAST_TOKEN
};

enum {
    SPECIFIED_ANGLE,
    RANDOM_ANGLE,
    ALIGNED_TO_MOTION
};

enum {
    NO_ANIMATION,
    LINEAR_ANIMATION,
    SPECIFIED_ANIMATION,
    RANDOM_ANIMATION
};

enum {
    ALL_AXIS,
    X_AXIS,
    Y_AXIS,
    Z_AXIS
};

//------------------------------------------------------------------------------------------
tlParticleSystemFactory* ParticleSystemProcess::ExportParticleSystemFactory(SceneNode* node, tlInventory* tlInv)
{   
    if ((ExporterOptions::ExportAnimReferencesOnly() && node->IsFileReference())||(!ExporterOptions::ExportAnimations())||(node->IsInstance()))
    {
        SceneIterator it(node->Parent());
        for (; !it.Done(); it.Next())
        {
            SceneNode *subNode = it.Node();
            if (subNode->MayaTypeId() != EMITTER_ID) continue;
            subNode->SetProcessed(true);
        }
        return NULL;
    }

    int enableSorting = false;
    PlugValue( node->MayaObject(), "enableSorting",enableSorting);
    int cycleAnim = false;
    PlugValue( node->MayaObject(), "cycleAnimation",cycleAnim);
    int numAnimFrames = 0;
    PlugValue( node->MayaObject(), "numAnimationFrames",numAnimFrames);
    int numOLFrames = 0;
    PlugValue( node->MayaObject(), "numOverLifeFrames",numOLFrames);
    int startAnimFrame;
    PlugValue( node->MayaObject(), "animationStartFrame",startAnimFrame);
    int startOLFrame;
    PlugValue( node->MayaObject(), "overLifeStartFrame",startOLFrame);
    int numInstances = 1;
    PlugValue( node->MayaObject(), "numInstances",numInstances);

    MTime time;
    MAnimControl::setViewMode(MAnimControl::kPlaybackViewActive);
    float rate = GetFrameRate( time );
    MTime minTime = MAnimControl::minTime();
    MTime maxTime = MAnimControl::maxTime();
    int minFrame = (int)minTime.value();
    int maxFrame = (int)maxTime.value();

    char* partSysName = ExporterOptions::BuildNodeName(node->Name());       
   
    if (!cycleAnim)
    {
        numAnimFrames = abs(maxFrame-minFrame);
    }
    else
    {
        int start = (minFrame<startAnimFrame) ? ((maxFrame>startAnimFrame) ? startAnimFrame : maxFrame) : minFrame;
        int end = (minFrame<startAnimFrame+numAnimFrames) ? ((maxFrame>startAnimFrame+numAnimFrames) ? startAnimFrame+numAnimFrames : maxFrame) : minFrame;
        numAnimFrames = end-start;
    }

    //check to see if number of frames in particle system animation is equal to 0
    if (numAnimFrames==0)
    {
        return NULL;
    }

    if ((startOLFrame<minFrame)||(startOLFrame>maxFrame)||((startOLFrame+numOLFrames)>maxFrame))
    {
        numOLFrames = 0;
    }

    tlParticleSystemFactory* toollibParticleSystemFactory = new tlParticleSystemFactory;
    toollibParticleSystemFactory->SetName(partSysName);
    strdelete(partSysName);

    toollibParticleSystemFactory->SetFrameRate(rate);
    toollibParticleSystemFactory->SetNumAnimFrames((unsigned)numAnimFrames);
    toollibParticleSystemFactory->SetNumOLFrames((unsigned)numOLFrames);
    toollibParticleSystemFactory->SetCycleAnim(cycleAnim!=0);
    toollibParticleSystemFactory->SetEnableSorting(enableSorting!=0);
    toollibParticleSystemFactory->SetMaxInstances(numInstances);

    SceneIterator it(node->Parent());
    for (; !it.Done(); it.Next())
    {
        SceneNode *subNode = it.Node();
        if (subNode->Processed()) continue;
        if (subNode->MayaTypeId() == EMITTER_ID)
        {
            ExportEmitterFactory(toollibParticleSystemFactory,node,subNode,tlInv);
        }
    }

    if (toollibParticleSystemFactory->GetNumEmitters()>0)
    {
        SceneNode::Inventory()->Store(toollibParticleSystemFactory);
    }
    else
    {
        delete toollibParticleSystemFactory;
        toollibParticleSystemFactory = NULL;
    }

    return toollibParticleSystemFactory;
}

//------------------------------------------------------------------------------------------
void ParticleSystemProcess::ExportEmitterFactory(tlParticleSystemFactory* factory, SceneNode* systemNode, SceneNode* emitterNode, tlInventory* tlInv)
{
    MTime minTime = MAnimControl::minTime();
    MTime maxTime = MAnimControl::maxTime();
    int minFrame = (int)minTime.value();
    int maxFrame = (int)maxTime.value();

    char* shaderName=NULL;

    MObject shadingNode;
    MaterialProcess matProcess;
 
    if (matProcess.FindShadingNode(emitterNode->MayaObject(),shadingNode))
    {
        MString matName = matProcess.StoreShader(shadingNode,emitterNode->MayaPath(), tlInv);
        shaderName = strnew(matName.asChar());
        tlShader* shader = toollib_find<tlShader>(tlInv, shaderName);
    }
    else
    {
        shaderName=strnew("particle_default_shader");
        GenerateMaterial(tlInv, shaderName);
    }

    int     particleType = SPRITE_PARTICLE;
    int     generatorType = POINT_GENERATOR;
    int     particleAngleType = SPECIFIED_ANGLE;
    float   particleAngle = 0.0f;
    int     maxNumParticles = 100;
    int     infiniteLife = false;
    float   rotationalCohesion = 0.0f;
    float   translationalCohesion = 0.0f;
    int     textureAnimMode = NO_ANIMATION;
    int     texFrameRate = 1;
    int     numTexFrames = 1;
    int     zTest = true;
    int     zWrite = false;
    int     fog = false;
   
    PlugValue( emitterNode->MayaObject(), "particleType", particleType);
    PlugValue( emitterNode->MayaObject(), "generatorType", generatorType);
    PlugValue( emitterNode->MayaObject(), "particleAngleType", particleAngleType);
    PlugValue( emitterNode->MayaObject(), "particleAngle", particleAngle);
    PlugValue( emitterNode->MayaObject(), "maxNumberOfParticles", maxNumParticles);
    PlugValue( emitterNode->MayaObject(), "infiniteLife", infiniteLife);
    PlugValue( emitterNode->MayaObject(), "rotationalCohesion", rotationalCohesion);
    PlugValue( emitterNode->MayaObject(), "translationalCohesion", translationalCohesion);
    PlugValue( emitterNode->MayaObject(), "textureAnimationMode", textureAnimMode);
    PlugValue( emitterNode->MayaObject(), "textureFrameRate", texFrameRate);
    PlugValue( emitterNode->MayaObject(), "numberOfTextureFrames", numTexFrames);
    PlugValue( emitterNode->MayaObject(), "enableZTest", zTest);
    PlugValue( emitterNode->MayaObject(), "enableZWrite", zWrite);
    PlugValue( emitterNode->MayaObject(), "enableFog", fog);

    tlBaseEmitterFactory* emitter = NULL;
    BaseParticleAnimNode* partAnimNode = NULL;
    BaseEmitterAnimNode* emitAnimNode = NULL;
    BaseGeneratorAnimNode* genAnimNode = NULL;

    int startAnimFrame;
    PlugValue( systemNode->MayaObject(), "animationStartFrame",startAnimFrame);            

    if (factory->GetCycleAnim())
    {
        startAnimFrame = (minFrame<startAnimFrame) ? ((maxFrame>startAnimFrame) ? startAnimFrame : maxFrame) : minFrame;
    }
    else
    {
        startAnimFrame = minFrame;
    }

    switch(particleType)
    {
        case SPRITE_PARTICLE:
        {
            tlSpriteEmitterFactory* spriteEmitter = new tlSpriteEmitterFactory;
            spriteEmitter->SetName(emitterNode->Name());
            spriteEmitter->SetShaderName(shaderName);
            spriteEmitter->SetMaxParticles(maxNumParticles);
            spriteEmitter->SetInfiniteLife(infiniteLife==1);
            spriteEmitter->SetRotationalCohesion(rotationalCohesion);
            spriteEmitter->SetTranslationalCohesion(translationalCohesion);
            spriteEmitter->SetZTest(zTest==1);
            spriteEmitter->SetZWrite(zWrite==1);
            spriteEmitter->SetFog(fog==1);
            switch (particleAngleType)
            {
                case SPECIFIED_ANGLE :
                {
                    spriteEmitter->SetAngleMode(p3dParticleSystemConstants::ParticleAngleMode::SPECIFIED);
                    spriteEmitter->SetAngle(particleAngle);
                    break;
                }
                case RANDOM_ANGLE :
                {
                    spriteEmitter->SetAngleMode(p3dParticleSystemConstants::ParticleAngleMode::RANDOM);
                    break;
                }
                case ALIGNED_TO_MOTION :
                {
                    spriteEmitter->SetAngleMode(p3dParticleSystemConstants::ParticleAngleMode::MOTION_ALIGNED);
                    spriteEmitter->SetAngle(particleAngle);
                    break;
                }
            }
            switch (textureAnimMode)
            {
                case NO_ANIMATION :
                {
                    spriteEmitter->SetTextureAnimMode(p3dParticleSystemConstants::TextureAnimMode::NONE);
                    spriteEmitter->SetNumTextureFrames(numTexFrames);
                    break;
                }
                case LINEAR_ANIMATION :
                {
                    spriteEmitter->SetTextureAnimMode(p3dParticleSystemConstants::TextureAnimMode::LINEAR);
                    spriteEmitter->SetTextureFrameRate(texFrameRate);
                    spriteEmitter->SetNumTextureFrames(numTexFrames);
                    break;
                }
                case SPECIFIED_ANIMATION :
                {
                    spriteEmitter->SetTextureAnimMode(p3dParticleSystemConstants::TextureAnimMode::SPECIFIED);
                    spriteEmitter->SetTextureFrameRate(texFrameRate);
                    spriteEmitter->SetNumTextureFrames(numTexFrames);
                    break;
                }
                case RANDOM_ANIMATION :
                {
                    spriteEmitter->SetTextureAnimMode(p3dParticleSystemConstants::TextureAnimMode::RANDOM);
                    spriteEmitter->SetTextureFrameRate(texFrameRate);
                    spriteEmitter->SetNumTextureFrames(numTexFrames);
                    break;
                }
            }

            if ((!infiniteLife)&&(factory->GetNumOLFrames()>0))
            {                
                spriteEmitter->CreateParticleAnimation()->SetNumFrames(factory->GetNumOLFrames());
                spriteEmitter->GetParticleAnimation()->SetName(spriteEmitter->GetName());

                int startOLFrame;
                PlugValue( systemNode->MayaObject(), "overLifeStartFrame",startOLFrame);

                partAnimNode = (BaseParticleAnimNode*)(new SpriteParticleAnimNode(spriteEmitter->GetParticleAnimation(), emitterNode));                
                partAnimNode->SetOverLifeStartFrame((minFrame<startOLFrame) ? ((maxFrame>startOLFrame) ? startOLFrame : maxFrame) : minFrame);
                AnimNode::AddNode(partAnimNode);
            }
            spriteEmitter->CreateEmitterAnimation()->SetNumFrames(factory->GetNumAnimFrames());
            spriteEmitter->GetEmitterAnimation()->SetName(spriteEmitter->GetName());            
            
            emitAnimNode = (BaseEmitterAnimNode*)(new SpriteEmitterAnimNode(spriteEmitter->GetEmitterAnimation(), emitterNode));
            emitAnimNode->AddBlendStateNode(emitterNode->MayaObject());
            emitAnimNode->SetAnimStartFrame(startAnimFrame);
            emitAnimNode->SetIsCyclic(factory->GetCycleAnim());
            AnimNode::AddNode(emitAnimNode);

            emitter = (tlBaseEmitterFactory*)spriteEmitter;
            break;
        }
    }
    switch (generatorType)
    {
        case POINT_GENERATOR :
        {
            emitter->CreateGeneratorAnimation(p3dParticleSystemConstants::GeneratorType::POINT)->SetNumFrames(factory->GetNumAnimFrames());
            emitter->GetGeneratorAnimation()->SetName(emitter->GetName());
           
            genAnimNode = (BaseGeneratorAnimNode*)(new PointGeneratorAnimNode(emitter->GetGeneratorAnimation(), emitterNode));
            genAnimNode->AddBlendStateNode(emitterNode->MayaObject());
            genAnimNode->SetAnimStartFrame(startAnimFrame);
            genAnimNode->SetIsCyclic(factory->GetCycleAnim());
            AnimNode::AddNode(genAnimNode);
            break;
        }
        case PLANE_GENERATOR :
        {
            emitter->CreateGeneratorAnimation(p3dParticleSystemConstants::GeneratorType::PLANE)->SetNumFrames(factory->GetNumAnimFrames());
            emitter->GetGeneratorAnimation()->SetName(emitter->GetName());

            genAnimNode = (BaseGeneratorAnimNode*)(new PlaneGeneratorAnimNode(emitter->GetGeneratorAnimation(), emitterNode));
            genAnimNode->AddBlendStateNode(emitterNode->MayaObject());
            genAnimNode->SetAnimStartFrame(startAnimFrame);
            genAnimNode->SetIsCyclic(factory->GetCycleAnim());
            AnimNode::AddNode(genAnimNode);
            break;
        }
        case SPHERE_GENERATOR :
        {
            emitter->CreateGeneratorAnimation(p3dParticleSystemConstants::GeneratorType::SPHERE)->SetNumFrames(factory->GetNumAnimFrames());
            emitter->GetGeneratorAnimation()->SetName(emitter->GetName());

            genAnimNode = (BaseGeneratorAnimNode*)(new SphereGeneratorAnimNode(emitter->GetGeneratorAnimation(), emitterNode));
            genAnimNode->AddBlendStateNode(emitterNode->MayaObject());
            genAnimNode->SetAnimStartFrame(startAnimFrame);
            genAnimNode->SetIsCyclic(factory->GetCycleAnim());
            AnimNode::AddNode(genAnimNode);
            break;
        }
    }

    // 14 Nov 2002: FIX MEMORY LEAK
    delete shaderName; shaderName = NULL;

    if (!emitter)
    {
        return;
    }    

    factory->AddEmitterFactoryPtr(emitter);

    //add all the blend states
    MItDependencyGraph dependIter(emitterNode->MayaObject());
    while(!dependIter.isDone())
    {
        MObject dependNode = dependIter.thisNode();
        MFnDependencyNode dependNodeFn(dependNode);
        if (dependNodeFn.typeId() == EMITTER_BLEND_STATE_NODE_ID)
        {
            if (emitAnimNode)
            {
                emitAnimNode->AddBlendStateNode(dependNode);
            }
            if (genAnimNode)
            {
                genAnimNode->AddBlendStateNode(dependNode);
            }
        }
        dependIter.next();
    }

    emitterNode->SetProcessed(true);

}


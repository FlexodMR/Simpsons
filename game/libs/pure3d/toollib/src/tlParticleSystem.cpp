/*===========================================================================
    tlparticle.cpp
    created June 15, 2000
    Kevin Voon

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#include <math.h>
#include <memory.h>

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "psenum.hpp"
#include "tlParticleSystem.hpp"
#include "tlParticleSystemChunk.hpp"
#include "tlInventory.hpp"

static const unsigned PARTICLE_SYSTEM_FACTORY_VERSION = 0;
static const unsigned PARTICLE_SYSTEM_VERSION = 0;
static const unsigned BASE_PARTICLE_EMITTER_FACTORY_VERSION = 0;
static const unsigned SPRITE_PARTICLE_EMITTER_FACTORY_VERSION = 0;
static const unsigned DRAWABLE_PARTICLE_EMITTER_FACTORY_VERSION = 0;
static const unsigned PARTICLE_ANIMATION_VERSION = 0;
static const unsigned EMITTER_ANIMATION_VERSION = 0;
static const unsigned GENERATOR_ANIMATION_VERSION = 0;

//*****************************************************************************
// tlParticleSystemFactory
//*****************************************************************************
tlParticleSystemFactory::tlParticleSystemFactory() :
    frameRate(30.0f),
    numAnimFrames(100),
    numOLFrames(100),
    cycleAnim(true),
    enableSorting(false),
    maxInstances(1)
{
}

tlParticleSystemFactory::tlParticleSystemFactory(tlDataChunk* ch) :
    frameRate(30.0f),
    numAnimFrames(100),
    numOLFrames(100),
    cycleAnim(true),
    enableSorting(false),
    maxInstances(1)
{
    LoadFromChunk(ch);
}

tlParticleSystemFactory::~tlParticleSystemFactory()
{
    for (int i = 0; i < emitters.Count(); i++)
    {
        delete emitters[i];
        emitters[i] = NULL;
    }
    emitters.Delete(0,emitters.Count());
}

void 
tlParticleSystemFactory::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::SYSTEM_FACTORY);
    tlParticleSystemFactoryChunk* chunk = dynamic_cast<tlParticleSystemFactoryChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == PARTICLE_SYSTEM_FACTORY_VERSION);

    SetName(chunk->GetName());
    SetFrameRate(chunk->GetFrameRate());
    SetNumAnimFrames(chunk->GetNumAnimFrames());
    SetNumOLFrames(chunk->GetNumOLFrames());
    SetCycleAnim(chunk->GetCycleAnim()==1);
    SetEnableSorting(chunk->GetEnableSorting()==1);

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        assert(subChunk != 0);
        switch (subChunk->ID())
        {
            case Pure3D::ParticleSystem::INSTANCING_INFO:
            {
                tlParticleInstancingInfoChunk* infoChunk = dynamic_cast<tlParticleInstancingInfoChunk*>(subChunk);
                assert(infoChunk != 0);
                SetMaxInstances(infoChunk->GetMaxInstances());
                break;
            }
            default:
            {
                tlEmitterFactoryLoader loader;
                tlBaseEmitterFactory* emitter = loader.LoadEmitterFactory(ch->GetSubChunk(i));
                emitters.Append(emitter);
                break;
            }
        }
    }
}

tlDataChunk* 
tlParticleSystemFactory::Chunk()
{
    tlParticleSystemFactoryChunk* chunk = new tlParticleSystemFactoryChunk;
    
    chunk->SetVersion(PARTICLE_SYSTEM_FACTORY_VERSION);
    chunk->SetName(GetName());
    chunk->SetFrameRate(frameRate);
    chunk->SetNumAnimFrames(numAnimFrames);
    chunk->SetNumOLFrames(numOLFrames);
    chunk->SetCycleAnim(cycleAnim);
    chunk->SetEnableSorting(enableSorting);
    chunk->SetNumEmitters(emitters.Count());

    tlParticleInstancingInfoChunk* infoChunk = new tlParticleInstancingInfoChunk;
    infoChunk->SetMaxInstances(maxInstances);
    chunk->AppendSubChunk(infoChunk);

    for (int i = 0; i < emitters.Count(); i++)
    {
        chunk->AppendSubChunk(emitters[i]->Chunk());
    }

    return chunk;
}

void 
tlParticleSystemFactory::AddEmitterFactory(const tlBaseEmitterFactory& emitter)
{ 
    tlBaseEmitterFactory* new_emitter = emitter.Clone();
    emitters.Append(new_emitter); 
}

void 
tlParticleSystemFactory::ResolveReferences(tlInventory* inv)
{
    for (int i = 0; i < emitters.Count(); i++)
    {
        emitters[i]->ResolveReferences(inv);
    }
}

void 
tlParticleSystemFactory::MarkReferences(int m)
{
    for (int i = 0; i < emitters.Count(); i++)
    {
        emitters[i]->Mark(m);
        emitters[i]->MarkReferences(m);
    }
}

bool 
tlParticleSystemFactory::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    for (int i = 0; i < emitters.Count(); i++)
    {
        if (emitters[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    return false;
}

tlParticleSystem* 
tlParticleSystemFactory::CreateParticleSystem(const char* sysName)
{
    tlParticleSystem* system = new tlParticleSystem;
    system->SetName(sysName);
    system->factoryName = strnew(GetName());
    system->factoryPtr = this;
    return system;
}

//*****************************************************************************
// tlParticleSystem
//*****************************************************************************
tlParticleSystem::tlParticleSystem() :
    factoryName(NULL),
    factoryPtr(NULL)
{
}

tlParticleSystem::tlParticleSystem(tlDataChunk* ch) :
    factoryName(NULL),
    factoryPtr(NULL)
{
    LoadFromChunk(ch);
}

tlParticleSystem::~tlParticleSystem()
{
    strdelete(factoryName);
//    RemoveParticles();
}

void 
tlParticleSystem::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::SYSTEM);
    tlParticleSystemChunk* chunk = dynamic_cast<tlParticleSystemChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == PARTICLE_SYSTEM_VERSION);

    SetName(chunk->GetName());
    strdelete(factoryName);
    factoryName = strnew(chunk->GetFactoryName());
    
/*
    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::ParticleSystem::BASE_PARTICLE_ARRAY :
            case Pure3D::ParticleSystem::SPRITE_PARTICLE_ARRAY :
            case Pure3D::ParticleSystem::DRAWABLE_PARTICLE_ARRAY :
            {
                tlParticleArray* array = new tlParticleArray(subChunk);
                if (array)
                {
                    particleArrays.Append(array);
                }
                break;
            }
            default:
                break;
        }
    }
*/    
}
    
tlDataChunk* 
tlParticleSystem::Chunk()
{
    tlParticleSystemChunk* chunk = new tlParticleSystemChunk;
    chunk->SetVersion(PARTICLE_SYSTEM_VERSION);
    chunk->SetName(GetName());
    chunk->SetFactoryName(factoryName);
/*
    int numParticleArrays = 0;
    for (int i = 0; i < particleArrays.Count(); i++)
    {
        tlDataChunk* partCh = particleArrays[i]->Chunk();
        if (partCh)
        {
            chunk->AppendSubChunk(partCh);
            numParticleArrays++;
        }
    }
    chunk->SetNumParticleArrays(numParticleArrays);
*/
    return chunk;
}

/*
void 
tlParticleSystem::PreloadParticles(float frame, const tlMatrix& localMatrix)
{
}

void 
tlParticleSystem::RemoveParticles()
{
    for (int i = 0; i < particleArrays.Count(); i++)
    {
        delete particleArrays[i];
        particleArrays[i] = NULL;
    }
    particleArrays.Delete(0,particleArrays.Count());
}
*/

void 
tlParticleSystem::ResolveReferences(tlInventory* inv)
{
    factoryPtr = toollib_find<tlParticleSystemFactory>(inv,factoryName);
    if (factoryPtr)
    {
        factoryPtr->ResolveReferences(inv);
    }
}

void 
tlParticleSystem::MarkReferences(int m)
{
    if (factoryPtr)
    {
        factoryPtr->Mark(m);
        factoryPtr->MarkReferences(m);
    }
}

bool 
tlParticleSystem::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if ((factoryPtr)&&(factoryPtr->FindReferenceMark(m)))
    {
        return true;
    }
    return false;   
}

//*****************************************************************************
// tlBaseEmitterFactory
//*****************************************************************************
tlBaseEmitterFactory::tlBaseEmitterFactory() :
    particleType(p3dParticleSystemConstants::UNDEFINED),
    generatorType(p3dParticleSystemConstants::UNDEFINED),
    zTest(true),
    zWrite(false),
    fog(true),
    maxParticles(100),
    infiniteLife(false),
    rotationalCohesion(0.0f),
    translationalCohesion(0.0f),
    particleAnim(NULL),
    emitterAnim(NULL),
    generatorAnim(NULL)
{
}

tlBaseEmitterFactory::tlBaseEmitterFactory(const tlBaseEmitterFactory& emitter) :
    particleType(emitter.particleType),
    generatorType(emitter.generatorType),
    zTest(emitter.zTest),
    zWrite(emitter.zWrite),
    fog(emitter.fog),
    maxParticles(emitter.maxParticles),
    infiniteLife(emitter.infiniteLife),
    rotationalCohesion(emitter.rotationalCohesion),
    translationalCohesion(emitter.translationalCohesion),
    particleAnim(NULL),
    emitterAnim(NULL),
    generatorAnim(NULL)
{
    SetName(emitter.GetName());
    if (emitter.particleAnim)
    {
        particleAnim = (tlParticleAnimation*)emitter.particleAnim->Clone();
    }
    if (emitter.emitterAnim)
    {
        emitterAnim = (tlEmitterAnimation*)emitter.emitterAnim->Clone();
    }
    if (emitter.generatorAnim)
    {
        generatorAnim = (tlGeneratorAnimation*)emitter.generatorAnim->Clone();
    }
}

tlBaseEmitterFactory::tlBaseEmitterFactory(tlDataChunk* ch) :
    particleType(p3dParticleSystemConstants::UNDEFINED),
    generatorType(p3dParticleSystemConstants::UNDEFINED),
    zTest(true),
    zWrite(false),
    fog(true),
    maxParticles(100),
    infiniteLife(false),
    rotationalCohesion(0.0f),
    translationalCohesion(0.0f),
    particleAnim(NULL),
    emitterAnim(NULL),
    generatorAnim(NULL)
{
    LoadFromChunk(ch);
}

tlBaseEmitterFactory::~tlBaseEmitterFactory()
{
    delete particleAnim;
    delete emitterAnim;
    delete generatorAnim;
}

tlBaseEmitterFactory*
tlBaseEmitterFactory::Clone() const
{
    return new tlBaseEmitterFactory(*this);
}

void
tlBaseEmitterFactory::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::BASE_EMITTER_FACTORY);
    tlBaseEmitterFactoryChunk* chunk = dynamic_cast<tlBaseEmitterFactoryChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == BASE_PARTICLE_EMITTER_FACTORY_VERSION);

    SetName(chunk->GetName());
    particleType = chunk->GetParticleType();
    generatorType = chunk->GetGeneratorType();
    zTest = chunk->GetZTest()==1;
    zWrite = chunk->GetZWrite()==1;
    fog = chunk->GetFog()==1;
    maxParticles = chunk->GetMaxParticles();
    infiniteLife = chunk->GetInfiniteLife()==1;
    rotationalCohesion = chunk->GetRotationalCohesion();
    translationalCohesion = chunk->GetTranslationalCohesion();

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::ParticleSystem::PARTICLE_ANIMATION:
            {
                particleAnim = new tlParticleAnimation(subChunk);
                break;
            }
            case Pure3D::ParticleSystem::EMITTER_ANIMATION:
            {
                emitterAnim = new tlEmitterAnimation(subChunk);
                break;
            }
            case Pure3D::ParticleSystem::GENERATOR_ANIMATION:
            {
                generatorAnim = new tlGeneratorAnimation(subChunk);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlBaseEmitterFactory::Chunk()
{
    tlBaseEmitterFactoryChunk* chunk = new tlBaseEmitterFactoryChunk;
    chunk->SetVersion(BASE_PARTICLE_EMITTER_FACTORY_VERSION);
    chunk->SetName(GetName());
    chunk->SetParticleType(particleType);
    chunk->SetGeneratorType(generatorType);
    chunk->SetZTest(zTest);
    chunk->SetZWrite(zWrite);
    chunk->SetFog(fog);
    chunk->SetMaxParticles(maxParticles);
    chunk->SetInfiniteLife(infiniteLife);
    chunk->SetRotationalCohesion(rotationalCohesion);
    chunk->SetTranslationalCohesion(translationalCohesion);

    if (particleAnim)
    {
        chunk->AppendSubChunk(particleAnim->Chunk());
    }
    if (emitterAnim)
    {
        chunk->AppendSubChunk(emitterAnim->Chunk());
    }
    if (generatorAnim)
    {
        chunk->AppendSubChunk(generatorAnim->Chunk());
    }
    return chunk;
}

tlParticleAnimation* 
tlBaseEmitterFactory::CreateParticleAnimation()
{
    // there are no over life particle animations if particles have infinite life!
    if (infiniteLife)
    {
        return NULL;
    }

    if (!particleAnim)
    {
        particleAnim = new tlParticleAnimation;
    }
    return particleAnim;
}

tlParticleAnimation* 
tlBaseEmitterFactory::GetParticleAnimation() const
{
    return particleAnim;
}

void 
tlBaseEmitterFactory::DeleteParticleAnimation()
{
    delete particleAnim;
    particleAnim = NULL;
}

tlEmitterAnimation* 
tlBaseEmitterFactory::CreateEmitterAnimation()
{
    if (!emitterAnim)
    {
        emitterAnim = new tlEmitterAnimation;
    }
    return emitterAnim;
}

tlEmitterAnimation* 
tlBaseEmitterFactory::GetEmitterAnimation() const
{
    return emitterAnim;
}

void 
tlBaseEmitterFactory::DeleteEmitterAnimation()
{
    delete emitterAnim;
    emitterAnim = NULL;
}

tlGeneratorAnimation* 
tlBaseEmitterFactory::CreateGeneratorAnimation(const tlFourCC& type)
{
    generatorType = type;
    if (!generatorAnim)
    {
        generatorAnim = new tlGeneratorAnimation;
    }
    return generatorAnim;
}

tlGeneratorAnimation* 
tlBaseEmitterFactory::GetGeneratorAnimation() const
{
    return generatorAnim;
}

void 
tlBaseEmitterFactory::DeleteGeneratorAnimation()
{
    delete generatorAnim;
    generatorAnim = NULL;
}

void 
tlBaseEmitterFactory::ResolveReferences(tlInventory* inv)
{
    if (particleAnim)
    {
        particleAnim->ResolveReferences(inv);
    }
    if (emitterAnim)
    {
        emitterAnim->ResolveReferences(inv);
    }
    if (generatorAnim)
    {
        generatorAnim->ResolveReferences(inv);
    }
}

void 
tlBaseEmitterFactory::MarkReferences(int m)
{
    if (particleAnim)
    {
        particleAnim->Mark(m);
        particleAnim->MarkReferences(m);
    }
    if (emitterAnim)
    {
        emitterAnim->Mark(m);
        emitterAnim->MarkReferences(m);
    }
    if (generatorAnim)
    {
        generatorAnim->Mark(m);
        generatorAnim->MarkReferences(m);
    }
}

bool 
tlBaseEmitterFactory::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if ((particleAnim)&&(particleAnim->FindReferenceMark(m)))
    {
        return true;
    }
    if ((emitterAnim)&&(emitterAnim->FindReferenceMark(m)))
    {
        return true;
    }
    if ((generatorAnim)&&(generatorAnim->FindReferenceMark(m)))
    {
        return true;
    }
    return false;   
}

//*****************************************************************************
// tlSpriteEmitterFactory
//*****************************************************************************
tlSpriteEmitterFactory::tlSpriteEmitterFactory() :
    tlBaseEmitterFactory(),
    shaderName(NULL),
    shaderPtr(NULL),
    angleMode(p3dParticleSystemConstants::ParticleAngleMode::SPECIFIED),
    angle(0.0f),
    textureAnimMode(p3dParticleSystemConstants::TextureAnimMode::LINEAR),
    textureFrameRate(1),
    numTextureFrames(1)
{
    particleType = p3dParticleSystemConstants::ParticleType::SPRITE;
}

tlSpriteEmitterFactory::tlSpriteEmitterFactory(const tlSpriteEmitterFactory& emitter) :
    tlBaseEmitterFactory(emitter),
    shaderName(strnew(emitter.shaderName)),
    shaderPtr(shaderPtr),
    angleMode(emitter.angleMode),
    angle(emitter.angle),
    textureAnimMode(emitter.textureAnimMode),
    textureFrameRate(emitter.textureFrameRate),
    numTextureFrames(emitter.numTextureFrames)
{
    particleType = p3dParticleSystemConstants::ParticleType::SPRITE;
}

tlSpriteEmitterFactory::tlSpriteEmitterFactory(tlDataChunk* ch) :
    tlBaseEmitterFactory(),
    shaderName(NULL),
    shaderPtr(NULL),
    angleMode(p3dParticleSystemConstants::ParticleAngleMode::SPECIFIED),
    angle(0.0f),
    textureAnimMode(p3dParticleSystemConstants::TextureAnimMode::LINEAR),
    textureFrameRate(1),
    numTextureFrames(1)
{
    particleType = p3dParticleSystemConstants::ParticleType::SPRITE;
    LoadFromChunk(ch);
}

tlSpriteEmitterFactory::~tlSpriteEmitterFactory()
{
    strdelete(shaderName);
}

tlBaseEmitterFactory*
tlSpriteEmitterFactory::Clone() const
{
    return new tlSpriteEmitterFactory(*this);
}

void 
tlSpriteEmitterFactory::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::SPRITE_EMITTER_FACTORY);
    tlSpriteEmitterFactoryChunk* chunk = dynamic_cast<tlSpriteEmitterFactoryChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == SPRITE_PARTICLE_EMITTER_FACTORY_VERSION);

    SetName(chunk->GetName());
    SetShaderName(chunk->ShaderName());
    angleMode = chunk->GetAngleMode();
    angle = chunk->GetAngle();
    textureAnimMode = chunk->GetTextureAnimMode();
    textureFrameRate = chunk->GetTextureFrameRate();
    numTextureFrames = chunk->GetNumTextureFrames();

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::ParticleSystem::BASE_EMITTER_FACTORY:
            {
                tlBaseEmitterFactory::LoadFromChunk(subChunk);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlSpriteEmitterFactory::Chunk()
{
    tlSpriteEmitterFactoryChunk* chunk = new tlSpriteEmitterFactoryChunk;
    chunk->SetVersion(SPRITE_PARTICLE_EMITTER_FACTORY_VERSION);
    chunk->SetName(GetName());
    chunk->SetShaderName(shaderName);
    chunk->SetAngleMode(angleMode);
    chunk->SetAngle(angle);
    chunk->SetTextureAnimMode(textureAnimMode);
    chunk->SetTextureFrameRate(textureFrameRate);
    chunk->SetNumTextureFrames(numTextureFrames);

    chunk->AppendSubChunk(tlBaseEmitterFactory::Chunk());

    return chunk;
}

void 
tlSpriteEmitterFactory::ResolveReferences(tlInventory* inv)
{
    shaderPtr = toollib_find<tlShader>(inv,shaderName);
    if (shaderPtr)
    {
        shaderPtr->ResolveReferences(inv);
    }
    tlBaseEmitterFactory::ResolveReferences(inv);
}

void 
tlSpriteEmitterFactory::MarkReferences(int m)
{
    if (shaderPtr)
    {
        shaderPtr->Mark(m);
        shaderPtr->MarkReferences(m);
    }
    tlBaseEmitterFactory::MarkReferences(m);
}

bool 
tlSpriteEmitterFactory::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if ((shaderPtr)&&(shaderPtr->FindReferenceMark(m)))
    {
        return true;
    }
    return tlBaseEmitterFactory::FindReferenceMark(m);
}

//*****************************************************************************
// tlDrawableEmitterFactory
//*****************************************************************************
tlDrawableEmitterFactory::tlDrawableEmitterFactory() :
    tlBaseEmitterFactory(),
    drawableName(NULL),
    drawablePtr(NULL),
    angleMode(p3dParticleSystemConstants::ParticleAngleMode::SPECIFIED),
    angle(0.0f)
{
    particleType = p3dParticleSystemConstants::ParticleType::DRAWABLE;
}

tlDrawableEmitterFactory::tlDrawableEmitterFactory(const tlDrawableEmitterFactory& emitter) :
    tlBaseEmitterFactory(emitter),
    drawableName(strnew(emitter.drawableName)),
    drawablePtr(drawablePtr),
    angleMode(emitter.angleMode),
    angle(emitter.angle)
{
    particleType = p3dParticleSystemConstants::ParticleType::DRAWABLE;
}

tlDrawableEmitterFactory::tlDrawableEmitterFactory(tlDataChunk* ch) :
    tlBaseEmitterFactory(),
    drawableName(NULL),
    drawablePtr(NULL),
    angleMode(p3dParticleSystemConstants::ParticleAngleMode::SPECIFIED),
    angle(0.0f)
{
    particleType = p3dParticleSystemConstants::ParticleType::DRAWABLE;
    LoadFromChunk(ch);
}

tlDrawableEmitterFactory::~tlDrawableEmitterFactory()
{
    strdelete(drawableName);
}

tlBaseEmitterFactory*
tlDrawableEmitterFactory::Clone() const
{
    return new tlDrawableEmitterFactory(*this);
}

void 
tlDrawableEmitterFactory::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::DRAWABLE_EMITTER_FACTORY);
    tlDrawableEmitterFactoryChunk* chunk = dynamic_cast<tlDrawableEmitterFactoryChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == DRAWABLE_PARTICLE_EMITTER_FACTORY_VERSION);

    SetName(chunk->GetName());
    SetDrawableName(chunk->DrawableName());
    angleMode = chunk->GetAngleMode();
    angle = chunk->GetAngle();

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::ParticleSystem::BASE_EMITTER_FACTORY:
            {
                tlBaseEmitterFactory::LoadFromChunk(subChunk);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlDrawableEmitterFactory::Chunk()
{
    tlDrawableEmitterFactoryChunk* chunk = new tlDrawableEmitterFactoryChunk;
    chunk->SetVersion(DRAWABLE_PARTICLE_EMITTER_FACTORY_VERSION);
    chunk->SetName(GetName());
    chunk->SetDrawableName(drawableName);
    chunk->SetAngleMode(angleMode);
    chunk->SetAngle(angle);

    chunk->AppendSubChunk(tlBaseEmitterFactory::Chunk());

    return chunk;
}

void 
tlDrawableEmitterFactory::ResolveReferences(tlInventory* inv)
{
    // the reference marking does not work because it depends on
    // finding tlEntity which could be animations, skeletons, etc!
    drawablePtr = toollib_find<tlEntity>(inv,drawableName);
    if (drawablePtr)
    {
        drawablePtr->ResolveReferences(inv);
    }
    tlBaseEmitterFactory::ResolveReferences(inv);
}

void 
tlDrawableEmitterFactory::MarkReferences(int m)
{
    if (drawablePtr)
    {
        drawablePtr->Mark(m);
        drawablePtr->MarkReferences(m);
    }
    tlBaseEmitterFactory::MarkReferences(m);
}

bool 
tlDrawableEmitterFactory::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if ((drawablePtr)&&(drawablePtr->FindReferenceMark(m)))
    {
        return true;
    }
    return tlBaseEmitterFactory::FindReferenceMark(m);
}

//*****************************************************************************
// tlParticleAnimation
//*****************************************************************************
tlParticleAnimation::tlParticleAnimation() :
    tlAnimation()
{
}

tlParticleAnimation::tlParticleAnimation(tlDataChunk* ch) :
    tlAnimation()
{
    LoadFromChunk(ch);
}

tlParticleAnimation::~tlParticleAnimation()
{
}

tlAnimation* 
tlParticleAnimation::Clone() const
{
    return new tlParticleAnimation(*this);
}

void 
tlParticleAnimation::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::PARTICLE_ANIMATION);
    tlParticleAnimationChunk* chunk = dynamic_cast<tlParticleAnimationChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == PARTICLE_ANIMATION_VERSION);

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::Animation::AnimationData::ANIMATION:
            {
                tlAnimation::LoadFromChunk(subChunk);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlParticleAnimation::Chunk()
{
    tlParticleAnimationChunk* chunk = new tlParticleAnimationChunk;
    chunk->SetVersion(PARTICLE_ANIMATION_VERSION);
    chunk->AppendSubChunk(tlAnimation::Chunk());
    return chunk;
}

tlBaseParticleAnimGroup* 
tlParticleAnimation::SetOverLifeAnimation(const tlBaseParticleAnimGroup& anim)
{
    SetAnimationGroup(anim,0);
    return (tlBaseParticleAnimGroup*)GetAnimationGroup(0);
}

tlBaseParticleAnimGroup* 
tlParticleAnimation::GetOverLifeAnimation()
{
    return (tlBaseParticleAnimGroup*)GetAnimationGroup(0);
}

void 
tlParticleAnimation::DeleteOverLifeAnimation()
{
    DeleteAnimationGroup(0);
}

//*****************************************************************************
// tlBaseParticleAnimGroup
//*****************************************************************************
tlBaseParticleAnimGroup::tlBaseParticleAnimGroup() : 
    tlAnimationGroup()
{
}

tlBaseParticleAnimGroup::tlBaseParticleAnimGroup(tlDataChunk* ch) :
    tlAnimationGroup()
{
    LoadFromChunk(ch);
}

tlBaseParticleAnimGroup::~tlBaseParticleAnimGroup()
{
}

tlAnimationGroup* 
tlBaseParticleAnimGroup::Clone() const
{
    return new tlBaseParticleAnimGroup(*this);
}

void 
tlBaseParticleAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateSpeedOverLifeChannel(numKeys);
    CreateWeightOverLifeChannel(numKeys);
}
    
void 
tlBaseParticleAnimGroup::CreateSpeedOverLifeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPEED_OVER_LIFE_SPOL, numKeys);
}

void 
tlBaseParticleAnimGroup::CreateWeightOverLifeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::WEIGHT_OVER_LIFE_WEOL, numKeys);
}

void 
tlBaseParticleAnimGroup::SetSpeedOverLifeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPEED_OVER_LIFE_SPOL, &channel);
}

void 
tlBaseParticleAnimGroup::SetWeightOverLifeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::WEIGHT_OVER_LIFE_WEOL, &channel);
}

tlFloat1Channel* 
tlBaseParticleAnimGroup::GetSpeedOverLifeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPEED_OVER_LIFE_SPOL);
}
    
tlFloat1Channel* 
tlBaseParticleAnimGroup::GetWeightOverLifeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::WEIGHT_OVER_LIFE_WEOL);
}

void 
tlBaseParticleAnimGroup::DeleteSpeedOverLifeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPEED_OVER_LIFE_SPOL);
}

void 
tlBaseParticleAnimGroup::DeleteWeightOverLifeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::WEIGHT_OVER_LIFE_WEOL);
}

//*****************************************************************************
// tlSpriteParticleAnimGroup
//*****************************************************************************
tlSpriteParticleAnimGroup::tlSpriteParticleAnimGroup() :
    tlBaseParticleAnimGroup()
{
}

tlSpriteParticleAnimGroup::tlSpriteParticleAnimGroup(tlDataChunk* ch) :
    tlBaseParticleAnimGroup()
{
    LoadFromChunk(ch);
}

tlSpriteParticleAnimGroup::~tlSpriteParticleAnimGroup()
{
}

tlAnimationGroup* 
tlSpriteParticleAnimGroup::Clone() const
{
    return new tlSpriteParticleAnimGroup(*this);
}

void 
tlSpriteParticleAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateTextureOverLifeChannel(numKeys);
    CreateColourOverLifeChannel(numKeys);
    CreateAlphaOverLifeChannel(numKeys);
    CreateSizeOverLifeChannel(numKeys);
    CreateSpinOverLifeChannel(numKeys);
    tlBaseParticleAnimGroup::CreateStandardChannels(numKeys);
}
    
void 
tlSpriteParticleAnimGroup::CreateTextureOverLifeChannel(int numKeys)
{
    CreateIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::TEXTURE_OVER_LIFE_TEOL, numKeys);
}

void 
tlSpriteParticleAnimGroup::CreateColourOverLifeChannel(int numKeys)
{
    CreateColourChannel(Pure3DAnimationChannels::ParticleSystem::Particle::COLOUR_OVER_LIFE_COOL, numKeys);
}

void 
tlSpriteParticleAnimGroup::CreateAlphaOverLifeChannel(int numKeys)
{
    CreateIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::ALPHA_OVER_LIFE_ALOL, numKeys);
}

void 
tlSpriteParticleAnimGroup::CreateSizeOverLifeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SIZE_OVER_LIFE_SZOL, numKeys);
}

void 
tlSpriteParticleAnimGroup::CreateSpinOverLifeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPIN_OVER_LIFE_SNOL, numKeys);
}

void
tlSpriteParticleAnimGroup::SetTextureOverLifeChannel(const tlIntChannel& channel)
{
    SetIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::TEXTURE_OVER_LIFE_TEOL, &channel);
}

void
tlSpriteParticleAnimGroup::SetColourOverLifeChannel(const tlColourChannel& channel)
{
    SetColourChannel(Pure3DAnimationChannels::ParticleSystem::Particle::COLOUR_OVER_LIFE_COOL, &channel);
}

void
tlSpriteParticleAnimGroup::SetAlphaOverLifeChannel(const tlIntChannel& channel)
{
    SetIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::ALPHA_OVER_LIFE_ALOL, &channel);
}

void
tlSpriteParticleAnimGroup::SetSizeOverLifeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SIZE_OVER_LIFE_SZOL, &channel);
}

void
tlSpriteParticleAnimGroup::SetSpinOverLifeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPIN_OVER_LIFE_SNOL, &channel);
}

tlIntChannel*    
tlSpriteParticleAnimGroup::GetTextureOverLifeChannel()
{
    return GetIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::TEXTURE_OVER_LIFE_TEOL);
}

tlColourChannel* 
tlSpriteParticleAnimGroup::GetColourOverLifeChannel()
{
    return GetColourChannel(Pure3DAnimationChannels::ParticleSystem::Particle::COLOUR_OVER_LIFE_COOL);
}

tlIntChannel* 
tlSpriteParticleAnimGroup::GetAlphaOverLifeChannel()
{
    return GetIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::ALPHA_OVER_LIFE_ALOL);
}

tlFloat1Channel* 
tlSpriteParticleAnimGroup::GetSizeOverLifeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SIZE_OVER_LIFE_SZOL);
}

tlFloat1Channel* 
tlSpriteParticleAnimGroup::GetSpinOverLifeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPIN_OVER_LIFE_SNOL);
}

void 
tlSpriteParticleAnimGroup::DeleteTextureOverLifeChannel()
{
    DeleteIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::TEXTURE_OVER_LIFE_TEOL);
}

void 
tlSpriteParticleAnimGroup::DeleteColourOverLifeChannel()
{
    DeleteColourChannel(Pure3DAnimationChannels::ParticleSystem::Particle::COLOUR_OVER_LIFE_COOL);
}

void 
tlSpriteParticleAnimGroup::DeleteAlphaOverLifeChannel()
{
    DeleteIntChannel(Pure3DAnimationChannels::ParticleSystem::Particle::ALPHA_OVER_LIFE_ALOL);
}

void 
tlSpriteParticleAnimGroup::DeleteSizeOverLifeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SIZE_OVER_LIFE_SZOL);
}

void 
tlSpriteParticleAnimGroup::DeleteSpinOverLifeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Particle::SPIN_OVER_LIFE_SNOL);
}

//*****************************************************************************
// tlDrawableParticleAnimGroup
//*****************************************************************************
tlDrawableParticleAnimGroup::tlDrawableParticleAnimGroup() :
    tlBaseParticleAnimGroup()
{
}

tlDrawableParticleAnimGroup::tlDrawableParticleAnimGroup(tlDataChunk* ch) :
    tlBaseParticleAnimGroup()
{
    LoadFromChunk(ch);
}

tlDrawableParticleAnimGroup::~tlDrawableParticleAnimGroup()
{
}

tlAnimationGroup* 
tlDrawableParticleAnimGroup::Clone() const
{
    return new tlDrawableParticleAnimGroup(*this);
}

//*****************************************************************************
// tlEmitterAnimation
//*****************************************************************************
tlEmitterAnimation::tlEmitterAnimation() : 
    tlAnimation()
{
}

tlEmitterAnimation::tlEmitterAnimation(tlDataChunk* ch) :
    tlAnimation()
{
    LoadFromChunk(ch);
}

tlEmitterAnimation::~tlEmitterAnimation()
{
}

tlAnimation* 
tlEmitterAnimation::Clone() const
{
    return new tlEmitterAnimation(*this);
}

void 
tlEmitterAnimation::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::EMITTER_ANIMATION);
    tlEmitterAnimationChunk* chunk = dynamic_cast<tlEmitterAnimationChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == EMITTER_ANIMATION_VERSION);

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::Animation::AnimationData::ANIMATION:
            {
                tlAnimation::LoadFromChunk(subChunk);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlEmitterAnimation::Chunk()
{
    tlEmitterAnimationChunk* chunk = new tlEmitterAnimationChunk;
    chunk->SetVersion(EMITTER_ANIMATION_VERSION);
    chunk->AppendSubChunk(tlAnimation::Chunk());
    return chunk;
}

int 
tlEmitterAnimation::GetNumBlendStates()
{
    return GetNumAnimationGroups();
}

tlBaseEmitterAnimGroup* 
tlEmitterAnimation::AddBlendState(const tlBaseEmitterAnimGroup& state)
{        
    int stateNum = GetNumBlendStates();
    SetAnimationGroup(state, stateNum);
    return (tlBaseEmitterAnimGroup*)GetBlendState(stateNum);
}

tlBaseEmitterAnimGroup* 
tlEmitterAnimation::SetBlendState(int stateNum, const tlBaseEmitterAnimGroup& state)
{
    if (stateNum<GetNumBlendStates())
    {
        SetAnimationGroup(state,stateNum);
        return (tlBaseEmitterAnimGroup*)GetBlendState(stateNum);
    }
    return NULL;
}

tlBaseEmitterAnimGroup* 
tlEmitterAnimation::GetBlendState(int stateNum)
{
    return (tlBaseEmitterAnimGroup*)GetAnimationGroup(stateNum);
}

void 
tlEmitterAnimation::DeleteBlendState(int stateNum)
{
    DeleteAnimationGroup(stateNum);
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        tlAnimation::GetAnimationGroup(i)->SetGroupId((unsigned int)i);
    }
}

//*****************************************************************************
// tlBaseEmitterAnimGroup
//*****************************************************************************
tlBaseEmitterAnimGroup::tlBaseEmitterAnimGroup() :
    tlAnimationGroup()
{
}

tlBaseEmitterAnimGroup::tlBaseEmitterAnimGroup(tlDataChunk* ch) :
    tlAnimationGroup()
{
    LoadFromChunk(ch);
}

tlBaseEmitterAnimGroup::~tlBaseEmitterAnimGroup()
{
}

tlAnimationGroup* 
tlBaseEmitterAnimGroup::Clone() const
{
    return new tlBaseEmitterAnimGroup(*this);
}

void 
tlBaseEmitterAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateVisibilityChannel(numKeys);
    CreateEmissionRateChannel(numKeys);
    CreateNumParticlesChannel(numKeys);
    CreateTranslationChannel(numKeys);
    CreateRotationChannel(numKeys);
    CreateLifeChannel(numKeys);
    CreateLifeVarChannel(numKeys);
    CreateSpeedChannel(numKeys);
    CreateSpeedVarChannel(numKeys);
    CreateWeightChannel(numKeys);
    CreateWeightVarChannel(numKeys);
    CreateGravityChannel(numKeys);
    CreateDragChannel(numKeys);
}
    
void 
tlBaseEmitterAnimGroup::CreateVisibilityChannel(int numKeys)
{
    CreateBoolChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::VISIBILITY_VIS, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateEmissionRateChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::EMISSION_RATE_RAT, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateNumParticlesChannel(int numKeys)
{
    CreateIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::NUMBER_PARTICLES_NUM, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateTranslationChannel(int numKeys)
{
    CreateVectorChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::TRANSLATION_TRA, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateRotationChannel(int numKeys)
{
    CreateQuaternionChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ROTATION_ROT, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateLifeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_LIF, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateLifeVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_VAR_LIFV, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateSpeedChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_SPD, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateSpeedVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_VAR_SPDV, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateWeightChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_WGT, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateWeightVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_VAR_WGTV, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateGravityChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::GRAVITY_GRA, numKeys);
}

void 
tlBaseEmitterAnimGroup::CreateDragChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::DRAG_DRA, numKeys);
}

void 
tlBaseEmitterAnimGroup::SetVisibilityChannel(const tlBoolChannel& channel)
{
    SetBoolChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::VISIBILITY_VIS, &channel);
}

void 
tlBaseEmitterAnimGroup::SetEmissionRateChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::EMISSION_RATE_RAT, &channel);
}

void 
tlBaseEmitterAnimGroup::SetNumParticlesChannel(const tlIntChannel& channel)
{
    SetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::NUMBER_PARTICLES_NUM, &channel);
}

void 
tlBaseEmitterAnimGroup::SetTranslationChannel(const tlVectorChannel& channel)
{
    SetVectorChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::TRANSLATION_TRA, &channel);
}

void 
tlBaseEmitterAnimGroup::SetRotationChannel(const tlQuaternionChannel& channel)
{
    SetQuaternionChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ROTATION_ROT, &channel);
}

void 
tlBaseEmitterAnimGroup::SetLifeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_LIF, &channel);
}

void 
tlBaseEmitterAnimGroup::SetLifeVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_VAR_LIFV, &channel);
}

void 
tlBaseEmitterAnimGroup::SetSpeedChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_SPD, &channel);
}

void 
tlBaseEmitterAnimGroup::SetSpeedVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_VAR_SPDV, &channel);
}

void 
tlBaseEmitterAnimGroup::SetWeightChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_WGT, &channel);
}

void 
tlBaseEmitterAnimGroup::SetWeightVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_VAR_WGTV, &channel);
}

void 
tlBaseEmitterAnimGroup::SetGravityChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::GRAVITY_GRA, &channel);
}

void 
tlBaseEmitterAnimGroup::SetDragChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::DRAG_DRA, &channel);
}

tlBoolChannel* 
tlBaseEmitterAnimGroup::GetVisibilityChannel()
{
    return GetBoolChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::VISIBILITY_VIS);
}

tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetEmissionRateChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::EMISSION_RATE_RAT);
}
    
tlIntChannel* 
tlBaseEmitterAnimGroup::GetNumParticlesChannel()
{
    return GetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::NUMBER_PARTICLES_NUM);
}

tlVectorChannel* 
tlBaseEmitterAnimGroup::GetTranslationChannel()
{
    return GetVectorChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::TRANSLATION_TRA);
}
    
tlQuaternionChannel* 
tlBaseEmitterAnimGroup::GetRotationChannel()
{
    return GetQuaternionChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ROTATION_ROT);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetLifeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_LIF);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetLifeVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_VAR_LIFV);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetSpeedChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_SPD);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetSpeedVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_VAR_SPDV);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetWeightChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_WGT);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetWeightVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_VAR_WGTV);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetGravityChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::GRAVITY_GRA);
}
    
tlFloat1Channel* 
tlBaseEmitterAnimGroup::GetDragChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::DRAG_DRA);
}

void 
tlBaseEmitterAnimGroup::DeleteVisibilityChannel()
{
    DeleteBoolChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::VISIBILITY_VIS);
}

void 
tlBaseEmitterAnimGroup::DeleteEmissionRateChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::EMISSION_RATE_RAT);
}

void 
tlBaseEmitterAnimGroup::DeleteNumParticlesChannel()
{
    DeleteIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::NUMBER_PARTICLES_NUM);
}

void 
tlBaseEmitterAnimGroup::DeleteTranslationChannel()
{
    DeleteVectorChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::TRANSLATION_TRA);
}

void 
tlBaseEmitterAnimGroup::DeleteRotationChannel()
{
    DeleteQuaternionChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ROTATION_ROT);
}

void 
tlBaseEmitterAnimGroup::DeleteLifeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_LIF);
}

void 
tlBaseEmitterAnimGroup::DeleteLifeVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::LIFE_VAR_LIFV);
}

void 
tlBaseEmitterAnimGroup::DeleteSpeedChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_SPD);
}

void 
tlBaseEmitterAnimGroup::DeleteSpeedVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPEED_VAR_SPDV);
}

void 
tlBaseEmitterAnimGroup::DeleteWeightChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_WGT);
}

void 
tlBaseEmitterAnimGroup::DeleteWeightVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::WEIGHT_VAR_WGTV);
}

void 
tlBaseEmitterAnimGroup::DeleteGravityChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::GRAVITY_GRA);
}

void 
tlBaseEmitterAnimGroup::DeleteDragChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::DRAG_DRA);
}

//*****************************************************************************
// tlSpriteEmitterAnimGroup
//*****************************************************************************
tlSpriteEmitterAnimGroup::tlSpriteEmitterAnimGroup() :
    tlBaseEmitterAnimGroup()
{
}

tlSpriteEmitterAnimGroup::tlSpriteEmitterAnimGroup(tlDataChunk* ch) :
    tlBaseEmitterAnimGroup()
{
}

tlSpriteEmitterAnimGroup::~tlSpriteEmitterAnimGroup()
{
}

tlAnimationGroup* 
tlSpriteEmitterAnimGroup::Clone() const
{
    return new tlSpriteEmitterAnimGroup(*this);
}

void 
tlSpriteEmitterAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateColourChannel(numKeys);
    CreateColourVarChannel(numKeys);
    CreateAlphaChannel(numKeys);
    CreateAlphaVarChannel(numKeys);
    CreateSizeChannel(numKeys);
    CreateSizeVarChannel(numKeys);
    CreateSpinChannel(numKeys);
    CreateSpinVarChannel(numKeys);
    tlBaseEmitterAnimGroup::CreateStandardChannels(numKeys);
}
   
void 
tlSpriteEmitterAnimGroup::CreateColourChannel(int numKeys)
{
    CreateColourChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_CLR, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateColourVarChannel(int numKeys)
{
    CreateIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_VAR_CLRV, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateAlphaChannel(int numKeys)
{
    CreateIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_ALP, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateAlphaVarChannel(int numKeys)
{
    CreateIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_VAR_ALPV, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateSizeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_SIZ, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateSizeVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_VAR_SIZV, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateSpinChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_SPI, numKeys);
}

void tlSpriteEmitterAnimGroup::CreateSpinVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_VAR_SPIV, numKeys);
}

void 
tlSpriteEmitterAnimGroup::SetColourChannel(const tlColourChannel& channel)
{
    SetColourChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_CLR, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetColourVarChannel(const tlIntChannel& channel)
{
    SetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_VAR_CLRV, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetAlphaChannel(const tlIntChannel& channel)
{
    SetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_ALP, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetAlphaVarChannel(const tlIntChannel& channel)
{
    SetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_VAR_ALPV, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetSizeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_SIZ, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetSizeVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_VAR_SIZV, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetSpinChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_SPI, &channel);
}

void 
tlSpriteEmitterAnimGroup::SetSpinVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_VAR_SPIV, &channel);
}

tlColourChannel* 
tlSpriteEmitterAnimGroup::GetColourChannel()
{
    return GetColourChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_CLR);
}

tlIntChannel* 
tlSpriteEmitterAnimGroup::GetColourVarChannel()
{
    return GetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_VAR_CLRV);
}

tlIntChannel* 
tlSpriteEmitterAnimGroup::GetAlphaChannel()
{
    return GetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_ALP);
}

tlIntChannel* 
tlSpriteEmitterAnimGroup::GetAlphaVarChannel()
{
    return GetIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_VAR_ALPV);
}

tlFloat1Channel* 
tlSpriteEmitterAnimGroup::GetSizeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_SIZ);
}

tlFloat1Channel* 
tlSpriteEmitterAnimGroup::GetSizeVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_VAR_SIZV);
}

tlFloat1Channel* 
tlSpriteEmitterAnimGroup::GetSpinChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_SPI);
}

tlFloat1Channel* 
tlSpriteEmitterAnimGroup::GetSpinVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_VAR_SPIV);
}

void 
tlSpriteEmitterAnimGroup::DeleteColourChannel()
{
    DeleteColourChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_CLR);
}

void 
tlSpriteEmitterAnimGroup::DeleteColourVarChannel()
{
    DeleteIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::COLOUR_VAR_CLRV);
}

void 
tlSpriteEmitterAnimGroup::DeleteAlphaChannel()
{
    DeleteIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_ALP);
}

void 
tlSpriteEmitterAnimGroup::DeleteAlphaVarChannel()
{
    DeleteIntChannel(Pure3DAnimationChannels::ParticleSystem::Emitter::ALPHA_VAR_ALPV);
}

void 
tlSpriteEmitterAnimGroup::DeleteSizeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_SIZ);
}

void 
tlSpriteEmitterAnimGroup::DeleteSizeVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SIZE_VAR_SIZV);
}

void 
tlSpriteEmitterAnimGroup::DeleteSpinChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_SPI);
}

void 
tlSpriteEmitterAnimGroup::DeleteSpinVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Emitter::SPIN_VAR_SPIV);
}

//*****************************************************************************
// tlDrawableEmitterAnimGroup
//*****************************************************************************
tlDrawableEmitterAnimGroup::tlDrawableEmitterAnimGroup() :
    tlBaseEmitterAnimGroup()
{
}

tlDrawableEmitterAnimGroup::tlDrawableEmitterAnimGroup(tlDataChunk* ch) :
    tlBaseEmitterAnimGroup()
{
    LoadFromChunk(ch);
}
    
tlDrawableEmitterAnimGroup::~tlDrawableEmitterAnimGroup()
{
}

tlAnimationGroup* 
tlDrawableEmitterAnimGroup::Clone() const
{
    return new tlDrawableEmitterAnimGroup(*this);
}

//*****************************************************************************
// tlGeneratorAnimation
//*****************************************************************************
tlGeneratorAnimation::tlGeneratorAnimation() :
    tlAnimation()
{
}

tlGeneratorAnimation::tlGeneratorAnimation(tlDataChunk* ch) :
    tlAnimation()
{
    LoadFromChunk(ch);
}

tlGeneratorAnimation::~tlGeneratorAnimation()
{
}

tlAnimation* 
tlGeneratorAnimation::Clone() const
{
    return new tlGeneratorAnimation(*this);
}

void 
tlGeneratorAnimation::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::ParticleSystem::GENERATOR_ANIMATION);
    tlGeneratorAnimationChunk* chunk = dynamic_cast<tlGeneratorAnimationChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == GENERATOR_ANIMATION_VERSION);

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::Animation::AnimationData::ANIMATION:
            {
                tlAnimation::LoadFromChunk(subChunk);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk*
tlGeneratorAnimation::Chunk()
{
    tlGeneratorAnimationChunk* chunk = new tlGeneratorAnimationChunk;
    chunk->SetVersion(GENERATOR_ANIMATION_VERSION);
    chunk->AppendSubChunk(tlAnimation::Chunk());
    return chunk;
}

int 
tlGeneratorAnimation::GetNumBlendStates()
{
    return GetNumAnimationGroups();
}

tlBaseGeneratorAnimGroup* 
tlGeneratorAnimation::AddBlendState(const tlBaseGeneratorAnimGroup& state)
{
    int stateNum = GetNumBlendStates();
    SetAnimationGroup(state, stateNum);
    return (tlBaseGeneratorAnimGroup*)GetBlendState(stateNum);
}

tlBaseGeneratorAnimGroup* 
tlGeneratorAnimation::SetBlendState(int stateNum, const tlBaseGeneratorAnimGroup& state)
{
    if (stateNum<GetNumBlendStates())
    {
        SetAnimationGroup(state,stateNum);
        return (tlBaseGeneratorAnimGroup*)GetBlendState(stateNum);
    }
    return NULL;
}

tlBaseGeneratorAnimGroup* 
tlGeneratorAnimation::GetBlendState(int stateNum)
{
    return (tlBaseGeneratorAnimGroup* )GetAnimationGroup(stateNum);
}

void 
tlGeneratorAnimation::DeleteBlendState(int stateNum)
{
    DeleteAnimationGroup(stateNum);
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        tlAnimation::GetAnimationGroup(i)->SetGroupId((unsigned int)i);
    }
}

//*****************************************************************************
// tlBaseGeneratorAnimGroup
//*****************************************************************************
tlBaseGeneratorAnimGroup::tlBaseGeneratorAnimGroup() : 
    tlAnimationGroup()
{
}

tlBaseGeneratorAnimGroup::tlBaseGeneratorAnimGroup(tlDataChunk* ch) : 
    tlAnimationGroup()
{
    LoadFromChunk(ch);
}

tlBaseGeneratorAnimGroup::~tlBaseGeneratorAnimGroup()
{
}

tlAnimationGroup* 
tlBaseGeneratorAnimGroup::Clone() const
{
    return new tlBaseGeneratorAnimGroup(*this);
}

void 
tlBaseGeneratorAnimGroup::CreateStandardChannels(int numKeys)
{
}

//*****************************************************************************
// tlPointGeneratorAnimGroup
//*****************************************************************************
tlPointGeneratorAnimGroup::tlPointGeneratorAnimGroup() : 
    tlBaseGeneratorAnimGroup()
{
}

tlPointGeneratorAnimGroup::tlPointGeneratorAnimGroup(tlDataChunk* ch) : 
    tlBaseGeneratorAnimGroup()
{
    LoadFromChunk(ch);
}

tlPointGeneratorAnimGroup::~tlPointGeneratorAnimGroup()
{
}

tlAnimationGroup* 
tlPointGeneratorAnimGroup::Clone() const
{
    return new tlPointGeneratorAnimGroup(*this);
}

void
tlPointGeneratorAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateHorizSpreadChannel(numKeys);
    CreateVertSpreadChannel(numKeys);
    CreateRadialVarChannel(numKeys);
    tlBaseGeneratorAnimGroup::CreateStandardChannels(numKeys);
}
    
void 
tlPointGeneratorAnimGroup::CreateHorizSpreadChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP, numKeys);
}

void 
tlPointGeneratorAnimGroup::CreateVertSpreadChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP, numKeys);
}

void 
tlPointGeneratorAnimGroup::CreateRadialVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA, numKeys);
}

void 
tlPointGeneratorAnimGroup::SetHorizSpreadChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP, &channel);
}

void 
tlPointGeneratorAnimGroup::SetVertSpreadChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP, &channel);
}

void 
tlPointGeneratorAnimGroup::SetRadialVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA, &channel);
}

tlFloat1Channel* 
tlPointGeneratorAnimGroup::GetHorizSpreadChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP);
}

tlFloat1Channel* 
tlPointGeneratorAnimGroup::GetVertSpreadChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP);
}

tlFloat1Channel* 
tlPointGeneratorAnimGroup::GetRadialVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA);
}

void 
tlPointGeneratorAnimGroup::DeleteHorizSpreadChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP);
}

void 
tlPointGeneratorAnimGroup::DeleteVertSpreadChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP);
}

void 
tlPointGeneratorAnimGroup::DeleteRadialVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA);
}

//*****************************************************************************
// tlPlaneGeneratorAnimGroup
//*****************************************************************************
tlPlaneGeneratorAnimGroup::tlPlaneGeneratorAnimGroup() : 
    tlBaseGeneratorAnimGroup()
{
}

tlPlaneGeneratorAnimGroup::tlPlaneGeneratorAnimGroup(tlDataChunk* ch) : 
    tlBaseGeneratorAnimGroup()
{
    LoadFromChunk(ch);
}

tlPlaneGeneratorAnimGroup::~tlPlaneGeneratorAnimGroup()
{
}

tlAnimationGroup* 
tlPlaneGeneratorAnimGroup::Clone() const
{
    return new tlPlaneGeneratorAnimGroup(*this);
}

void
tlPlaneGeneratorAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateHorizSpreadChannel(numKeys);
    CreateVertSpreadChannel(numKeys);
    CreateRadialVarChannel(numKeys);
    CreateWidthChannel(numKeys);
    CreateHeightChannel(numKeys);
    tlBaseGeneratorAnimGroup::CreateStandardChannels(numKeys);
}
    
void 
tlPlaneGeneratorAnimGroup::CreateHorizSpreadChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP, numKeys);
}

void 
tlPlaneGeneratorAnimGroup::CreateVertSpreadChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP, numKeys);
}

void 
tlPlaneGeneratorAnimGroup::CreateRadialVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA, numKeys);
}

void 
tlPlaneGeneratorAnimGroup::CreateWidthChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::WIDTH_WDT, numKeys);
}

void 
tlPlaneGeneratorAnimGroup::CreateHeightChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HEIGHT_HGT, numKeys);
}

void 
tlPlaneGeneratorAnimGroup::SetHorizSpreadChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP, &channel);
}

void 
tlPlaneGeneratorAnimGroup::SetVertSpreadChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP, &channel);
}

void 
tlPlaneGeneratorAnimGroup::SetRadialVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA, &channel);
}

void 
tlPlaneGeneratorAnimGroup::SetWidthChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::WIDTH_WDT, &channel);
}

void 
tlPlaneGeneratorAnimGroup::SetHeightChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HEIGHT_HGT, &channel);
}

tlFloat1Channel* 
tlPlaneGeneratorAnimGroup::GetHorizSpreadChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP);
}

tlFloat1Channel* 
tlPlaneGeneratorAnimGroup::GetVertSpreadChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP);
}

tlFloat1Channel* 
tlPlaneGeneratorAnimGroup::GetRadialVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA);
}

tlFloat1Channel* 
tlPlaneGeneratorAnimGroup::GetWidthChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::WIDTH_WDT);
}

tlFloat1Channel* 
tlPlaneGeneratorAnimGroup::GetHeightChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HEIGHT_HGT);
}

void 
tlPlaneGeneratorAnimGroup::DeleteHorizSpreadChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HORIZ_SPREAD_HOSP);
}

void 
tlPlaneGeneratorAnimGroup::DeleteVertSpreadChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::VERT_SPREAD_VESP);
}

void 
tlPlaneGeneratorAnimGroup::DeleteRadialVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA);
}

void 
tlPlaneGeneratorAnimGroup::DeleteWidthChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::WIDTH_WDT);
}

void 
tlPlaneGeneratorAnimGroup::DeleteHeightChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::HEIGHT_HGT);
}

//*****************************************************************************
// tlSphereGeneratorAnimGroup
//*****************************************************************************
tlSphereGeneratorAnimGroup::tlSphereGeneratorAnimGroup() : 
    tlBaseGeneratorAnimGroup()
{
}

tlSphereGeneratorAnimGroup::tlSphereGeneratorAnimGroup(tlDataChunk* ch) : 
    tlBaseGeneratorAnimGroup()
{
    LoadFromChunk(ch);
}

tlSphereGeneratorAnimGroup::~tlSphereGeneratorAnimGroup()
{
}

tlAnimationGroup* 
tlSphereGeneratorAnimGroup::Clone() const
{
    return new tlSphereGeneratorAnimGroup(*this);
}

void
tlSphereGeneratorAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateRadialVarChannel(numKeys);
    CreateRadiusChannel(numKeys);
    tlBaseGeneratorAnimGroup::CreateStandardChannels(numKeys);
}
    
void 
tlSphereGeneratorAnimGroup::CreateRadialVarChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA, numKeys);
}

void 
tlSphereGeneratorAnimGroup::CreateRadiusChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIUS_RAD, numKeys);
}

void 
tlSphereGeneratorAnimGroup::SetRadialVarChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA, &channel);
}

void 
tlSphereGeneratorAnimGroup::SetRadiusChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIUS_RAD, &channel);
}

tlFloat1Channel* 
tlSphereGeneratorAnimGroup::GetRadialVarChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA);
}

tlFloat1Channel* 
tlSphereGeneratorAnimGroup::GetRadiusChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIUS_RAD);
}

void 
tlSphereGeneratorAnimGroup::DeleteRadialVarChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIAL_VAR_RDVA);
}

void 
tlSphereGeneratorAnimGroup::DeleteRadiusChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::ParticleSystem::Generator::RADIUS_RAD);
}

//*****************************************************************************
// tlEmitterFactoryLoader
//*****************************************************************************
tlBaseEmitterFactory* 
tlEmitterFactoryLoader::LoadEmitterFactory(tlDataChunk* chunk)
{
    switch(chunk->ID())
    {
        case Pure3D::ParticleSystem::BASE_EMITTER_FACTORY:
        {
            return new tlBaseEmitterFactory(chunk);
            break;
        }
        case Pure3D::ParticleSystem::SPRITE_EMITTER_FACTORY:
        {
            return new tlSpriteEmitterFactory(chunk);
        }
        case Pure3D::ParticleSystem::DRAWABLE_EMITTER_FACTORY:
        {
            return new tlDrawableEmitterFactory(chunk);
        }
        default:
        {
            return NULL;
            break;
        }
    }
}

//*****************************************************************************
// tlParticleSystemFactoryLoader
//*****************************************************************************
tlParticleSystemFactoryLoader::tlParticleSystemFactoryLoader() : 
    tlEntityLoader(Pure3D::ParticleSystem::SYSTEM_FACTORY)
{
}

tlEntity* 
tlParticleSystemFactoryLoader::Load(tlDataChunk* chunk)
{
    switch(chunk->ID())
    {
        case Pure3D::ParticleSystem::SYSTEM_FACTORY:
        {
            return new tlParticleSystemFactory(chunk);
            break;
        }
        default:
        {
            return NULL;
            break;
        }
    }
}


//*****************************************************************************
// tlParticleSystemLoader
//*****************************************************************************
tlParticleSystemLoader::tlParticleSystemLoader() : 
    tlEntityLoader(Pure3D::ParticleSystem::SYSTEM)
{
}

tlEntity* 
tlParticleSystemLoader::Load(tlDataChunk* chunk)
{
    switch(chunk->ID())
    {
        case Pure3D::ParticleSystem::SYSTEM:
        {
            return new tlParticleSystem(chunk);
            break;
        }
        default:
        {
            return NULL;
            break;
        }
    }
}


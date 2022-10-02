//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlAnimatedObject.hpp"
#include "tlAnimatedObjectChunk.hpp"

#include "tlAnimation.hpp"
#include "tlFrameController.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlInventory.hpp"

static const unsigned ANIMATED_OBJECT_FACTORY_VERSION = 0;
static const unsigned ANIMATED_OBJECT_VERSION = 0;
static const unsigned ANIMATED_OBJECT_ANIMATION_VERSION = 0;

//*****************************************************************************
// tlAnimatedObjectFactory
//*****************************************************************************
tlAnimatedObjectFactory::tlAnimatedObjectFactory() : 
    tlEntity(),
    baseObjectName(NULL),
    baseObject(NULL)
{
}

tlAnimatedObjectFactory::tlAnimatedObjectFactory(tlDataChunk* ch) :
    tlEntity(),
    baseObjectName(NULL),
    baseObject(NULL)
{
    LoadFromChunk(ch);
}

tlAnimatedObjectFactory::~tlAnimatedObjectFactory()
{
    strdelete(baseObjectName);
    for (int i = 0; i < animations.Count(); i++)
    {
        delete animations[i];
        animations[i] = NULL;
    }
}

void 
tlAnimatedObjectFactory::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::AnimatedObject::FACTORY);
    tlAnimatedObjectFactoryChunk* chunk = dynamic_cast<tlAnimatedObjectFactoryChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == ANIMATED_OBJECT_FACTORY_VERSION);

    SetName(chunk->GetName());
    SetBaseObjectName(chunk->GetBaseObjectName());
    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::AnimatedObject::ANIMATION :
            {
                tlAnimatedObjectAnimation* animation = new tlAnimatedObjectAnimation(subChunk);
                animations.Append(animation);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlAnimatedObjectFactory::Chunk()
{
    tlAnimatedObjectFactoryChunk* chunk = new tlAnimatedObjectFactoryChunk;
    
    chunk->SetVersion(ANIMATED_OBJECT_VERSION);
    chunk->SetName(GetName());
    chunk->SetBaseObjectName(GetBaseObjectName());
    chunk->SetNumAnimations(animations.Count());

    for (int i = 0; i < animations.Count(); i++)
    {
        chunk->AppendSubChunk(animations[i]->Chunk());
    }

    return chunk;
}

void 
tlAnimatedObjectFactory::SetBaseObjectName(const char* name)
{
    strdelete(baseObjectName);
    baseObjectName = NULL;
    if (name)
    {
        baseObjectName = strnew(name);
    }
}

const char*
tlAnimatedObjectFactory::GetBaseObjectName() const
{
    return baseObjectName;
}

unsigned int 
tlAnimatedObjectFactory::GetNumAnimations() const
{
    return (unsigned int)animations.Count();
}

void
tlAnimatedObjectFactory::SplitAnimation(tlInventory* inv, unsigned int numSubAnimations, unsigned int* subAnimationFrameRanges[2])
{
    if ((!inv)||(GetNumAnimations()!=1))
    {
        return;
    }

    // seperate into sub animations
    if ((numSubAnimations>1)&&(subAnimationFrameRanges))
    {   
        unsigned int animIndex;
        int          fcIndex;
        char animationName[P3DMAXNAME];
        tlAnimatedObjectAnimation* objAnim = NULL;

        //duplicate the animated object animations
        for (animIndex = 1; animIndex < numSubAnimations; animIndex++)
        {
            objAnim = CreateAnimation();
            *objAnim = *(GetAnimation(0));

            sprintf(animationName,"animation_%d",animIndex);
            objAnim->SetName(animationName);

            for (fcIndex = 0; fcIndex < objAnim->GetNumFrameControllers(); fcIndex++)
            {
                tlFrameController* fc = objAnim->GetFrameController(fcIndex);
                tlAnimation* anim = toollib_find<tlAnimation>(inv,fc->AnimationName());
                
                if (anim)
                {
                    sprintf(animationName,"%s_%d",fc->AnimationName(),animIndex);
                    tlAnimation* newAnim = anim->Clone();
                    newAnim->SetName(animationName);
                    newAnim->SetFrameRange(subAnimationFrameRanges[animIndex][0],subAnimationFrameRanges[animIndex][1]);
                    fc->SetAnimationName(animationName);
                    inv->Store(newAnim);            
                }
            }
        }

        // rename the first animation to animation_0
        objAnim = GetAnimation(0);
        sprintf(animationName,"animation_%d",0);
        objAnim->SetName(animationName);
        for (fcIndex = 0; fcIndex < objAnim->GetNumFrameControllers(); fcIndex++)
        {
            tlFrameController* fc = objAnim->GetFrameController(fcIndex);
            tlAnimation* anim = toollib_find<tlAnimation>(inv,fc->AnimationName());
            
            if (anim)
            {
                sprintf(animationName,"%s_%d",fc->AnimationName(),0);
                anim->SetName(animationName);
                anim->SetFrameRange(subAnimationFrameRanges[0][0],subAnimationFrameRanges[0][1]);
                fc->SetAnimationName(animationName);
            }
        }            
    }
}

tlAnimatedObjectAnimation* 
tlAnimatedObjectFactory::CreateAnimation()
{
    tlAnimatedObjectAnimation* animation = new tlAnimatedObjectAnimation;
    animations.Append(animation);
    return animation;
}

tlAnimatedObjectAnimation* 
tlAnimatedObjectFactory::AddAnimation(const tlAnimatedObjectAnimation& anim)
{
    tlAnimatedObjectAnimation* animation = new tlAnimatedObjectAnimation(anim);
    animations.Append(animation);
    return animation;
}

tlAnimatedObjectAnimation* 
tlAnimatedObjectFactory::GetAnimation(unsigned int index) const
{
    if (index < (unsigned int)animations.Count())
    {
        return animations[index];
    }
    return NULL;
}

void 
tlAnimatedObjectFactory::RemoveAnimation(unsigned int index)
{
    if (index < (unsigned int)animations.Count())
    {
        delete animations[index];
        animations.Delete(index,1);
    }
}

void 
tlAnimatedObjectFactory::ResolveReferences(tlInventory* inv)
{
    baseObject = toollib_find<tlCompositeDrawable>(inv, baseObjectName);
    if (baseObject)
    {
        baseObject->ResolveReferences(inv);
    }
    for (int i = 0; i < animations.Count(); i++)
    {
        animations[i]->ResolveReferences(inv);
    }
}

void 
tlAnimatedObjectFactory::MarkReferences(int m)
{
    if(baseObject)
    {
        baseObject->Mark(m);
        baseObject->MarkReferences(m);
    }
    for (int i = 0; i < animations.Count(); i++)
    {
        animations[i]->MarkReferences(m);
    }
}

bool 
tlAnimatedObjectFactory::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if(baseObject && baseObject->FindReferenceMark(m))
    {
        return true;
    }
    for (int i = 0; i < animations.Count(); i++)
    {
        if(animations[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    return false;
}

//*****************************************************************************
// tlAnimatedObject
//*****************************************************************************
tlAnimatedObject::tlAnimatedObject() :
    tlEntity(),
    factoryName(NULL),
    startingAnimation(0),
    factory(NULL)
{
}

tlAnimatedObject::tlAnimatedObject(tlDataChunk* ch) :
    tlEntity(),
    factoryName(NULL),
    startingAnimation(0),
    factory(NULL)
{
    LoadFromChunk(ch);
}

tlAnimatedObject::~tlAnimatedObject()
{
    strdelete(factoryName);
}

void 
tlAnimatedObject::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::AnimatedObject::OBJECT);
    tlAnimatedObjectChunk* chunk = dynamic_cast<tlAnimatedObjectChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == ANIMATED_OBJECT_VERSION);

    SetName(chunk->GetName());
    SetFactoryName(chunk->GetFactoryName());
    SetStartingAnimation(chunk->GetStartingAnimation());
}

tlDataChunk* 
tlAnimatedObject::Chunk()
{
    tlAnimatedObjectChunk* chunk = new tlAnimatedObjectChunk;
    
    chunk->SetVersion(ANIMATED_OBJECT_VERSION);
    chunk->SetName(GetName());
    chunk->SetFactoryName(GetFactoryName());
    chunk->SetStartingAnimation(GetStartingAnimation());

    return chunk;
}

void 
tlAnimatedObject::SetFactoryName(const char* name)
{
    strdelete(factoryName);
    factoryName = NULL;
    if (name)
    {
        factoryName = strnew(name);
    }
}

const char* 
tlAnimatedObject::GetFactoryName() const
{
    return factoryName;
}

void 
tlAnimatedObject::SetStartingAnimation(unsigned int start)
{
    startingAnimation = start;
}

unsigned int 
tlAnimatedObject::GetStartingAnimation() const
{
    return startingAnimation;
}

void 
tlAnimatedObject::ResolveReferences(tlInventory* inv)
{
    factory = toollib_find<tlAnimatedObjectFactory>(inv, factoryName);
    if (factory)
    {
        factory->ResolveReferences(inv);
    }
}

void 
tlAnimatedObject::MarkReferences(int m)
{
    if(factory)
    {
        factory->Mark(m);
        factory->MarkReferences(m);
    }
}

bool 
tlAnimatedObject::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if(factory && factory->FindReferenceMark(m))
    {
        return true;
    }
    return false;
}

//*****************************************************************************
// tlAnimatedObjectAnimation
//*****************************************************************************
tlAnimatedObjectAnimation::tlAnimatedObjectAnimation() :
    tlEntity(),
    frameRate(30.0f)
{
}

tlAnimatedObjectAnimation::tlAnimatedObjectAnimation(const tlAnimatedObjectAnimation& anim) :
    tlEntity(),
    frameRate(30.0f)
{
    *this = anim;
}

tlAnimatedObjectAnimation::tlAnimatedObjectAnimation(tlDataChunk* ch) :
    tlEntity(),
    frameRate(30.0f)
{
    LoadFromChunk(ch);
}

tlAnimatedObjectAnimation::~tlAnimatedObjectAnimation()
{
    for (int i = 0; i < controllers.Count(); i++)
    {
        delete controllers[i];
        controllers[i] = NULL;
    }
}

void 
tlAnimatedObjectAnimation::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::AnimatedObject::ANIMATION);
    tlAnimatedObjectAnimationChunk* chunk = dynamic_cast<tlAnimatedObjectAnimationChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == ANIMATED_OBJECT_ANIMATION_VERSION);

    SetName(chunk->GetName());
    SetFrameRate(chunk->GetFrameRate());

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER :
            {
                tlFrameController* controller = new tlFrameController(subChunk);
                controllers.Append(controller);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlAnimatedObjectAnimation::Chunk()
{
    tlAnimatedObjectAnimationChunk* chunk = new tlAnimatedObjectAnimationChunk;
    
    chunk->SetVersion(ANIMATED_OBJECT_ANIMATION_VERSION);
    chunk->SetName(GetName());
    chunk->SetFrameRate(GetFrameRate());
    chunk->SetNumControllers(controllers.Count());

    for (int i = 0; i < controllers.Count(); i++)
    {
        chunk->AppendSubChunk(controllers[i]->Chunk());
    }

    return chunk;
}
   
int 
tlAnimatedObjectAnimation::GetNumFrameControllers() const
{
    return (unsigned int)controllers.Count();
}

int 
tlAnimatedObjectAnimation::FindFrameController(const char* name) const
{
    for (int i = 0; i < controllers.Count(); i++)
    {
        if (tlEntity::MakeUID(name)==controllers[i]->UID())
        {
            return i;
        }
    }
    return -1;
}

tlFrameController* 
tlAnimatedObjectAnimation::CreateFrameController()
{
    tlFrameController* controller = new tlFrameController;
    controllers.Append(controller);
    return controller;
}

tlFrameController* 
tlAnimatedObjectAnimation::AddFrameController(const tlFrameController& fc)
{
    tlFrameController* controller = new tlFrameController(fc);
    controllers.Append(controller);
    return controller;    
}

tlFrameController* 
tlAnimatedObjectAnimation::GetFrameController(int index) const
{
    if ((index>-1)&&(index<controllers.Count()))
    {
        return controllers[index];
    }
    return NULL;
}

void 
tlAnimatedObjectAnimation::RemoveFrameController(int index)
{
    if ((index>-1)&&(index<controllers.Count()))
    {
        delete controllers[index];
        controllers.Delete(index,1);
    }
}

void
tlAnimatedObjectAnimation::SetFrameRate(float rate)
{
    if (rate == 0.0f)
    {
        frameRate = 30.0f;
    }
    else
    {
        frameRate = rate;
    }
}

float
tlAnimatedObjectAnimation::GetFrameRate() const
{
    return frameRate;
}

void 
tlAnimatedObjectAnimation::ResolveReferences(tlInventory* inv)
{
    for (int i = 0; i < controllers.Count(); i++)
    {
        controllers[i]->ResolveReferences(inv);
    }
}

void 
tlAnimatedObjectAnimation::MarkReferences(int m)
{
    for (int i = 0; i < controllers.Count(); i++)
    {
        controllers[i]->MarkReferences(m);
    }
}

bool 
tlAnimatedObjectAnimation::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    for (int i = 0; i < controllers.Count(); i++)
    {
        if(controllers[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    return false;
}

tlAnimatedObjectAnimation& 
tlAnimatedObjectAnimation::operator=(const tlAnimatedObjectAnimation& animation)
{
    int i;
    for (i = 0; i < controllers.Count(); i++)
    {
        delete controllers[i];
        controllers[i] = NULL;
    }
    controllers.Delete(i,controllers.Count());

    SetName(animation.GetName());
    SetFrameRate(animation.GetFrameRate());

    for (int j = 0; j < animation.GetNumFrameControllers(); j++)
    {
        AddFrameController(*animation.GetFrameController(j));
    }
    return *this;
}

//*****************************************************************************
// tlAnimatedObjectFactoryLoader
//*****************************************************************************
tlAnimatedObjectFactoryLoader::tlAnimatedObjectFactoryLoader() : 
    tlEntityLoader(Pure3D::AnimatedObject::FACTORY)
{
}

tlEntity* 
tlAnimatedObjectFactoryLoader::Load(tlDataChunk* chunk)
{
    return new tlAnimatedObjectFactory(chunk);
}

//*****************************************************************************
// tlAnimatedObjectLoader
//*****************************************************************************
tlAnimatedObjectLoader::tlAnimatedObjectLoader() : 
    tlEntityLoader(Pure3D::AnimatedObject::OBJECT)
{
}

tlEntity* 
tlAnimatedObjectLoader::Load(tlDataChunk* chunk)
{
    return new tlAnimatedObject(chunk);
}


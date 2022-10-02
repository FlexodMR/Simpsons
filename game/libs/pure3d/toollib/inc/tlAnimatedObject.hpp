//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TL_ANIMATED_OBJECT_HPP__
#define __TL_ANIMATED_OBJECT_HPP__

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"
#include <assert.h>

class tlAnimatedObject;
class tlAnimatedObjectAnimation;
class tlAnimatedObjectInstance;

class tlAnimation;
class tlFrameController;
class tlCompositeDrawable;
class tlInventory;
class tlDataChunk;

//*****************************************************************************
// tlAnimatedObjectFactory
//*****************************************************************************
class tlAnimatedObjectFactory : public tlEntity
{
public:
    tlAnimatedObjectFactory();
    tlAnimatedObjectFactory(tlDataChunk* ch);
    ~tlAnimatedObjectFactory();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                       { assert(0); }
    tlDataChunk* Chunk16()                                      { assert(0); return NULL; }

    void SetBaseObjectName(const char* name);
    const char* GetBaseObjectName() const;

    unsigned int GetNumAnimations() const;
    void SplitAnimation(tlInventory* inv, unsigned int numSubAnimations, unsigned int* subAnimationFrameRanges[2]);
    tlAnimatedObjectAnimation* CreateAnimation();
    tlAnimatedObjectAnimation* AddAnimation(const tlAnimatedObjectAnimation& animation);
    tlAnimatedObjectAnimation* GetAnimation(unsigned int index) const;
    void RemoveAnimation(unsigned int index);

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

protected:
    char* baseObjectName;
    tlTable<tlAnimatedObjectAnimation*> animations;

    //reference pointers
    tlCompositeDrawable* baseObject;
};
    
//*****************************************************************************
// tlAnimatedObject
//*****************************************************************************
class tlAnimatedObject : public tlEntity
{
public:
    tlAnimatedObject();
    tlAnimatedObject(tlDataChunk* ch);
    ~tlAnimatedObject();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                       { assert(0); }
    tlDataChunk* Chunk16()                                      { assert(0); return NULL; }

    void SetFactoryName(const char* factoryName);
    const char* GetFactoryName() const;

    void SetStartingAnimation(unsigned int startingAnimation);
    unsigned int GetStartingAnimation() const;

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

protected:
    char* factoryName;
    unsigned int startingAnimation;

    //reference pointer
    tlAnimatedObjectFactory* factory;
};

//*****************************************************************************
// tlAnimatedObjectAnimation
//*****************************************************************************
class tlAnimatedObjectAnimation : public tlEntity
{
public:
    tlAnimatedObjectAnimation();
    tlAnimatedObjectAnimation(const tlAnimatedObjectAnimation& anim);
    tlAnimatedObjectAnimation(tlDataChunk* ch);
    ~tlAnimatedObjectAnimation();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();
   
    void LoadFromChunk16(tlDataChunk* ch)                       { assert(0); }
    tlDataChunk* Chunk16()                                      { assert(0); return NULL; }

    int GetNumFrameControllers() const;
    int FindFrameController(const char* name) const;
    tlFrameController* CreateFrameController();
    tlFrameController* AddFrameController(const tlFrameController& controller);
    tlFrameController* GetFrameController(int index) const;
    void RemoveFrameController(int index);

    void SetFrameRate(float rate);
    float GetFrameRate() const;

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    tlAnimatedObjectAnimation& operator=(const tlAnimatedObjectAnimation& anim);

protected:
    float frameRate;
    tlTable<tlFrameController*> controllers;
};

//*****************************************************************************
// tlAnimatedObjectLoader
//*****************************************************************************
class tlAnimatedObjectFactoryLoader : public tlEntityLoader
{
public:
    tlAnimatedObjectFactoryLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

//*****************************************************************************
// tlAnimatedObjectLoader
//*****************************************************************************
class tlAnimatedObjectLoader : public tlEntityLoader
{
public:
    tlAnimatedObjectLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};


#endif
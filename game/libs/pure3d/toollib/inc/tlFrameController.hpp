//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLFRAMECONTROLLER_HPP
#define _TLFRAMECONTROLLER_HPP

#include "atenum.hpp"
#include "tlEntity.hpp"
#include "tlFourCC.hpp"
#include "tlLoadManager.hpp"

class tlDataChunk;
class tlInventory;
class tlAnimation;

//*****************************************************************************
// tlFrameController
//*****************************************************************************
class tlFrameController : public tlEntity
{
public:   
    tlFrameController(void);
    tlFrameController(const tlFrameController &);
    tlFrameController(tlDataChunk *ch);
    ~tlFrameController();
   
    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16()                          { assert(0); return NULL; }

    void SetType(tlFourCC t)                        { mType = t; }
    void SetFrameOffset(float offset)               { if (offset>=0.0f) mFrameOffset = offset; }
    void SetHierarchyName(const char *new_hier);
    void SetAnimationName(const char *new_anim);

    tlFourCC Type(void) const                       { return mType; }
    float FrameOffset(void) const                   { return mFrameOffset; }
    char *HierarchyName(void) const                 { return mHierarchyName; }
    char *AnimationName(void) const                 { return mAnimationName; }   

    void AppendAnimTypePrefix();
    void AppendAnimTypeSuffix();

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    tlFrameController& operator=(const tlFrameController &);

private:
    tlFourCC        mType;
    float           mFrameOffset;
    char*           mHierarchyName;
    char*           mAnimationName;

    //reference pointers
    tlEntity*       mHierarchyPtr;
    tlAnimation*    mAnimationPtr;   
};

//*****************************************************************************
// tlFrameControllerLoader
//*****************************************************************************
class tlFrameControllerLoader : public tlEntityLoader
{
public:
    tlFrameControllerLoader();

    virtual bool CheckChunkID(unsigned chunkID);

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _TLFRAMECONTROLLER_HPP


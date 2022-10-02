/*===========================================================================
    tlVisAnim.hpp
    created May 18, 2000
    Stephen Lambie

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TLVISANIM_HPP_
#define _TLVISANIM_HPP_

#include "tlChannel.hpp"
#include "tlAnimation.hpp"

class tlDataChunk;

//*****************************************************************************
// tlVisAnim
//*****************************************************************************
class tlVisAnim : public tlAnimation
{
public:
    tlVisAnim() { ; }
    virtual ~tlVisAnim() { ; }

    virtual void LoadFromChunk16(tlDataChunk* ch);
};

//*****************************************************************************
// tlPoseVisAnim
//*****************************************************************************
class tlPoseVisAnim : public tlVisAnim
{
public:
    tlPoseVisAnim();
    tlPoseVisAnim(tlDataChunk* ch);
    virtual ~tlPoseVisAnim();

    tlAnimation* Clone() const;

    void CreateVisibilityChannel(const char* channelName, int numKeys);

    void SetVisibilityChannel(const char* nodeName, const tlBoolChannel& channel);

    void DeleteVisibilityChannel(const char* nodeName);

    tlBoolChannel* GetVisibilityChannel(const char* nodeName);
};

//*****************************************************************************
// tlScenegraphVisAnim
//*****************************************************************************
class tlScenegraphVisAnim : public tlVisAnim
{
public:
    tlScenegraphVisAnim();
    tlScenegraphVisAnim(tlDataChunk* ch);
    virtual ~tlScenegraphVisAnim();

    tlAnimation* Clone() const;

    void CreateVisibilityChannel(const char* channelName, int numKeys);

    void SetVisibilityChannel(const char* channelName, const tlBoolChannel& channel);

    tlBoolChannel* GetVisibilityChannel();

    void DeleteVisibilityChannel();
};

#endif


/*===========================================================================
    tlVisAnim.cpp
    created May 18, 2000
    Stephen Lambie

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "atenum.hpp"
#include "tlString.hpp"
#include "tlDataChunk.hpp"
#include "tlVisAnim.hpp"
#include "tlVisibilityAnimChunk16.hpp"

//*****************************************************************************
// tlVisAnim
//*****************************************************************************
void 
tlVisAnim::LoadFromChunk16(tlDataChunk* chunk)
{
    assert(chunk->ID() == P3D_VISIBILITY_ANIM);

    tlVisibilityAnimChunk16* pVAnimChunk = dynamic_cast<tlVisibilityAnimChunk16*>(chunk);

    SetName(pVAnimChunk->GetAnimName());
    SetNumFrames(pVAnimChunk->GetNumFrames());
    SetFrameRate(pVAnimChunk->GetFrameRate());

    int numNodes = 0;

    for (int i = 0; i < pVAnimChunk->SubChunkCount(); i++)
    {
        tlVisibilityAnimChannelChunk16* pVAChanChunk = dynamic_cast<tlVisibilityAnimChannelChunk16*>(pVAnimChunk->GetSubChunk(i));
        if (pVAChanChunk)
        {  
            unsigned int numFrames = pVAChanChunk->GetNumFrames();
            unsigned long* tempValues = pVAChanChunk->GetFrames();
            bool currState = (pVAChanChunk->GetbStartState()==1);
                                  
            bool* values;
            short* frames;

            frames = new short[numFrames];
            values = new bool[numFrames];

            for (int i = 0; i < (int)numFrames; i++)
            {
                frames[i] = (short)tempValues[i];
                values[i] = currState;
                currState = !currState;
            }

            tlBoolChannel channel;
            channel.SetKeys(numFrames,frames,values);

            tlAnimationGroup* group = AddAnimationGroup(numNodes,pVAChanChunk->Nodename());
            group->SetBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS, &channel);
            
            numNodes++;

            delete [] values;
            delete [] frames;
        }
    }
}

//*****************************************************************************
// tlPoseVisAnim
//*****************************************************************************
tlPoseVisAnim::tlPoseVisAnim()
{
    SetAnimationType(Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);
}

tlPoseVisAnim::tlPoseVisAnim(tlDataChunk* ch)
{
    switch (ch->ID())
    {
        case P3D_VISIBILITY_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);
}

tlPoseVisAnim::~tlPoseVisAnim()
{
}

tlAnimation* 
tlPoseVisAnim::Clone() const
{
    return new tlPoseVisAnim(*this);
}

void 
tlPoseVisAnim::CreateVisibilityChannel(const char* channelName, int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(FindAnimationGroupByName(channelName));
    if (!node)
    {
        node = AddAnimationGroup(GetNextUniqueGroupId(), channelName);
    }
    node->CreateBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS,numKeys);
}

void 
tlPoseVisAnim::SetVisibilityChannel(const char* channelName, const tlBoolChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(FindAnimationGroupByName(channelName));
    if (!node)
    {
        node = AddAnimationGroup(GetNextUniqueGroupId(), channelName);
    }
    node->SetBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS,&channel);
}

void 
tlPoseVisAnim::DeleteVisibilityChannel(const char* channelName)
{
    int nodeId = FindAnimationGroupByName(channelName);
    tlAnimationGroup* node = GetAnimationGroup(nodeId);
    if (node)
    {
        node->DeleteBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(nodeId);
        }
    }
}

tlBoolChannel* 
tlPoseVisAnim::GetVisibilityChannel(const char* channelName)
{
    tlAnimationGroup* node = GetAnimationGroup(FindAnimationGroupByName(channelName));
    if (node)
    {
        return node->GetBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS);
    }
    return NULL;
}

//*****************************************************************************
// tlScenegraphVisAnim
//*****************************************************************************
tlScenegraphVisAnim::tlScenegraphVisAnim()
{
    SetAnimationType(Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS);
}

tlScenegraphVisAnim::tlScenegraphVisAnim(tlDataChunk* ch)
{
    switch (ch->ID())
    {
        case P3D_VISIBILITY_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS);
}

tlScenegraphVisAnim::~tlScenegraphVisAnim()
{
}

tlAnimation* 
tlScenegraphVisAnim::Clone() const
{
    return new tlScenegraphVisAnim(*this);
}

void 
tlScenegraphVisAnim::CreateVisibilityChannel(const char* channelName, int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,channelName);
    }
    node->CreateBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS, numKeys);
}

void 
tlScenegraphVisAnim::SetVisibilityChannel(const char* channelName, const tlBoolChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,channelName);
    }
    node->SetBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS,&channel);
}

tlBoolChannel* 
tlScenegraphVisAnim::GetVisibilityChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS);
    }
    return NULL;
}

void 
tlScenegraphVisAnim::DeleteVisibilityChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

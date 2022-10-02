//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlVertexAnim.hpp"

#include "tlDataChunk.hpp"
#include "tlVertexAnimChunk16.hpp"
#include "tlEntityChannelChunk16.hpp"
#include "tlShader.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"

#include <stdio.h>

//*****************************************************************************
// tlVertexAnim
//*****************************************************************************
tlVertexAnim::tlVertexAnim()
{
    SetAnimationType(Pure3DAnimationTypes::VERTEX_VRTX);
}

tlVertexAnim::tlVertexAnim(tlDataChunk *ch)
{
    switch (ch->ID())
    {
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::VERTEX_VRTX);
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::VERTEX_VRTX);
}

tlVertexAnim::~tlVertexAnim()
{
}

tlAnimation* 
tlVertexAnim::Clone() const
{
    return new tlVertexAnim(*this);
}

tlAnimationGroup* 
tlVertexAnim::CreateKeyChannel(int numKeys, int groupId)
{
    // Bug fix [20 Jun 2002]
    // GetAnimationGroup() specifies the _index_ not the groupId!
    int index = FindAnimationGroupById(groupId);
    tlAnimationGroup* node = GetAnimationGroup(index);
    if (!node)
    {
        node = AddAnimationGroup(groupId,GetName());
    }
    node->CreateStringChannel(Pure3DAnimationChannels::Vertex::VERTEX_VRTX, numKeys, true);
    node->GetStringChannel(Pure3DAnimationChannels::Vertex::VERTEX_VRTX )->SetIsEntityChannel(true);
    return node;
}

void 
tlVertexAnim::SetKeyChannel(const tlStringChannel& channel, int groupId )
{
    // Bug fix [20 Jun 2002]
    // GetAnimationGroup() specifies the _index_ not the groupId!
    int index = FindAnimationGroupById(groupId);
    tlAnimationGroup* node = GetAnimationGroup(index);
    if (!node)
    {
        node = AddAnimationGroup(groupId,GetName());
    }
    node->SetStringChannel(Pure3DAnimationChannels::Vertex::VERTEX_VRTX,&channel);
    node->GetStringChannel(Pure3DAnimationChannels::Vertex::VERTEX_VRTX )->SetIsEntityChannel(true);
}

tlStringChannel* 
tlVertexAnim::GetKeyChannel( int groupId)
{
    // Bug fix [20 Jun 2002]
    // GetAnimationGroup() specifies the _index_ not the groupId!
    int index = FindAnimationGroupById(groupId);
    tlAnimationGroup* node = GetAnimationGroup(index);
    if (node)
    {
        return node->GetStringChannel(Pure3DAnimationChannels::Vertex::VERTEX_VRTX );
    }
    return NULL;
}

void
tlVertexAnim::DeleteKeyChannel(int groupId)
{
    // Bug fix [20 Jun 2002]
    // GetAnimationGroup() specifies the _index_ not the groupId!
    int index = FindAnimationGroupById(groupId);
    tlAnimationGroup* node = GetAnimationGroup(index);
    if (node)
    {
        node->DeleteStringChannel(Pure3DAnimationChannels::Vertex::VERTEX_VRTX);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(groupId);
        }
    }
}

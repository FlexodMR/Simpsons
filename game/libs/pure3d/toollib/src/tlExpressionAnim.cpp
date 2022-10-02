//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlExpressionAnim.hpp"

#include <string.h>

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"

#include "tlExpression.hpp"
#include "tlExpressionAnimChunk16.hpp"

//*****************************************************************************
// tlExpressionAnimGroup
//*****************************************************************************
tlExpressionAnimGroup::tlExpressionAnimGroup()
{
}

tlExpressionAnimGroup::tlExpressionAnimGroup(tlDataChunk* ch)
{
    switch (ch->ID())
    {
        case P3D_EXPRESSION_ANIM_CHANNEL:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::GROUP:
        {
            LoadFromChunk(ch);
            break;
        }
    }
}

tlExpressionAnimGroup::~tlExpressionAnimGroup()
{
}

tlAnimationGroup* 
tlExpressionAnimGroup::Clone() const
{
    return new tlExpressionAnimGroup(*this);
}

void 
tlExpressionAnimGroup::LoadFromChunk16(tlDataChunk* ch)
{
    tlExpressionAnimChannelChunk16* channelch = dynamic_cast<tlExpressionAnimChannelChunk16*>(ch);
    assert(channelch);

    SetName(channelch->GetName());

    unsigned long numKeys = channelch->NumKeys();
    unsigned short* frames = channelch->TimeIndex();
    float* states = channelch->GetStateKeys();
    float* weights = channelch->GetStateKeys();

    CreateStateChannel(numKeys);
  
    tlFloat1Channel* stateChannel = GetStateChannel();

    for (unsigned int i = 0; i < numKeys; i++)
    {
        stateChannel->SetKey(i,frames[i],states[i]);
    }
}

void 
tlExpressionAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateStateChannel(numKeys);
}

void 
tlExpressionAnimGroup::CreateStateChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::Expression::STATE_STE, numKeys);
}

void 
tlExpressionAnimGroup::SetStateChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::Expression::STATE_STE,&channel);
}

tlFloat1Channel* 
tlExpressionAnimGroup::GetStateChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::Expression::STATE_STE);
}

void 
tlExpressionAnimGroup::DeleteStateChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::Expression::STATE_STE);
}

//*****************************************************************************
// tlExpressionAnim
//*****************************************************************************
tlExpressionAnim::tlExpressionAnim() :
    mExpressionGroup(NULL),
    mExpressionMixer(NULL)
{
    SetAnimationType(Pure3DAnimationTypes::EXPRESSION_EXP);
}

tlExpressionAnim::tlExpressionAnim(tlDataChunk* ch) :
    mExpressionGroup(NULL),
    mExpressionMixer(NULL)
{
    switch (ch->ID())
    {
        case P3D_EXPRESSION_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::EXPRESSION_EXP);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::EXPRESSION_EXP);
}

tlExpressionAnim::tlExpressionAnim( const tlExpressionAnim& other )
: tlAnimation( other )
{
    mExpressionGroup = other.mExpressionGroup;
    mExpressionMixer = other.mExpressionMixer;
}

tlExpressionAnim::~tlExpressionAnim()
{
}

tlAnimation* 
tlExpressionAnim::Clone() const
{
    return new tlExpressionAnim(*this);
}

void
tlExpressionAnim::LoadFromChunk16(tlDataChunk* ch)
{
    tlExpressionAnimChunk16* animch = dynamic_cast<tlExpressionAnimChunk16*>(ch);
    assert(animch);

    SetName(animch->GetName());
    SetNumFrames(animch->GetNumFrames());
    SetFrameRate(animch->GetFrameRate());
    SetCyclic(animch->GetCyclic()==1);

    for (int i = 0; i < animch->SubChunkCount(); i++)
    {
        tlDataChunk* subch = animch->GetSubChunk(i);
        switch (subch->ID())
        {
            case P3D_EXPRESSION_ANIM_CHANNEL:
            {  
                tlExpressionAnimGroup group(subch);
                SetExpressionAnimGroup(group, group.GetName());
                break;
            }
            default:
            {
                break;
            }
        }     
    }
}

void 
tlExpressionAnim::SetExpressionAnimGroup(const tlExpressionAnimGroup& expression, const char* expressionName)
{  
    assert(expressionName);
    if (expressionName)
    {
        tlExpressionAnimGroup* group = GetExpressionAnimGroup(expressionName);
        if (!group)
        {
            group = AddExpressionAnimGroup(expressionName);
        }
        unsigned int expressionId = group->GetGroupId();
        *group = expression;
        group->SetGroupId(expressionId);
    }
}

tlExpressionAnimGroup* 
tlExpressionAnim::AddExpressionAnimGroup(const char* expressionName)
{
    assert(expressionName);
    if (expressionName)
    {
        unsigned int expressionId = GetNextUniqueGroupId();
        return (tlExpressionAnimGroup*)AddAnimationGroup(expressionId, expressionName);
    }
    return NULL;
}

tlExpressionAnimGroup* 
tlExpressionAnim::GetExpressionAnimGroup(const char* expressionName)
{
    return (tlExpressionAnimGroup*)GetAnimationGroup(FindAnimationGroupByName(expressionName));
}

void 
tlExpressionAnim::DeleteExpressionAnimGroup(const char* expressionName)
{
    DeleteAnimationGroup(FindAnimationGroupByName(expressionName));
}
     
void 
tlExpressionAnim::ResolveReferences(tlInventory* inv)
{
    mExpressionGroup = toollib_find<tlExpressionGroup>(inv, GetName());
    mExpressionMixer = toollib_find<tlExpressionMixer>(inv, GetName());
}

void
 tlExpressionAnim::MarkReferences(int m)
{
    if(mExpressionGroup)
    {
        mExpressionGroup->Mark(m);
        mExpressionGroup->MarkReferences(m);
    }
    if(mExpressionMixer)
    {
        mExpressionMixer->Mark(m);
        mExpressionMixer->MarkReferences(m);
    }
}

bool
tlExpressionAnim::FindReferenceMark(int m)
{
    bool ret = false;
    if(GetMark() == m)
    {
        ret = true;
    }
    if(mExpressionGroup)
    {
        ret = ret || mExpressionGroup->FindReferenceMark(m);
    }
    if(mExpressionMixer)
    {
        ret = ret || mExpressionMixer->FindReferenceMark(m);
    }
    return ret;
}


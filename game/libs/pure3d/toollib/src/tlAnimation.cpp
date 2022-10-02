//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlAnimation.hpp"
#include "tlInventory.hpp"

#include "tlDataChunk.hpp"
#include "tlAnimationChunk.hpp"
#include "tlFrameControllerChunk16.hpp"

#include "tlVisAnim.hpp"
#include "tlTextureAnim.hpp"
#include "tlCameraAnim.hpp"
#include "tlLightAnim.hpp"
#include "tlExpressionAnim.hpp"
#include "tlPoseAnim.hpp"
#include "tlScenegraphTransformAnim.hpp"
#include "tlBillboardObjectAnim.hpp"
#include "tlVertexAnim.hpp"

#include <assert.h>
#include <string.h>

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#ifndef WIN32
template <class T> inline T __min(T a, T b)
{
    return (a < b) ? a : b;
}

template <class T> inline T __max(T a, T b)
{
    return (a < b) ? b : a;
}
#endif

static const unsigned ANIMATION_SET_VERSION = 0;
static const unsigned ANIMATION_SIZE_VERSION = 1;
static const unsigned ANIMATION_VERSION = 0;
static const unsigned ANIMATION_GROUP_VERSION = 0;
static const unsigned ANIMATION_GROUP_LIST_VERSION = 0;

int CompareAnimationGroups( const void *value1, const void *value2 )
{
    tlAnimationGroup* group1 = (tlAnimationGroup*)(*((int*)value1));
    tlAnimationGroup* group2 = (tlAnimationGroup*)(*((int*)value2));

    if (group1->GetGroupId()<group2->GetGroupId())
    {
        return -1;
    }
    else if (group1->GetGroupId()>group2->GetGroupId())
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

//*****************************************************************************
// tlAnimation
//*****************************************************************************
tlAnimation::tlAnimation():
    tlEntity(),
    animationType((unsigned int)0),
    frameRate(30.0f),
    cyclic(true),
    numFrames(100)
{
}

tlAnimation::tlAnimation(const tlAnimation& animation):
    tlEntity(),
    animationType(animation.animationType),
    frameRate(animation.frameRate),
    cyclic(animation.cyclic),
    numFrames(animation.numFrames)
{
    SetName(animation.GetName());
    for(int i = 0; i < animation.animationGroups.Count(); i++)
    {
        tlAnimationGroup* newGroup = animation.animationGroups[i]->Clone();
        animationGroups.Append(newGroup);
    }
}

tlAnimation::tlAnimation(tlDataChunk* ch):
    tlEntity(),
    animationType((unsigned int)0),
    frameRate(30.0f),
    cyclic(true),
    numFrames(100)
{
    LoadFromChunk(ch);
}

tlAnimation::~tlAnimation()
{
    for(int i = 0; i < animationGroups.Count(); i++)
    {
        delete animationGroups[i];
    }
}

tlAnimation*
tlAnimation::Clone() const
{
    return new tlAnimation(*this);
}

void
tlAnimation::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::Animation::AnimationData::ANIMATION);
    tlAnimationChunk* chunk = dynamic_cast<tlAnimationChunk*>(ch);
    assert(chunk != 0);
    assert(chunk->GetVersion() == ANIMATION_VERSION);

    SetName(chunk->GetName());
    SetAnimationType(chunk->GetAnimationType());
    SetFrameRate(chunk->GetFrameRate());
    SetCyclic(chunk->GetCyclic()==1);
    SetNumFrames((unsigned int)chunk->GetNumFrames());

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Animation::AnimationData::GROUP_LIST :
            {
                tlAnimationGroupListChunk* listChunk = dynamic_cast<tlAnimationGroupListChunk*> (subChunk);
                assert(listChunk);
                assert(listChunk->GetVersion() == ANIMATION_GROUP_LIST_VERSION);

                int subSubChunkCount = subChunk->SubChunkCount();
                for (int j = 0; j < subSubChunkCount; j++)
                {
                    tlDataChunk* subSubChunk = subChunk->GetSubChunk(j);
                    switch (subSubChunk->ID())
                    {
                        case Pure3D::Animation::AnimationData::GROUP :
                        {
                            tlAnimationGroup* newGroup = new tlAnimationGroup(subSubChunk);

                            for (int k = 0; k < animationGroups.Count(); k++)
                            {
                                if (animationGroups[k]->GetGroupId()==newGroup->GetGroupId())
                                {
                                    delete newGroup;
                                    newGroup = NULL;
                                    break;
                                }
                            }
                            if (newGroup)
                            {
                                animationGroups.Append(newGroup);
                            }
                            break;
                        }
                        default:
                            break;
                    }
                }
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk*
tlAnimation::Chunk()
{
    MakeValid();

    tlAnimationChunk* chunk = new tlAnimationChunk;

    chunk->SetVersion(ANIMATION_VERSION);
    chunk->SetName(GetName());
    chunk->SetAnimationType(GetAnimationType());
    chunk->SetFrameRate(GetFrameRate());
    chunk->SetCyclic(GetCyclic());
    chunk->SetNumFrames((float)GetNumFrames());

    tlAnimationSizeChunk* sizeChunk = new tlAnimationSizeChunk;
    sizeChunk->SetVersion(ANIMATION_SIZE_VERSION);
    sizeChunk->SetPC(CalculateMemoryImageSize(0));
    sizeChunk->SetPS2(CalculateMemoryImageSize(1));
    sizeChunk->SetXBOX(CalculateMemoryImageSize(2));
    sizeChunk->SetGC(CalculateMemoryImageSize(3));
    chunk->AppendSubChunk(sizeChunk);

    tlAnimationGroupListChunk* listChunk = new tlAnimationGroupListChunk;
    listChunk->SetVersion(ANIMATION_GROUP_LIST_VERSION);
    listChunk->SetNumGroups(animationGroups.Count());

    int numGroups = 0;
    for (int j = 0; j < animationGroups.Count(); j++)
    {
        if (animationGroups[j]->GetNumChannels()>0)
        {
            listChunk->AppendSubChunk(animationGroups[j]->Chunk());
            numGroups++;
        }
    }

    if (numGroups > 0)
    {
        chunk->AppendSubChunk(listChunk);
        return chunk;
    }
    else
    {
        delete listChunk;
        delete chunk;
        return NULL;
    }
}

int
tlAnimation::GetNumAnimationGroups()
{
    return animationGroups.Count();
}

int
tlAnimation::FindAnimationGroupById(unsigned int groupId)
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        if (animationGroups[i]->GetGroupId()==groupId)
        {
            return i;
        }
    }
    return -1;
}

int
tlAnimation::FindAnimationGroupByName(const char* groupName)
{
    if (groupName == NULL)
        return -1;

    for (int i = 0; i < animationGroups.Count(); i++)
    {
        if (animationGroups[i]->UID()==tlEntity::MakeUID(groupName))
        {
            return i;
        }
    }
    return -1;
}

void
tlAnimation::SetAnimationGroup(const tlAnimationGroup& group)
{
    int index = FindAnimationGroupById(group.GetGroupId());
    if (index == -1)
    {
        animationGroups.Append(group.Clone());
    }
    else
    {
        delete animationGroups[index];
        animationGroups[index] = group.Clone();
    }
}

void
tlAnimation::SetAnimationGroup(const tlAnimationGroup& group, unsigned int groupId, const char* groupName)
{
    tlAnimationGroup* temp = group.Clone();
    temp->SetGroupId(groupId);
    temp->SetName(groupName);

    int index = FindAnimationGroupById(groupId);
    if (index == -1)
    {
        animationGroups.Append(temp);
    }
    else
    {
        delete animationGroups[index];
        animationGroups[index] = temp;
    }
}

tlAnimationGroup*
tlAnimation::AddAnimationGroup(unsigned int groupId, const char* groupName)
{
    int index = FindAnimationGroupById(groupId);
    if (index == -1)
    {
        tlAnimationGroup* newGroup = new tlAnimationGroup;
        newGroup->SetName(groupName);
        newGroup->SetGroupId(groupId);
        animationGroups.Append(newGroup);
        return newGroup;
    }
    return animationGroups[index];
}

tlAnimationGroup*
tlAnimation::GetAnimationGroup(int index)
{
    if ((index<animationGroups.Count())&&(index>=0))
    {
        return animationGroups[index];
    }
    return NULL;
}

void
tlAnimation::DeleteAnimationGroup(int index)
{
    if ((index<animationGroups.Count())&&(index>=0))
    {
        delete animationGroups[index];
        animationGroups.Delete(index,1);
    }
}

unsigned int
tlAnimation::GetNextUniqueGroupId()
{
    if (animationGroups.Count()<=0)
        return 0;

    unsigned int groupId = 0;
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        groupId = __max(groupId, animationGroups[i]->GetGroupId());
    }
    return groupId+1;
}

void
tlAnimation::SetAnimationType(const tlFourCC& type)
{
    animationType = type;
}

const tlFourCC&
tlAnimation::GetAnimationType() const
{
    return animationType;
}

void
tlAnimation::SetFrameRate(float rate)
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
tlAnimation::GetFrameRate() const
{
    return frameRate;
}

void
tlAnimation::SetCyclic(bool c)
{
    cyclic = c;
}

bool
tlAnimation::GetCyclic() const
{
    return cyclic;
}

void
tlAnimation::SetNumFrames(unsigned int n)
{
    numFrames = n;
}

unsigned int
tlAnimation::GetNumFrames() const
{
    return numFrames;
}

void
tlAnimation::SetFrameRange(short start, short stop, bool shiftToZero)
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->SetFrameRange(start,stop,shiftToZero);
    }
}

void
tlAnimation::GetFrameRange(short& start, short& stop)
{
    bool notSet = true;

    for (int i = 0; i < animationGroups.Count(); i++)
    {
        if (notSet)
        {
            animationGroups[i]->GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short int min = 0;
            short int max = 0;
            animationGroups[i]->GetFrameRange(min,max);
            start = __min(start,min);
            stop = __max(stop,max);
        }
    }
}

void
tlAnimation::ShiftKeys(short delta)
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->ShiftKeys(delta);
    }
}

void
tlAnimation::StretchKeys(unsigned beginKey, unsigned endKey, short delta)
{
    if (beginKey>endKey)
        return;

    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->StretchKeys(beginKey,endKey,delta);
    }
}

void
tlAnimation::ScaleKeyTimes(float scale)
{
    if ((scale == 1.0f) || (scale <= 0.0f))
        return;

    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->ScaleKeyTimes(scale);
    }
}

void
tlAnimation::LoopKeys()
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->LoopKeys();
    }
}

void
tlAnimation::InsertExtraKeys(unsigned int space)
{
    if (space==0)
        return;

    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->InsertExtraKeys(space);
    }
}

unsigned int
tlAnimation::CalculateMemoryImageSize(unsigned int console)
{
    unsigned int size = 0;
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        size = animationGroups[i]->CalculateMemoryImageSize(console, size);
    }
    return size;
}

bool
tlAnimation::IsValid()
{
    if (animationGroups.Count() <= 0)
        return false;

    int i = 1;
    while ( i < animationGroups.Count())
    {
        if ((animationGroups[i]->GetGroupId()<=animationGroups[i-1]->GetGroupId())||
            (animationGroups[i]->GetNumChannels()==0))
        {
            return false;
        }
        else
        {
            if (!animationGroups[i]->IsValid())
            {
                return false;
            }
            i++;
        }
    }

    return true;    
}

void
tlAnimation::MakeValid()
{
    if (animationGroups.Count() <= 0)
        return;

    animationGroups.Sort(CompareAnimationGroups);

    animationGroups[0]->MakeValid();

    int i = 1;
    while ( i < animationGroups.Count())
    {
        if ((animationGroups[i]->GetGroupId()==animationGroups[i-1]->GetGroupId())||
            (animationGroups[i]->GetNumChannels()==0))
        {
            delete animationGroups[i];
            animationGroups[i] = NULL;
            animationGroups.Delete(i,1);
        }
        else
        {
            animationGroups[i]->MakeValid();
            i++;
        }
    }
}

bool
tlAnimation::IsStatic()
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        if (!animationGroups[i]->IsStatic())
            return false;
    }
    return true;
}

void
tlAnimation::MakeStatic()
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->MakeStatic();
    }
}

void
tlAnimation::RoughOptimization( const tlAnimationTolerances& tolerances )
{
    for (int i = 0; i < animationGroups.Count(); i++)
    {
        animationGroups[i]->RoughOptimization( tolerances );
    }
}

void
tlAnimation::RemoveStaticGroups()
{
    int groupNum = 0;
    while(groupNum < animationGroups.Count())
    {
        if (animationGroups[groupNum]->IsStatic())
        {
            delete animationGroups[groupNum];
            animationGroups[groupNum] = NULL;
            animationGroups.Delete(groupNum,1);
        }
        else
        {
            groupNum++;
        }
    }
}

void
tlAnimation::AppendAnimTypePrefix()
{
    int nameLen = strlen(GetName());
    int typeLen = strlen(animationType.AsChar());

    if (typeLen == 0)
    {
        return;
    }
    else if (nameLen > typeLen)
    {
        if (strstr(GetName(),animationType.AsChar())==GetName())
        {
            return;
        }
    }

    char newName[1024];

    sprintf(newName,"%s_%s",animationType.AsChar(),GetName());
    SetName(newName);
}

void
tlAnimation::AppendAnimTypeSuffix()
{
    int nameLen = strlen(GetName());
    int typeLen = strlen(animationType.AsChar());

    if (typeLen == 0)
    {
        return;
    }
    else if (nameLen > typeLen)
    {
        if (strcmp(&(GetName()[nameLen-typeLen]),animationType.AsChar())==0)
        {
            return;
        }
    }

    char newName[1024];

    sprintf(newName,"%s_%s",GetName(),animationType.AsChar());
    SetName(newName);
}

//*****************************************************************************
// tlAnimationGroup
//*****************************************************************************
tlAnimationGroup::tlAnimationGroup()
{
    Initialize();
}

tlAnimationGroup::tlAnimationGroup(const tlAnimationGroup& group)
{
    *this = group;
}

tlAnimationGroup::tlAnimationGroup(tlDataChunk* ch)
{
    Initialize();
    LoadFromChunk(ch);
}

tlAnimationGroup::~tlAnimationGroup()
{
    intChannels.DeleteAllChannels();
    float1Channels.DeleteAllChannels();
    float2Channels.DeleteAllChannels();
    vectorChannels.DeleteAllChannels();
    quaternionChannels.DeleteAllChannels();
    stringChannels.DeleteAllChannels();
    boolChannels.DeleteAllChannels();
    colourChannels.DeleteAllChannels();
    eventChannels.DeleteAllChannels();
}

tlAnimationGroup*
tlAnimationGroup::Clone() const
{
    return new tlAnimationGroup(*this);
}

void
tlAnimationGroup::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::Animation::AnimationData::GROUP);
    tlAnimationGroupChunk* chunk = dynamic_cast<tlAnimationGroupChunk*>(ch);
    assert(chunk != 0);
    assert(chunk->GetVersion() == ANIMATION_GROUP_VERSION);

    SetName(chunk->GetName());
    SetGroupId(chunk->GetGroupId());
    tlChannelManager::LoadIntChannels(&intChannels,ch);
    tlChannelManager::LoadFloat1Channels(&float1Channels,ch);
    tlChannelManager::LoadFloat2Channels(&float2Channels,ch);
    tlChannelManager::LoadVectorChannels(&vectorChannels,ch);
    tlChannelManager::LoadQuaternionChannels(&quaternionChannels,ch);
    tlChannelManager::LoadStringChannels(&stringChannels,ch);
    tlChannelManager::LoadBoolChannels(&boolChannels,ch);
    tlChannelManager::LoadColourChannels(&colourChannels,ch);
    tlChannelManager::LoadEventChannels(&eventChannels,ch);
}

tlDataChunk*
tlAnimationGroup::Chunk()
{
    tlAnimationGroupChunk* chunk = new tlAnimationGroupChunk;

    int numChannels = 0;

    numChannels += tlChannelManager::SaveIntChannels(&intChannels,chunk);
    numChannels += tlChannelManager::SaveFloat1Channels(&float1Channels,chunk);
    numChannels += tlChannelManager::SaveFloat2Channels(&float2Channels,chunk);
    numChannels += tlChannelManager::SaveVectorChannels(&vectorChannels,chunk);
    numChannels += tlChannelManager::SaveQuaternionChannels(&quaternionChannels,chunk);
    numChannels += tlChannelManager::SaveStringChannels(&stringChannels,chunk);
    numChannels += tlChannelManager::SaveBoolChannels(&boolChannels,chunk);
    numChannels += tlChannelManager::SaveColourChannels(&colourChannels,chunk);
    numChannels += tlChannelManager::SaveEventChannels(&eventChannels,chunk);

    chunk->SetVersion(ANIMATION_GROUP_VERSION);
    chunk->SetName(GetName());
    chunk->SetGroupId(GetGroupId());
    chunk->SetNumChannels(numChannels);

    return chunk;
}

tlAnimationGroup&
tlAnimationGroup::operator=(const tlAnimationGroup& group)
{
    Initialize();

    SetName(group.GetName());
    groupId = group.groupId;
    intChannels = group.intChannels;
    float1Channels = group.float1Channels;
    float2Channels = group.float2Channels;
    vectorChannels = group.vectorChannels;
    quaternionChannels = group.quaternionChannels;
    stringChannels = group.stringChannels;
    boolChannels = group.boolChannels;
    colourChannels = group.colourChannels;
    eventChannels = group.eventChannels;

    return *this;
}

void
tlAnimationGroup::SetGroupId(unsigned int id)
{
    groupId = id;
}

unsigned int
tlAnimationGroup::GetGroupId() const
{
    return groupId;
}

int
tlAnimationGroup::GetNumChannels()
{
    return  intChannels.GetNumChannels() +
            float1Channels.GetNumChannels() +
            float2Channels.GetNumChannels() +
            vectorChannels.GetNumChannels() +
            quaternionChannels.GetNumChannels() +
            stringChannels.GetNumChannels() +
            boolChannels.GetNumChannels() +
            colourChannels.GetNumChannels() +
            eventChannels.GetNumChannels();
}

void
tlAnimationGroup::CreateIntChannel(const tlFourCC& code, int numKeys)
{
    tlIntChannel channel;
    intChannels.SetChannel(code,&channel);
    intChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateFloat1Channel(const tlFourCC& code, int numKeys)
{
    tlFloat1Channel channel;
    float1Channels.SetChannel(code,&channel);
    float1Channels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateFloat2Channel(const tlFourCC& code, int numKeys)
{
    tlFloat2Channel channel;
    float2Channels.SetChannel(code,&channel);
    float2Channels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateVectorChannel(const tlFourCC& code, int numKeys)
{
    tlVectorChannel channel;
    vectorChannels.SetChannel(code,&channel);
    vectorChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateQuaternionChannel(const tlFourCC& code, int numKeys, unsigned format)
{
    tlQuaternionChannel channel;
    channel.SetFormat(format);
    quaternionChannels.SetChannel(code,&channel);
    quaternionChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateStringChannel(const tlFourCC& code, int numKeys, bool entity)
{
    tlStringChannel channel;
    channel.SetIsEntityChannel(entity);
    stringChannels.SetChannel(code,&channel);
    stringChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateBoolChannel(const tlFourCC& code, int numKeys)
{
    tlBoolChannel channel;
    boolChannels.SetChannel(code,&channel);
    boolChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateColourChannel(const tlFourCC& code, int numKeys)
{
    tlColourChannel channel;
    colourChannels.SetChannel(code,&channel);
    colourChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::CreateEventChannel(const tlFourCC& code, int numKeys)
{
    tlEventChannel channel;
    eventChannels.SetChannel(code,&channel);
    eventChannels.GetChannel(code)->SetNumKeys(numKeys);
}

void
tlAnimationGroup::SetIntChannel(const tlFourCC& code, const tlIntChannel* channel)
{
    intChannels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetFloat1Channel(const tlFourCC& code, const tlFloat1Channel* channel)
{
    float1Channels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetFloat2Channel(const tlFourCC& code, const tlFloat2Channel* channel)
{
    float2Channels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetVectorChannel(const tlFourCC& code, const tlVectorChannel* channel)
{
    vectorChannels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetQuaternionChannel(const tlFourCC& code, const tlQuaternionChannel* channel)
{
    quaternionChannels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetStringChannel(const tlFourCC& code, const tlStringChannel* channel)
{
    stringChannels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetBoolChannel(const tlFourCC& code, const tlBoolChannel* channel)
{
    boolChannels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetColourChannel(const tlFourCC& code, const tlColourChannel* channel)
{
    colourChannels.SetChannel(code,channel);
}

void
tlAnimationGroup::SetEventChannel(const tlFourCC& code, const tlEventChannel* channel)
{
    eventChannels.SetChannel(code,channel);
}

tlIntChannel*
tlAnimationGroup::GetIntChannel(const tlFourCC& code)
{
    return dynamic_cast<tlIntChannel*>(intChannels.GetChannel(code));
}

tlFloat1Channel*
tlAnimationGroup::GetFloat1Channel(const tlFourCC& code)
{
    return dynamic_cast<tlFloat1Channel*>(float1Channels.GetChannel(code));
}

tlFloat2Channel*
tlAnimationGroup::GetFloat2Channel(const tlFourCC& code)
{
    return dynamic_cast<tlFloat2Channel*>(float2Channels.GetChannel(code));
}

tlVectorChannel*
tlAnimationGroup::GetVectorChannel(const tlFourCC& code)
{
    return dynamic_cast<tlVectorChannel*>(vectorChannels.GetChannel(code));
}

tlQuaternionChannel*
tlAnimationGroup::GetQuaternionChannel(const tlFourCC& code)
{
    return dynamic_cast<tlQuaternionChannel*>(quaternionChannels.GetChannel(code));
}

tlStringChannel*
tlAnimationGroup::GetStringChannel(const tlFourCC& code)
{
    return dynamic_cast<tlStringChannel*>(stringChannels.GetChannel(code));
}

tlBoolChannel*
tlAnimationGroup::GetBoolChannel(const tlFourCC& code)
{
    return dynamic_cast<tlBoolChannel*>(boolChannels.GetChannel(code));
}

tlColourChannel*
tlAnimationGroup::GetColourChannel(const tlFourCC& code)
{
    return dynamic_cast<tlColourChannel*>(colourChannels.GetChannel(code));
}

tlEventChannel*
tlAnimationGroup::GetEventChannel(const tlFourCC& code)
{
    return dynamic_cast<tlEventChannel*>(eventChannels.GetChannel(code));
}

void
tlAnimationGroup::DeleteIntChannel(const tlFourCC& code)
{
    intChannels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteFloat1Channel(const tlFourCC& code)
{
    float1Channels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteFloat2Channel(const tlFourCC& code)
{
    float2Channels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteVectorChannel(const tlFourCC& code)
{
    vectorChannels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteQuaternionChannel(const tlFourCC& code)
{
    quaternionChannels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteStringChannel(const tlFourCC& code)
{
    stringChannels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteBoolChannel(const tlFourCC& code)
{
    boolChannels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteColourChannel(const tlFourCC& code)
{
    colourChannels.DeleteChannel(code);
}

void
tlAnimationGroup::DeleteEventChannel(const tlFourCC& code)
{
    eventChannels.DeleteChannel(code);
}

void 
tlAnimationGroup::OptimizeIntChannels(float tolerance, bool bUsePeakDetection )
{
    // Paranoia flag.. if new animation optimization proves unreliable
    // then it may be turned off "on the fly" to restore original behavior.
    if ( !bUsePeakDetection ) tolerance = DEFAULT_ANIMATION_TOLERANCE;

    intChannels.OptimizeAllChannels(tolerance, bUsePeakDetection );
}

void 
tlAnimationGroup::OptimizeFloat1Channels(float tolerance, bool bUsePeakDetection )
{
    // Paranoia flag.. if new animation optimization proves unreliable
    // then it may be turned off "on the fly" to restore original behavior.
    if ( !bUsePeakDetection ) tolerance = DEFAULT_ANIMATION_TOLERANCE;

    float1Channels.OptimizeAllChannels(tolerance, bUsePeakDetection );
}

void 
tlAnimationGroup::OptimizeFloat2Channels(float tolerance, bool bUsePeakDetection )
{
    // Paranoia flag.. if new animation optimization proves unreliable
    // then it may be turned off "on the fly" to restore original behavior.
    if ( !bUsePeakDetection ) tolerance = DEFAULT_ANIMATION_TOLERANCE;

    float2Channels.OptimizeAllChannels(tolerance, bUsePeakDetection );
}

void 
tlAnimationGroup::OptimizeVectorChannels(float tolerance, bool bUsePeakDetection )
{
    // Paranoia flag.. if new animation optimization proves unreliable
    // then it may be turned off "on the fly" to restore original behavior.
    if ( !bUsePeakDetection ) tolerance = DEFAULT_ANIMATION_TOLERANCE;

    tlChannelDebug::DEBUG = true;
    vectorChannels.OptimizeAllChannels(tolerance, bUsePeakDetection );
    tlChannelDebug::DEBUG = false;
}

void 
tlAnimationGroup::OptimizeQuaternionChannels(float tolerance, bool bUsePeakDetection )
{
    // Paranoia flag.. if new animation optimization proves unreliable
    // then it may be turned off "on the fly" to restore original behavior.
    if ( !bUsePeakDetection ) tolerance = DEFAULT_ANIMATION_TOLERANCE;

    quaternionChannels.OptimizeAllChannels(tolerance, bUsePeakDetection );
}

void 
tlAnimationGroup::OptimizeStringChannels()
{
    stringChannels.OptimizeAllChannels( DEFAULT_ANIMATION_TOLERANCE );
}
 
void 
tlAnimationGroup::OptimizeBoolChannels()
{
    boolChannels.OptimizeAllChannels( DEFAULT_ANIMATION_TOLERANCE );
}

void 
tlAnimationGroup::OptimizeColourChannels(float tolerance, bool bUsePeakDetection )
{
    // Paranoia flag.. if new animation optimization proves unreliable
    // then it may be turned off "on the fly" to restore original behavior.
    if ( !bUsePeakDetection ) tolerance = DEFAULT_ANIMATION_TOLERANCE;

    colourChannels.OptimizeAllChannels(tolerance, bUsePeakDetection );
}

tlChannelContainer<int>*
tlAnimationGroup::GetIntChannels()
{
    return &intChannels;
}

tlChannelContainer<float>*
tlAnimationGroup::GetFloat1Channels()
{
    return &float1Channels;
}

tlChannelContainer<tlPoint2D>*
tlAnimationGroup::GetFloat2Channels()
{
    return &float2Channels;
}

tlChannelContainer<tlPoint>*
tlAnimationGroup::GetVectorChannels()
{
    return &vectorChannels;
}

tlChannelContainer<tlQuat>*
tlAnimationGroup::GetQuaternionChannels()
{
    return &quaternionChannels;
}

tlChannelContainer<tlString>*
tlAnimationGroup::GetStringChannels()
{
    return &stringChannels;
}

tlChannelContainer<bool>*
tlAnimationGroup::GetBoolChannels()
{
    return &boolChannels;
}

tlChannelContainer<tlColour>*
tlAnimationGroup::GetColourChannels()
{
    return &colourChannels;
}

tlChannelContainer<tlEvent>*
tlAnimationGroup::GetEventChannels()
{
    return &eventChannels;
}

void
tlAnimationGroup::SetFrameRange(short start, short stop, bool shiftToZero)
{
    intChannels.SetFrameRange(start,stop,shiftToZero);
    float1Channels.SetFrameRange(start,stop,shiftToZero);
    float2Channels.SetFrameRange(start,stop,shiftToZero);
    vectorChannels.SetFrameRange(start,stop,shiftToZero);
    quaternionChannels.SetFrameRange(start,stop,shiftToZero);
    stringChannels.SetFrameRange(start,stop,shiftToZero);
    boolChannels.SetFrameRange(start,stop,shiftToZero);
    colourChannels.SetFrameRange(start,stop,shiftToZero);
    eventChannels.SetFrameRange(start,stop,shiftToZero);
}

void
tlAnimationGroup::GetFrameRange(short& start, short& stop)
{
    bool notSet = true;

    if (float1Channels.GetNumChannels()>0)
    {
        if (notSet)
        {
            float1Channels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            float1Channels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (float2Channels.GetNumChannels()>0)
    {
        if (notSet)
        {
            float2Channels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            float2Channels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (vectorChannels.GetNumChannels()>0)
    {
        if (notSet)
        {
            vectorChannels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            vectorChannels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (quaternionChannels.GetNumChannels()>0)
    {
        if (notSet)
        {
            quaternionChannels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            quaternionChannels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (stringChannels.GetNumChannels()>0)
    {
        if (notSet)
        {
            stringChannels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            stringChannels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (boolChannels.GetNumChannels()>0)
    {
        if (notSet)
        {
            boolChannels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            boolChannels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (colourChannels.GetNumChannels()>0)
    {
        if (notSet)
        {
            colourChannels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            colourChannels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
    if (eventChannels.GetNumChannels()>0)
    {
        if (notSet)
        {
            eventChannels.GetFrameRange(start,stop);
            notSet = false;
        }
        else
        {
            short min, max;
            eventChannels.GetFrameRange(min, max);
            start = __min(start, min);
            stop = __max(stop,max);
        }
    }
}

void
tlAnimationGroup::ShiftKeys(short delta)
{
    intChannels.ShiftKeys(delta);
    float1Channels.ShiftKeys(delta);
    float2Channels.ShiftKeys(delta);
    vectorChannels.ShiftKeys(delta);
    quaternionChannels.ShiftKeys(delta);
    stringChannels.ShiftKeys(delta);
    boolChannels.ShiftKeys(delta);
    colourChannels.ShiftKeys(delta);
    eventChannels.ShiftKeys(delta);
}

void
tlAnimationGroup::StretchKeys(unsigned beginKey, unsigned endKey, short delta)
{
    if (beginKey>endKey)
        return;

    intChannels.StretchKeys(beginKey,endKey,delta);
    float1Channels.StretchKeys(beginKey,endKey,delta);
    float2Channels.StretchKeys(beginKey,endKey,delta);
    vectorChannels.StretchKeys(beginKey,endKey,delta);
    quaternionChannels.StretchKeys(beginKey,endKey,delta);
    stringChannels.StretchKeys(beginKey,endKey,delta);
    boolChannels.StretchKeys(beginKey,endKey,delta);
    colourChannels.StretchKeys(beginKey,endKey,delta);
    eventChannels.StretchKeys(beginKey,endKey,delta);
}

void
tlAnimationGroup::ScaleKeyTimes(float scale)
{
    if ((scale == 1.0f) || (scale <= 0.0f))
        return;

    intChannels.ScaleKeyTimes(scale);
    float1Channels.ScaleKeyTimes(scale);
    float2Channels.ScaleKeyTimes(scale);
    vectorChannels.ScaleKeyTimes(scale);
    quaternionChannels.ScaleKeyTimes(scale);
    stringChannels.ScaleKeyTimes(scale);
    boolChannels.ScaleKeyTimes(scale);
    colourChannels.ScaleKeyTimes(scale);
    eventChannels.ScaleKeyTimes(scale);
}

void
tlAnimationGroup::LoopKeys()
{
    intChannels.LoopKeys();
    float1Channels.LoopKeys();
    float2Channels.LoopKeys();
    vectorChannels.LoopKeys();
    quaternionChannels.LoopKeys();
    stringChannels.LoopKeys();
    boolChannels.LoopKeys();
    colourChannels.LoopKeys();
    eventChannels.LoopKeys();
}

void
tlAnimationGroup::InsertExtraKeys(unsigned int space)
{
    if (space==0)
        return;

    intChannels.InsertExtraKeys(space);
    float1Channels.InsertExtraKeys(space);
    float2Channels.InsertExtraKeys(space);
    vectorChannels.InsertExtraKeys(space);
    quaternionChannels.InsertExtraKeys(space);
    stringChannels.InsertExtraKeys(space);
    boolChannels.InsertExtraKeys(space);
    colourChannels.InsertExtraKeys(space);
    eventChannels.InsertExtraKeys(space);
}

unsigned int
tlAnimationGroup::CalculateMemoryImageSize(unsigned int console, unsigned int size)
{
    size = ((size + 7) & ~7) + ANIM_GROUP_SIZES[console];
    size = ((size + 3) & ~3) + (GetNumChannels() * 4);
    size = intChannels.CalculateMemoryImageSize(console, size);
    size = float1Channels.CalculateMemoryImageSize(console, size);
    size = float2Channels.CalculateMemoryImageSize(console, size);
    size = vectorChannels.CalculateMemoryImageSize(console, size);
    size = quaternionChannels.CalculateMemoryImageSize(console, size);
    size = stringChannels.CalculateMemoryImageSize(console, size);
    size = boolChannels.CalculateMemoryImageSize(console, size);
    size = colourChannels.CalculateMemoryImageSize(console, size);
    size = eventChannels.CalculateMemoryImageSize(console, size);

    return size;
}

bool
tlAnimationGroup::IsValid()
{
    return ((intChannels.AreAllChannelsValid())&&
            (float1Channels.AreAllChannelsValid())&&
            (float2Channels.AreAllChannelsValid())&&
            (vectorChannels.AreAllChannelsValid())&&
            (quaternionChannels.AreAllChannelsValid())&&
            (stringChannels.AreAllChannelsValid())&&
            (boolChannels.AreAllChannelsValid())&&
            (colourChannels.AreAllChannelsValid())&&
            (eventChannels.AreAllChannelsValid()));
}

void
tlAnimationGroup::MakeValid()
{
    intChannels.MakeAllChannelsValid();
    float1Channels.MakeAllChannelsValid();
    float2Channels.MakeAllChannelsValid();
    vectorChannels.MakeAllChannelsValid();
    quaternionChannels.MakeAllChannelsValid();
    stringChannels.MakeAllChannelsValid();
    boolChannels.MakeAllChannelsValid();
    colourChannels.MakeAllChannelsValid();
    eventChannels.MakeAllChannelsValid();
}

bool
tlAnimationGroup::IsStatic()
{
    return ((intChannels.AreAllChannelsStatic())&&
            (float1Channels.AreAllChannelsStatic())&&
            (float2Channels.AreAllChannelsStatic())&&
            (vectorChannels.AreAllChannelsStatic())&&
            (quaternionChannels.AreAllChannelsStatic())&&
            (stringChannels.AreAllChannelsStatic())&&
            (boolChannels.AreAllChannelsStatic())&&
            (colourChannels.AreAllChannelsStatic())&&
            (eventChannels.AreAllChannelsStatic()));
}

void
tlAnimationGroup::MakeStatic()
{
    intChannels.MakeAllChannelsStatic();
    float1Channels.MakeAllChannelsStatic();
    float2Channels.MakeAllChannelsStatic();
    vectorChannels.MakeAllChannelsStatic();
    quaternionChannels.MakeAllChannelsStatic();
    stringChannels.MakeAllChannelsStatic();
    boolChannels.MakeAllChannelsStatic();
    colourChannels.MakeAllChannelsStatic();
    eventChannels.MakeAllChannelsStatic();
}

void
tlAnimationGroup::RoughOptimization( const tlAnimationTolerances& tolerances )
{
    OptimizeIntChannels( tolerances.IntTolerance(), tolerances.UsePeakDetection() );
    OptimizeFloat1Channels( tolerances.FloatTolerance(), tolerances.UsePeakDetection() );
    OptimizeFloat2Channels( tolerances.FloatTolerance(), tolerances.UsePeakDetection() );
    OptimizeVectorChannels( tolerances.VectorTolerance(), tolerances.UsePeakDetection() );
    OptimizeQuaternionChannels( tolerances.QuatTolerance(), tolerances.UsePeakDetection() );
    OptimizeStringChannels();
    OptimizeBoolChannels();
    OptimizeColourChannels( tolerances.ColourTolerance(), tolerances.UsePeakDetection() );
}

void
tlAnimationGroup::RemoveStaticChannels()
{
    intChannels.RemoveStaticChannels();
    float1Channels.RemoveStaticChannels();
    float2Channels.RemoveStaticChannels();
    vectorChannels.RemoveStaticChannels();
    quaternionChannels.RemoveStaticChannels();
    stringChannels.RemoveStaticChannels();
    boolChannels.RemoveStaticChannels();
    colourChannels.RemoveStaticChannels();
    eventChannels.RemoveStaticChannels();
}

void
tlAnimationGroup::Initialize()
{
    groupId = 0;
    intChannels.DeleteAllChannels();
    float1Channels.DeleteAllChannels();
    float2Channels.DeleteAllChannels();
    vectorChannels.DeleteAllChannels();
    quaternionChannels.DeleteAllChannels();
    stringChannels.DeleteAllChannels();
    boolChannels.DeleteAllChannels();
    colourChannels.DeleteAllChannels();
    eventChannels.DeleteAllChannels();
}

//*****************************************************************************
// tlAnimationLoader
//*****************************************************************************
bool tlAnimationLoader::autoAppendAnimTypePrefix = false;
bool tlAnimationLoader::autoAppendAnimTypeSuffix = false;

tlAnimationLoader::tlAnimationLoader() :
    tlEntityLoader(Pure3D::Animation::AnimationData::ANIMATION)
{
}

bool
tlAnimationLoader::CheckChunkID(unsigned id)
{
    switch(id)
    {
        case Pure3D::Animation::AnimationData::ANIMATION:
        case P3D_VISIBILITY_ANIM:
        case P3D_TEXTURE_ANIM:
        case P3D_CAMERA_ANIM:
        case P3D_LIGHT_ANIM:
        case P3D_EXPRESSION_ANIM:
        case P3D_POSE_ANIM:
        case P3D_SG_TRANSFORM_ANIM:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }
}

tlEntity*
tlAnimationLoader::Load(tlDataChunk* ch)
{
    tlAnimation* anim = NULL;
    switch (ch->ID())
    {
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            tlAnimationChunk* chunk = dynamic_cast<tlAnimationChunk*>(ch);
            assert(chunk != 0);
            assert(chunk->GetVersion() == ANIMATION_VERSION);

            switch (chunk->GetAnimationType())
            {
                case Pure3DAnimationTypes::TEXTURE_TEX:
                {
                    anim = new tlTextureAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::CAMERA_CAM:
                {
                    anim = new tlCameraAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::LIGHT_LITE:
                {
                    anim = new tlLightAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::EXPRESSION_EXP:
                {
                    anim = new tlExpressionAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::POSE_TRANSFORM_PTRN:
                {
                    anim = new tlPoseAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::POSE_VISIBILITY_PVIS:
                {
                    anim = new tlPoseVisAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN:
                {
                    anim = new tlScenegraphTransformAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS:
                {
                    anim = new tlScenegraphVisAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG:
                {
                    anim = new tlBillboardQuadGroupAnim(chunk);
                    break;
                }
                case Pure3DAnimationTypes::VERTEX_VRTX:
                {
                    anim = new tlVertexAnim( chunk );
                    break;
                }

                default:
                {
                    anim = NULL;
                    break;
                }
            }
            break;
        }
        case P3D_VISIBILITY_ANIM:
        {
            if (ch->SubChunkCount()>1)
            {
                anim = new tlPoseVisAnim(ch);
            }
            else
            {
                anim = new tlScenegraphVisAnim(ch);
            }
            break;
        }
        case P3D_TEXTURE_ANIM:
        {
            anim = new tlTextureAnim(ch);
            break;
        }
        case P3D_CAMERA_ANIM:
        {
            anim = new tlCameraAnim(ch);
            break;
        }
        case P3D_LIGHT_ANIM:
        {
            anim = new tlLightAnim(ch);
            break;
        }
        case P3D_EXPRESSION_ANIM:
        {
            anim = new tlExpressionAnim(ch);
            break;
        }
        case P3D_POSE_ANIM:
        {
            anim = new tlPoseAnim(ch);
            break;
        }
        case P3D_SG_TRANSFORM_ANIM:
        {
            anim = new tlScenegraphTransformAnim(ch);
            break;
        }
        default:
        {
            anim = NULL;
            break;
        }
    }
    if (autoAppendAnimTypePrefix)
    {
        anim->AppendAnimTypePrefix();
    }
    if (autoAppendAnimTypeSuffix)
    {
        anim->AppendAnimTypeSuffix();
    }
    return anim;
}

void
tlAnimationLoader::SetAutoAppendAnimTypePrefix(bool enable)
{
    autoAppendAnimTypePrefix = enable;
}

void
tlAnimationLoader::SetAutoAppendAnimTypeSuffix(bool enable)
{
    autoAppendAnimTypeSuffix = enable;
}

bool
tlAnimationLoader::GetAutoAppendAnimTypePrefix()
{
    return autoAppendAnimTypePrefix;
}

bool
tlAnimationLoader::GetAutoAppendAnimTypeSuffix()
{
    return autoAppendAnimTypeSuffix;
}



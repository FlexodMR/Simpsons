/*===========================================================================
    tlBillboardObjectAnim.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "tlBillboardObjectAnim.hpp"
#include "atenum.hpp"
#include "tlString.hpp"
#include "tlDataChunk.hpp"

//*****************************************************************************
// tlQuadAnimGroup
//*****************************************************************************
tlQuadAnimGroup::tlQuadAnimGroup()
{
}

tlQuadAnimGroup::tlQuadAnimGroup(tlDataChunk* ch)
{
    LoadFromChunk(ch);
}

tlQuadAnimGroup::~tlQuadAnimGroup()
{
}

tlAnimationGroup* 
tlQuadAnimGroup::Clone() const
{
    return new tlQuadAnimGroup(*this);
}

void 
tlQuadAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateVisibilityChannel(numKeys);
    CreateTranslationChannel(numKeys);
    CreateRotationChannel(numKeys);
    CreateWidthChannel(numKeys);
    CreateHeightChannel(numKeys);
    CreateDistanceChannel(numKeys);
    CreateColourChannel(numKeys);
    CreateUVOffsetChannel(numKeys);
    CreateUVOffsetRangeChannel(numKeys);
    CreateSourceRangeChannel(numKeys);
    CreateEdgeRangeChannel(numKeys);
}

void 
tlQuadAnimGroup::CreateVisibilityChannel(int numKeys)
{
    CreateBoolChannel(Pure3DAnimationChannels::BillboardObjects::VISIBILITY_VIS, numKeys);
}

void 
tlQuadAnimGroup::CreateTranslationChannel(int numKeys)
{
    CreateVectorChannel(Pure3DAnimationChannels::BillboardObjects::TRANSLATION_TRAN, numKeys);
}

void 
tlQuadAnimGroup::CreateRotationChannel(int numKeys)
{
    CreateQuaternionChannel(Pure3DAnimationChannels::BillboardObjects::ROTATION_ROT, numKeys);
}

void 
tlQuadAnimGroup::CreateWidthChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::BillboardObjects::WIDTH_WDT, numKeys);
}

void 
tlQuadAnimGroup::CreateHeightChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::BillboardObjects::HEIGHT_HGT, numKeys);
}

void 
tlQuadAnimGroup::CreateDistanceChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::BillboardObjects::DISTANCE_DIST, numKeys);
}

void 
tlQuadAnimGroup::CreateColourChannel(int numKeys)
{
    CreateColourChannel(Pure3DAnimationChannels::BillboardObjects::COLOUR_CLR, numKeys);
}

void 
tlQuadAnimGroup::CreateUVOffsetChannel(int numKeys)
{
    CreateFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_OFF, numKeys);
}

void 
tlQuadAnimGroup::CreateUVOffsetRangeChannel(int numKeys)
{
    CreateFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_RANGE_ORNG, numKeys);
}

void 
tlQuadAnimGroup::CreateSourceRangeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::BillboardObjects::SOURCE_RANGE_SRNG, numKeys);
}

void 
tlQuadAnimGroup::CreateEdgeRangeChannel(int numKeys)
{
    CreateFloat1Channel(Pure3DAnimationChannels::BillboardObjects::EDGE_RANGE_ERNG, numKeys);
}

void 
tlQuadAnimGroup::SetVisibilityChannel(const tlBoolChannel& channel)
{
    SetBoolChannel(Pure3DAnimationChannels::BillboardObjects::VISIBILITY_VIS, &channel);
}

void 
tlQuadAnimGroup::SetTranslationChannel(const tlVectorChannel& channel)
{
    SetVectorChannel(Pure3DAnimationChannels::BillboardObjects::TRANSLATION_TRAN,&channel);
}

void 
tlQuadAnimGroup::SetRotationChannel(const tlQuaternionChannel& channel)
{
    SetQuaternionChannel(Pure3DAnimationChannels::BillboardObjects::ROTATION_ROT,&channel);
}

void 
tlQuadAnimGroup::SetWidthChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::WIDTH_WDT,&channel);
}

void 
tlQuadAnimGroup::SetHeightChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::HEIGHT_HGT,&channel);
}

void 
tlQuadAnimGroup::SetDistanceChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::DISTANCE_DIST,&channel);
}

void 
tlQuadAnimGroup::SetColourChannel(const tlColourChannel& channel)
{
    SetColourChannel(Pure3DAnimationChannels::BillboardObjects::COLOUR_CLR,&channel);
}

void 
tlQuadAnimGroup::SetUVOffsetChannel(const tlFloat2Channel& channel)
{
    SetFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_OFF, &channel);
}

void 
tlQuadAnimGroup::SetUVOffsetRangeChannel(const tlFloat2Channel& channel)
{
    SetFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_RANGE_ORNG, &channel);
}

void 
tlQuadAnimGroup::SetSourceRangeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::SOURCE_RANGE_SRNG, &channel);
}

void 
tlQuadAnimGroup::SetEdgeRangeChannel(const tlFloat1Channel& channel)
{
    SetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::EDGE_RANGE_ERNG, &channel);
}

tlBoolChannel* 
tlQuadAnimGroup::GetVisibilityChannel()
{
    return GetBoolChannel(Pure3DAnimationChannels::BillboardObjects::VISIBILITY_VIS);
}

tlVectorChannel* 
tlQuadAnimGroup::GetTranslationChannel()
{
    return GetVectorChannel(Pure3DAnimationChannels::BillboardObjects::TRANSLATION_TRAN);
}

tlQuaternionChannel* 
tlQuadAnimGroup::GetRotationChannel()
{
    return GetQuaternionChannel(Pure3DAnimationChannels::BillboardObjects::ROTATION_ROT);
}

tlFloat1Channel* 
tlQuadAnimGroup::GetWidthChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::WIDTH_WDT);
}

tlFloat1Channel* 
tlQuadAnimGroup::GetHeightChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::HEIGHT_HGT);
}

tlFloat1Channel* 
tlQuadAnimGroup::GetDistanceChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::DISTANCE_DIST);
}

tlColourChannel* 
tlQuadAnimGroup::GetColourChannel()
{
    return GetColourChannel(Pure3DAnimationChannels::BillboardObjects::COLOUR_CLR);
}

tlFloat2Channel* 
tlQuadAnimGroup::GetUVOffsetChannel()
{
    return GetFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_OFF);
}

tlFloat2Channel* 
tlQuadAnimGroup::GetUVOffsetRangeChannel()
{
    return GetFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_RANGE_ORNG);
}

tlFloat1Channel* 
tlQuadAnimGroup::GetSourceRangeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::SOURCE_RANGE_SRNG);
}

tlFloat1Channel* 
tlQuadAnimGroup::GetEdgeRangeChannel()
{
    return GetFloat1Channel(Pure3DAnimationChannels::BillboardObjects::EDGE_RANGE_ERNG);
}

void 
tlQuadAnimGroup::DeleteVisibilityChannel()
{
    DeleteBoolChannel(Pure3DAnimationChannels::BillboardObjects::VISIBILITY_VIS);
}

void
tlQuadAnimGroup::DeleteTranslationChannel()
{
    DeleteVectorChannel(Pure3DAnimationChannels::BillboardObjects::TRANSLATION_TRAN);
}

void
tlQuadAnimGroup::DeleteRotationChannel()
{
    DeleteQuaternionChannel(Pure3DAnimationChannels::BillboardObjects::ROTATION_ROT);
}

void
tlQuadAnimGroup::DeleteWidthChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::BillboardObjects::WIDTH_WDT);
}

void
tlQuadAnimGroup::DeleteHeightChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::BillboardObjects::HEIGHT_HGT);
}

void
tlQuadAnimGroup::DeleteDistanceChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::BillboardObjects::DISTANCE_DIST);
}

void
tlQuadAnimGroup::DeleteColourChannel()
{
    DeleteColourChannel(Pure3DAnimationChannels::BillboardObjects::COLOUR_CLR);
}

void 
tlQuadAnimGroup::DeleteUVOffsetChannel()
{
    DeleteFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_OFF);
}

void 
tlQuadAnimGroup::DeleteUVOffsetRangeChannel()
{
    DeleteFloat2Channel(Pure3DAnimationChannels::BillboardObjects::UVOFFSET_RANGE_ORNG);
}

void 
tlQuadAnimGroup::DeleteSourceRangeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::BillboardObjects::SOURCE_RANGE_SRNG);
}

void 
tlQuadAnimGroup::DeleteEdgeRangeChannel()
{
    DeleteFloat1Channel(Pure3DAnimationChannels::BillboardObjects::EDGE_RANGE_ERNG);
}

//*****************************************************************************
// tlBillboardQuadGroupAnim
//*****************************************************************************
tlBillboardQuadGroupAnim::tlBillboardQuadGroupAnim()
{
    SetAnimationType(Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG);
}

tlBillboardQuadGroupAnim::tlBillboardQuadGroupAnim(tlDataChunk* ch)
{
    LoadFromChunk(ch);
    assert(GetAnimationType()==Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG);
    SetAnimationType(Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG);
}

tlBillboardQuadGroupAnim::~tlBillboardQuadGroupAnim()
{
}

tlAnimation* 
tlBillboardQuadGroupAnim::Clone() const
{
    return new tlBillboardQuadGroupAnim(*this);
}

void 
tlBillboardQuadGroupAnim::SetQuadAnimGroup(const tlQuadAnimGroup& quadAnim, const char* quadAnimName)
{
    assert(quadAnimName);
    if (quadAnimName)
    {
        tlQuadAnimGroup* group = FindQuadAnimGroup(quadAnimName);
        if (!group)
        {
            group = AddQuadAnimGroup(quadAnimName);
        }
        *group = quadAnim;
    }
}

tlQuadAnimGroup* 
tlBillboardQuadGroupAnim::AddQuadAnimGroup(const char* quadAnimName)
{
    assert(quadAnimName);
    if (quadAnimName)
    {
        unsigned int quadAnimId = GetNextUniqueGroupId();
        return (tlQuadAnimGroup*)AddAnimationGroup(quadAnimId, quadAnimName);
    }
    return NULL;
}

tlQuadAnimGroup* 
tlBillboardQuadGroupAnim::GetQuadAnimGroup(int index)
{
    return (tlQuadAnimGroup*)GetAnimationGroup(index);
}

tlQuadAnimGroup* 
tlBillboardQuadGroupAnim::FindQuadAnimGroup(const char* quadAnimName)
{
    return (tlQuadAnimGroup*)GetAnimationGroup(FindAnimationGroupByName(quadAnimName));
}

void 
tlBillboardQuadGroupAnim::DeleteQuadAnimGroup(const char* quadAnimName)
{
    DeleteAnimationGroup(FindAnimationGroupByName(quadAnimName));
}





//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TL_BILLBOARD_OBJECT_ANIM_HPP__
#define __TL_BILLBOARD_OBJECT_ANIM_HPP__

#include "tlChannel.hpp"
#include "tlAnimation.hpp"

class tlDataChunk;

//*****************************************************************************
// tlQuadAnimGroup
//*****************************************************************************
class tlQuadAnimGroup : public tlAnimationGroup
{
public:
    tlQuadAnimGroup();
    tlQuadAnimGroup(tlDataChunk* ch);
    ~tlQuadAnimGroup();

    tlAnimationGroup* Clone() const;

    //neccessary to unhide the base class colour channel functions
#ifdef WIN32
    using tlAnimationGroup::CreateColourChannel;
    using tlAnimationGroup::SetColourChannel;
    using tlAnimationGroup::GetColourChannel;
    using tlAnimationGroup::DeleteColourChannel;
#else
    void CreateColourChannel(const tlFourCC& code, int numKeys) 
    {
        tlAnimationGroup::CreateColourChannel(code, numKeys); 
    }
    
    void SetColourChannel(const tlFourCC& code, const tlColourChannel* channel)
    {
        tlAnimationGroup::SetColourChannel(code, channel); 
    }
    
    tlColourChannel* GetColourChannel(const tlFourCC& code)
    {
        return tlAnimationGroup::GetColourChannel(code); 
    }
    
    void DeleteColourChannel(const tlFourCC& code)
    {
        tlAnimationGroup::DeleteColourChannel(code); 
    }
#endif

    void CreateStandardChannels(int numKeys);
    
    void CreateVisibilityChannel(int numKeys);
    void CreateTranslationChannel(int numKeys);
    void CreateRotationChannel(int numKeys);
    void CreateWidthChannel(int numKeys);
    void CreateHeightChannel(int numKeys);
    void CreateDistanceChannel(int numKeys);
    void CreateColourChannel(int numKeys);
    void CreateUVOffsetChannel(int numKeys);
    void CreateUVOffsetRangeChannel(int numKeys);
    void CreateSourceRangeChannel(int numKeys);
    void CreateEdgeRangeChannel(int numKeys);

    void SetVisibilityChannel(const tlBoolChannel& channel);
    void SetTranslationChannel(const tlVectorChannel& channel);
    void SetRotationChannel(const tlQuaternionChannel& channel);
    void SetWidthChannel(const tlFloat1Channel& channel);
    void SetHeightChannel(const tlFloat1Channel& channel);
    void SetDistanceChannel(const tlFloat1Channel& channel);
    void SetColourChannel(const tlColourChannel& channel);
    void SetUVOffsetChannel(const tlFloat2Channel& channel);
    void SetUVOffsetRangeChannel(const tlFloat2Channel& channel);
    void SetSourceRangeChannel(const tlFloat1Channel& channel);
    void SetEdgeRangeChannel(const tlFloat1Channel& channel);

    tlBoolChannel* GetVisibilityChannel();
    tlVectorChannel* GetTranslationChannel();
    tlQuaternionChannel* GetRotationChannel();
    tlFloat1Channel* GetWidthChannel();
    tlFloat1Channel* GetHeightChannel();
    tlFloat1Channel* GetDistanceChannel();
    tlColourChannel* GetColourChannel();
    tlFloat2Channel* GetUVOffsetChannel();
    tlFloat2Channel* GetUVOffsetRangeChannel();
    tlFloat1Channel* GetSourceRangeChannel();
    tlFloat1Channel* GetEdgeRangeChannel();

    void DeleteVisibilityChannel();
    void DeleteTranslationChannel();
    void DeleteRotationChannel();
    void DeleteWidthChannel();
    void DeleteHeightChannel();
    void DeleteDistanceChannel();
    void DeleteColourChannel();
    void DeleteUVOffsetChannel();
    void DeleteUVOffsetRangeChannel();
    void DeleteSourceRangeChannel();
    void DeleteEdgeRangeChannel();
};

//*****************************************************************************
// tlBillboardQuadGroupAnim
//*****************************************************************************
class tlBillboardQuadGroupAnim : public tlAnimation
{
public:
    tlBillboardQuadGroupAnim();
    tlBillboardQuadGroupAnim(tlDataChunk* ch);
    ~tlBillboardQuadGroupAnim();

    tlAnimation* Clone() const;

    void SetQuadAnimGroup(const tlQuadAnimGroup& quadAnim, const char* quadAnimName);
    tlQuadAnimGroup* AddQuadAnimGroup(const char* quadAnimName);
    tlQuadAnimGroup* GetQuadAnimGroup(int index);
    tlQuadAnimGroup* FindQuadAnimGroup(const char* quadAnimName);
    void DeleteQuadAnimGroup(const char* quadAnimName);
};

#endif


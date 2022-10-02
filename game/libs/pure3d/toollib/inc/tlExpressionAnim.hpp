//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TLEXPRESSIONANIM_HPP__
#define __TLEXPRESSIONANIM_HPP__

#include "tlEntity.hpp"
#include "tlAnimation.hpp"
#include "tlChannel.hpp"

class tlDataChunk;
class tlExpressionGroup;
class tlExpressionMixer;

//*****************************************************************************
// tlExpressionAnimGroup
//*****************************************************************************
class tlExpressionAnimGroup : public tlAnimationGroup
{
public:
    tlExpressionAnimGroup();
    tlExpressionAnimGroup(tlDataChunk* ch);
    ~tlExpressionAnimGroup();

    tlAnimationGroup* Clone() const;

    void LoadFromChunk16(tlDataChunk* chunk);

    void CreateStandardChannels(int numKeys);
    
    void CreateStateChannel(int numKeys);
    
    void SetStateChannel(const tlFloat1Channel& channel);

    tlFloat1Channel* GetStateChannel();

    void DeleteStateChannel();
};
    
//*****************************************************************************
// tlExpressionAnim
//*****************************************************************************
class tlExpressionAnim : public tlAnimation
{
public:
    tlExpressionAnim();
    tlExpressionAnim( const tlExpressionAnim& other );
    tlExpressionAnim(tlDataChunk* ch);
    ~tlExpressionAnim();

    tlAnimation* Clone() const;
    
    void LoadFromChunk16(tlDataChunk* ch);

    void SetExpressionAnimGroup(const tlExpressionAnimGroup& expression, const char* expressionName);
    tlExpressionAnimGroup* AddExpressionAnimGroup(const char* expressionName);
    tlExpressionAnimGroup* GetExpressionAnimGroup(const char* expressionName);
    void DeleteExpressionAnimGroup(const char* expressionName);

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

protected:
    tlExpressionGroup* mExpressionGroup;
    tlExpressionMixer* mExpressionMixer;
};

#endif


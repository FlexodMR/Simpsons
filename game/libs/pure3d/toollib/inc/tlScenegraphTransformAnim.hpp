//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLSCENEGRAPHTRANSFORMANIM_HPP_
#define _TLSCENEGRAPHTRANSFORMANIM_HPP_

#include "tlChannel.hpp"
#include "tlAnimation.hpp"
#include "tlScenegraph.hpp"

class tlDataChunk;

class tlKey3DOF;
class tlKey3DOFAngle;

//*****************************************************************************
// tlScenegraphTransformAnim
//*****************************************************************************
class tlScenegraphTransformAnim : public tlAnimation
{
public:
    tlScenegraphTransformAnim();
    tlScenegraphTransformAnim(tlDataChunk* ch);
    ~tlScenegraphTransformAnim();

    tlAnimation* Clone() const;

    //old functions
    void LoadFromChunk16(tlDataChunk* ch);
    void CreateKeys(int numKeys);
    void SetKey(int keynum, tlKey3DOF *translation, tlKey3DOFAngle *rotation);
    void Scale(float sx, float sy, float sz);
    void Optimize(float tranTol, float rotTol);

    //new functions
    void CreateStandardChannels(int numKeys);

    void CreateTranslationChannel(int numKeys);
    void CreateRotationChannel(int numKeys);
    
    void SetTranslationChannel(const tlVectorChannel& channel);
    void SetRotationChannel(const tlQuaternionChannel& channel);

    tlVectorChannel* GetTranslationChannel();
    tlQuaternionChannel* GetRotationChannel();

    void DeleteTranslationChannel();
    void DeleteRotationChannel();
};




#endif // _TLLIGHTANIM_HPP_


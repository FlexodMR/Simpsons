//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLLIGHTANIM_HPP_
#define _TLLIGHTANIM_HPP_

#include "tlLight.hpp"
#include "tlChannel.hpp"
#include "tlAnimation.hpp"

class tlDataChunk;

class tlKeyColour;
class tlKey3DOF;
class tlKey1DOF;

//*****************************************************************************
// tlLightAnim
//*****************************************************************************
class tlLightAnim : public tlAnimation
{
public:
    tlLightAnim();
    tlLightAnim(tlDataChunk *ch);
    ~tlLightAnim();

    tlAnimation* Clone() const;

    //old functions
    virtual void LoadFromChunk16(tlDataChunk* ch);

    // *** Duplicative and unnecessary ***  REMOVED by Bryan Ewert - 19 Dec 2001
//    void CreateKeys(int numkeys);

    void SetKey(int keynum, tlKeyColour *colour, tlKey3DOF* pos, tlKey1DOF* enable, tlKey3DOF* atten = NULL );

    void Scale(float s, tlLight::tlLightType type);
    void Optimize(float colourtolerance, float paramtolerance, float attentolerance, float dirtolerance, float conetolerance);

    //new functions
    void CreateStandardChannels(int numKeys);       // Colour, Position and Enable channels.

    void CreateColourChannel(int numKeys);          // "standard" channel.
    void CreatePositionChannel(int numKeys);        // "standard" channel.
    void CreateEnableChannel(int numKeys);          // "standard" channel.
    void CreateAttenuationChannel( int numKeys );   // Spot and Point lights only.
    void CreateDirectionChannel(int numKeys);       // Direction and Spot lights only.
    void CreateConeAngleChannel( int numKeys );     // Spot lights only.
    
    void SetColourChannel(const tlColourChannel& channel);
    void SetPositionChannel(const tlVectorChannel& channel);
    void SetEnableChannel(const tlBoolChannel& channel);
    void SetAttenuationChannel(const tlVectorChannel& channel);
    void SetDirectionChannel(const tlVectorChannel& channel);
    void SetConeAngleChannel( const tlVectorChannel& channel );     // Spot lights only.

    tlColourChannel* GetColourChannel();
    tlVectorChannel* GetPositionChannel();
    tlBoolChannel* GetEnableChannel();
    tlVectorChannel* GetAttenuationChannel();
    tlVectorChannel* GetDirectionChannel();
    tlVectorChannel* GetConeAngleChannel();     // Spot lights only.

    void DeleteColourChannel();
    void DeletePositionChannel();
    void DeleteEnableChannel();
    void DeleteAttenuationChannel();
    void DeleteDirectionChannel();
    void DeleteConeAngleChannel();      // Spot lights only.
};

#endif // _TLLIGHTANIM_HPP_


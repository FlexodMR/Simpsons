//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLVERTEXANIM_HPP_
#define _TLVERTEXANIM_HPP_

#include "tlChannel.hpp"
#include "tlAnimation.hpp"
#include "tlTable.hpp"

class tlDataChunk;
class tlPrimGroup;
class tlShader;

//*****************************************************************************
// tlVertexAnim
//*****************************************************************************
class tlVertexAnim : public tlAnimation
{
public:
    // NOTE: These values are COPIES of those defined in the
    //       tVertexAnimObject run-time class:
    //          \depot\Development\pure3d\p3d\anim\vertexanimobject.hpp
    enum eVertexAnimInterpolate
    {
        eInterpolateNone    = 0x00,
        eInterpolateUV0     = 0x01,
        eInterpolateUV1     = 0x02,
        eInterpolateUV2     = 0x04,
        eInterpolateUV3     = 0x08,
        eInterpolateCoord   = 0x10,
        eInterpolateNormal  = 0x20,
        eInterpolateColour  = 0x40
    };

    tlVertexAnim();
    tlVertexAnim(tlDataChunk *ch);
    ~tlVertexAnim();

    tlAnimation* Clone() const;    

    tlAnimationGroup* CreateKeyChannel(int numKeys, int groupId = 0);
    void SetKeyChannel(const tlStringChannel& channel, int groupId = 0);
    tlStringChannel* GetKeyChannel( int groupId = 0 );
    void DeleteKeyChannel( int groupId = 0 );     
};

#endif // _TLVERTEXANIM_HPP


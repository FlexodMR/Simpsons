//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLCAMERAANIM_HPP_
#define _TLCAMERAANIM_HPP_

#include "tlChannel.hpp"
#include "tlAnimation.hpp"

class tlDataChunk;

class tlKey1DOF;
class tlKey3DOF;

//*****************************************************************************
// tlCameraAnim
//*****************************************************************************
class tlCameraAnim : public tlAnimation
{
public:
    tlCameraAnim();
    tlCameraAnim(tlDataChunk *ch);
    ~tlCameraAnim();

    tlAnimation* Clone() const;

    //old functions
    virtual void LoadFromChunk16(tlDataChunk *ch);

    void CreateKeys(int numkeys);
    void SetKey(int keynum, tlKey3DOF *poskey, tlKey3DOF *lookkey, tlKey3DOF *upkey, tlKey1DOF *fovkey, tlKey1DOF* nclpKey, tlKey1DOF* fclpKey );
    void Scale(float sx, float sy, float sz);
    void Optimize(float postolerance, float lookuptolerance, float fovtolerance, float nclpTolerance, float fclpTolerance );

    //new functions
    void CreateStandardChannels(int numKeys);

    void CreateTranslationChannel(int numKeys);
    void CreateLookChannel(int numKeys);
    void CreateUpChannel(int numKeys);
    void CreateFovChannel(int numKeys);

    // Near- and Far-Clip Channels Added by Bryan Ewert on 22 Feb 2002
    void CreateNearClipChannel(int numKeys);
    void CreateFarClipChannel(int numKeys);
    
    void SetTranslationChannel(const tlVectorChannel& channel);
    void SetLookChannel(const tlVectorChannel& channel);
    void SetUpChannel(const tlVectorChannel& channel);
    void SetFovChannel(const tlFloat1Channel& channel);

    // Added by Bryan Ewert on 22 Feb 2002
    void SetNearClipChannel(const tlFloat1Channel& channel);
    void SetFarClipChannel(const tlFloat1Channel& channel);

    tlVectorChannel* GetTranslationChannel();
    tlVectorChannel* GetLookChannel();
    tlVectorChannel* GetUpChannel();
    tlFloat1Channel* GetFovChannel();

    // Added by Bryan Ewert on 22 Feb 2002
    tlFloat1Channel* GetNearClipChannel();
    tlFloat1Channel* GetFarClipChannel();

    void DeleteTranslationChannel();
    void DeleteLookChannel();
    void DeleteUpChannel();
    void DeleteFovChannel();

    // Added by Bryan Ewert on 22 Feb 2002
    void DeleteNearClipChannel();
    void DeleteFarClipChannel();
};

#endif // _TLCAMERAANIM_HPP_


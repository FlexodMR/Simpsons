//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlCameraAnim.hpp"

#include "tlDataChunk.hpp"
#include "tlCameraAnimChunk16.hpp"
#include "tlString.hpp"

#include "tlTranAnimKeys.hpp"
#include "tlPoseAnimChunk16.hpp"

//*****************************************************************************
// tlCameraAnim
//*****************************************************************************
tlCameraAnim::tlCameraAnim()
{
    SetAnimationType(Pure3DAnimationTypes::CAMERA_CAM);
}

tlCameraAnim::tlCameraAnim(tlDataChunk *ch)
{
    switch (ch->ID())
    {
        case P3D_CAMERA_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::CAMERA_CAM);
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::CAMERA_CAM);
}

tlCameraAnim::~tlCameraAnim()
{
}

tlAnimation* 
tlCameraAnim::Clone() const
{
    return new tlCameraAnim(*this);
}

void 
tlCameraAnim::LoadFromChunk16(tlDataChunk* ch)
{
    tlCameraAnimChunk16* animch = dynamic_cast<tlCameraAnimChunk16*>(ch);
    assert(animch);

    SetName(animch->GetAnimName());
    SetFrameRate(animch->GetFrameRate());
    SetNumFrames(animch->GetNumFrames());
    SetCyclic(animch->GetCyclic()==1);
    
    for(int i = 0 ; i < animch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = animch->GetSubChunk(i);
        switch (subch->ID())
        {
            case P3D_CAMERA_ANIM_CHANNEL:
            {
                for(int j = 0 ; j < subch->SubChunkCount(); j++)
                {
                    tlDataChunk* channelch = subch->GetSubChunk(j);             
                    switch (channelch->ID())
                    {
                        case P3D_CAMERA_ANIM_POS_CHANNEL:
                        {
                            tlVectorChannel* channel = tlChannelManager::LoadInToVectorChannel(channelch->GetSubChunk(0));
                            SetTranslationChannel(*channel);
                            delete channel;

                            break;
                        }
                        case P3D_CAMERA_ANIM_LOOK_CHANNEL:
                        {
                            tlVectorChannel* channel = tlChannelManager::LoadInToVectorChannel(channelch->GetSubChunk(0));
                            SetLookChannel(*channel);
                            delete channel;

                            break;
                        }
                        case P3D_CAMERA_ANIM_UP_CHANNEL:
                        {
                            tlVectorChannel* channel = tlChannelManager::LoadInToVectorChannel(channelch->GetSubChunk(0));
                            SetUpChannel(*channel);
                            delete channel;

                            break;
                        }
                        case P3D_CAMERA_ANIM_FOV_CHANNEL:
                        {
                            tlFloat1Channel* channel = tlChannelManager::LoadInToFloat1Channel(channelch->GetSubChunk(0));
                            SetFovChannel(*channel);
                            delete channel;

                            break;
                        }

                        // Added by Bryan Ewert on 22 Feb 2002
                        case P3D_CAMERA_ANIM_NEARCLIP_CHANNEL:
                        {
                            tlFloat1Channel* channel = tlChannelManager::LoadInToFloat1Channel(channelch->GetSubChunk(0));
                            SetNearClipChannel(*channel);
                            delete channel;

                            break;
                        }
                        case P3D_CAMERA_ANIM_FARCLIP_CHANNEL:
                        {
                            tlFloat1Channel* channel = tlChannelManager::LoadInToFloat1Channel(channelch->GetSubChunk(0));
                            SetFarClipChannel(*channel);
                            delete channel;

                            break;
                        }
                        default:
                            break;
                    }
                }
                break;
            }
            default:
                // Just ignore unrecognized data
                break;
        }
    }
}

void
tlCameraAnim::CreateKeys(int numKeys)
{
    CreateStandardChannels(numKeys);
}

void 
tlCameraAnim::SetKey(
    int keynum, 
    tlKey3DOF *poskey, 
    tlKey3DOF *lookkey, 
    tlKey3DOF *upkey, 
    tlKey1DOF *fovkey, 
    tlKey1DOF *nclpKey, 
    tlKey1DOF *fclpKey
)
{
    tlFloat1Channel* float1Ch = NULL;
    tlVectorChannel* vectorCh = NULL;

    vectorCh = GetTranslationChannel();
    if (vectorCh)
    {
        vectorCh->SetKey(keynum, poskey->frame, tlPoint(poskey->x,poskey->y,poskey->z));
    }

    vectorCh = GetLookChannel();
    if (vectorCh)
    {
        vectorCh->SetKey(keynum, lookkey->frame, tlPoint(lookkey->x,lookkey->y,lookkey->z));
    }

    vectorCh = GetUpChannel();
    if (vectorCh)
    {
        vectorCh->SetKey(keynum, upkey->frame, tlPoint(upkey->x,upkey->y,upkey->z));
    }

    float1Ch = GetFovChannel();
    if (float1Ch)
    {
        float1Ch->SetKey(keynum, fovkey->frame, fovkey->x);
    }

    // Added by Bryan Ewert on 22 Feb 2002
    float1Ch = GetNearClipChannel();
    if (float1Ch)
    {
        float1Ch->SetKey(keynum, nclpKey->frame, nclpKey->x);
    }
    float1Ch = GetFarClipChannel();
    if (float1Ch)
    {
        float1Ch->SetKey(keynum, fclpKey->frame, fclpKey->x);
    }
}

void 
tlCameraAnim::Scale(float sx, float sy, float sz)
{
    tlVectorChannel* channel = GetTranslationChannel();
    if (channel)
    {
        for (unsigned i = 0; i < channel->GetNumKeys(); i++)
        {
            short frame;
            tlPoint value;
            if (channel->GetKey(i,frame,value))
            {
                value.x *= sx;
                value.y *= sy;
                value.z *= sz;
                channel->SetKey(i,frame,value);
            }
        }
    }
}

void 
tlCameraAnim::Optimize
(
    float postolerance, 
    float lookuptolerance, 
    float fovtolerance, 
    float nclpTolerance, 
    float fclpTolerance
)
{
    tlFloat1Channel* float1Ch = NULL;
    tlVectorChannel* vectorCh = NULL;

    vectorCh = GetTranslationChannel();
    if (vectorCh)
    {
        vectorCh->Optimize(postolerance);
    }

    vectorCh = GetLookChannel();
    if (vectorCh)
    {
        vectorCh->Optimize(lookuptolerance);
    }

    vectorCh = GetUpChannel();
    if (vectorCh)
    {
        vectorCh->Optimize(lookuptolerance);
    }

    float1Ch = GetFovChannel();
    if (float1Ch)
    {
        float1Ch->Optimize(fovtolerance);
    }

    // Added by Bryan Ewert on 22 Feb 2002
    float1Ch = GetNearClipChannel();
    if (float1Ch)
    {
        float1Ch->Optimize(nclpTolerance);
    }
    float1Ch = GetFarClipChannel();
    if (float1Ch)
    {
        float1Ch->Optimize(fclpTolerance);
    }
}

void 
tlCameraAnim::CreateStandardChannels(int numKeys)
{
    CreateTranslationChannel(numKeys);
    CreateLookChannel(numKeys);
    CreateUpChannel(numKeys);
    CreateFovChannel(numKeys);
    // Added by Bryan Ewert on 22 Feb 2002
    CreateNearClipChannel(numKeys);
    CreateFarClipChannel(numKeys);
}

void 
tlCameraAnim::CreateTranslationChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Camera::TRANSLATION_TRAN, numKeys);
}

void 
tlCameraAnim::CreateLookChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Camera::LOOKVECTOR_LOOK, numKeys);
}

void 
tlCameraAnim::CreateUpChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Camera::UPVECTOR_UP, numKeys);
}

void 
tlCameraAnim::CreateFovChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateFloat1Channel(Pure3DAnimationChannels::Camera::FIELDOFVIEW_FOV, numKeys);
}

// Added by Bryan Ewert on 22 Feb 2002
void 
tlCameraAnim::CreateNearClipChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateFloat1Channel(Pure3DAnimationChannels::Camera::NEARCLIP_NCLP, numKeys);
}

void 
tlCameraAnim::CreateFarClipChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateFloat1Channel(Pure3DAnimationChannels::Camera::FARCLIP_FCLP, numKeys);
}

void 
tlCameraAnim::SetTranslationChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::Camera::TRANSLATION_TRAN,&channel);
}

void 
tlCameraAnim::SetLookChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::Camera::LOOKVECTOR_LOOK,&channel);
}

void 
tlCameraAnim::SetUpChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::Camera::UPVECTOR_UP,&channel);
}

void 
tlCameraAnim::SetFovChannel(const tlFloat1Channel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetFloat1Channel(Pure3DAnimationChannels::Camera::FIELDOFVIEW_FOV,&channel);
}

// Added by Bryan Ewert on 22 Feb 2002
void 
tlCameraAnim::SetNearClipChannel(const tlFloat1Channel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetFloat1Channel(Pure3DAnimationChannels::Camera::NEARCLIP_NCLP,&channel);
}

void 
tlCameraAnim::SetFarClipChannel(const tlFloat1Channel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetFloat1Channel(Pure3DAnimationChannels::Camera::FARCLIP_FCLP,&channel);
}

tlVectorChannel* 
tlCameraAnim::GetTranslationChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Camera::TRANSLATION_TRAN);
    }
    return NULL;
}

tlVectorChannel* 
tlCameraAnim::GetLookChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Camera::LOOKVECTOR_LOOK);
    }
    return NULL;
}

tlVectorChannel* 
tlCameraAnim::GetUpChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Camera::UPVECTOR_UP);
    }
    return NULL;
}

tlFloat1Channel* 
tlCameraAnim::GetFovChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetFloat1Channel(Pure3DAnimationChannels::Camera::FIELDOFVIEW_FOV);
    }
    return NULL;
}

// Added by Bryan Ewert on 22 Feb 2002
tlFloat1Channel* 
tlCameraAnim::GetNearClipChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetFloat1Channel(Pure3DAnimationChannels::Camera::NEARCLIP_NCLP);
    }
    return NULL;
}

tlFloat1Channel* 
tlCameraAnim::GetFarClipChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetFloat1Channel(Pure3DAnimationChannels::Camera::FARCLIP_FCLP);
    }
    return NULL;
}

void
tlCameraAnim::DeleteTranslationChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Camera::TRANSLATION_TRAN);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlCameraAnim::DeleteLookChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Camera::LOOKVECTOR_LOOK);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlCameraAnim::DeleteUpChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Camera::UPVECTOR_UP);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlCameraAnim::DeleteFovChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteFloat1Channel(Pure3DAnimationChannels::Camera::FIELDOFVIEW_FOV);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

// Added by Bryan Ewert on 22 Feb 2002
void
tlCameraAnim::DeleteNearClipChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteFloat1Channel(Pure3DAnimationChannels::Camera::NEARCLIP_NCLP);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlCameraAnim::DeleteFarClipChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteFloat1Channel(Pure3DAnimationChannels::Camera::FARCLIP_FCLP);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}









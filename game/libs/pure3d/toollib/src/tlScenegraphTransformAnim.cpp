//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlScenegraphTransformAnim.hpp"

#include "tlDataChunk.hpp"
#include "tlScenegraphTransformAnimChunk16.hpp"
#include "tlString.hpp"
#include "tlQuat.hpp"

#include "tlTranAnimKeys.hpp"
#include "tlPoseAnimChunk16.hpp"

//*****************************************************************************
// tlScenegraphTransformAnim
//*****************************************************************************
tlScenegraphTransformAnim::tlScenegraphTransformAnim()
{
    SetAnimationType(Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN);
}

tlScenegraphTransformAnim::tlScenegraphTransformAnim(tlDataChunk* ch)
{
    switch (ch->ID())
    {
        case P3D_SG_TRANSFORM_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN);
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN);
}

tlScenegraphTransformAnim::~tlScenegraphTransformAnim()
{
}

tlAnimation* 
tlScenegraphTransformAnim::Clone() const
{
    return new tlScenegraphTransformAnim(*this);
}

void 
tlScenegraphTransformAnim::LoadFromChunk16(tlDataChunk* ch)
{
    tlScenegraphTransformAnimChunk16* animch = dynamic_cast<tlScenegraphTransformAnimChunk16*>(ch);
    assert(animch);

    SetName(animch->GetName());
    SetFrameRate(animch->GetFrameRate());
    SetNumFrames(animch->GetNumFrames());
    SetCyclic(animch->GetCyclic()==1);

    for(int i = 0 ; i < animch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = animch->GetSubChunk(i);
        switch (subch->ID())
        {
            case P3D_CHANNEL_1DOF :
            case P3D_CHANNEL_3DOF :
            case P3D_CHANNEL_STATIC:
            {
                tlVectorChannel* channel = tlChannelManager::LoadInToVectorChannel(subch);
                SetTranslationChannel(*channel);
                delete channel;

                break;
            }
            case P3D_CHANNEL_1DOF_ANGLE :
            case P3D_CHANNEL_3DOF_ANGLE :
            case P3D_CHANNEL_STATIC_ANGLE :
            {
                tlQuaternionChannel* channel = tlChannelManager::LoadInToQuaternionChannel(subch);
                SetRotationChannel(*channel);
                delete channel;

                break;
            }
            default:
                // Just ignore unrecognized data
                break;
        }
    }
}

void 
tlScenegraphTransformAnim::CreateKeys(int numKeys)
{
    CreateStandardChannels(numKeys);
}

void 
tlScenegraphTransformAnim::SetKey(int keynum, tlKey3DOF *trans, tlKey3DOFAngle *rot)
{
    tlVectorChannel* translation = GetTranslationChannel();
    tlQuaternionChannel* rotation = GetRotationChannel();

    if (translation)
    {
        translation->SetKey(keynum,trans->frame,tlPoint(trans->x,trans->y,trans->z));
    }
    if (rotation)
    {
        rotation->SetKey(keynum,rot->frame,EulerToQuat(tlPoint(ANGLE2RAD(rot->x),ANGLE2RAD(rot->y),ANGLE2RAD(rot->z))));
    }
}

void 
tlScenegraphTransformAnim::Scale(float sx, float sy, float sz)
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
tlScenegraphTransformAnim::Optimize(float tranTol, float rotTol)
{
    tlVectorChannel* translation = GetTranslationChannel();
    tlQuaternionChannel* rotation = GetRotationChannel();

    if (translation)
    {
        translation->Optimize(tranTol);
    }
    if (rotation)
    {
        rotation->Optimize(rotTol);
    }
}

void 
tlScenegraphTransformAnim::CreateStandardChannels(int numKeys)
{
    CreateTranslationChannel(numKeys);
    CreateRotationChannel(numKeys);
}

void 
tlScenegraphTransformAnim::CreateTranslationChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::SceneGraph::TRANSLATION_TRAN, numKeys);
}

void 
tlScenegraphTransformAnim::CreateRotationChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateQuaternionChannel(Pure3DAnimationChannels::SceneGraph::ROTATION_ROT, numKeys);
}

void 
tlScenegraphTransformAnim::SetTranslationChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::SceneGraph::TRANSLATION_TRAN,&channel);
}

void 
tlScenegraphTransformAnim::SetRotationChannel(const tlQuaternionChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetQuaternionChannel(Pure3DAnimationChannels::SceneGraph::ROTATION_ROT,&channel);
}

tlVectorChannel* 
tlScenegraphTransformAnim::GetTranslationChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::SceneGraph::TRANSLATION_TRAN);
    }
    return NULL;
}

tlQuaternionChannel* 
tlScenegraphTransformAnim::GetRotationChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetQuaternionChannel(Pure3DAnimationChannels::SceneGraph::ROTATION_ROT);
    }
    return NULL;
}

void
tlScenegraphTransformAnim::DeleteTranslationChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::SceneGraph::TRANSLATION_TRAN);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlScenegraphTransformAnim::DeleteRotationChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::SceneGraph::ROTATION_ROT);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}



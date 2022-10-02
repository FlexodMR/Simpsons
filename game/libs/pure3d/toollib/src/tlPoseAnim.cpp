//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlPoseAnim.hpp"

#include "tlDataChunk.hpp"
#include "tlPoseAnimChunk16.hpp"
#include "tlString.hpp"
#include "tlSkeleton.hpp"
#include "tlPose.hpp"
#include "tlInventory.hpp"

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <memory.h>
#include <string.h>

// old joint list types (pre v14)
const unsigned JOINT_ROTATION           = 0;
const unsigned JOINT_TRANSLATION        = 1;
const unsigned JOINT_SCALE              = 2;
const unsigned JOINT_QUATERNION         = 3;
const unsigned JOINT_SCALEMAT           = 4;

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

//*****************************************************************************
// tlJointAnimGroup
//*****************************************************************************
tlJointAnimGroup::tlJointAnimGroup()
{
}

tlJointAnimGroup::tlJointAnimGroup(tlDataChunk* ch)
{
    LoadFromChunk(ch);
}
    
tlJointAnimGroup::~tlJointAnimGroup()
{
}

tlAnimationGroup* 
tlJointAnimGroup::Clone() const
{
    return new tlJointAnimGroup(*this);
}

bool
tlJointAnimGroup::IsDynamicRotation()
{
    tlQuaternionChannel* channel = GetRotationChannel();
    if (!channel)
    {
        return false;
    }
    else
    {
        if (channel->IsStatic())
        {
            return false;
        }
    }
    return true;
}

bool
tlJointAnimGroup::IsDynamicTranslation()
{
    tlVectorChannel* channel = GetTranslationChannel();
    if (!channel)
    {
        return false;
    }
    else
    {
        if (channel->IsStatic())
        {
            return false;
        }
    }
    return true;
}

void 
tlJointAnimGroup::Transform(const tlMatrix &m)
{
    tlVectorChannel* channel = GetTranslationChannel();
    if (channel)
    {
        for (unsigned i = 0; i < channel->GetNumKeys(); i++)
        {
            short frame;
            tlPoint value;
            tlPoint result;
            if (channel->GetKey(i,frame,value))
            {
                result = value * m;
                channel->SetKey(i,frame,result);
            }
        }
    }
}

void 
tlJointAnimGroup::Scale(float sx, float sy, float sz)
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
tlJointAnimGroup::Truncate()
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
                value.x = floorf(value.x);
                value.y = floorf(value.y);
                value.z = floorf(value.z);
                channel->SetKey(i,frame,value);
            }
        }
    }
}

float 
tlJointAnimGroup::LargestTranslation()
{
    float max = 0.0f;
    tlVectorChannel* channel = GetTranslationChannel();
    if (channel)
    {
        for (int i = 0; i < (int)channel->GetNumKeys(); i++)
        {
            short frame;
            tlPoint value;
            if (channel->GetKey(i,frame,value))
            {
                max = __max(max, __max(fabsf(value.x), __max(fabsf(value.y), fabsf(value.z))));
            }
        }
    }
    return max;
}

void 
tlJointAnimGroup::CreateStandardChannels(int numKeys)
{
    CreateTranslationChannel(numKeys);
    CreateRotationChannel(numKeys);
}

void 
tlJointAnimGroup::CreateTranslationChannel(int numKeys)
{
    CreateVectorChannel(Pure3DAnimationChannels::Pose::TRANSLATION_TRAN, numKeys);
}

void 
tlJointAnimGroup::CreateRotationChannel(int numKeys)
{
    CreateQuaternionChannel(Pure3DAnimationChannels::Pose::ROTATION_ROT, numKeys);
}

void
tlJointAnimGroup::SetTranslationChannel(const tlVectorChannel& channel)
{
    SetVectorChannel(Pure3DAnimationChannels::Pose::TRANSLATION_TRAN,&channel);
}

void
tlJointAnimGroup::SetRotationChannel(const tlQuaternionChannel& channel)
{
    SetQuaternionChannel(Pure3DAnimationChannels::Pose::ROTATION_ROT,&channel);
}

tlVectorChannel* 
tlJointAnimGroup::GetTranslationChannel()
{
    return GetVectorChannel(Pure3DAnimationChannels::Pose::TRANSLATION_TRAN);
}

tlQuaternionChannel* 
tlJointAnimGroup::GetRotationChannel()
{
    return GetQuaternionChannel(Pure3DAnimationChannels::Pose::ROTATION_ROT);
}

void
tlJointAnimGroup::DeleteTranslationChannel()
{
    DeleteVectorChannel(Pure3DAnimationChannels::Pose::TRANSLATION_TRAN);
}

void
tlJointAnimGroup::DeleteRotationChannel()
{
    DeleteQuaternionChannel(Pure3DAnimationChannels::Pose::ROTATION_ROT);
}

void 
tlJointAnimGroup::DeleteXTrans()
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
                value.x = 0.0f;
                channel->SetKey(i,frame,value);
            }
        }
    }
}

void 
tlJointAnimGroup::DeleteYTrans()
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
                value.y = 0.0f;
                channel->SetKey(i,frame,value);
            }
        }
    }
}

void 
tlJointAnimGroup::DeleteZTrans()
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
                value.z = 0.0f;
                channel->SetKey(i,frame,value);
            }
        }
    }
}

//*****************************************************************************
// tlPoseAnim
//*****************************************************************************
tlPoseAnim::tlPoseAnim() :
    isMirrored(false),
    mirroredName(NULL)
{
    SetAnimationType(Pure3DAnimationTypes::POSE_TRANSFORM_PTRN);
}

tlPoseAnim::tlPoseAnim(tlDataChunk* ch) :
    isMirrored(false),
    mirroredName(NULL)
{
    switch (ch->ID())
    {
        case P3D_POSE_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::POSE_TRANSFORM_PTRN);
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::POSE_TRANSFORM_PTRN);
}
    
tlPoseAnim::~tlPoseAnim()
{
    if(mirroredName)
    {
        strdelete(mirroredName);
    }
}

tlAnimation* 
tlPoseAnim::Clone() const
{
    return new tlPoseAnim(*this);
}

void
tlPoseAnim::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_POSE_ANIM);
    tlPoseAnimChunk16* posech = dynamic_cast<tlPoseAnimChunk16*>(ch);
    assert(posech);
    assert(posech->Version() == 3);

    SetName(posech->Name());
    SetNumFrames(posech->GetNumFrames());
    SetFrameRate(posech->GetFrameRate());
    SetCyclic(posech->GetCyclic()==1);
    
    for(int i = 0; i < posech->SubChunkCount(); i++)
    {
        tlDataChunk* subch = posech->GetSubChunk(i);
        switch(subch->ID())
        {
            case P3D_JOINT_LIST:
            {           
                tlPoseJointListChunk16* jlch = dynamic_cast<tlPoseJointListChunk16*>(subch);
                assert(jlch);

                for(int j = 0; j < jlch->SubChunkCount(); j++)
                {
                    tlDataChunk* jointch = jlch->GetSubChunk(j);
                    switch(jointch->ID())
                    {
                        case P3D_ANIM_CHANNEL:
                        {
                            tlAnimChannelChunk16* channelch = dynamic_cast<tlAnimChannelChunk16*>(jointch);
                            assert(channelch->Version() == 3);
                          
                            tlJointAnimGroup* joint = GetJoint(channelch->GetPoseIndex());
                            if(!joint)
                            {
                                joint = AddJoint(channelch->GetPoseIndex(),channelch->GetName());
                            }                    

                            switch(jlch->GetListType())
                            {
                                case JOINT_ROTATION:
                                case JOINT_QUATERNION:
                                {
                                    tlQuaternionChannel* channel = tlChannelManager::LoadInToQuaternionChannel(channelch->GetSubChunk(0));
                                    joint->SetQuaternionChannel(Pure3DAnimationChannels::Pose::ROTATION_ROT,channel);
                                    delete channel;
                                    break; 
                                }
                                case JOINT_TRANSLATION:
                                {
                                    tlVectorChannel* channel = tlChannelManager::LoadInToVectorChannel(channelch->GetSubChunk(0));
                                    joint->SetVectorChannel(Pure3DAnimationChannels::Pose::TRANSLATION_TRAN,channel);
                                    delete channel;
                                    break;
                                }
                                default:
                                    break;
                            }
                        }
                        default:
                            break;
                    }
                }
                break;
            }

            case P3D_POSE_ANIM_MIRRORED:
            {
                tlPoseAnimMirroredChunk16* mirrorch = dynamic_cast< tlPoseAnimMirroredChunk16*>(subch);
                assert(mirrorch);
                isMirrored = true;
                SetMirroredAnimName(mirrorch->GetName());
                break;
            }

            default:
                break;
        }
    }
}

void
tlPoseAnim::SetJoint( const tlJointAnimGroup& joint, unsigned int jointId, const char* jointName )
{  
    SetAnimationGroup(joint,jointId,jointName);
}

tlJointAnimGroup* 
tlPoseAnim::AddJoint( unsigned int jointId, const char* jointName )
{
    return (tlJointAnimGroup*)AddAnimationGroup(jointId, jointName);
}

tlJointAnimGroup* 
tlPoseAnim::GetJoint( unsigned int jointId )
{
    return (tlJointAnimGroup*)GetAnimationGroup(FindAnimationGroupById(jointId));
}

tlJointAnimGroup* 
tlPoseAnim::FindJoint( const char* jointName )
{
    return (tlJointAnimGroup*)GetAnimationGroup(FindAnimationGroupByName(jointName));
}

void 
tlPoseAnim::DeleteJoint( unsigned int jointId )
{
    DeleteAnimationGroup(FindAnimationGroupById(jointId));
}

void 
tlPoseAnim::Transform(tlMatrix &m)
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        ((tlJointAnimGroup*)GetAnimationGroup(i))->Transform(m);
    }
}

void 
tlPoseAnim::Scale(float sx, float sy, float sz)
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        ((tlJointAnimGroup*)GetAnimationGroup(i))->Scale(sx,sy,sz);
    }
}

void
tlPoseAnim::Truncate()
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        ((tlJointAnimGroup*)GetAnimationGroup(i))->Truncate();
    }
}

void 
tlPoseAnim::OptimizeTranslation( float tolerance )
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        tlVectorChannel* channel = ((tlJointAnimGroup*)GetAnimationGroup(i))->GetTranslationChannel();
        if (channel)
        {
            channel->Optimize(tolerance);
        }
    }
}

void 
tlPoseAnim::OptimizeRotation( float tolerance )
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        tlQuaternionChannel* channel = ((tlJointAnimGroup*)GetAnimationGroup(i))->GetRotationChannel();
        if (channel)
        {
            channel->Optimize(tolerance);
        }
    }
}

void 
tlPoseAnim::DeleteTranslation()
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        ((tlJointAnimGroup*)GetAnimationGroup(i))->DeleteTranslationChannel();
    }
}

void 
tlPoseAnim::DeleteRotation()
{
    for (int i = 0; i < GetNumAnimationGroups(); i++)
    {
        ((tlJointAnimGroup*)GetAnimationGroup(i))->DeleteRotationChannel();
    }
}
    
void
tlPoseAnim::EvaluatePose( tlPose* pose, int frame )
{
    for(int i = 0 ; i < pose->GetNumJoints(); i++)
    {         
        tlJointAnimGroup* joint = FindJoint(pose->GetJoint(i)->GetName());

        if(joint)
        {
            tlPoint translation = joint->GetTranslationChannel()->CalculateValue((float)frame);
            tlQuat rotation = joint->GetRotationChannel()->CalculateValue((float)frame);

            rotation.MakeMatrix(pose->GetJoint(i)->objectMatrix);
            pose->GetJoint(i)->objectMatrix.SetRow(3, translation);
        }
        else
        {
            pose->GetJoint(i)->FillRestPose();
        }
    }
}

void
tlPoseAnim::SetMirrored(bool mirrored)
{
    isMirrored = mirrored;
}

bool
tlPoseAnim::IsMirrored()
{
    return isMirrored;
}

void
tlPoseAnim::SetMirroredAnimName(const char* n)
{
    if (mirroredName)
    {
        strdelete(mirroredName);
    }
    mirroredName = strnew(n);
}

const char* 
tlPoseAnim::GetMirroredAnimName()
{
    return mirroredName;
}

void 
tlPoseAnim::ReMapJoints(const tlSkeleton* sortedSkeleton)
{
    if(sortedSkeleton)
    {   
        int* origJointIds = new int[GetNumAnimationGroups()];
        int* newJointIds = new int[GetNumAnimationGroups()];
      
        int i;
        for (i = 0; i < GetNumAnimationGroups(); i++)
        {
            tlJointAnimGroup* joint = ((tlJointAnimGroup*)GetAnimationGroup(i));
            sortedSkeleton->FindJoint(joint->GetName(), &newJointIds[i]);
            origJointIds[i] = joint->GetGroupId();
        }

        for (i = 0; i < GetNumAnimationGroups(); i++)
        {
            GetAnimationGroup(i)->SetGroupId(newJointIds[i]);
        }
        
        MakeValid();
    }
}



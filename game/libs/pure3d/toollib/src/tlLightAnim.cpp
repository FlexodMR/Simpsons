//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlLightAnim.hpp"

#include "tlDataChunk.hpp"
#include "tlLightAnimChunk16.hpp"
#include "tlString.hpp"

#include "tlTranAnimKeys.hpp"
#include "tlPoseAnimChunk16.hpp"

//*****************************************************************************
// tlLightAnim
//*****************************************************************************
tlLightAnim::tlLightAnim()
{
    SetAnimationType(Pure3DAnimationTypes::LIGHT_LITE);
}

tlLightAnim::tlLightAnim(tlDataChunk *ch)
{
    switch (ch->ID())
    {
        case P3D_LIGHT_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::LIGHT_LITE);
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::LIGHT_LITE);
}

tlLightAnim::~tlLightAnim()
{
}

tlAnimation* 
tlLightAnim::Clone() const
{
    return new tlLightAnim(*this);
}

//===========================================================================
// tlLightAnim::LoadFromChunk16
//===========================================================================
// Description: Old loader code for Light Animation.
//
// Constraints: ** For compatibility only : 
//              ** It is not necessary to modify this for new features.
//
// Parameters:  tlDataChunk* ch: Pointer to the data chunk being loaded.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::LoadFromChunk16(tlDataChunk* ch)
{
    tlLightAnimChunk16* animch = dynamic_cast<tlLightAnimChunk16*>(ch);
    assert(animch);

    SetName(animch->GetAnimName());
    SetFrameRate(animch->GetFrameRate());
    SetNumFrames(animch->GetNumFrames());
    SetCyclic(animch->GetCyclic()==1);
    
    for(int i = 0 ; i < animch->SubChunkCount(); i++)
    {
        tlDataChunk* subch = animch->GetSubChunk(i);
        switch (subch->ID())
        {
            case P3D_LIGHT_ANIM_CHANNEL:
            {
                for(int j = 0 ; j < subch->SubChunkCount(); j++)
                {
                    tlDataChunk* channelch = subch->GetSubChunk(j);
                    switch (channelch->ID())
                    {
                        case P3D_LIGHT_ANIM_COLOUR_CHANNEL:
                        {
                            tlColourChannel* channel = tlChannelManager::LoadInToColourChannel(channelch->GetSubChunk(0));
                            SetColourChannel(*channel);
                            delete channel;

                            break;
                        }
                        case P3D_LIGHT_ANIM_PARAM_CHANNEL:
                        {
                            tlVectorChannel* channel = tlChannelManager::LoadInToVectorChannel(channelch->GetSubChunk(0));
                            SetPositionChannel(*channel);
                            delete channel;

                            break;
                        }
                        case P3D_LIGHT_ANIM_ENABLE_CHANNEL:
                        {
                            tlChannel1DOFChunk16* enableChunk = dynamic_cast<tlChannel1DOFChunk16*>(channelch->GetSubChunk(0));
                            assert(enableChunk);

                            tlBoolChannel channel;

                            unsigned int numFrames = enableChunk->GetNumKeys();
                            unsigned short* tempFrames = enableChunk->GetTimeIndex();
                            float* tempValues = enableChunk->GetFrames();

                            channel.SetNumKeys(numFrames);

                            for (int k = 0; k < (int)numFrames; k++)
                            {
                                channel.SetKey(k,tempFrames[k],(tempValues[k] != 0.0f));
                            }

                            SetEnableChannel(channel);

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

//===========================================================================
// tlLightAnim::CreateKeys
//===========================================================================
// *** Duplicative and unnecessary -- Use ::CreateStandardChannels()
// ***  REMOVED by Bryan Ewert - 19 Dec 2001
//===========================================================================
//void 
//tlLightAnim::CreateKeys(int numKeys)
//{
//    CreateStandardChannels(numKeys);
//}

//===========================================================================
// tlLightAnim::SetKey
//===========================================================================
// Description: Sets a key on all of the following "standard" channels:
//
//                  Colour
//                  Position
//                  Enable
//                  Attenuation
//
// Constraints: The "standard" channels must be allocated with enough keys
//              so that keynum is a valid index.
//
//              Does not set a key for Direction or Spotlight Cone channels.
//
// Parameters:  int keynum: Zero-based index (I think) to the key.
//              tlKeyColour* colour: Pointer to the data for the colour key.
//              tlKey3DOF* pos: Pointer to the data for the Position key.
//              toKey1DOF* enable: Pointer to the data for the Enable key.
//              tlKey3DOF* atten: Pointer to the data for the Attenuation key.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::SetKey(int keynum, tlKeyColour *colour, tlKey3DOF* pos, tlKey1DOF *enable, tlKey3DOF *atten)
{
    tlColourChannel* colourCh = GetColourChannel();
    tlVectorChannel* posCh = GetPositionChannel();
    tlBoolChannel* enableCh = GetEnableChannel();
    tlVectorChannel* attenCh = GetAttenuationChannel();

    if (colourCh)
    {
        colourCh->SetKey(keynum, colour->frame, colour->c);
    }

    if (posCh)
    {
        posCh->SetKey(keynum, pos->frame, tlPoint(pos->x,pos->y,pos->z));
    }

    if (enableCh)
    {
        enableCh->SetKey(keynum, enable->frame, (enable->x!=0.0f));
    }

    if ( ( attenCh != NULL ) && ( atten != NULL ) )
    {
        attenCh->SetKey( keynum, atten->frame, tlPoint( atten->x, atten->y, atten->z ) );
    }

}

void 
tlLightAnim::Scale(float s, tlLight::tlLightType type)
{
    if (type == tlLight::Point)
    {
        tlVectorChannel* paramCh = GetPositionChannel();
        if (paramCh)
        {
            for (unsigned i = 0; i < paramCh->GetNumKeys(); i++)
            {
                short frame;
                tlPoint value;
                if (paramCh->GetKey(i,frame,value))
                {
                    value *= s;
                    paramCh->SetKey(i,frame,value);
                }
            }
        }
    }
}

void 
tlLightAnim::Optimize(float colourtolerance, float paramtolerance, float attentolerance, float dirtolerance, float conetolerance)
{
    tlColourChannel* colourCh = GetColourChannel();
    tlVectorChannel* posCh = GetPositionChannel();
    tlBoolChannel* enableCh = GetEnableChannel();
    tlVectorChannel* attenCh = GetAttenuationChannel();
    tlVectorChannel* dirCh = GetDirectionChannel();
    tlVectorChannel* coneCh = GetConeAngleChannel();

    if (colourCh)
    {
        colourCh->Optimize(colourtolerance);
    }

    if (posCh)
    {
        posCh->Optimize(paramtolerance);
    }

    if (enableCh)
    {
        enableCh->Optimize(0.0f);
    }

    if ( attenCh != NULL )
    {
        attenCh->Optimize(attentolerance);
    }

    if ( dirCh != NULL )
    {
        dirCh->Optimize(dirtolerance);
    }

    if ( coneCh != NULL )
    {
        coneCh->Optimize(conetolerance);
    }
}

void 
tlLightAnim::CreateStandardChannels(int numKeys)
{
    CreateColourChannel(numKeys);
    CreatePositionChannel(numKeys);
    CreateEnableChannel(numKeys);
}

void 
tlLightAnim::CreateColourChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateColourChannel(Pure3DAnimationChannels::Light::COLOUR_CLR, numKeys);
}

void 
tlLightAnim::CreatePositionChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Light::PARAMETER_PARM, numKeys);
}

void 
tlLightAnim::CreateEnableChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateBoolChannel(Pure3DAnimationChannels::Light::ENABLE_EABL, numKeys);
}

//===========================================================================
// tlLightAnim::CreateAttenuationChannel
//===========================================================================
// Description: Creates a Vector Channel to support Attenuation animation.
//              The Channel is pre-allocated with the specified number of keys.
//
// Constraints: The X, Y and Z components of the Vector Channel are used to
//              drive Constant, Linear and Squared falloff, respectively.
//
// Parameters:  int numKeys: The number of keys to allocate for the Channel.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::CreateAttenuationChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node == NULL )
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Light::ATTENUATION_ATTN, numKeys);
}

//===========================================================================
// tlLightAnim::CreateDirectionChannel
//===========================================================================
// Description: Creates a Vector Channel to support direction animation.
//              The Channel is pre-allocated with the specified number of keys.
//
// Constraints: 
//
// Parameters:  int numKeys: The number of keys to allocate for the Channel.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::CreateDirectionChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node == NULL )
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Light::DIRECTION_DIR, numKeys);
}

//===========================================================================
// tlLightAnim::CreateConeAngleChannel
//===========================================================================
// Description: Creates a Vector Channel to support Cone Angle animation.
//              The Channel is pre-allocated with the specified number of keys.
//
// Constraints: The X, Y and Z components of the Vector Channel are used to
//              drive Phi, Theta and Falloff, respectively.
//
// Parameters:  int numKeys: The number of keys to allocate for the Channel.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::CreateConeAngleChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node == NULL )
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateVectorChannel(Pure3DAnimationChannels::Light::CONEANGLE_CONE, numKeys);
}

void 
tlLightAnim::SetColourChannel(const tlColourChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetColourChannel(Pure3DAnimationChannels::Light::COLOUR_CLR,&channel);
}

void 
tlLightAnim::SetPositionChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::Light::PARAMETER_PARM,&channel);
}

void 
tlLightAnim::SetEnableChannel(const tlBoolChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetBoolChannel(Pure3DAnimationChannels::Light::ENABLE_EABL,&channel);
}

//===========================================================================
// tlLightAnim::SetAttenuationChannel
//===========================================================================
// Description: Sets the Vector Channel used for Attenuation animation.
//
// Constraints: 
//
// Parameters:  const tlVectorChannel& channel: The Vector Channel to use
//                                              for Attenuation animation.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::SetAttenuationChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node == NULL )
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel( Pure3DAnimationChannels::Light::ATTENUATION_ATTN, &channel );
}

//===========================================================================
// tlLightAnim::SetDirectionChannel
//===========================================================================
// Description: Sets the Vector Channel used for Direction animation.
//
// Constraints: 
//
// Parameters:  const tlVectorChannel& channel: The Vector Channel to use
//                                              for Direction animation.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::SetDirectionChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node == NULL )
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::Light::DIRECTION_DIR,&channel);
}

//===========================================================================
// tlLightAnim::SetConeAngleChannel
//===========================================================================
// Description: Sets the Vector Channel used for Cone Angle animation.
//
// Constraints: The X, Y and Z components of the Vector Channel are used to
//              drive Phi, Theta and Falloff, respectively.
//
// Parameters:  const tlVectorChannel& channel: The Vector Channel to use
//                                              for Cone Angle animation.
//
// Return:      (void)
//
//===========================================================================
void 
tlLightAnim::SetConeAngleChannel(const tlVectorChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node == NULL )
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetVectorChannel(Pure3DAnimationChannels::Light::CONEANGLE_CONE,&channel);
}

tlColourChannel* 
tlLightAnim::GetColourChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetColourChannel(Pure3DAnimationChannels::Light::COLOUR_CLR);
    }
    return NULL;
}

tlVectorChannel* 
tlLightAnim::GetPositionChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Light::PARAMETER_PARM);
    }
    return NULL;
}

tlBoolChannel* 
tlLightAnim::GetEnableChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetBoolChannel(Pure3DAnimationChannels::Light::ENABLE_EABL);
    }
    return NULL;
}

//===========================================================================
// tlLightAnim::GetAttenuationChannel
//===========================================================================
// Description: Returns the Vector Channel used for Attenuation animation.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (tlVectorChannel*): Pointer to the Vector Channel used for
//                                  Attenuation animation, if it exists;
//                                  NULL if the Channel does not exist.
//
//===========================================================================
tlVectorChannel* 
tlLightAnim::GetAttenuationChannel( void )
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Light::ATTENUATION_ATTN );
    }
    return NULL;
}

//===========================================================================
// tlLightAnim::GetDirectionChannel
//===========================================================================
// Description: Returns the Vector Channel used for Direction animation.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (tlVectorChannel*): Pointer to the Vector Channel used for
//                                  Direction animation, if it exists;
//                                  NULL if the Channel does not exist.
//
//===========================================================================
tlVectorChannel* 
tlLightAnim::GetDirectionChannel( void )
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Light::DIRECTION_DIR);
    }
    return NULL;
}

//===========================================================================
// tlLightAnim::GetConeAngleChannel
//===========================================================================
// Description: Returns the Vector Channel used for Cone Angle animation.
//
// Constraints: The X, Y and Z components of the Vector Channel are used to
//              drive Phi, Theta and Falloff, respectively.
//
// Parameters:  (void)
//
// Return:      (tlVectorChannel*): Pointer to the Vector Channel used for
//                                  Cone Angle animation, if it exists;
//                                  NULL if the Channel does not exist.
//
//===========================================================================
tlVectorChannel* 
tlLightAnim::GetConeAngleChannel( void )
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        return node->GetVectorChannel(Pure3DAnimationChannels::Light::CONEANGLE_CONE);
    }
    return NULL;
}

void
tlLightAnim::DeleteColourChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteColourChannel(Pure3DAnimationChannels::Light::COLOUR_CLR);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlLightAnim::DeletePositionChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Light::PARAMETER_PARM);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void
tlLightAnim::DeleteEnableChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteBoolChannel(Pure3DAnimationChannels::Light::ENABLE_EABL);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

//===========================================================================
// tlLightAnim::DeleteAttenuationChannel
//===========================================================================
// Description: Deletes the Vector Channel used to support Attenuation animation.
//
// Constraints: Calling this function when no Attenuation Channel exists will
//              have no effect.
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
tlLightAnim::DeleteAttenuationChannel( void )
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Light::ATTENUATION_ATTN);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

//===========================================================================
// tlLightAnim::DeleteDirectionChannel
//===========================================================================
// Description: Deletes the Vector Channel used to support Direction animation.
//
// Constraints: Calling this function when no Direction Channel exists will
//              have no effect.
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
tlLightAnim::DeleteDirectionChannel( void )
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Light::DIRECTION_DIR);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

//===========================================================================
// tlLightAnim::DeleteConeAngleChannel
//===========================================================================
// Description: Deletes the Vector Channel used to support Cone Angle animation.
//
// Constraints: Calling this function when no Cone Angle Channel exists will
//              have no effect.
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
tlLightAnim::DeleteConeAngleChannel( void )
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if ( node != NULL )
    {
        node->DeleteVectorChannel(Pure3DAnimationChannels::Light::CONEANGLE_CONE);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}


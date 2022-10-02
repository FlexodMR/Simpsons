//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlTextureAnim.hpp"

#include "tlDataChunk.hpp"
#include "tlTextureAnimChunk16.hpp"
#include "tlEntityChannelChunk16.hpp"
#include "tlShader.hpp"
#include "tlTexture.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"

#include <stdio.h>

//*****************************************************************************
// tlTextureAnim
//*****************************************************************************
tlTextureAnim::tlTextureAnim()
{
    SetAnimationType(Pure3DAnimationTypes::TEXTURE_TEX);
}

tlTextureAnim::tlTextureAnim(tlDataChunk *ch)
{
    switch (ch->ID())
    {
        case P3D_TEXTURE_ANIM:
        {
            LoadFromChunk16(ch);
            break;
        }
        case Pure3D::Animation::AnimationData::ANIMATION:
        {
            LoadFromChunk(ch);
            assert(GetAnimationType()==Pure3DAnimationTypes::TEXTURE_TEX);
            break;
        }
        default:
        {
            assert(0);
            break;
        }
    }
    SetAnimationType(Pure3DAnimationTypes::TEXTURE_TEX);
}

tlTextureAnim::~tlTextureAnim()
{
}

tlAnimation* 
tlTextureAnim::Clone() const
{
    return new tlTextureAnim(*this);
}

void 
tlTextureAnim::LoadFromChunk16(tlDataChunk *ch)
{
    tlTextureAnimChunk16* animch = dynamic_cast<tlTextureAnimChunk16*>(ch);
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
            case P3D_TEXTURE_ANIM_CHANNEL:
            {
                for(int j = 0 ; j < subch->SubChunkCount() ; j++)
                {
                    tlDataChunk* channelch = subch->GetSubChunk(i);
                    switch (channelch->ID())
                    {
                        case P3D_ENTITY_ANIM_CHANNEL:
                        {
                            tlEntityChannelChunk16* texChunk = dynamic_cast<tlEntityChannelChunk16*>(channelch);
                            assert(texChunk);

                            tlStringChannel* channel = tlChannelManager::LoadInToStringChannel(texChunk);
                            SetTextureChannel(*channel);
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
tlTextureAnim::CreateTextureChannel(int numKeys)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->CreateStringChannel(Pure3DAnimationChannels::Texture::TEXTURE_TEX, numKeys, true);
    node->GetStringChannel(Pure3DAnimationChannels::Texture::TEXTURE_TEX)->SetIsEntityChannel(true);
}

void 
tlTextureAnim::SetTextureChannel(const tlStringChannel& channel)
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (!node)
    {
        node = AddAnimationGroup(0,GetName());
    }
    node->SetStringChannel(Pure3DAnimationChannels::Texture::TEXTURE_TEX,&channel);
    node->GetStringChannel(Pure3DAnimationChannels::Texture::TEXTURE_TEX)->SetIsEntityChannel(true);
}

tlStringChannel* 
tlTextureAnim::GetTextureChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        return node->GetStringChannel(Pure3DAnimationChannels::Texture::TEXTURE_TEX);
    }
    return NULL;
}

void
tlTextureAnim::DeleteTextureChannel()
{
    tlAnimationGroup* node = GetAnimationGroup(0);
    if (node)
    {
        node->DeleteStringChannel(Pure3DAnimationChannels::Texture::TEXTURE_TEX);
        if (node->GetNumChannels()==0)
        {
            DeleteAnimationGroup(0);
        }
    }
}

void 
tlTextureAnim::ResolveReferences(tlInventory* inv)
{
    tlStringChannel* channel = GetTextureChannel();

    int numFrames = channel->GetNumKeys();
    tlTexture** tempTextures = new tlTexture*[numFrames];

    for (int i = 0; i < numFrames; i++)
    {
        bool unique = true;
        short frame;
        tlString value;
        channel->GetKey(i,frame,value);
        tempTextures[i] = toollib_find<tlTexture>(inv, value.GetString());
        assert(tempTextures[i]);
        for (int j = 0; j < i; j++)
        {
            if (tempTextures[i]->UID()==tempTextures[j]->UID())
            {
                unique = false;
                break;
            }
        }
        if (unique)
        {
            textures.Append(tempTextures[i]);
            tempTextures[i]->ResolveReferences(inv);
        }
    }

    delete [] tempTextures;
}

void 
tlTextureAnim::MarkReferences(int m)
{
    for(int i = 0; i < textures.Count(); i++)
    {
        if(textures[i])
        {
            textures[i]->Mark(m);
            textures[i]->MarkReferences(m);
        }
    }
}

bool 
tlTextureAnim::FindReferenceMark(int m)
{
    bool ret = false;

    if(GetMark() == m)
    {
        ret = true;
    }
    else
    {
        for(int i = 0; i < textures.Count(); i++)
        {
            if(textures[i])
            {
                ret = ret || textures[i]->FindReferenceMark(m);
            }
        }
    }

    return ret;
}

    


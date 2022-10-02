//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <assert.h>

#include "tlLoadManager.hpp"
#include "tlFile.hpp"
#include "tlEntity.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"

//toollib objects with loaders
#include "tlAnimation.hpp"
#include "tlAnimatedObject.hpp"
#include "tlBillboardObject.hpp"
#include "tlCamera.hpp"
#include "tlCollisionObject.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlExportInfo.hpp"
#include "tlExpression.hpp"
#include "tlFlexibleJoint.hpp"
#include "tlFlexibleObject.hpp"
#include "tlFont.hpp"
#include "tlFrameController.hpp"
#include "tlGameAttr.hpp"
#include "tlHistory.hpp"
#include "tlImage.hpp"
#include "tlLight.hpp"
#include "tlLightGroup.hpp"
#include "tlLocator.hpp"
#include "tlMultiController.hpp"
#include "tlOpticEffect.hpp"
#include "tlParticleSystem.hpp"
#include "tlPhysicsObject.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlScenegraph.hpp"
#include "tlShader.hpp"
#include "tlSkeleton.hpp"
#include "tlSkin.hpp"
#include "tlSprite.hpp"
#include "tlTexture.hpp"

//*****************************************************************************
// tlEntityChunk
//      used to hold data chunks in the inventory that toollib doesn't know about
//*****************************************************************************
int tlEntityChunk::currentEntityCounter = 0;

tlEntityChunk::tlEntityChunk() : 
    tlEntity(),
    chunk(NULL)
{
    char tempName[256];
    sprintf(tempName,"EntityChunk%d",currentEntityCounter);
    SetName(tempName);
    currentEntityCounter++;
}

tlEntityChunk::tlEntityChunk(tlDataChunk* ch) :
    tlEntity(),
    chunk(NULL)
{
    char tempName[256];
    sprintf(tempName,"EntityChunk%d",currentEntityCounter);
    SetName(tempName);
    currentEntityCounter++;

    LoadFromChunk(ch);
}

tlEntityChunk::~tlEntityChunk()
{
    delete chunk;
}

void
tlEntityChunk::LoadFromChunk(tlDataChunk* ch)
{
    if (chunk)
    {
        delete chunk;
        chunk = NULL;
    }
    if (ch)
    {
        chunk = ch->Copy();
    }
}

tlDataChunk*
tlEntityChunk::Chunk()
{
    if (chunk)
    {
        return chunk->Copy();
    }
    return NULL;
}

//*****************************************************************************
// tlEntityLoader
//*****************************************************************************
tlEntityLoader::tlEntityLoader(unsigned id) :
    chunkID(id)
{
}

bool 
tlEntityLoader::CheckChunkID(unsigned id)
{
    return id == chunkID;
}
  
//*****************************************************************************
// tlLoadManager
//*****************************************************************************
tlLoadManager::tlLoadManager()
{
}

tlLoadManager::~tlLoadManager()
{
    for (int i = 0; i < loaders.Count(); i++)
    {
        delete loaders[i];
        loaders[i] = NULL;
    }
    loaders.Delete(0,loaders.Count());
}

tlLoadStatus 
tlLoadManager::Load(tlFile* file, tlInventory* inv)
{
    if ((!inv)||(!file))
        return LOAD_ERROR;

    tlDataChunk* inchunk = new tlDataChunk(file);

    tlLoadStatus result = Load(inchunk,inv);
  
    delete inchunk;   
    return result;
}

tlLoadStatus 
tlLoadManager::Load(tlDataChunk* inchunk, tlInventory* inv)
{
    if ((!inv)||(!inchunk))
        return LOAD_ERROR;

    for(int i = 0; i < inchunk->SubChunkCount(); i++)
    {
        tlDataChunk* chunk = inchunk->GetSubChunk(i);
        
        bool loaded = false;
        for (int j = 0; j < loaders.Count(); j++)
        {
            if (loaders[j]->CheckChunkID(chunk->ID()))
            {
                tlEntity* entity = loaders[j]->Load(chunk);
                if (entity==NULL)
                {
                    delete entity;
                    return LOAD_ERROR;
                }
                else if (inv->Store(entity)==-1)
                {
                    printf("WARNING : there are 2 entities in the inventory with the name %s.  Deleting second one.\n",entity->GetName());
                    delete entity;
                    return LOAD_ERROR;
                }
                loaded = true;
                break;
            }
        }
        if (!loaded)
        {
            tlEntityChunk* entity = new tlEntityChunk(chunk);
            inv->Store(entity);                
        }
    }
    
    return LOAD_OK;
}

void
tlLoadManager::InstallDefaultLoaders()
{
    AddLoader(new tlAnimationLoader);
    AddLoader(new tlAnimatedObjectFactoryLoader);
    AddLoader(new tlAnimatedObjectLoader);
    AddLoader(new tlBillboardObjectLoader);
    AddLoader(new tlCameraLoader);
    AddLoader(new tlCollisionObjectLoader);
    AddLoader(new tlCompositeDrawableLoader);
    AddLoader(new tlExportInfoLoader);
    AddLoader(new tlExpressionGroupLoader);
    AddLoader(new tlExpressionMixerLoader);
    AddLoader(new tlFlexibleJointLoader);
    AddLoader(new tlFlexibleObjectLoader);
    AddLoader(new tlFontLoader);
    AddLoader(new tlFrameControllerLoader);
    AddLoader(new tlGameAttrLoader);
    AddLoader(new tlHistoryLoader);
    AddLoader(new tlImageLoader);
    AddLoader(new tlLightLoader);
    AddLoader(new tlLightGroupLoader);
    AddLoader(new tlLocatorLoader);
    AddLoader(new tlMultiControllerLoader);
    AddLoader(new tlLensFlareGroupLoader);
    AddLoader(new tlParticleSystemFactoryLoader);
    AddLoader(new tlParticleSystemLoader);
    AddLoader(new tlPhysicsObjectLoader);
    AddLoader(new tlPrimGroupMeshLoader);
    AddLoader(new tlScenegraphLoader);
    AddLoader(new tlShaderLoader);
    AddLoader(new tlSkeletonLoader);
    AddLoader(new tlSkinLoader);
    AddLoader(new tlSpriteLoader);
    AddLoader(new tlTextureLoader);
}

tlEntityLoader* 
tlLoadManager::AddLoader(tlEntityLoader* loader)
{
    if (loader)
    {
        loaders.Append(loader);
        return loader;
    }
    return NULL;
}

tlEntityLoader* 
tlLoadManager::GetLoader(unsigned chunkID)
{
    for (int i = 0; i < loaders.Count(); i++)
    {
        if (loaders[i]->CheckChunkID(chunkID))
        {
            return loaders[i];
        }
    }
    return NULL;
}

void
tlLoadManager::RemoveLoader(unsigned chunkID)
{
    for (int i = 0; i < loaders.Count(); i++)
    {
        if (loaders[i]->CheckChunkID(chunkID))
        {
            delete loaders[i];
            loaders[i]=NULL;
            loaders.Delete(i,1);
            return;
        }
    }
}

void 
tlLoadManager::RemoveAllLoaders()
{
    for (int i = 0; i < loaders.Count(); i++)
    {
        delete loaders[i];
        loaders[i]=NULL;
    }
    loaders.Delete(0,loaders.Count());
}


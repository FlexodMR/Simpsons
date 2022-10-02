//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlOpticEffect.hpp"
#include "tlOpticEffectChunk.hpp"

#include "psenum.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlShader.hpp"
#include "tlString.hpp"

static const int LENS_FLARE_VERSION = 0;
static const int LENS_FLARE_GROUP_VERSION = 0;

//*****************************************************************************
// tlLensFlare
//*****************************************************************************
tlLensFlare::tlLensFlare() :
    colour(1.0f,1.0f,1.0f,1.0f),
    distance(0.0f),
    width(1.0f),
    height(1.0f)
{
    //bottom left
    uv[0].u = 0.0f;
    uv[0].v = 0.0f;
    //bottom right
    uv[1].u = 0.0f;
    uv[1].v = 1.0f;
    //top right
    uv[2].u = 1.0f;
    uv[2].v = 1.0f;
    //top left
    uv[3].u = 1.0f;
    uv[3].v = 0.0f;
    //uv offset
    uvOffset.u = 0.0f;
    uvOffset.v = 0.0f;
}

tlLensFlare::tlLensFlare(const tlLensFlare& flare)
{
    *this = flare;
}

tlLensFlare::tlLensFlare(tlDataChunk* ch) :
    colour(1.0f,1.0f,1.0f,1.0f),
    distance(0.0f),
    width(1.0f),
    height(1.0f)
{
    //bottom left
    uv[0].u = 0.0f;
    uv[0].v = 0.0f;
    //bottom right
    uv[1].u = 0.0f;
    uv[1].v = 1.0f;
    //top right
    uv[2].u = 1.0f;
    uv[2].v = 1.0f;
    //top left
    uv[3].u = 1.0f;
    uv[3].v = 0.0f;
    //uv offset
    uvOffset.u = 0.0f;
    uvOffset.v = 0.0f;

    LoadFromChunk(ch);
}

tlLensFlare::~tlLensFlare()
{
}

tlLensFlare& 
tlLensFlare::operator=(const tlLensFlare& flare)
{
    colour = flare.colour;
    uv[0] = flare.uv[0];
    uv[1] = flare.uv[1];
    uv[2] = flare.uv[2];
    uv[3] = flare.uv[3];
    uvOffset = flare.uvOffset;
    distance = flare.distance;
    width = flare.width;
    height = flare.height;
    
    return *this;
}

void 
tlLensFlare::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::OpticEffect::LENS_FLARE);

    tlLensFlareChunk* chunk = dynamic_cast<tlLensFlareChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() != LENS_FLARE_VERSION);
  
    SetName(chunk->GetName());
    SetColour(chunk->GetColour());
    SetUV(0,chunk->GetUv0());
    SetUV(1,chunk->GetUv1());
    SetUV(2,chunk->GetUv2());
    SetUV(3,chunk->GetUv3());
    SetUVOffset(chunk->GetUvOffset());
    SetDistance(chunk->GetDistance());
    SetWidth(chunk->GetWidth());
    SetHeight(chunk->GetHeight());
}

tlDataChunk* 
tlLensFlare::Chunk()
{
    tlLensFlareChunk* chunk = new tlLensFlareChunk;

    chunk->SetVersion(LENS_FLARE_VERSION);
    chunk->SetName(GetName());
    chunk->SetColour(colour.ULong());
    chunk->SetUv0(uv[0]);
    chunk->SetUv1(uv[1]);
    chunk->SetUv2(uv[2]);
    chunk->SetUv3(uv[3]);
    chunk->SetUvOffset(uvOffset);
    chunk->SetDistance(distance);
    chunk->SetWidth(width);
    chunk->SetHeight(height);

    return chunk;
}

void 
tlLensFlare::SetUV(unsigned int index, float u, float v)
{
    assert(index<=3);

    uv[index].u = u;
    uv[index].v = v;
}

void 
tlLensFlare::SetUV(unsigned int index, const tlUV& p)
{
    assert(index<=3);
    uv[index] = p;
}

tlUV
tlLensFlare::GetUV(unsigned int index) const
{
    assert(index<=3);    
    return uv[index];
}

void
tlLensFlare::GetUV(unsigned int index, float& u, float& v) const
{
    assert(index<=3);
    u = uv[index].u;
    v = uv[index].v;
}

void 
tlLensFlare::SetUVOffset(float u, float v)
{
    uvOffset.u = u;
    uvOffset.v = v;
}

void 
tlLensFlare::SetUVOffset(const tlUV& p)
{
    uvOffset = p;
}

tlUV
tlLensFlare::GetUVOffset() const
{
    return uvOffset;
}

void
tlLensFlare::GetUVOffset(float& u, float& v) const
{
    u = uvOffset.u;
    v = uvOffset.v;
}

//*****************************************************************************
// tlLensFlareGroup
//*****************************************************************************
tlLensFlareGroup::tlLensFlareGroup() :
    shaderName(NULL),
    zTest(false),
    zWrite(false),
    fog(false),
    sourceRadius(0.25f),
    edgeRadius(0.0f),
    shaderPtr(NULL)
{
}

tlLensFlareGroup::tlLensFlareGroup(const tlLensFlareGroup& group) :
    zTest(group.zTest),
    zWrite(group.zWrite),
    fog(group.fog),
    sourceRadius(group.sourceRadius),
    edgeRadius(group.edgeRadius),
    shaderPtr(NULL)
{
    SetShaderName(group.shaderName);
}

tlLensFlareGroup::tlLensFlareGroup(tlDataChunk* ch) :
    shaderName(NULL),
    zTest(false),
    zWrite(false),
    fog(false),
    sourceRadius(0.25f),
    edgeRadius(0.0f),
    shaderPtr(NULL)
{
    if (ch->ID() == Pure3D::OpticEffect::LENS_FLARE_PARENT_V14)
    {
        ConvertFromV14LensFlareParentChunk(ch);
    }
    else
    {
        LoadFromChunk(ch);
    }
}

tlLensFlareGroup::~tlLensFlareGroup()
{
    if (shaderName != 0)
    {
        strdelete(shaderName);
    }
}

void
tlLensFlareGroup::ConvertFromV14LensFlareParentChunk(tlDataChunk* ch)
{
    tlLensFlareParentV14Chunk* chunk = dynamic_cast<tlLensFlareParentV14Chunk*>(ch);
    assert(chunk != 0);

    SetName(chunk->GetName());
    SetSourceRadius(chunk->GetSourceRadius());
    SetEdgeRadius(chunk->GetDistanceCutOff());

    int subChunkCount = chunk->SubChunkCount();
    for (int i=0;i<subChunkCount;i++)
    {
        tlDataChunk* subChunk = chunk->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::OpticEffect::LENS_FLARE_V14:
            {
                tlLensFlareV14Chunk* fch = dynamic_cast<tlLensFlareV14Chunk*>(subChunk);
                assert(fch != 0);

                SetShaderName(fch->GetShader());

                char flareName[256];
                sprintf(flareName,"flare_%d",flares.Count());

                tlLensFlare* flare = new tlLensFlare;
                flare->SetName(flareName);
                flare->SetColour(fch->GetColour());
                flare->SetDistance(fch->GetDistance());
                flare->SetWidth(fch->GetWidth());
                flare->SetHeight(fch->GetHeight());

                flares.Append(flare);
                break;
            }
            default:
            {
                break;
            }
        }
    }
}

void 
tlLensFlareGroup::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::OpticEffect::LENS_FLARE_GROUP);
    tlLensFlareGroupChunk* chunk = dynamic_cast<tlLensFlareGroupChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == LENS_FLARE_GROUP_VERSION);

    SetName(chunk->GetName());
    SetShaderName(chunk->GetShaderName());
    SetZTest(chunk->GetZTest()==1);
    SetZWrite(chunk->GetZWrite()==1);
    SetFog(chunk->GetFog()==1);
    SetSourceRadius(chunk->GetSourceRadius());
    SetEdgeRadius(chunk->GetEdgeRadius());

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {      
            case Pure3D::OpticEffect::LENS_FLARE :
            {
                tlLensFlare* flare = new tlLensFlare(subChunk);
                flares.Append(flare);
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlLensFlareGroup::Chunk()
{
    tlLensFlareGroupChunk* chunk = new tlLensFlareGroupChunk;
    
    chunk->SetVersion(LENS_FLARE_GROUP_VERSION);
    chunk->SetName(GetName());
    chunk->SetShaderName(shaderName);
    chunk->SetZTest(zTest);
    chunk->SetZWrite(zWrite);
    chunk->SetFog(fog);
    chunk->SetSourceRadius(sourceRadius);
    chunk->SetEdgeRadius(edgeRadius);
    chunk->SetNumFlares(flares.Count());

    for (int i = 0; i < flares.Count(); i++)
    {
        chunk->AppendSubChunk(flares[i]->Chunk());
    }

    return chunk;
}

void 
tlLensFlareGroup::SetShaderName(const char* name)
{
    if (shaderName != 0)
    {
        strdelete(shaderName);
    }
    shaderName = strnew(name);
}

int 
tlLensFlareGroup::GetNumLensFlares() const
{
    return flares.Count();
}

int
tlLensFlareGroup::FindLensFlareIndex(const char* n) const
{
    int i;
    for (i = 0; i < flares.Count(); i++)
    {
        if (strcmp(flares[i]->GetName(),n)==0)
        {
            return i;
        }
    }
    return -1;
}

tlLensFlare*
tlLensFlareGroup::AddLensFlare(const char* n)
{
    tlLensFlare* temp = new tlLensFlare;
    temp->SetName(n);
    flares.Append(temp);
    return temp;
}

void 
tlLensFlareGroup::SetLensFlare(int index, const tlLensFlare& flare)
{
    if ((index>=0)&&(index<flares.Count()))
    {
        *(flares[index]) = flare;
    }
}

tlLensFlare* 
tlLensFlareGroup::GetLensFlare(int index) const
{
    if ((index>=0)&&(index<flares.Count()))
    {
        return flares[index];
    }
    return NULL;
}

void 
tlLensFlareGroup::RemoveLensFlare(int index)
{
    if (index < flares.Count())
    {
        delete flares[index];
        flares[index] = NULL;
        flares.Delete(index,1);
    }
}

void 
tlLensFlareGroup::ResolveReferences(tlInventory* inv)
{
    shaderPtr = toollib_find<tlShader>(inv, shaderName);
    shaderPtr->ResolveReferences(inv);
    for (int i = 0; i < flares.Count(); i++)
    {
        flares[i]->ResolveReferences(inv);
    }
}

void 
tlLensFlareGroup::MarkReferences(int m)
{
    if(shaderPtr)
    {
        shaderPtr->Mark(m);
        shaderPtr->MarkReferences(m);
    }

    for (int i = 0; i < flares.Count(); i++)
    {
        flares[i]->MarkReferences(m);
    }
}

bool 
tlLensFlareGroup::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if(shaderPtr && shaderPtr->FindReferenceMark(m))
    {
        return true;
    }
    for (int i = 0; i < flares.Count(); i++)
    {
        if(flares[i]->FindReferenceMark(m))
        {
            return true;
        }
    }
    return false;
}

//*****************************************************************************
// tlLensFlareGroupLoader
//*****************************************************************************
tlLensFlareGroupLoader::tlLensFlareGroupLoader() : 
    tlEntityLoader(0)
{
}

bool
tlLensFlareGroupLoader::CheckChunkID(unsigned id)
{
    switch(id)
    {
        case Pure3D::OpticEffect::LENS_FLARE_PARENT_V14:
        case Pure3D::OpticEffect::LENS_FLARE_GROUP:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }
}

tlEntity* 
tlLensFlareGroupLoader::Load(tlDataChunk* chunk)
{
    switch(chunk->ID())
    {
        case Pure3D::OpticEffect::LENS_FLARE_PARENT_V14:
        case Pure3D::OpticEffect::LENS_FLARE_GROUP:
        {
            return new tlLensFlareGroup(chunk);
            break;
        }
        default:
        {
            return NULL;
            break;
        }
    }
}


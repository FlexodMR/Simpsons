//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlBillboardObject.hpp"

#include "tlString.hpp"
#include "tlShader.hpp"
#include "tlInventory.hpp"
#include "tlDataChunk.hpp"
#include "tlBillboardObjectChunk.hpp"
#include "tlOpticEffectChunk.hpp"

#include <string.h>
 
static const int BILLBOARD_QUAD_VERSION = 2;
static const int BILLBOARD_QUAD_GROUP_VERSION = 0;
static const int BILLBOARD_DISPLAY_INFO_VERSION = 0;
static const int BILLBOARD_PERSPECTIVE_INFO_VERSION = 0;

//*****************************************************************************
// tlBillboardObject
//*****************************************************************************
tlBillboardObject::tlBillboardObject():
    tlEntity()
{
}

tlBillboardObject::tlBillboardObject(const tlBillboardObject& obj):
    tlEntity()
{
    SetName(obj.GetName());                                            
}

tlBillboardObject::tlBillboardObject(tlDataChunk* ch):
    tlEntity()
{
    LoadFromChunk(ch);
}

tlBillboardObject::~tlBillboardObject()
{
}

//*****************************************************************************
// tlBillboardQuad
//*****************************************************************************
tlBillboardQuad::tlBillboardQuad():
    tlBillboardObject(),
    billboardMode(p3dBillboardConstants::BillboardMode::ALL_AXIS),
    translation(0.0f,0.0f,0.0f),
    rotation(1.0f,0.0f,0.0f,0.0f),
    colour(1.0f,1.0f,1.0f,1.0f),
    cutOffMode(p3dBillboardConstants::CutOffMode::NONE),
    sourceRange(0.0f),
    edgeRange(0.0f),
    width(1.0f),
    height(1.0f),
    distance(0.0f),
    perspective(true)
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
    //uv offset range
    uvOffsetRange.u = 0.0f;
    uvOffsetRange.v = 0.0f;
}

tlBillboardQuad::tlBillboardQuad(const tlBillboardQuad& quad):
    tlBillboardObject(quad),
    billboardMode(quad.billboardMode),
    translation(quad.translation),
    rotation(quad.rotation),
    colour(quad.colour),
    cutOffMode(quad.cutOffMode),
    sourceRange(quad.sourceRange),
    edgeRange(quad.edgeRange),
    width(quad.width),
    height(quad.height),
    distance(quad.distance),
    perspective(quad.perspective)
{
    uv[0] = quad.uv[0];
    uv[1] = quad.uv[1];
    uv[2] = quad.uv[2];
    uv[3] = quad.uv[3];
    uvOffset = quad.uvOffset;
    uvOffsetRange = quad.uvOffsetRange;
}

tlBillboardQuad::tlBillboardQuad(tlDataChunk* ch):
    tlBillboardObject(),
    billboardMode(p3dBillboardConstants::BillboardMode::ALL_AXIS),
    translation(0.0f,0.0f,0.0f),
    rotation(1.0f,0.0f,0.0f,0.0f),
    colour(1.0f,1.0f,1.0f,1.0f),
    cutOffMode(p3dBillboardConstants::CutOffMode::NONE),
    sourceRange(0.0f),
    edgeRange(0.0f),
    width(1.0f),
    height(1.0f),
    distance(0.0f),
    perspective(true)
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
    //uv offset range
    uvOffsetRange.u = 0.0f;
    uvOffsetRange.v = 0.0f;

    LoadFromChunk(ch);
}

tlBillboardQuad::~tlBillboardQuad()
{
}

void 
tlBillboardQuad::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::BillboardObject::QUAD);
    tlBillboardQuadChunk* chunk = dynamic_cast<tlBillboardQuadChunk*>(ch);
    assert(chunk != 0);
    assert((int)chunk->GetVersion() == BILLBOARD_QUAD_VERSION);

    SetName(chunk->GetName());
    SetBillboardMode(chunk->GetBillboardMode());
    SetTranslation(chunk->GetTranslation());
    SetColour(tlColour(chunk->GetColour()));
    SetUV(0,chunk->GetUv0());
    SetUV(1,chunk->GetUv1());
    SetUV(2,chunk->GetUv2());
    SetUV(3,chunk->GetUv3());
    SetWidth(chunk->GetWidth());
    SetHeight(chunk->GetHeight());
    SetDistance(chunk->GetDistance());
    SetUVOffset(chunk->GetUVOffset());

    int subChunkCount = ch->SubChunkCount();
    for (int i = 0; i < subChunkCount; i++)
    {
        tlDataChunk* subChunk = ch->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::BillboardObject::DISPLAY_INFO :
            {
                tlBillboardDisplayInfoChunk* infoChunk = dynamic_cast<tlBillboardDisplayInfoChunk*> (subChunk);
                assert(infoChunk);
                assert(infoChunk->GetVersion() == BILLBOARD_DISPLAY_INFO_VERSION);

                SetRotation(infoChunk->GetRotation());
                SetCutOffMode(infoChunk->GetCutOffMode());
                SetUVOffsetRange(infoChunk->GetUVOffsetRange());
                SetSourceRange(infoChunk->GetSourceRange());
                SetEdgeRange(infoChunk->GetEdgeRange());
            }
            case Pure3D::BillboardObject::PERSPECTIVE_INFO :
            {
                tlBillboardPerspectiveInfoChunk* infoChunk = dynamic_cast<tlBillboardPerspectiveInfoChunk*> (subChunk);
                assert(infoChunk);
                assert(infoChunk->GetVersion() == BILLBOARD_PERSPECTIVE_INFO_VERSION);

                SetPerspectiveScale(infoChunk->GetPerspective()!=0);
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlBillboardQuad::Chunk()
{
    tlBillboardQuadChunk* chunk = new tlBillboardQuadChunk;
    
    chunk->SetVersion(BILLBOARD_QUAD_VERSION);
    chunk->SetName(GetName());
    chunk->SetBillboardMode(billboardMode);
    chunk->SetTranslation(translation);
    chunk->SetColour(colour.ULong());
    chunk->SetUv0(uv[0]);
    chunk->SetUv1(uv[1]);
    chunk->SetUv2(uv[2]);
    chunk->SetUv3(uv[3]);
    chunk->SetUVOffset(uvOffset);
    chunk->SetWidth(width);
    chunk->SetHeight(height);
    chunk->SetDistance(distance);

    tlBillboardDisplayInfoChunk* displayChunk = new tlBillboardDisplayInfoChunk;
    displayChunk->SetVersion(BILLBOARD_DISPLAY_INFO_VERSION);
    displayChunk->SetRotation(rotation);
    displayChunk->SetCutOffMode(cutOffMode);
    displayChunk->SetUVOffsetRange(uvOffsetRange);
    displayChunk->SetSourceRange(sourceRange);
    displayChunk->SetEdgeRange(edgeRange);
    chunk->AppendSubChunk(displayChunk);
    
    tlBillboardPerspectiveInfoChunk* perspectiveChunk = new tlBillboardPerspectiveInfoChunk;
    perspectiveChunk->SetVersion(BILLBOARD_PERSPECTIVE_INFO_VERSION);
    perspectiveChunk->SetPerspective(perspective);
    chunk->AppendSubChunk(perspectiveChunk);

    return chunk;
}

void 
tlBillboardQuad::SetBillboardMode(const tlFourCC& mode)
{
    billboardMode = mode;
}

tlFourCC
tlBillboardQuad::GetBillboardMode() const
{
    return billboardMode;
}

void 
tlBillboardQuad::SetTranslation(const tlPoint& trans)
{
    translation = trans;
}

void 
tlBillboardQuad::SetTranslation(float x, float y, float z)
{
    translation.x = x;
    translation.y = y;
    translation.z = z;
}
    
tlPoint
tlBillboardQuad::GetTranslation() const
{
    return translation;
}
 
void 
tlBillboardQuad::SetRotation(const tlQuat& rot)
{
    rotation = rot;
}

void 
tlBillboardQuad::SetRotation(float x, float y, float z)
{
    rotation = EulerToQuat(tlPoint(x,y,z));
}
    
tlQuat
tlBillboardQuad::GetRotation() const
{
    return rotation;
}
 
void 
tlBillboardQuad::SetColour(float r, float g, float b, float a)
{
    colour.red = r;
    colour.green = g;
    colour.blue = b;
    colour.alpha = a;
}
    
void 
tlBillboardQuad::SetColour(const tlColour& c)
{ 
    colour = c; 
}

tlColour
tlBillboardQuad::GetColour() const
{
    return colour;
}

void 
tlBillboardQuad::SetUV(int index, float u, float v)
{
    assert((index>=0)&&(index<=3));

    uv[index].u = u;
    uv[index].v = v;
}

void 
tlBillboardQuad::SetUV(int index, const tlUV& p)
{
    assert((index>=0)&&(index<=3));

    uv[index] = p;
}

tlUV
tlBillboardQuad::GetUV(int index) const
{
    assert((index>=0)&&(index<=3));
    
    return uv[index];
}

void 
tlBillboardQuad::SetUVOffset(float u, float v)
{
    uvOffset.u = u;
    uvOffset.v = v;
}

void 
tlBillboardQuad::SetUVOffset(const tlUV& p)
{
    uvOffset = p;
}

tlUV
tlBillboardQuad::GetUVOffset() const
{
    return uvOffset;
}

void
tlBillboardQuad::SetCutOffMode(const tlFourCC& mode)
{
    cutOffMode = mode;
}

tlFourCC
tlBillboardQuad::GetCutOffMode() const
{
    return cutOffMode;
}

void 
tlBillboardQuad::SetUVOffsetRange(float u, float v)
{
    uvOffsetRange.u = u;
    uvOffsetRange.v = v;
}

void 
tlBillboardQuad::SetUVOffsetRange(const tlUV& p)
{
    uvOffsetRange = p;
}

tlUV
tlBillboardQuad::GetUVOffsetRange() const
{
    return uvOffsetRange;
}

void 
tlBillboardQuad::SetSourceRange(float r)
{
    sourceRange = fabsf(r);
}

float 
tlBillboardQuad::GetSourceRange() const
{
    return sourceRange;
}

void 
tlBillboardQuad::SetEdgeRange(float r)
{
    edgeRange = fabsf(r);
}

float 
tlBillboardQuad::GetEdgeRange() const
{
    return edgeRange;
}

void 
tlBillboardQuad::SetWidth(float w)
{
    width = fabsf(w);
}

float 
tlBillboardQuad::GetWidth() const
{
    return width;
}

void 
tlBillboardQuad::SetHeight(float h)
{
    height = fabsf(h);
}

float 
tlBillboardQuad::GetHeight() const
{
    return height;
}

void
tlBillboardQuad::SetDistance(float dist)
{
    distance = dist;
}

float
tlBillboardQuad::GetDistance() const
{
    return distance;
}

void
tlBillboardQuad::SetPerspectiveScale(bool scale)
{
    perspective = scale;
}

bool
tlBillboardQuad::GetPerspectiveScale() const
{
    return perspective;
}

//*****************************************************************************
// tlBillboardQuadGroup
//*****************************************************************************
tlBillboardQuadGroup::tlBillboardQuadGroup():
    tlBillboardObject(),
    shaderName(NULL),
    zTest(false),
    zWrite(false),
    fog(false)
{
}

tlBillboardQuadGroup::tlBillboardQuadGroup(const tlBillboardQuadGroup& group):
    tlBillboardObject(group),
    shaderName(strnew(group.shaderName)),
    zTest(group.zTest),
    zWrite(group.zWrite),
    fog(group.fog)
{
    for (int i = 0; i < group.quads.Count(); i++)
    {
        tlBillboardQuad* temp = new tlBillboardQuad(*(group.quads[i]));
        quads.Append(temp);
    }
}

tlBillboardQuadGroup::tlBillboardQuadGroup(tlDataChunk* ch):
    tlBillboardObject(),
    shaderName(NULL),
    zTest(false),
    zWrite(false),
    fog(false)
{
    LoadFromChunk(ch);
}

tlBillboardQuadGroup::~tlBillboardQuadGroup()
{
    for(int i = 0; i < quads.Count(); i++)
    {
        delete quads[i];
    }

    if (shaderName != 0)
    {
        strdelete(shaderName);
    }
}

void 
tlBillboardQuadGroup::LoadFromChunk(tlDataChunk* ch)
{
    if (ch->ID() == Pure3D::BillboardObject::QUAD_V14)
    {
        ConvertFromV14QuadChunk(ch);
    }
    else
    {
        assert(ch->ID() == Pure3D::BillboardObject::QUAD_GROUP);
        tlBillboardQuadGroupChunk* chunk = dynamic_cast<tlBillboardQuadGroupChunk*>(ch);
        assert(chunk != 0);
        assert((int)chunk->GetVersion() == BILLBOARD_QUAD_GROUP_VERSION);

        SetName(chunk->GetName());
        SetShaderName(chunk->GetShader());
        SetZTest(chunk->GetZTest()==1);
        SetZWrite(chunk->GetZWrite()==1);
        SetFog(chunk->GetFog()==1);

        int subChunkCount = ch->SubChunkCount();
        for (int i = 0; i < subChunkCount; i++)
        {
            tlDataChunk* subChunk = ch->GetSubChunk(i);
            switch (subChunk->ID())
            {      
                case Pure3D::BillboardObject::QUAD :
                {
                    tlBillboardQuadChunk* quadChunk = dynamic_cast <tlBillboardQuadChunk*>(subChunk);
                    assert( quadChunk );
                    tlBillboardQuad* quad = new tlBillboardQuad(quadChunk);
                    quads.Append(quad);
                    break;
                }
                default:
                    break;
            }
        }
    }
}

tlDataChunk* 
tlBillboardQuadGroup::Chunk()
{
    tlBillboardQuadGroupChunk* chunk = new tlBillboardQuadGroupChunk;
    
    chunk->SetVersion(BILLBOARD_QUAD_GROUP_VERSION);
    chunk->SetName(GetName());
    chunk->SetShader(shaderName);
    chunk->SetZTest(zTest);
    chunk->SetZWrite(zWrite);
    chunk->SetFog(fog);
    chunk->SetNumQuads(quads.Count());

    for (int i = 0; i < quads.Count(); i++)
    {
        chunk->AppendSubChunk(quads[i]->Chunk());
    }

    return chunk;
}

void
tlBillboardQuadGroup::ConvertFromV14QuadChunk(tlDataChunk* ch)
{
    tlBillboardQuadV14Chunk* chunk = dynamic_cast<tlBillboardQuadV14Chunk*>(ch);
    assert(chunk != 0);

    SetName(chunk->GetName());
    SetShaderName(chunk->GetShader());
    SetZTest(chunk->GetZTest()==1);
    SetZWrite(chunk->GetZWrite()==1);
    SetFog(chunk->GetFog()==1);

    tlBillboardQuad* quad = new tlBillboardQuad;
    quad->SetName(chunk->GetName());
    switch (chunk->GetBillboardMode())
    {
        case 0:  // All Axis
        {
            quad->SetBillboardMode(p3dBillboardConstants::BillboardMode::ALL_AXIS);
            break;
        }
        case 1:  // x Axis
        {
            quad->SetBillboardMode(p3dBillboardConstants::BillboardMode::X_AXIS);
            break;
        }
        case 2:  // y Axis
        {
            quad->SetBillboardMode(p3dBillboardConstants::BillboardMode::Y_AXIS);
            break;
        }
        case 3:  // z Axis
        {
            quad->SetBillboardMode(p3dBillboardConstants::BillboardMode::ALL_AXIS);
            break;
        }    
    }
    quad->SetColour(tlColour(chunk->GetColour()));
    quad->SetWidth(chunk->GetWidth());
    quad->SetHeight(chunk->GetHeight());

    quads.Append(quad);
}

void 
tlBillboardQuadGroup::SetShaderName(const char* name)
{
    if (shaderName != 0)
    {
        strdelete(shaderName);
    }
    shaderName = strnew(name);
}

const char* 
tlBillboardQuadGroup::GetShaderName() const
{
    return shaderName;
}

void 
tlBillboardQuadGroup::SetZTest(bool enable)
{
    zTest = enable;
}

bool 
tlBillboardQuadGroup::GetZTest() const
{
    return zTest;
}

void 
tlBillboardQuadGroup::SetZWrite(bool enable)
{
    zWrite = enable;
}

bool 
tlBillboardQuadGroup::GetZWrite() const
{
    return zWrite;
}

void 
tlBillboardQuadGroup::SetFog(bool enable)
{
    fog = enable;
}

bool 
tlBillboardQuadGroup::GetFog() const
{
    return fog;
}

void 
tlBillboardQuadGroup::AddQuad(const tlBillboardQuad& quad)
{
    tlBillboardQuad* temp = new tlBillboardQuad(quad);
    quads.Append(temp);
}

tlBillboardQuad* 
tlBillboardQuadGroup::GetQuad(const char* n) const
{
    int i;
    for (i = 0; i < quads.Count(); i++)
    {
        if (strcmp(quads[i]->GetName(),n)==0)
            return quads[i];
    }
    return NULL;
}

tlBillboardQuad* 
tlBillboardQuadGroup::GetQuad(int index) const
{
    assert(index<quads.Count());
    return quads[index];
}

void 
tlBillboardQuadGroup::RemoveQuad(const char* n)
{
    for (int i = 0; i < quads.Count(); i++)
    {
        if (strcmp(quads[i]->GetName(),n)==0)
        {
            RemoveQuad(i);
            return;
        }
    }
}

void 
tlBillboardQuadGroup::RemoveQuad(int index)
{
    if (index < quads.Count())
    {
        delete quads[index];
        quads[index] = NULL;
        quads.Delete(index,1);
    }
}

int 
tlBillboardQuadGroup::GetNumQuads() const
{
    return quads.Count();
}

void 
tlBillboardQuadGroup::ResolveReferences(tlInventory* inv)
{
    shaderPtr = toollib_find<tlShader>(inv, shaderName);
    shaderPtr->ResolveReferences(inv);
    for (int i = 0; i < quads.Count(); i++)
    {
        quads[i]->ResolveReferences(inv);
    }
}

void 
tlBillboardQuadGroup::MarkReferences(int m)
{
    if(shaderPtr)
    {
        shaderPtr->Mark(m);
        shaderPtr->MarkReferences(m);
    }

    for (int i = 0; i < quads.Count(); i++)
    {
        quads[i]->MarkReferences(m);
    }
}

bool 
tlBillboardQuadGroup::FindReferenceMark(int m)
{
    if(GetMark() == m)
    {
        return true;
    }
    if(shaderPtr && shaderPtr->FindReferenceMark(m))
    {
        return true;
    }
    for (int i = 0; i < quads.Count(); i++)
    {
        if(quads[i]->FindReferenceMark(m))
            return true;
    }
    return false;
}

//*****************************************************************************
// tlBillboardObjectLoader
//*****************************************************************************
tlBillboardObjectLoader::tlBillboardObjectLoader() : 
    tlEntityLoader(0)
{
}

bool
tlBillboardObjectLoader::CheckChunkID(unsigned id)
{
    switch(id)
    {
        case Pure3D::BillboardObject::QUAD_V14:
        case Pure3D::BillboardObject::QUAD:
        case Pure3D::BillboardObject::QUAD_GROUP:
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
tlBillboardObjectLoader::Load(tlDataChunk* chunk)
{
    switch(chunk->ID())
    {
        case Pure3D::BillboardObject::QUAD:
        {
            return new tlBillboardQuad(chunk);
        }
        case Pure3D::BillboardObject::QUAD_V14:
        case Pure3D::BillboardObject::QUAD_GROUP:
        {
            return new tlBillboardQuadGroup(chunk);
            break;
        }
        default:
        {
            return NULL;
            break;
        }
    }
}


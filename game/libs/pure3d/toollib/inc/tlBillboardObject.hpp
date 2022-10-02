//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TL_BILLBOARD_OBJECT_HPP__
#define __TL_BILLBOARD_OBJECT_HPP__

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlQuat.hpp"
#include "tlUV.hpp"
#include "tlFourCC.hpp"
#include "tlLoadManager.hpp"
#include "psenum.hpp"
 
#include <assert.h>

class tlDataChunk;
class tlInventory;
class tlShader;

//*****************************************************************************
// tlBillboardObject
//*****************************************************************************
class tlBillboardObject: public tlEntity
{
public:
    tlBillboardObject();
    tlBillboardObject(const tlBillboardObject& obj);
    tlBillboardObject(tlDataChunk* ch);
    virtual ~tlBillboardObject();

    virtual void LoadFromChunk(tlDataChunk* ch)           {}
    virtual tlDataChunk* Chunk() = 0;
  
    void LoadFromChunk16(tlDataChunk* ch)                 { assert(0); }
    tlDataChunk* Chunk16()                                { assert(0); return NULL; }
};

//*****************************************************************************
// tlBillboardQuad
//*****************************************************************************
class tlBillboardQuad : public tlBillboardObject
{
public:
    tlBillboardQuad();
    tlBillboardQuad(const tlBillboardQuad& quad);
    tlBillboardQuad(tlDataChunk* ch);
    virtual ~tlBillboardQuad();

    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();
  
    void SetBillboardMode(const tlFourCC& mode);
    tlFourCC GetBillboardMode() const;

    void SetTranslation(const tlPoint& trans);
    void SetTranslation(float x, float y, float z);
    tlPoint GetTranslation() const;

    void SetRotation(const tlQuat& rot);
    void SetRotation(float x, float y, float z);
    tlQuat GetRotation() const;

    void SetColour(float r, float g, float b, float a = 1.0f);
    void SetColour(const tlColour& c);
    tlColour GetColour() const;

    void SetUV(int index, float u, float v);
    void SetUV(int index, const tlUV& uv);
    tlUV GetUV(int index) const;
  
    void SetUVOffset(float u, float v);
    void SetUVOffset(const tlUV& uv);
    tlUV GetUVOffset() const;

    void SetCutOffMode(const tlFourCC& mode);
    tlFourCC GetCutOffMode() const;

    void SetUVOffsetRange(float u, float v);
    void SetUVOffsetRange(const tlUV& uv);
    tlUV GetUVOffsetRange() const;
   
    void SetSourceRange(float r);
    float GetSourceRange() const;

    void SetEdgeRange(float r);
    float GetEdgeRange() const;

    void SetWidth(float w);
    float GetWidth() const;

    void SetHeight(float h);
    float GetHeight() const;

    void SetDistance(float distance);
    float GetDistance() const;
    
    void SetPerspectiveScale(bool scale);
    bool GetPerspectiveScale() const;

protected:
    tlFourCC    billboardMode;
    tlPoint     translation;
    tlQuat      rotation;
    tlColour    colour;
    tlUV        uv[4];
    tlUV        uvOffset;
    tlFourCC    cutOffMode;
    tlUV        uvOffsetRange;
    float       sourceRange;
    float       edgeRange;
    float       width;
    float       height;
    float       distance;
    bool        perspective;
};

//*****************************************************************************
// tlBillboardQuadGroup
//*****************************************************************************
class tlBillboardQuadGroup: public tlBillboardObject
{
public:
    tlBillboardQuadGroup();
    tlBillboardQuadGroup(const tlBillboardQuadGroup& group);
    tlBillboardQuadGroup(tlDataChunk* ch);
    virtual ~tlBillboardQuadGroup();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void ConvertFromV14QuadChunk(tlDataChunk* ch);

    void SetShaderName(const char* shader);
    const char* GetShaderName() const;

    void SetZTest(bool enable);
    bool GetZTest() const;

    void SetZWrite(bool enable);
    bool GetZWrite() const;

    void SetFog(bool enable);
    bool GetFog() const;
    
    int GetNumQuads() const;
    void AddQuad(const tlBillboardQuad& quad);
    tlBillboardQuad* GetQuad(const char* name) const;
    tlBillboardQuad* GetQuad(int index) const;
    void RemoveQuad(const char* name);
    void RemoveQuad(int index);
    
    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

protected:
    char* shaderName;
    bool  zTest;
    bool  zWrite;
    bool  fog;
    tlTable<tlBillboardQuad*> quads;

    //for reference marking
    tlShader* shaderPtr;
};

//*****************************************************************************
// tlBillboardObjectLoader
//*****************************************************************************
class tlBillboardObjectLoader : public tlEntityLoader
{
public:
    tlBillboardObjectLoader();

    virtual bool CheckChunkID(unsigned chunkID);    

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif


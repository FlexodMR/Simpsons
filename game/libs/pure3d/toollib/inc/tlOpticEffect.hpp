//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TLOPTIC_HPP__
#define __TLOPTIC_HPP__

#include "psenum.hpp"
#include "tlEntity.hpp"
#include "tlLoadManager.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"
#include "tlFourCC.hpp"
#include <assert.h>

class tlShader;
class tlFourCC;

//*****************************************************************************
// tlLensFlare
//*****************************************************************************
class tlLensFlare : public tlEntity
{
public:
    tlLensFlare();
    tlLensFlare(const tlLensFlare& flare);
    tlLensFlare(tlDataChunk* ch);
    ~tlLensFlare();

    virtual tlLensFlare& operator=(const tlLensFlare& flare);   

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                           { assert(0); }
    tlDataChunk* Chunk16()                                          { assert(0); return NULL; }
  
    void SetColour(const tlColour& c)                               { colour = c; }
    void SetColour(float r, float g, float b, float a = 1.0f)       { colour.red = r; colour.green = g; colour.blue = b; colour.alpha = a; }
    tlColour GetColour() const                                      { return colour; }
    void GetColour(float& r, float& g, float& b, float& a) const    { r = colour.red; g = colour.green; b = colour.blue; a = colour.alpha; }

    void SetUV(unsigned int index, float u, float v);
    void SetUV(unsigned int index, const tlUV& uv);
    tlUV GetUV(unsigned int index) const;
    void GetUV(unsigned int index, float& u, float& v) const;

    void SetUVOffset(float u, float v);
    void SetUVOffset(const tlUV& uv);
    tlUV GetUVOffset() const;
    void GetUVOffset(float& u, float& v) const;

    void SetDistance(float dist)                                    { distance = dist; }
    float GetDistance() const                                       { return distance; }

    void SetWidth(float w)                                          { width = w; }
    float GetWidth() const                                          { return width; }

    void SetHeight(float h)                                         { height = h; }
    float GetHeight() const                                         { return height; }

protected:
    tlColour    colour;
    tlUV        uv[4];
    tlUV        uvOffset;
    float       distance;
    float       width;
    float       height;
};


//*****************************************************************************
// tlLensFlareGroup
//*****************************************************************************
class tlLensFlareGroup : public tlEntity
{
public:
    tlLensFlareGroup();
    tlLensFlareGroup(const tlLensFlareGroup& group);
    tlLensFlareGroup(tlDataChunk* ch);
    ~tlLensFlareGroup();

    tlLensFlareGroup* CreateLensFlareGroup(const char* name);

    void ConvertFromV14LensFlareParentChunk(tlDataChunk* ch);

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                   { assert(0); }
    tlDataChunk* Chunk16()                                  { assert(0); return NULL; }
  
    void SetShaderName(const char* shader);
    const char* GetShaderName() const                       { return shaderName; }

    void SetZTest(bool enable)                              { zTest = enable; }
    bool GetZTest() const                                   { return zTest; }

    void SetZWrite(bool enable)                             { zWrite = enable; }
    bool GetZWrite() const                                  { return zWrite; }

    void SetFog(bool enable)                                { fog = enable; }
    bool GetFog() const                                     { return fog; }
    
    void SetSourceRadius(float radius)                      { sourceRadius = radius; }
    float GetSourceRadius() const                           { return sourceRadius; }

    void SetEdgeRadius(float radius)                        { edgeRadius = radius; }
    float GetEdgeRadius() const                             { return edgeRadius; }

    int GetNumLensFlares() const;
    int FindLensFlareIndex(const char* name) const;
    tlLensFlare* AddLensFlare(const char* name = NULL);
    void SetLensFlare(int index, const tlLensFlare& LensFlare);
    tlLensFlare* GetLensFlare(int index) const;
    void RemoveLensFlare(int index);
   
    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

protected:
    char*       shaderName;
    bool        zTest;
    bool        zWrite;
    bool        fog;
    float       sourceRadius;
    float       edgeRadius;
    tlTable<tlLensFlare*> flares;

    //for reference marking
    tlShader* shaderPtr;
};

//*****************************************************************************
// tlLensFlareGroupLoader
//*****************************************************************************
class tlLensFlareGroupLoader : public tlEntityLoader
{
public:
    tlLensFlareGroupLoader();

    virtual bool CheckChunkID(unsigned chunkID);    

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif


//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLSHADER_HPP
#define _TLSHADER_HPP

#include "tlEntity.hpp"
#include "tlFourCC.hpp"
#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlTexture.hpp"
#include "tlLoadManager.hpp"

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include <map>

class tlDataChunk;
class tlFourCC;
class tlInventory;

//*****************************************************************************
// tlShader
//*****************************************************************************
class tlShader : public tlEntity
{
public:
    tlShader();
    ~tlShader();

    explicit tlShader(tlDataChunk* ch);
    explicit tlShader(const tlShader&);

    void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    // returns true if shaders are functionally equivalent (same type, same parameter values)
    bool IsEquivalent(tlShader& shader) const;

    // old interface
    void LoadFromChunk16(tlDataChunk* ch) { LoadFromChunk(ch); }
    virtual tlDataChunk* Chunk16()        { return Chunk(); }

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m) const;
    bool FindMarkedTexture( int mark, int layerId ) const;

    // Accessors
    void SetShaderType(const char*);
    const char* GetShaderType() const        { return pddiShaderName; }
    const char* GetTexture() const;    // Tries to find "the" texture on this shader
    tlTexture* GetTexturePtr() const;  // Tries to find "the" texture on this shader
    void SetTranslucency(bool isTrans) { isTranslucent = isTrans; }
    bool GetTranslucency(void) const   { return(isTranslucent); }
    unsigned long VertexNeeds() const  { return vertexNeeds; }  // returns a bitmask of the vertex components needed by this shader
    unsigned long VertexMask() const   { return vertexMask; }   // returns a bitmask of the vertex components not needed by this shader

    void SetVertexNeeds(unsigned long n) { vertexNeeds = n; }
    void SetVertexMask(unsigned long m)  { vertexMask = m; }
    
    virtual bool Optimise();

    // Setting parameters

    void SetIntParam(const tlFourCC& code, unsigned int value);
    bool HasIntParam(const tlFourCC& code) const;
    unsigned int GetIntParam(const tlFourCC& code) const;
    void DeleteIntParam(const tlFourCC& code);

    void SetFloatParam(const tlFourCC& code, float value);
    bool HasFloatParam(const tlFourCC& code) const;
    float GetFloatParam(const tlFourCC& code) const;
    void DeleteFloatParam(const tlFourCC& code);

    void SetColourParam(const tlFourCC& code, const tlColour& value);
    bool HasColourParam(const tlFourCC& code) const;
    tlColour GetColourParam(const tlFourCC& code) const;
    void DeleteColourParam(const tlFourCC& code);

    void SetVectorParam(const tlFourCC& code, const tlPoint& value);
    bool HasVectorParam(const tlFourCC& code) const;
    tlPoint GetVectorParam(const tlFourCC& code) const;
    void DeleteVectorParam(const tlFourCC& code);

    void SetMatrixParam(const tlFourCC& code, const tlMatrix& value);
    bool HasMatrixParam(const tlFourCC& code) const;
    tlMatrix GetMatrixParam(const tlFourCC& code) const;
    void DeleteMatrixParam(const tlFourCC& code);

    void SetTextureParam(const tlFourCC& code, const char* value);
    bool HasTextureParam(const tlFourCC& code) const;
    const char* GetTextureParam(const tlFourCC& code) const;
    void DeleteTextureParam(const tlFourCC& code);

    void SetTexturePtrParam(const tlFourCC& code, tlTexture* value);
    bool HasTexturePtrParam(const tlFourCC& code) const;
    tlTexture* GetTexturePtrParam(const tlFourCC& code) const;
    void DeleteTexturePtrParam(const tlFourCC& code);

    void SetDx8ShaderName(const char*);
    const char* GetDx8ShaderName() const { return dx8ShaderName; }

    void SetDx8ShaderDefinition(const char*);
    const char* GetDx8ShaderDefinition() const { return dx8ShaderDefinition; }

    void SetVertexShader(const char*);
    const char* GetVertexShader() const { return vertexShader; }

protected:
    char* pddiShaderName;
    char* dx8ShaderName;
    char* dx8ShaderDefinition;
    char* vertexShader;

    unsigned long vertexNeeds;
    unsigned long vertexMask;

    std::map<tlFourCC, unsigned long> IntParams;
    std::map<tlFourCC, float> FloatParams;
    std::map<tlFourCC, tlColour> ColourParams;
    std::map<tlFourCC, tlPoint> VectorParams;
    std::map<tlFourCC, tlMatrix> MatrixParams;
    std::map<tlFourCC, char*> TextureParams;
    std::map<tlFourCC, tlTexture*> TexturePtrParams;

    tlDataChunk* MakeIntParamChunk(const unsigned long code, const int value);
    tlDataChunk* MakeFloatParamChunk(const unsigned long code, const float value);
    tlDataChunk* MakeColourParamChunk(const unsigned long code, const tlColour& value);
    tlDataChunk* MakeVectorParamChunk(const unsigned long code, const tlPoint& value);
    tlDataChunk* MakeMatrixParamChunk(const unsigned long code, const tlMatrix& value);
    tlDataChunk* MakeTextureParamChunk(const unsigned long code, const char* tex);
    tlDataChunk* MakeShaderDefinitionChunk(const char* name, const char* definition);

    //
    // Does this shader act translucent?
    //
    bool isTranslucent;
};

//*****************************************************************************
// tlShaderLoader
//*****************************************************************************
class tlShaderLoader : public tlEntityLoader
{
public:
    tlShaderLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***


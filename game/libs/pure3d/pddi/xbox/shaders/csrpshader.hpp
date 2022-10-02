//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _CSRPSHADER_HPP_
#define _CSRPSHADER_HPP_

#include"..\pddi.hpp"
#include"shader.hpp"

class d3dContext;
class d3dTexture;

class d3dCSRPShader : public d3dShader
{
public:
    d3dCSRPShader(d3dContext* c, bool allowPrjection = true);
    ~d3dCSRPShader();

    const char* GetType(void);
    int  GetPasses(void);

    void PreRender(void);
    void PostRender(void);

protected:
    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];

    void SetPass(int pass = 0);

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}
    pddiShadeIntTable*     GetIntTable(void)     { return intTable;}
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable;}
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable;}
//   virtual pddiShadeVectorTable*  GetVectorTable(void) { return NULL;}
//   virtual pddiShadeMatrixTable*  GetMatrixTable(void) { return NULL;}

    // texture
    void SetBaseMap(pddiTexture* texture);
    void SetSpecularMap(pddiTexture* texture);
    void SetReflectionMap(pddiTexture* texture);
    d3dTexture* m_pBaseTexture;
    d3dTexture* m_pSpecularMap;
    d3dTexture* m_pReflectionMap;

    //Context and pixel shaders
    d3dContext* context;
    unsigned long m_CSRPPixelShaderHandle;
    unsigned long m_CSRPixelShaderHandle;

    //Projection ID.
    bool allowProjection;
    unsigned m_ProjectionId;
    void SetProjectionId(int id);
};

#endif

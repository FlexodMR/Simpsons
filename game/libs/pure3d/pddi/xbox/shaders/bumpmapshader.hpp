//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BUMPMAPSHADER_HPP_
#define _BUMPMAPSHADER_HPP_

#include"..\pddi.hpp"
#include"shader.hpp"

class d3dContext;
class d3dTexture;

class d3dBumpMapShader : public d3dShader
{
public:
    d3dBumpMapShader(d3dContext* c);
    ~d3dBumpMapShader();
    const char* GetType(void);
    int  GetPasses();

protected:
    //
    // methods
    //
    void SetPass(int pass = 0);

    // texture
    void SetBumpMap(pddiTexture* texture);
    void SetBaseTex(pddiTexture* texture);
    
    //used for specular bumpmapping only
    void CreateCubeMap();
    void EnableSpecular(int b)
    {
        specularEnabled = b;
        if (b) 
            CreateCubeMap();
    }
    void EnableLightDep(int b);
    void GetCubeVector(int i, int cubesize, int x, int y, pddiVector* vector);
    
    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}
    pddiShadeVectorTable*  GetVectorTable(void) { return vectorTable;}
    pddiShadeIntTable*  GetIntTable(void) { return intTable;}
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable;}
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable;}

    void SetLightVector(const pddiVector& vL);
    void SetCameraVector(const pddiVector& vL);
    void SetLightColour(pddiColour);
    
    //misc fcns
    bool  diff(pddiVector, pddiVector);

    // texturing
    d3dTexture* bumpMap;
    d3dTexture* baseTexture;
    d3dTexture* cubeMap;
    int specularEnabled;
    
    // lighting
    pddiVector vLight;
    pddiVector vOldLight;
    pddiVector vCamera;
    pddiVector vOldCamera;
    pddiColour lightColour;

    int m_lightDep;
    // alpha blending
    
    static pddiShadeTextureTable  textureTable[];
    static pddiShadeVectorTable   vectorTable[];
    static pddiShadeIntTable   intTable[];
    static pddiShadeColourTable colourTable[];
    static pddiShadeFloatTable floatTable[];
    
    //hardware texture capabilities
    bool m_cubeMapSupported; //D3DPTEXTURECAPS_CUBEMAP = Yes
    bool m_dotProd3Supported; // D3DTEXOPCAPS_DOTPRODUCT3 = Yes
    int m_maxSimultaneousTextures;
    int m_maxTextureBlendStages;
};

#endif

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BUMPMAPVERTEXSHADER_HPP_
#define _BUMPMAPVERTEXSHADER_HPP_

#include"..\pddi.hpp"
#include"shader.hpp"

class d3dContext;
class d3dTexture;

class d3dBumpMapVertexShader : public d3dShader
{
public:
    d3dBumpMapVertexShader(d3dContext* c);
    ~d3dBumpMapVertexShader();
    const char* GetType(void);
    int  GetPasses();

	void PreRender( );
	void PostRender( );

	bool IsVertexShader( ){ return true; }
	void LoadVSConstants( );

protected:
    //
    // methods
    //
    void SetPass(int pass = 0);

    // texture
    void SetBumpMap(pddiTexture* texture);
    void SetBaseTex(pddiTexture* texture);	
    
    void EnableSpecular(int b)
    {
        m_bSpecularEnabled = b;
    }
    
    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}    
    pddiShadeIntTable*  GetIntTable(void) { return intTable;}
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable;}
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable;}

    // texturing
    d3dTexture* m_bumpMap;
    d3dTexture* m_baseTexture;
    int m_bSpecularEnabled;
    
	//pixel shader handle
	unsigned long m_hSpecDiffBumpMapPS;

    // alpha blending
    
    static pddiShadeTextureTable  textureTable[];    
    static pddiShadeIntTable   intTable[];
    static pddiShadeColourTable colourTable[];
    static pddiShadeFloatTable floatTable[];
    
};

#endif

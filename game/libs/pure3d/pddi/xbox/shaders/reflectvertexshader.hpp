//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _REFLECTVERTEXSHADER_HPP_
#define _REFLECTVERTEXSHADER_HPP_

#include"..\pddi.hpp"
#include"shader.hpp"

class d3dContext;
class d3dTexture;

class d3dReflectVertexShader : public d3dShader
{
public:
     d3dReflectVertexShader(d3dContext* c);
     ~d3dReflectVertexShader();
    
     const char* GetType(void);
     int  GetPasses();

     void PreRender(void);
     void PostRender(void);

	 bool IsVertexShader( ){ return true; }
	 void LoadVSConstants( );

protected:
    //
    // methods
    //
    void SetPass(int pass = 0);

    // texture
    void SetTexture(pddiTexture* texture);
    void SetReflectionMap(pddiTexture* texture);
    void SetEnvBlend(pddiColour c);

    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable;}
    pddiShadeIntTable*     GetIntTable(void)     { return intTable;}
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable;}
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable;}


    // texturing
    d3dTexture*      texture;
    d3dTexture*      environMap;
    pddiColour       envBlend;
};

#endif

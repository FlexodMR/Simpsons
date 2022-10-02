//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _REFRACTVERTEXSHADER_HPP_
#define _REFRACTVERTEXSHADER_HPP_

#include "..\pddi.hpp"
#include "shader.hpp"
#include <xgraphics.h>

class d3dContext;
class d3dTexture;

class d3dRefractVertexShader : public d3dShader
{
public:
    d3dRefractVertexShader(d3dContext* c);
    ~d3dRefractVertexShader();

    const char* GetType(void);
    int  GetPasses();

	bool IsVertexShader( ){ return true; }
	void LoadVSConstants( );
    virtual pddiBaseShader* CloneSimple();


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

    // texture
    void SetBaseTexture(pddiTexture* texture);

    // bias
    void SetBias( float b ){ bias = b; };

     // crossfade between base and refraction
    void SetCrossfade( float b ){ crossfade = b; };

    // crossfade between base and refraction
    void SetColour( pddiColour c){ colour = c; };

    void PreRender( );
    void PostRender( );

    // texturing
    d3dTexture* baseTex;
    d3dTexture* bbTex;          //back buffer texture;

    float bias;
    float crossfade;
    pddiColour colour;
};

#endif


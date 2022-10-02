//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _WARPSHADER_HPP_
#define _WARPSHADER_HPP_

#include "..\pddi.hpp"
#include "shader.hpp"

class d3dContext;
class d3dTexture;

class d3dWarpShader : public d3dShader
{
public:
    d3dWarpShader(d3dContext* c);
    ~d3dWarpShader();

    const char* GetType(void);
    int  GetPasses();

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

    //frequence
    void SetFrequence( float t ){ frequence = t; };

    //bias
    void SetBias( float b ){ bias = b; };

    void PreRender( );
    void PostRender( );

    // texturing
    d3dTexture* baseTex;

    //timing
    float frequence;

    float bias;


};

#endif


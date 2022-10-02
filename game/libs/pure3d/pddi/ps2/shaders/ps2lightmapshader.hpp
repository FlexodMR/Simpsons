/*====================================================================
   ps2lightmapshader.hpp
   01-May-01 Created by Neall

   Copyright (c)2001 Radical Entertainment Ltd.
   All rights reserved.
====================================================================*/

#ifndef _PS2LIGTMAPSHADER_HPP
#define _PS2LIGTMAPSHADER_HPP

#include <pddi/ps2/ps2shader.hpp>

class ps2LightmapShader : public ps2Shader
{
public:
    ps2LightmapShader(ps2Context* context);

    virtual const char* GetType(void) { return "lightmap"; }

    // called by the device to install the ps2Lightmap allocation function
    static void Install();

    static void SetContext(ps2Context* c){ g_context = c; };
      
protected:
    ~ps2LightmapShader();

    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable; }
    pddiShadeIntTable*     GetIntTable(void)     { return intTable; }

    // ps2Shader interface
    void Validate(unsigned vertexFormat);
    void Bind(GSContext*, VifStream&);

    // ps2Lightmap interface
    void SetTexture(pddiTexture* texture, int pass);
    void SetBase(pddiTexture* texture);
    void SetLightmap(pddiTexture* texture);
    virtual void SetTopTex(pddiTexture* texture){ /* nop */ };
    void SetUVMode(int mode);
    void SetFilterMode(int mode);
    // controls blend mode between passes
    void SetBlendMode(int mode);

    void EnableTwoLayerCBV(int enable);

    void Reset();

    static ps2Context* g_context;

    struct Pass
    {
        ps2Texture* texture;
        sceGsPrmode prmode;
        sceGsClamp clamp;
        sceGsAlpha alpha;
        sceGsTest test;
        sceGsTex0 tex0;
        sceGsTex1 tex1;
        sceGsMiptbp1 miptbp1;
        sceGsMiptbp2 miptbp2;
    } pass[2];
};

#endif /* _PS2LIGHTMAPSHADER */

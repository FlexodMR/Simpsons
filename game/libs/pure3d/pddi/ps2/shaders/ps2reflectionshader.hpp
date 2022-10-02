/*
====================================================================
   ps2reflectionshader.hpp
   11-Jul-02 Created by Amit

   Copyright (c)2002 Radical Entertainment Ltd.
   All rights reserved.
====================================================================
*/

#ifndef _PS2REFLECTIONSHADER_HPP_INCLUDED
#define _PS2REFLECTIONSHADER_HPP_INCLUDED

#include <pddi/ps2/ps2shader.hpp>

class ps2ReflectionShader : public ps2Shader
{
public:
    enum ReflectionMethod
    {
        Environment = 0,  // default
        SphereMap   = 1,
        PlanarMap   = 2,
        ReflectMap  = 3
    };

    ps2ReflectionShader(ps2Context* context, ReflectionMethod method);

    virtual const char* GetType(void) { return "environment"; }

    // called by the device to install the ps2Lightmap allocation function
    static void Install();
      
protected:
    ~ps2ReflectionShader();

    // pddiBaseShader interface
    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];
    static pddiShadeVectorTable vectorTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable; }
    pddiShadeIntTable*     GetIntTable(void)     { return intTable; }
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable; }
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable; }
    pddiShadeVectorTable*  GetVectorTable(void)  { return vectorTable;}

    // ps2Shader interface
    void Validate(unsigned vertexFormat);
    void Bind(GSContext*, VifStream&);

    // ps2Lightmap interface
    void SetTexture(pddiTexture* texture, int pass);
    void SetBase(pddiTexture* texture);
    void SetReflectionMap(pddiTexture* texture);
    void SetUVMode(int mode);
    void SetFilterMode(int mode);
    void SetBlendMode(int mode);
    void EnableTwoLayerCBV(int enable);

    // lighting
    void EnableLighting(int enable);
    void SetDiffuse(pddiColour colour);
    void SetEmissive(pddiColour);
    void SetSpecular(pddiColour);
    void SetEnvBlend(pddiColour);
    void SetShininess(float power);
    void SetEmissiveAlpha(int alpha);
    
    // alpha blending
    void EnableAlphaTest(int enable);
    void SetAlphaCompare(int compare);

    void SetRotVect(const pddiVector & v);

    void Reset();

    ps2Context* context;

    bool isLit;
    ReflectionMethod  reflectMethod;
    ps2LightingProperties lighting;
    pddiVector rotVect;

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

#endif // _PS2REFLECTIONSHADER_HPP_INCLUDED

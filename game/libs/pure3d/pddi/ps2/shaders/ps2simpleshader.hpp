/*====================================================================
   ps2simpleshader.hpp
   03-Dec-00 Created by Neall

   Copyright (c)2000, 2001, 2002 Radical Entertainment Ltd
   All rights reserved.
====================================================================*/

#ifndef _PS2SIMPLESHADER_HPP
#define _PS2SIMPLESHADER_HPP

#include <pddi/ps2/ps2shader.hpp>
#include <eestruct.h>

class ps2PrimBuffer;
class ps2Texture;

class ps2SimpleShader : public ps2Shader
{
public:
    ps2SimpleShader(ps2Context* context);
    ~ps2SimpleShader();

    virtual const char* GetType()   { return "simple"; }

    // called by the device to install the ps2SimpleShader allocation function
    static void Install();

    // returns the vu1 program to call
    void Bind(GSContext* gsContext, VifStream& stream);
    void Validate(unsigned format);

    static void SetContext(ps2Context* c){ g_context = c; };
    void CopySettings( const ps2SimpleShader& right );

protected:
    static ps2Context* g_context;

    // pddiBaseShader interface
    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable; }
    pddiShadeIntTable*     GetIntTable(void)     { return intTable; }
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable; }
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable; }

    // ps2SimpleShader interface
    // texture
    void SetTexture(pddiTexture* texture);
    void SetUVMode(int mode);
    void SetFilterMode(int mode);

    // shading
    void SetShadeMode(int shade);

    // lighting
    void EnableLighting(int enable);
    void SetDiffuse(pddiColour colour);
    void SetEmissive(pddiColour);
    void SetSpecular(pddiColour);
    void SetShininess(float power);
    void SetEmissiveAlpha(int alpha);
    
    // alpha blending
    void SetBlendMode(int mode);
    void EnableAlphaTest(int enable);
    void SetAlphaCompare(int compare);

    // alpha compare
    void SetAlphaThreshold(float threshold);
    void SetMipSharpness(float mshp);

    // ps2Simple shader specific
    void GuessVUProgram();

    sceGsPrmode prmode; // 8
    sceGsClamp clamp; // 8
    sceGsAlpha alpha; // 8
    sceGsTest test;  // 8
    sceGsTex0 tex0;  // 8
    sceGsTex1 tex1;  // 8
    sceGsMiptbp1 miptbp1; // 8
    sceGsMiptbp2 miptbp2; // 8
    unsigned vuProgramHandle; // 4
    bool isLit;
    ps2Texture* texture; // 4
    ps2LightingProperties lighting;
};

#endif /* _PS2SIMPLESHADER */

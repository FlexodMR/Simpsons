//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2REFRACTIONSHADER_HPP
#define _PS2REFRACTIONSHADER_HPP

#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/shaders/ps2simpleshader.hpp>

class ps2RefractionShader : public ps2SimpleShader
{
public:
   ps2RefractionShader(ps2Context* c);
   ~ps2RefractionShader();
   virtual const char* GetType(void) { return "refract"; }

    // returns the vu1 program to call
    void Bind(GSContext* gsContext, VifStream& stream);
    void Validate(unsigned format);

    static void Install();

    // functions to control the refractions
    void SetRefractionIndex( float idx );
    void SetRefractionColour( pddiColour col );
    void SetRefractionBlend(float f);
    void LowQuality( bool e );
    virtual pddiBaseShader* CloneSimple();
    static bool RefractionShadersLoaded();
protected:

    // pddiBaseShader interface
    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable; }
    pddiShadeIntTable*     GetIntTable(void)     { return intTable; }
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable; }
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable; }


private:

    unsigned   lastFrameCopied;
    bool       lowQuality;
    pddiColour refractColour;
    float      refractFactor;
    float      refractBlend;

    sceGsPrmode vramPrmode;
    sceGsTex0 vramTex0;
    sceGsTex1 vramTex1;
};

#endif // _PS2REFRACTIONSHADER_HPP

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2TOONSHADER_HPP_INCLUDED
#define _PS2TOONSHADER_HPP_INCLUDED

#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/shaders/ps2simpleshader.hpp>

class ps2ToonShader : public ps2SimpleShader
{
public:
    ps2ToonShader(ps2Context* c);
    virtual const char* GetType(void) { return "toon"; }

    static void Install();
    
    void Bind(GSContext* gsContext, VifStream& stream);
    void Validate(unsigned format);
protected:

    enum ToonStyle
    {
        None = 0,
        Silhouette,
        DepthMetal
    } toonStyle;

    float toonThickness;
    pddiColour toonColour;

    // pddiBaseShader interface
    static pddiShadeColourTable colourTable[];
    static pddiShadeTextureTable textureTable[];
    static pddiShadeIntTable intTable[];
    static pddiShadeFloatTable floatTable[];

    pddiShadeTextureTable* GetTextureTable(void) { return textureTable; }
    pddiShadeIntTable*     GetIntTable(void)     { return intTable; }
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable; }
    pddiShadeColourTable*  GetColourTable(void)  { return colourTable; }

    // specular colour is reserved for line thickness
    void SetSpecular(pddiColour) { /**/ };
    void SetShininess(float power){ /**/ };


    void SetStyle( int style );
    void SetLineWidth( float width );
    void SetOutlineColour( pddiColour col );

    void SetBlendMode(int mode);

private:

    static unsigned toonProgram;
};


#endif //_PS2TOONSHADER_HPP_INCLUDED

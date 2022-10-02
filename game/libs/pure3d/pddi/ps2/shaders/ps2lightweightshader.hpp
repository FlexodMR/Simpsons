/*====================================================================
   ps2lightweight.hpp
   31-Jul-01 Created by Neall

   Copyright (c)2001, 2002 Radical Entertainment Ltd.
   All rights reserved.
====================================================================*/

#ifndef _PS2LIGHTWEIGHT_HPP
#define _PS2LIGHTWEIGHT_HPP

#include <pddi/ps2/ps2shader.hpp>

class ps2Texture;

class ps2LightweightShader : public ps2Shader
{
public:
    ps2LightweightShader(ps2Context* context);

    virtual const char* GetType(void) { return "lightweight"; }

    // called by the device to install the ps2LightweightShader allocation function
    static void Install();
    static void SetContext(ps2Context* c){ g_context = c; };

protected:
    ~ps2LightweightShader();
      
    // pddiBaseShader interface
    static pddiShadeTextureTable textureTable[];
    static pddiShadeFloatTable floatTable[];
   
    pddiShadeTextureTable* GetTextureTable(void) { return textureTable; }
    pddiShadeFloatTable*   GetFloatTable(void)   { return floatTable; }

    // ps2Shader interface
    void Validate(unsigned format);
    void Bind(GSContext* context, VifStream& vif);

    // ps2LightweightShader interface
    void SetTexture(pddiTexture* texture);

    void SetMipSharpness(float mshp);

    static ps2Context* g_context;
    ps2Texture* texture;
    sceGsPrmode prmode;
    sceGsTex0 tex0;
    sceGsTex1 tex1;
    sceGsMiptbp1 miptbp1;
    sceGsMiptbp2 miptbp2;
};

#endif /* _PS2LIGHTWEIGHT_HPP */

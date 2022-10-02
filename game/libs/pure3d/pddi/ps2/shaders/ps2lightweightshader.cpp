/*====================================================================
   ps2LightweightShader.cpp
   03-Dec-00 Created by Neall

   Copyright (c)2000 Radical Entertainment, Inc.
   All rights reserved.
====================================================================*/

#include <pddi/ps2/shaders/ps2lightweightshader.hpp>
#include <pddi/pddishade.hpp>

#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/packet.hpp>

ps2Context* ps2LightweightShader::g_context = NULL;

extern float g_MipK; // use the same values as the simple shader
extern int g_MipL;
int float_to_k(float);

pddiShadeTextureTable ps2LightweightShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&ps2LightweightShader::SetTexture) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeFloatTable ps2LightweightShader::floatTable[] = 
{
    { PDDI_SP_MIPMAP_SHARPNESS , SHADE_FLOAT(&ps2LightweightShader::SetMipSharpness) },
    { PDDI_SP_NULL, NULL }
};

// this function is called by the base shader to allocate
// a new instance of a simple shader
static pddiBaseShader* ps2LightweightShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2LightweightShader((ps2Context*)c);
}

void ps2LightweightShader::Install()
{
    pddiBaseShader::InstallShader("lightweight", ps2LightweightShaderAllocate, NULL);
}


// implementation of ps2LightweightShader
ps2LightweightShader::ps2LightweightShader(ps2Context* c) :
    texture(NULL)
{
    *((unsigned*)&prmode) = 0;
    prmode.IIP = 1; // enable Gouraud shading

    *((unsigned*)&tex0) = 0;
    *((unsigned*)&tex1) = 0;
    *((unsigned*)&miptbp1) = 0;
    *((unsigned*)&miptbp2) = 0;

    microcode = VU1_UNLIT_TRI;

    tex1.L = g_MipL;
    tex1.K = float_to_k(g_MipK);

    tex1.MMAG = 1;
    tex1.MMIN = 5;
}

ps2LightweightShader::~ps2LightweightShader()
{
    if(texture)
    {
        texture->Release();
    }
}

void ps2LightweightShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 1) && "PDDI ERROR: ps2LightweightShader: Invalid vertex format (texture co-ord count != 1)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2LightweightShader:  Invalid vertex format (no positions)");
    PDDIASSERT((format & PDDI_V_COLOUR) && "PDDI ERROR: ps2LightweightShader:  Invalid vertex format (no colours)");
    PDDIASSERT(!(format & PDDI_V_NORMAL) && "PDDI ERROR: ps2LightweightShader:  Invalid vertex format (normals present)");
}

void ps2LightweightShader::Bind(GSContext* gsContext, VifStream& vif)
{
    currentUID = uid;

    gsContext->prmode.reg.prmode = prmode;
    gsContext->pabe.reg.data = 0;
    gsContext->clamp.reg.clamp.WMS = 0x00;  // repeat in s
    gsContext->clamp.reg.clamp.WMT = 0x00;  // repeat in t
    gsContext->test.reg.test.ATE = 0; // disable alpha test

    if(texture)
    {
        // do this before you set up the tex and miptbp registers as the cache
        // may relocate the texture
        g_context->GetTextureCache()->EnsureResident(vif, texture);
        texture->GetTEX0( &tex0 );
        texture->GetTEX1( &tex1 );

        if(texture->GetMipLevels())
        {
            texture->GetMIPTBP1( &miptbp1 );
            texture->GetMIPTBP2( &miptbp2 );

            gsContext->miptbp1.reg.miptbp1 = miptbp1;
            gsContext->miptbp2.reg.miptbp2 = miptbp2;
        }
        gsContext->tex0.reg.tex0 = tex0;
        gsContext->tex1.reg.tex1 = tex1;
    }

    vif.FlushA_Safe();
    vif.Direct(sizeof(GSContext)/16, gsContext);

    VU_Context* vu = g_context->GetVUContext();
    if(vu->GetDirty())
    {
        // copy context data to vu1, run vu program to copy data into registers
        vu->SetDirty(false);
        vif.ITop(0);
        vif.UnpackQW(0, sizeof(vu->transform) / 16, &vu->transform);
        vif.MsCal(VU1_LOAD_CONTEXT);        
    }
}

void ps2LightweightShader::SetTexture(pddiTexture* t)
{
    if(t) t->AddRef();
    if(texture) texture->Release();
    texture = (ps2Texture*)t;

    prmode.TME = (texture != NULL); // enable texture mapping
}

// apr4/2003 amb - new mipmap level selection code
// this function finds the closest array entry in SHADER::mipTable given mshp [0..1]
void ps2LightweightShader::SetMipSharpness(float mshp)
{
    PDDIASSERT( (mshp >= 0.0f && mshp <= 1.0f) && "Mipmap sharpness out of range" );
    
    int entries = sizeof(SHADER::mipTable)/sizeof(SHADER::mipTable[0]);
    int closestIndex = (int)((float)entries * mshp + 1.0f) - 1;

    if (closestIndex < 0) closestIndex = 0;
    
    tex1.K = float_to_k(SHADER::mipTable[closestIndex]);    
}


/*====================================================================
   ps2simpleshader.cpp
   03-Dec-00 Created by Neall

   Copyright (c)2000, 2001, 2002 Radical Entertainment Ltd
   All rights reserved.
====================================================================*/

#include <pddi/ps2/shaders/ps2simpleshader.hpp>

#include <pddi/pddishade.hpp>
#include <pddi/ps2/quad-vu/regmap.h>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>

#ifdef PS2_USE_THE_WATCHER
#include <raddebugcommunication.hpp>
#include <raddebugwatch.hpp>
#endif


// LOD = (log2( 1/Q ) << L) + K
// LOD = log2(1/q) + K = log2(w) + K
int float_to_k(float f)
{
    // not quite correct, but good enough
    if ( f < -127.0f ) f = -127.0f;
    if ( f > 127.0f )  f = 127.0f;

    int K;
    K = (int)(f*16.0f);
    K = K & 0xfff;  //mask out everything above the bottom 12 bits
    return K;
}


// parameter dispatch tables
// the parameters listed below are defined in pddishade.hpp
pddiShadeColourTable ps2SimpleShader::colourTable[] = 
{
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&ps2SimpleShader::SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&ps2SimpleShader::SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&ps2SimpleShader::SetSpecular) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeTextureTable ps2SimpleShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&ps2SimpleShader::SetTexture) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeIntTable ps2SimpleShader::intTable[] =
{
    { PDDI_SP_UVMODE,        SHADE_INT(&ps2SimpleShader::SetUVMode) },
    { PDDI_SP_FILTER,        SHADE_INT(&ps2SimpleShader::SetFilterMode) },
    { PDDI_SP_SHADEMODE,     SHADE_INT(&ps2SimpleShader::SetShadeMode) },
    { PDDI_SP_ISLIT,         SHADE_INT(&ps2SimpleShader::EnableLighting) },
    { PDDI_SP_BLENDMODE,     SHADE_INT(&ps2SimpleShader::SetBlendMode) },
    { PDDI_SP_ALPHATEST,     SHADE_INT(&ps2SimpleShader::EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE,  SHADE_INT(&ps2SimpleShader::SetAlphaCompare) },
    { PDDI_SP_EMISSIVEALPHA, SHADE_INT(&ps2SimpleShader::SetEmissiveAlpha) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeFloatTable ps2SimpleShader::floatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&ps2SimpleShader::SetShininess) },
    { PDDI_SP_ALPHACOMPARE_THRESHOLD , SHADE_FLOAT(&ps2SimpleShader::SetAlphaThreshold) },
    { PDDI_SP_MIPMAP_SHARPNESS , SHADE_FLOAT(&ps2SimpleShader::SetMipSharpness) },
    { PDDI_SP_NULL, NULL }
};

// this function is called by the base shader to allocate
// a new instance of a simple shader
ps2Context* ps2SimpleShader::g_context = NULL;

static pddiBaseShader* ps2SimpleShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2SimpleShader((ps2Context*)c);
}

int   g_MipL = PS2_MIPMAP_L;
float g_MipK = PS2_MIPMAP_K; // defined in ps2buildconfig.hpp 

// the device will call this function to register the simple shader with the system
void ps2SimpleShader::Install()
{
    pddiBaseShader::InstallShader("simple", ps2SimpleShaderAllocate, NULL);
    g_MipL = PS2_MIPMAP_L;
    g_MipK = PS2_MIPMAP_K;

    #ifdef PS2_USE_THE_WATCHER  
    //radDbgWatchAddInt_Macro( (&g_MipL , "Scale" , "\\PDDI\\PS2\\Mipmap\\L", NULL, NULL, 0, 3) );
    //radDbgWatchAddFloat_Macro( (&g_MipK , "Bias" , "\\PDDI\\PS2\\Mipmap\\K",NULL,NULL,-20.0f,+20.0f) );
    #endif
}

// implementation of ps2SimpleShader
ps2SimpleShader::ps2SimpleShader(ps2Context* c) :  vuProgramHandle(0), texture(NULL)
{
    *((unsigned*)&prmode) = 0;
    *((unsigned*)&clamp) = 0;
    *((unsigned*)&alpha) = 0;
    *((unsigned*)&test) = 0;
    *((unsigned*)&tex0) = 0;
    *((unsigned*)&tex1) = 0;
    *((unsigned*)&miptbp1) = 0;
    *((unsigned*)&miptbp2) = 0;

    prmode.IIP  = 1;
    tex0.TFX    = 0; // modulate
    test.ZTE    = 1; // required by TRC    

    isLit = 0;

    SetDiffuse(pddiColour(0,0,0));
    SetEmissive(pddiColour(0,0,0));
    SetSpecular(pddiColour(0,0,0));
    SetShininess(0.0f);

    SetUVMode(PDDI_UV_TILE);
    SetBlendMode(PDDI_BLEND_NONE);
    EnableAlphaTest(false);
    SetAlphaCompare(PDDI_COMPARE_GREATEREQUAL);
    SetShadeMode(PDDI_SHADE_GOURAUD);
    SetFilterMode(PDDI_FILTER_BILINEAR);
    SetAlphaThreshold(0.5f);    

    // L is 2 bits, K is 1:7:2 = (data/16.0f) - (((11>>data)&1)*256.0f);
    tex1.L = g_MipL;
    tex1.K = float_to_k(g_MipK);
    tex1.MMAG = 1;
    tex1.MMIN = 5;
    
    GuessVUProgram();	
}

ps2SimpleShader::~ps2SimpleShader()
{
    if(texture)
    {
        texture->Release();
        texture = NULL;
    }
}

void ps2SimpleShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 1) && "PDDI ERROR: ps2SimpleShader: Invalid vertex format (texture co-ord count != 1)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2SimpleShader:  Invalid vertex format (no positions");
    PDDIASSERT(!((format & PDDI_V_NORMAL) && (format & PDDI_V_COLOUR)) && "PDDI ERROR: ps2SimpleShader:  Invalid Vertex Format (normals & colour mutually exclusive)");

    if(isLit)
    {
        PDDIASSERT((format & PDDI_V_NORMAL) && "PDDI ERROR:  ps2SimpleShader: Invalid vertex format (isLit = 1, no normals)");
    }
    else
    {
        PDDIASSERT((format & PDDI_V_COLOUR) && "PDDI ERROR:  ps2SimpleShader: Invalid vertex format (isLit = 0, no colours)");
    }
}

void ps2SimpleShader::Bind(GSContext* gsContext, VifStream& vif)
{
    currentUID = uid;

    gsContext->prmode.reg.prmode  = prmode;    
    gsContext->alpha.reg.alpha    = alpha;
    gsContext->test.reg.test.ATE  = test.ATE;
    gsContext->test.reg.test.ATST = test.ATST;
    gsContext->test.reg.test.AREF = test.AREF;
    gsContext->pabe.reg.data      = 0;

    if(texture)
    {
        // do this before you set up the tex and miptbp registers as the cache
        // may relocate the texture
        g_context->GetTextureCache()->EnsureResident(vif, texture);

        gsContext->clamp.reg.clamp = clamp;

        if(texture->GetMipLevels())
        {
            texture->GetMIPTBP1( &miptbp1 );
            texture->GetMIPTBP2( &miptbp2 );

            gsContext->miptbp1.reg.miptbp1 = miptbp1;
            gsContext->miptbp2.reg.miptbp2 = miptbp2;
        }

        texture->GetTEX0( &tex0 );
        texture->GetTEX1( &tex1 );

        gsContext->tex0.reg.tex0 = tex0;
        gsContext->tex1.reg.tex1 = tex1;
    }

    if(isLit)
    {
        g_context->PreMultiplyLights(&lighting);
    }

    vif.FlushA_Safe();
    vif.Direct(sizeof(GSContext)/16, gsContext);

    VU_Context* vu = g_context->GetVUContext();
    if(vu->GetDirty())
    {
        // copy context data to vu1, run vu program to copy data into registers
        // nv todo:  upload transform only if lighting is disabled
        vu->SetDirty(false);
        vif.ITop(0);
        vif.UnpackQW(0, vu->GetSizeQW(), vu);
        vif.MsCal(VU1_LOAD_CONTEXT);
    }
}

void ps2SimpleShader::GuessVUProgram()
{
    microcode = isLit ? VU1_LIT_TRI : VU1_UNLIT_TRI;
}

void ps2SimpleShader::SetTexture(pddiTexture* t)
{
    if(t) t->AddRef();
    if(texture) texture->Release();
    texture = (ps2Texture*)t;

    prmode.TME = texture != NULL;
}

void ps2SimpleShader::SetUVMode(int mode)
{
    clamp.WMS = SHADER::uvTable[mode];
    clamp.WMT = SHADER::uvTable[mode];
}

void ps2SimpleShader::SetFilterMode(int mode)
{   
    return;

    if ( (texture) && (texture->GetMipLevels() == 0) )
    {
        if ( mode > 1 ) {
            mode = 1;
        }
    }

    tex1.MMAG = SHADER::filterMagTable[mode];
    tex1.MMIN = SHADER::filterMinTable[mode];
}

void ps2SimpleShader::SetShadeMode(int shade)
{
    prmode.IIP = (shade == PDDI_SHADE_GOURAUD);
}

void ps2SimpleShader::EnableLighting(int enable)
{
    isLit = enable;
    tex0.TFX = SCE_GS_MODULATE ;
    GuessVUProgram();
}

void ps2SimpleShader::SetDiffuse(pddiColour colour)
{
    if(texture) {
        lighting.diffuse.SetHalfNormalized(colour);
    }
    else {
        lighting.diffuse.SetNormalized(colour);
    }
}

void ps2SimpleShader::SetEmissive(pddiColour colour)
{
    if(texture) {
        lighting.emissive.SetHalfNormalized(colour);
    }
    else {
        lighting.emissive.SetNormalized(colour);
    }
}

void ps2SimpleShader::SetEmissiveAlpha(int alpha)
{
    lighting.emissive.a = alpha / 255.0f;
    lighting.diffuse.a = (alpha < 255) ? 0.0f : 1.0f;
}

void ps2SimpleShader::SetSpecular(pddiColour colour)
{
    lighting.specular = colour.Intensity() / 255.0f;
    if (lighting.specular < 0.01f) {
        lighting.specular = 0.0f;
    }

    tex0.TFX = (lighting.specular > 0.0f) ? SCE_GS_HIGHLIGHT2 : SCE_GS_MODULATE;
}

void ps2SimpleShader::SetShininess(float power)
{
    lighting.shininess = power;
}

void ps2SimpleShader::SetBlendMode(int mode)
{    
    prmode.ABE = (mode != PDDI_BLEND_NONE);

    alpha.A = SHADER::alphaBlendTable[mode].A;
    alpha.B = SHADER::alphaBlendTable[mode].B;
    alpha.C = SHADER::alphaBlendTable[mode].C;
    alpha.D = SHADER::alphaBlendTable[mode].D;
    alpha.FIX = SHADER::alphaBlendTable[mode].FIX;
}

void ps2SimpleShader::EnableAlphaTest(int enable)
{
    test.ATE = enable;
}

void ps2SimpleShader::SetAlphaCompare(int compare)
{
    test.ATST = SHADER::alphaTestTable[compare];
}

void ps2SimpleShader::SetAlphaThreshold(float threshold)
{
    PDDIASSERT( ((threshold >= 0.0f) && (threshold <= 1.0f)) && "Invalid alpha compare threshold" );
    test.AREF = (int)( threshold * 127.0f ) & 0x7f;
}

// apr4/2003 amb - new mipmap level selection code
// this function finds the closest array entry in SHADER::mipTable given mshp [0..1]
void ps2SimpleShader::SetMipSharpness(float mshp)
{
    int entries = sizeof(SHADER::mipTable)/sizeof(SHADER::mipTable[0]);
    int closestIndex = (int)((float)entries * mshp + 1.0f) - 1;
    
    if (closestIndex < 0) closestIndex = 0;

    tex1.K = float_to_k(SHADER::mipTable[closestIndex]);
}

void ps2SimpleShader::CopySettings( const ps2SimpleShader& right )
{
    prmode   = right.prmode;
    clamp    = right.clamp;
    alpha    = right.alpha;
    test     = right.test;
    tex0     = right.tex0;
    tex1     = right.tex1;
    miptbp1  = right.miptbp1;
    miptbp2  = right.miptbp2;
    SetTexture(right.texture);
    EnableLighting(right.isLit);
    lighting = right.lighting;
}


//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Refraction shader 
//
// Jun 2002 - Amit Bakshi
#include <pddi/pddishade.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/quad-vu/regmap.h>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/packet.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/ps2vram.hpp>
#include <pddi/ps2/shaders/ps2simpleshader.hpp>
#include <pddi/ps2/shaders/ps2refractionshader.hpp>

static ps2SimpleShader* gSimpleShader = NULL;
int    g_RefractionShadersLoaded = 0;

extern float g_MipK;
extern int g_MipL;

int float_to_k(float);

// parameter dispatch tables
// the parameters listed below are defined in pddishade.hpp
pddiShadeColourTable ps2RefractionShader::colourTable[] = 
{
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&ps2RefractionShader::SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&ps2RefractionShader::SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&ps2RefractionShader::SetSpecular) },
    { PDDI_SP_REFRACTCOLOUR, SHADE_COLOUR(&ps2RefractionShader::SetRefractionColour) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeTextureTable ps2RefractionShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&ps2RefractionShader::SetTexture) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeIntTable ps2RefractionShader::intTable[] =
{
    { PDDI_SP_UVMODE,        SHADE_INT(&ps2RefractionShader::SetUVMode) },
    { PDDI_SP_FILTER,        SHADE_INT(&ps2RefractionShader::SetFilterMode) },
    { PDDI_SP_SHADEMODE,     SHADE_INT(&ps2RefractionShader::SetShadeMode) },
    { PDDI_SP_ISLIT,         SHADE_INT(&ps2RefractionShader::EnableLighting) },
    { PDDI_SP_BLENDMODE,     SHADE_INT(&ps2RefractionShader::SetBlendMode) },
    { PDDI_SP_ALPHATEST,     SHADE_INT(&ps2RefractionShader::EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE,  SHADE_INT(&ps2RefractionShader::SetAlphaCompare) },
    { PDDI_SP_EMISSIVEALPHA, SHADE_INT(&ps2RefractionShader::SetEmissiveAlpha) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeFloatTable ps2RefractionShader::floatTable[] = 
{
    { PDDI_SP_REFRACTINDEX , SHADE_FLOAT(&ps2RefractionShader::SetRefractionIndex) },
    { PDDI_SP_REFRACTBLEND , SHADE_FLOAT(&ps2RefractionShader::SetRefractionBlend) },
    { PDDI_SP_NULL, NULL }
};


// this function is called by the base shader to allocate
// a new instance of a simple shader
static pddiBaseShader* ps2RefractionShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2RefractionShader((ps2Context*)c);
}

// the device will call this function to register the simple shader
// with the system
void ps2RefractionShader::Install()
{
    pddiBaseShader::InstallShader("refract", ps2RefractionShaderAllocate, NULL);    
}

ps2RefractionShader::ps2RefractionShader(ps2Context* c) : ps2SimpleShader(c)
{
    ++g_RefractionShadersLoaded;
    if( gSimpleShader == NULL )
    {
        gSimpleShader = new ps2SimpleShader( c );
    }
    SetRefractionColour(pddiColour(0xff,0xff,0xff,0xff));
    SetRefractionIndex(10.0f);
    LowQuality(true);
    SetRefractionBlend(0.0f);
    lastFrameCopied = 0;

    vramPrmode = prmode;
    vramPrmode.IIP = 1;
    vramPrmode.TME = 1;
    vramPrmode.FGE = 0;
    vramPrmode.ABE = 0;
    vramPrmode.AA1 = 0;
    vramPrmode.FST = 1;
    vramPrmode.CTXT = 0;
    vramPrmode.FIX = 0;

    vramTex0.TBP0 = 0;
    vramTex0.TBW  = 10;
    vramTex0.PSM  = 0;
    vramTex0.TW   = 10;
    vramTex0.TH   = 10;
    vramTex0.TCC  = 0;
    vramTex0.TFX  = 0;
    vramTex0.CBP  = 0;
    vramTex0.CPSM = 0;
    vramTex0.CSM  = 0;

    vramTex1.LCM = 0;
    vramTex1.MXL = 0;
    vramTex1.MMAG = 1;
    vramTex1.MMIN = 0;    

    microcode = VU1_REFRACT;
}

ps2RefractionShader::~ps2RefractionShader()
{
    --g_RefractionShadersLoaded;
    if (g_RefractionShadersLoaded == 0)
    {
        delete gSimpleShader;
        gSimpleShader = NULL;
    }
}

void ps2RefractionShader::SetRefractionIndex( float idx )
{
    VU_Context* vu = g_context->GetVUContext();
    refractFactor = idx;
    vu->SetDirty(true);
}

void ps2RefractionShader::SetRefractionColour( pddiColour col )
{
    refractColour = col;
}    

void ps2RefractionShader::LowQuality( bool e )
{
    lowQuality = e;
}

void ps2RefractionShader::SetRefractionBlend(float f)
{
    refractBlend = f;
}

void ps2RefractionShader::Bind(GSContext* gsContext, VifStream& vif)
{
    currentUID = uid;

    ps2TexCache* texCache = g_context->GetTextureCache();
    ps2Display*  display  = (ps2Display*)g_context->GetDisplay();
    ps2Vram*     vram     = g_context->GetVram();

    static const pddiColour pureWhite = pddiColour(0xff,0xff,0xff,0xff);
    const int w = display->GetWidth();
    const int h = display->GetHeight();
    const int bpp = lowQuality ? 16 : 32;

    const int blocks = (w * h * bpp) / (8 * 256);
    unsigned texAddr = texCache->AllocRaw( blocks, 0 ) ;
    ps2MFIFO* mfifo = g_context->GetMFIFO();

    mfifo->Flush();
    vram->BlitBackToTexture( texAddr / 32 , lowQuality ? 2:0, pureWhite);

    microcode = VU1_REFRACT;

    vramTex0.TBP0 = texAddr;
    vramTex0.PSM  = (bpp == 32) ? 0 : 2;

    gsContext->prmode.reg.prmode = vramPrmode;
    gsContext->pabe.reg.data = 0;
    gsContext->alpha.reg.alpha = alpha;
    gsContext->test.reg.test.ATE = test.ATE;
    gsContext->test.reg.test.ATST = test.ATST;
    gsContext->tex0.reg.tex0 = vramTex0;
    gsContext->tex1.reg.tex1 = vramTex1;
    gsContext->clamp.reg.clamp = clamp;

    if(isLit)
    {
        g_context->PreMultiplyLights(&lighting);
    }

    vif.FlushA_Safe();

    vif.BeginGifAD(); 
    vif.A_D( SCE_GS_RGBAQ , SCE_GS_SET_RGBAQ( 
            (refractColour.Red()+1) >> 1,
            (refractColour.Green()+1) >> 1,
            (refractColour.Blue()+1) >> 1,
            0x80,
            0));    
    vif.EndGifAD();

    vif.Direct(sizeof(GSContext)/16, gsContext);

    VU_Context* vu = g_context->GetVUContext();

    vu->light.specular[0] = refractFactor;
    vu->light.specular[1] = refractFactor;

    // encode width/height
    vu->light.specular[2] = g_context->GetDisplay()->GetWidth();
    vu->light.specular[3] = g_context->GetDisplay()->GetHeight();

    // copy context data to vu1, run vu program to copy data into registers
    // nv todo:  upload transform only if lighting is disabled
    vu->SetDirty(false);
    vif.ITop(0);
    vif.UnpackQW(0, vu->GetSizeQW(), vu);
    vif.MsCal(VU1_LOAD_CONTEXT);

}

void ps2RefractionShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 1) && "PDDI ERROR: ps2RefractionShader: Invalid vertex format (texture co-ord count != 1)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2RefractionShader:  Invalid vertex format (no positions");
    PDDIASSERT((format & PDDI_V_NORMAL) && "PDDI ERROR: ps2RefractionShader:  Invalid Vertex Format (requires normals)");
}

pddiBaseShader* ps2RefractionShader::CloneSimple()
{
    gSimpleShader->CopySettings( *this );
    float blendAmount = 1.0f - refractBlend * 1.5f;
    if( blendAmount < 0.0f )
    {
        return this;
    }
    int a = (int)(blendAmount * 255.0f);
    gSimpleShader->SetInt( PDDI_SP_EMISSIVEALPHA, a );
    gSimpleShader->SetInt( PDDI_SP_BLENDMODE,     PDDI_BLEND_ALPHA );
    gSimpleShader->SetInt( PDDI_SP_ISLIT, 0x01 );
    return gSimpleShader;
}

bool ps2RefractionShader::RefractionShadersLoaded()
{
    return ( g_RefractionShadersLoaded > 0 );
}

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// jun/2002 amb
// Toon shader
// Hacks :
// * The uniform scaling value is put into the shininess
// * The outline colour is put into the specular colour

#include <pddi/pddishade.hpp>

#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/quad-vu/regmap.h>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/packet.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>
#include <pddi/ps2/shaders/ps2lightmapshader.hpp>
#include <pddi/ps2/shaders/ps2toonshader.hpp>

#include <stdio.h>

#ifdef PS2_USE_THE_WATCHER
#include <raddebugcommunication.hpp>
#include <raddebugwatch.hpp>
#endif

inline float max(float a, float b)
{
    if ( a < b )
        return b;
    return a;
}

// parameter dispatch tables
// the parameters listed below are defined in pddishade.hpp

pddiShadeColourTable ps2ToonShader::colourTable[] = 
{
    { PDDI_SP_DIFFUSE,    SHADE_COLOUR(&ps2ToonShader::SetDiffuse) },
    { PDDI_SP_EMISSIVE,   SHADE_COLOUR(&ps2ToonShader::SetEmissive) },
    { PDDI_SP_SPECULAR,   SHADE_COLOUR(&ps2ToonShader::SetSpecular) },
    { PDDI_SP_SILHOUETTE, SHADE_COLOUR(&ps2ToonShader::SetOutlineColour) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeTextureTable ps2ToonShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&ps2ToonShader::SetTexture) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeIntTable ps2ToonShader::intTable[] =
{
    { PDDI_SP_UVMODE,        SHADE_INT(&ps2ToonShader::SetUVMode) },
    { PDDI_SP_FILTER,        SHADE_INT(&ps2ToonShader::SetFilterMode) },
    { PDDI_SP_SHADEMODE,     SHADE_INT(&ps2ToonShader::SetShadeMode) },
    { PDDI_SP_ISLIT,         SHADE_INT(&ps2ToonShader::EnableLighting) },
    { PDDI_SP_BLENDMODE,     SHADE_INT(&ps2ToonShader::SetBlendMode) },
    { PDDI_SP_ALPHATEST,     SHADE_INT(&ps2ToonShader::EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE,  SHADE_INT(&ps2ToonShader::SetAlphaCompare) },
    { PDDI_SP_EMISSIVEALPHA, SHADE_INT(&ps2ToonShader::SetEmissiveAlpha) },
    { PDDI_SP_TOONSTYLE,     SHADE_INT(&ps2ToonShader::SetStyle) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeFloatTable ps2ToonShader::floatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&ps2ToonShader::SetShininess) },
    { PDDI_SP_TOONLINEWIDTH, SHADE_FLOAT(&ps2ToonShader::SetLineWidth) },
    { PDDI_SP_NULL, NULL }
};


// this function is called by the base shader to allocate
// a new instance of a simple shader
static pddiBaseShader* ps2ToonShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2ToonShader((ps2Context*)c);
}

// the device will call this function to register the simple shader
// with the system
unsigned ps2ToonShader::toonProgram = 0;

#ifdef PS2_USE_THE_WATCHER
#define PREFIX
#else
#define PREFIX static const
#endif

PREFIX int   g_AlphaFix = 0xe0;
PREFIX float g_rAmb = 20.0f;
PREFIX float g_gAmb = 20.0f;
PREFIX float g_bAmb = 20.0f;
PREFIX float g_aAmb = 0.0f;
PREFIX float g_diffScale = 0.2f;
PREFIX float g_alphaScale = 1.0f;
PREFIX float g_ambientScale = 1.0f;


void ps2ToonShader::Install()
{
    pddiBaseShader::InstallShader("toon", ps2ToonShaderAllocate, NULL);
    pddiBaseShader::InstallShader("hctune", ps2ToonShaderAllocate, NULL);

    #ifdef PS2_USE_THE_WATCHER
    radDbgWatchAddInt_Macro( (&g_AlphaFix , "Alpha FIX" , "\\PDDI\\PS2\\Toon Shader", NULL, NULL, 0, 255) );
    radDbgWatchAddFloat_Macro( (&g_diffScale , "Scale" , "\\PDDI\\PS2\\Toon Shader\\Diffuse Scale", NULL, NULL, 0.0f, 1.0f) );
    radDbgWatchAddFloat_Macro( (&g_alphaScale , "Scale" , "\\PDDI\\PS2\\Toon Shader\\Alpha Scale", NULL, NULL, 0.0f, 15.0f) );
    radDbgWatchAddFloat_Macro( (&g_ambientScale , "Scale" , "\\PDDI\\PS2\\Toon Shader\\Ambient Scale", NULL, NULL, 0.0f, 15.0f) );
    #endif
}

ps2ToonShader::ps2ToonShader(ps2Context* c) : ps2SimpleShader(c)
{    
    SetStyle((int)None);
    SetLineWidth(0.01f);
    SetOutlineColour(pddiColour(0,0,0,0x80));
    EnableLighting(true);

    lighting.shininess = 0.0f;

    prmode.FGE = 0;
    prmode.ABE = 1;

    // toon style shading using PABE hack
    alpha.A = 0;
    alpha.B = 2;
    alpha.C = 2;
    alpha.D = 2;
    alpha.FIX = g_AlphaFix;

    microcode = VU1_TOON;

}

void ps2ToonShader::SetStyle( int style )
{
    toonStyle = (ToonStyle)style;
}

void ps2ToonShader::SetLineWidth( float width )
{    
    VU_Context* vu = g_context->GetVUContext();
    vu->SetDirty(true);
    lighting.shininess = toonThickness = width;    
}

void ps2ToonShader::SetOutlineColour( pddiColour col )
{
    toonColour = col;
}

void ps2ToonShader::Bind(GSContext* gsContext, VifStream& vif)
{
    currentUID = uid;

    if ( lighting.emissive.a < 1.0f )
    {
        VU_Context* vu = g_context->GetVUContext();        
        lighting.specular = 0;
        lighting.shininess = 0.0f;
        vu->SetDirty(true);
        ps2SimpleShader::SetBlendMode(PDDI_BLEND_ALPHA);
        ps2SimpleShader::Bind( gsContext, vif );

        microcode = VU1_LIT_TRI;
        return;
    }
    else
    {
        alpha.A = 0;
        alpha.B = 2;
        alpha.C = 2;
        alpha.D = 2;
        alpha.FIX = g_AlphaFix;

        microcode = VU1_TOON;
    }    

    #ifdef PS2_USE_THE_WATCHER
    alpha.FIX = g_AlphaFix;
    #endif

    gsContext->prmode.reg.prmode = prmode;
    gsContext->alpha.reg.alpha = alpha;
    gsContext->test.reg.test.ATE = test.ATE;
    gsContext->test.reg.test.ATST = test.ATST;    
    gsContext->pabe.reg.data = 1; // enable PABE for hacky lighting

    if(texture)
    {
        // do this before you set up the tex and miptbp registers as the cache
        // may relocate the texture
        g_context->GetTextureCache()->EnsureResident(vif, texture);

        texture->GetTEX0( &tex0 );
        texture->GetTEX1( &tex1 );

        gsContext->clamp.reg.clamp = clamp;
        gsContext->tex0.reg.tex0 = tex0;
        gsContext->tex1.reg.tex1 = tex1;

        if(texture->GetMipLevels())
        {
            texture->GetMIPTBP1( &miptbp1 );
            texture->GetMIPTBP2( &miptbp2 );

            gsContext->miptbp1.reg.miptbp1 = miptbp1;
            gsContext->miptbp2.reg.miptbp2 = miptbp2;
        }
    }

    VU_Context* vu = g_context->GetVUContext();

    if(isLit)
    {
        g_context->PreMultiplyLights(&lighting);
        vu->light.shininess = toonThickness;

        for(int i=0;i<4;i++) {
            vu->light.lightColour[i].a = max( max( vu->light.lightColour[i].r , vu->light.lightColour[i].g ) , vu->light.lightColour[i].b) * g_alphaScale;
            vu->light.lightColour[i].r *= g_diffScale;
            vu->light.lightColour[i].g *= g_diffScale;
            vu->light.lightColour[i].b *= g_diffScale;
        }

        vu->light.additive.a = max( max( vu->light.additive.r , vu->light.additive.g ) , vu->light.additive.b) * g_ambientScale;

        vu->light.specular[0] = toonColour.Red()>>1;
        vu->light.specular[1] = toonColour.Green()>>1;
        vu->light.specular[2] = toonColour.Blue()>>1;
        vu->light.specular[3] = toonColour.Alpha();
        vu->SetDirty(true);
    }
    
    vif.FlushA_Safe();
    vif.Direct(sizeof(GSContext)/16, gsContext);

    if(vu->GetDirty())
    {
        // copy context data to vu1, run vu program to copy data into registers
        // nv todo:  upload transform only if lighting is disabled
        vu->SetDirty(false);
        vif.ITop(0);
        vif.UnpackQW(0, vu->GetSizeQW(), vu);
        vif.MsCal(VU1_LOAD_CONTEXT);
    }


    microcode = VU1_TOON;
}

void ps2ToonShader::SetBlendMode(int mode)
{
    /* nop */
}

void ps2ToonShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 1) && "PDDI ERROR: ps2ToonShader: Invalid vertex format (texture co-ord count != 1)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2ToonShader:  Invalid vertex format (no positions");
    PDDIASSERT((format & PDDI_V_NORMAL) && "PDDI ERROR: ps2ToonShader:  Model must be have normals (lit)");
}


/*====================================================================
   ps2LightmapShader.cpp
   01-May-01 Created by Neall

   Copyright (c)2001 Radical Entertainment Ltd.
   All rights reserved.
====================================================================*/

#include <pddi/pddishade.hpp>

#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/quad-vu/regmap.h>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/packet.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/shaders/ps2lightmapshader.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>


// parameter dispatch tables
pddiShadeTextureTable ps2LightmapShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&ps2LightmapShader::SetBase) },
    { PDDI_SP_LIGHTMAP, SHADE_TEXTURE(&ps2LightmapShader::SetLightmap) },
    { PDDI_SP_TOPTEX, SHADE_TEXTURE(&ps2LightmapShader::SetTopTex) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeIntTable ps2LightmapShader::intTable[] = 
{
    { PDDI_SP_UVMODE,       SHADE_INT(&ps2LightmapShader::SetUVMode) },
    { PDDI_SP_FILTER,       SHADE_INT(&ps2LightmapShader::SetFilterMode) },
    { PDDI_SP_BLENDMODE,    SHADE_INT(&ps2LightmapShader::SetBlendMode) },
    { PDDI_SP_TWOLAYERCBV,  SHADE_INT(&ps2LightmapShader::EnableTwoLayerCBV) },
    { PDDI_SP_NULL, NULL }
};

extern float g_MipK; // use the same values as the simple shader
extern int g_MipL;
int float_to_k(float);

ps2Context* ps2LightmapShader::g_context = NULL;

// this function is called by the base shader to allocate
// a new instance of a simple shader
static pddiBaseShader* ps2LightmapShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2LightmapShader((ps2Context*)c);
}

// the device will call this function to register the simple shader
// with the system
void ps2LightmapShader::Install()
{
    pddiBaseShader::InstallShader("lightmap", ps2LightmapShaderAllocate, NULL);
}

// implementation of ps2LightmapShader
ps2LightmapShader::ps2LightmapShader(ps2Context* c)
{
    Reset();

    SetUVMode(PDDI_UV_TILE);
    SetBlendMode(PDDI_BLEND_SUBTRACT);
    SetFilterMode(PDDI_FILTER_BILINEAR);

    microcode = VU1_UNLIT_TRI_MT;
}

ps2LightmapShader::~ps2LightmapShader()
{
    if(pass[0].texture)
        pass[0].texture->Release();

    if(pass[1].texture)
        pass[1].texture->Release();
}

void ps2LightmapShader::Reset()
{
    memset(pass, 0, sizeof(Pass)*2);

    pass[0].prmode.IIP = 1; // gouraud shading
    pass[0].prmode.TME = 0; // texture map enable
    pass[0].prmode.ABE = 0; // alpha blend enable
    pass[0].prmode.AA1 = 0; // antialiasing enable
    pass[0].prmode.FST = 0; // st texture mapping
    pass[0].prmode.CTXT = 0;   // context 0
    pass[0].prmode.FIX = 0; // alpha fix
    pass[0].prmode.FGE = 0; // fog enable

    pass[1].prmode.IIP = 0; // flat shading
    pass[1].prmode.TME = 0;
    pass[1].prmode.ABE = 0;
    pass[1].prmode.AA1 = 0;
    pass[1].prmode.FST = 0;
    pass[1].prmode.CTXT = 0;
    pass[1].prmode.FIX = 0;
    pass[1].prmode.FGE = 0;

    pass[1].tex0.TFX = 0x01;  // decal texture function (no CBV)

    pass[1].tex1.MMAG = SHADER::filterMagTable[PDDI_FILTER_BILINEAR];
    pass[1].tex1.MMIN = SHADER::filterMinTable[PDDI_FILTER_BILINEAR];

    pass[1].clamp.WMS = SHADER::uvTable[PDDI_UV_TILE];
    pass[1].clamp.WMT = SHADER::uvTable[PDDI_UV_TILE];
}

void ps2LightmapShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 2) && "PDDI ERROR: ps2LightmapShader: Invalid vertex format (texture co-ord count != 2)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2LightmapShader:  Invalid vertex format (no positions");
    PDDIASSERT((format & PDDI_V_COLOUR) && "PDDI ERROR:  ps2LightmapShader: Invalid vertex format (no colours)");
    PDDIASSERT(!(format & PDDI_V_NORMAL) && "PDDI ERROR:  ps2LightmapShader: Invalid vertex format (normals present, colours required)");
    PDDIASSERT(!(format & PDDI_V_INDICES) && "PDDI ERROR:  ps2LightmapShader: Invalid vertex format (skinning not supported)");
    PDDIASSERT(!(format & PDDI_V_WEIGHTS) && "PDDI ERROR:  ps2LightmapShader: Invalid vertex format (skinning not supported)");
}
    
void ps2LightmapShader::Bind(GSContext* gsContext, VifStream& vif)
{  
    currentUID = uid;   

    g_context->GetTextureCache()->EnsureResident(vif, pass[0].texture, pass[1].texture );

    gsContext->pabe.reg.data = 0;

    for(int i=0; i < 2; i++)
    {
        const ps2Texture* texture = pass[i].texture; 
        if(texture)
        {
            texture->GetTEX0( &pass[i].tex0 );
            texture->GetTEX1( &pass[i].tex1 );

            if(texture->GetMipLevels())
            {
                texture->GetMIPTBP1( &pass[i].miptbp1 );
                texture->GetMIPTBP2( &pass[i].miptbp2 );
            }
        }
    }

    u_long128* buf = (u_long128*)g_context->GetMFIFO()->GetScratchpadArea() ;

    ADPacket pkt(buf);
    pkt.BeginUnpack(GS_STATE_PACKET);

    int qwords = 0;

    unsigned* header = pkt.reserve(1);
    unsigned* unpackData = header;
    
    header[0] = GS_STATE_PACKET + 1;
    header[1] = 0;
    header[2] = 0;
    header[3] = 0;
    qwords++;

    pkt.BeginTag(); qwords++;
        pkt.ad(SCE_GS_PRMODE, &pass[0].prmode); qwords++;
        pkt.ad(SCE_GS_TEX0_1, &pass[0].tex0); qwords++;
        pkt.ad(SCE_GS_TEX1_1, &pass[0].tex1); qwords++;
        pkt.ad(SCE_GS_MIPTBP1_1, &pass[0].miptbp1); qwords++;
        pkt.ad(SCE_GS_MIPTBP2_1, &pass[0].miptbp2); qwords++;
        pkt.ad(SCE_GS_CLAMP_1, &pass[0].clamp); qwords++;
        pkt.ad(SCE_GS_ALPHA_1, &pass[0].alpha); qwords++;
    pkt.EndTag();

    header[1] = pkt.GetUnpackAddr(); // 0x3ae?!
    pkt.BeginTag(); qwords++;
        pkt.ad(SCE_GS_PRMODE, &pass[1].prmode); qwords++;
        pkt.ad(SCE_GS_TEX0_1, &pass[1].tex0); qwords++;
        pkt.ad(SCE_GS_TEX1_1, &pass[1].tex1); qwords++;
        pkt.ad(SCE_GS_ALPHA_1, &pass[1].alpha); qwords++;
    pkt.EndTag();
 
    // fog is a 3rd pass
    /*
    if ( isFogged )
    {
        header[2] = pkt.GetUnpackAddr();

        long fogPrmode = SCE_GS_SET_PRMODE(1,0,0,1,0,0,0,0); // Gouraud, ABE
        long fogAlpha  = SCE_GS_SET_ALPHA(1, 0, 0, 0, 0); // Alpha mode for fog

        pkt.BeginTag(); qwords++;
            pkt.ad(SCE_GS_PRMODE, &fogPrmode); qwords++;
            pkt.ad(SCE_GS_ALPHA_1, &fogAlpha); qwords++;
        pkt.EndTag();

        unsigned fogCol[4] = { 
            context->state.fogState->colour.Red(),
            context->state.fogState->colour.Green(),
            context->state.fogState->colour.Blue(),
            0 };

        unpackData[qwords*4+0] = fogCol[0]>>1;
        unpackData[qwords*4+1] = fogCol[1]>>1;
        unpackData[qwords*4+2] = fogCol[2]>>1;
        unpackData[qwords*4+3] = fogCol[3]>>1;
        qwords++;
    }
    */

    pkt.EndUnpack();

    VU_Context* vu = g_context->GetVUContext();

    if(vu->GetDirty())
    {
        // copy context data to vu1, run vu program to copy data into registers
        vu->SetDirty(false);
        vif.FlushA_Safe();
        vif.ITop(0);
        vif.UnpackQW(0, sizeof(vu->transform) / 16, &vu->transform);
        vif.MsCal(VU1_LOAD_CONTEXT);
    }

    vif.FlushA_Safe();
    vif.Direct(sizeof(GSContext)/16, gsContext);
    vif.UnpackQW( GS_STATE_PACKET , qwords , unpackData);
}

/*
extern unsigned vuProgramAddress[];

unsigned ps2LightmapShader::GetMicroprogramAddress(ps2Context* context, pddiPrimType primType, unsigned vertexFormat)
{
    isFogged = context->state.fogState->enabled;

    ps2VuCodeHandler* vu = ps2Context::GetContext()->GetMicrocodeHandler();

    PDDIASSERT( ((vertexFormat&0xf)==2) && "Lightmap shader requires 2 UV channels." );
    #ifndef NDEBUG
    if((vertexFormat & 0xf) != 2)
    {
        static bool warn = true;
        if(warn)
        {
            warn = false;
            scePrintf("PDDI warning: Lightmap shader requires 2 uv channels.\nThere may see some stuff missing.\n");
        }
        return vu->GetProgram("donothing");
    }
    #endif

    return isFogged ? Microcode::UNLIT_TRI_MT_FOG : Microcode::UNLIT_TRI_MT_0;
}
*/

void ps2LightmapShader::SetBase(pddiTexture* t)
{
    SetTexture(t, 0);
}

void ps2LightmapShader::SetLightmap(pddiTexture* t)
{
    SetTexture(t, 1);
}

void ps2LightmapShader::SetTexture(pddiTexture* t, int p)
{
    if(t)
    {
        t->AddRef();
    }
    if(pass[p].texture)
    {
        pass[p].texture->Release();
    }
    pass[p].texture = (ps2Texture*)t;
    const ps2Texture* texture = pass[p].texture;

    if(texture)
    {
        pass[p].prmode.TME = 1; // enable texture mapping

        texture->GetTEX0( &pass[p].tex0 );
        texture->GetTEX1( &pass[p].tex1 );

        pass[p].tex1.L = g_MipL & 0x3;               // magic mipmap tweaker value L
        pass[p].tex1.K = float_to_k(g_MipK);             // magic mipmap tweaker value K

        if(texture->GetMipLevels())
        {
            int tbw;

            if ( texture->GetBPP() < 16 ) {
                tbw = 2;
            }
            else {
                tbw = 1;
            }

            int ttbw = texture->GetTBW();

            pass[p].miptbp1.TBW1 = UTIL::Max(ttbw>>1 , tbw );
            pass[p].miptbp1.TBW2 = UTIL::Max(ttbw>>2 , tbw );
            pass[p].miptbp1.TBW3 = UTIL::Max(ttbw>>3 , tbw );

            pass[p].miptbp2.TBW4 = UTIL::Max(ttbw>>4 , tbw );
            pass[p].miptbp2.TBW5 = UTIL::Max(ttbw>>5 , tbw );
            pass[p].miptbp2.TBW6 = UTIL::Max(ttbw>>6 , tbw );
        }
    }
    else
    {
        pass[p].prmode.TME = 0; // disable texture mapping
    }
}

void ps2LightmapShader::SetUVMode(int mode)
{
    pass[0].clamp.WMS = SHADER::uvTable[mode];
    pass[0].clamp.WMT = SHADER::uvTable[mode];
}

void ps2LightmapShader::SetFilterMode(int mode)
{
    #ifndef RAD_RELEASE
    if ( mode > 2 ) {
        //scePrintf("[PDDI WARNING : Using trilinear filtering cuts fillrate in 1/3!]\n");
    }
    #endif

    pass[0].tex1.MMAG = SHADER::filterMagTable[mode];
    pass[0].tex1.MMIN = SHADER::filterMinTable[mode];
}

void ps2LightmapShader::SetBlendMode(int mode)
{
    pass[1].prmode.ABE = (mode != PDDI_BLEND_NONE);

    pass[1].alpha.A = SHADER::alphaBlendTable[mode].A;
    pass[1].alpha.B = SHADER::alphaBlendTable[mode].B;
    pass[1].alpha.C = SHADER::alphaBlendTable[mode].C;
    pass[1].alpha.D = SHADER::alphaBlendTable[mode].D;
    pass[1].alpha.FIX = SHADER::alphaBlendTable[mode].FIX;
}

void ps2LightmapShader::EnableTwoLayerCBV(int enable)
{
    pass[1].tex0.TFX = enable ? 0 : 1;
}

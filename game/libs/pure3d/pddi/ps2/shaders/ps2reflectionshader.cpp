/*====================================================================
   ps2reflectionshader.cpp
   11-Jul-02 Created by Amit

   Copyright (c)2002 Radical Entertainment Ltd.
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
#include <pddi/ps2/shaders/ps2reflectionshader.hpp>

// parameter dispatch tables

extern float g_MipK;
extern int g_MipL;

int float_to_k(float);


// parameter dispatch tables
// the parameters listed below are defined in pddishade.hpp
pddiShadeColourTable ps2ReflectionShader::colourTable[] = 
{
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&ps2ReflectionShader::SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&ps2ReflectionShader::SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&ps2ReflectionShader::SetSpecular) },
    { PDDI_SP_ENVBLEND, SHADE_COLOUR(&ps2ReflectionShader::SetEnvBlend) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeTextureTable ps2ReflectionShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&ps2ReflectionShader::SetBase) },
    { PDDI_SP_REFLMAP, SHADE_TEXTURE(&ps2ReflectionShader::SetReflectionMap) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeIntTable ps2ReflectionShader::intTable[] = 
{
    { PDDI_SP_UVMODE,       SHADE_INT(&ps2ReflectionShader::SetUVMode) },
    { PDDI_SP_FILTER,       SHADE_INT(&ps2ReflectionShader::SetFilterMode) },
    { PDDI_SP_BLENDMODE,    SHADE_INT(&ps2ReflectionShader::SetBlendMode) },
    { PDDI_SP_TWOLAYERCBV,  SHADE_INT(&ps2ReflectionShader::EnableTwoLayerCBV) },
    { PDDI_SP_ISLIT,        SHADE_INT(&ps2ReflectionShader::EnableLighting) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeFloatTable ps2ReflectionShader::floatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&ps2ReflectionShader::SetShininess) },
    { PDDI_SP_NULL, NULL }
};

pddiShadeVectorTable ps2ReflectionShader::vectorTable[] = 
{
    {PDDI_SP_ROTVEC, SHADE_VECTOR(&ps2ReflectionShader::SetRotVect)},
    {PDDI_SP_NULL , NULL}
};

// this function is called by the base shader to allocate
// a new instance of a simple shader

static pddiBaseShader* ps2ReflectionShaderAllocateEnv(pddiRenderContext* c, const char* shaderName, const char* aux)
{
    return new ps2ReflectionShader((ps2Context*)c, ps2ReflectionShader::Environment);
}

static pddiBaseShader* ps2ReflectionShaderAllocateSph(pddiRenderContext* c, const char* shaderName, const char* aux)
{
    return new ps2ReflectionShader((ps2Context*)c, ps2ReflectionShader::SphereMap);
}

static pddiBaseShader* ps2ReflectionShaderAllocatePla(pddiRenderContext* c, const char* shaderName, const char* aux)
{
    return new ps2ReflectionShader((ps2Context*)c, ps2ReflectionShader::PlanarMap);
}

static pddiBaseShader* ps2ReflectionShaderAllocateRef(pddiRenderContext* c, const char* shaderName, const char* aux)
{
    return new ps2ReflectionShader((ps2Context*)c, ps2ReflectionShader::ReflectMap);
}

// the device will call this function to register the simple shader
// with the system
void ps2ReflectionShader::Install()
{
    pddiBaseShader::InstallShader("environment", ps2ReflectionShaderAllocateEnv, NULL);
    pddiBaseShader::InstallShader("spheremap"  , ps2ReflectionShaderAllocateSph, NULL);
    //pddiBaseShader::InstallShader("planarmap"  , ps2ReflectionShaderAllocatePla, NULL);
    //pddiBaseShader::InstallShader("reflectmap" , ps2ReflectionShaderAllocateRef, NULL);
}

// implementation of ps2ReflectionShader
ps2ReflectionShader::ps2ReflectionShader(ps2Context* c, ReflectionMethod method) : 
    context(c), reflectMethod(method)
{
    pass[0].texture = pass[1].texture = NULL;
    Reset();

    SetUVMode(PDDI_UV_TILE);
    SetBlendMode(PDDI_BLEND_NONE);
    SetFilterMode(PDDI_FILTER_BILINEAR);
    SetShininess(0.0f);

    microcode = VU1_REFLECT;
    context->AddRef();
}

ps2ReflectionShader::~ps2ReflectionShader()
{
    if(pass[0].texture)
    {
        pass[0].texture->Release();
        pass[0].texture = NULL;
    }
        

    if(pass[1].texture)
    {
        pass[1].texture->Release();
        pass[1].texture = NULL;
    }
    context->Release();
}

void ps2ReflectionShader::Reset()
{
    if(pass[0].texture) pass[0].texture->Release();
    if(pass[1].texture) pass[1].texture->Release();
    
    memset(pass, 0, sizeof(pass));

    pass[0].prmode.IIP  = 1; // gouraud shading
    pass[0].prmode.TME  = 0; // texture map enable
    pass[0].prmode.ABE  = 0; // alpha blend enable
    pass[0].prmode.AA1  = 0; // antialiasing enable
    pass[0].prmode.FST  = 0; // st texture mapping
    pass[0].prmode.CTXT = 0;   // context 0
    pass[0].prmode.FIX  = 0; // alpha fix
    pass[0].prmode.FGE  = 0; // fog enable

    pass[0].tex0.TFX = SCE_GS_MODULATE;

    pass[0].test.DATE = 0;
    pass[0].test.DATM = 0;
    pass[0].test.ZTE  = 1;
    pass[0].test.ZTST = 2;

    pass[1].prmode.IIP  = 1; // gouraud shading
    pass[1].prmode.TME  = 1;
    pass[1].prmode.ABE  = 1;
    pass[1].prmode.AA1  = 0;
    pass[1].prmode.FST  = 0;
    pass[1].prmode.CTXT = 0;
    pass[1].prmode.FIX  = 0;
    pass[1].prmode.FGE  = 0;

    pass[1].tex0.TFX = SCE_GS_DECAL;  // decal

    pass[1].tex1.MMAG = SHADER::filterMagTable[PDDI_FILTER_BILINEAR];
    pass[1].tex1.MMIN = SHADER::filterMinTable[PDDI_FILTER_BILINEAR];

    pass[1].clamp.WMS = SHADER::uvTable[PDDI_UV_TILE];
    pass[1].clamp.WMT = SHADER::uvTable[PDDI_UV_TILE];

    pass[1].test.DATE = 1;
    pass[1].test.DATM = 1;
    pass[1].test.ZTE  = 1;
    pass[1].test.ZTST = 2;

    // 0x00, 0x01, 0x00, 0x01, 0x80 - ALPHA
    pass[1].alpha.A = 0;
    pass[1].alpha.B = 1;
    pass[1].alpha.C = 2; //0
    pass[1].alpha.D = 1;
    pass[1].alpha.FIX = 0x20;

    rotVect.Set(0.0f,0.0f,0.0f);
}

void ps2ReflectionShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 1) && "PDDI ERROR: ps2ReflectionShader: Invalid vertex format (texture co-ord count != 1)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2ReflectionShader:  Invalid vertex format (no positions");
    PDDIASSERT(!(format & PDDI_V_INDICES) && "PDDI ERROR:  ps2ReflectionShader: Invalid vertex format (skinning not supported)");
    PDDIASSERT(!(format & PDDI_V_WEIGHTS) && "PDDI ERROR:  ps2ReflectionShader: Invalid vertex format (skinning not supported)");
}
    
void ps2ReflectionShader::Bind(GSContext* gsContext, VifStream& vif)
{
    gsContext->pabe.reg.data = 0;    

    // update texture base pointers (they may have changed since last call)
    context->GetTextureCache()->EnsureResident(vif, pass[0].texture, pass[1].texture );

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

    // apr12/2002 amb - HACKED!!!!!! get rid of ADPacket and use VifStream instead    
    u_long128* buf = (u_long128*)context->GetMFIFO()->GetScratchpadArea() ; // scratch pad past MFIFO area
    VU_Context* vu = context->GetVUContext();

    const int unpackAddr = TOP_OF_CLIPPER;
    ADPacket pkt(buf);
    pkt.BeginUnpack(unpackAddr);

    int qwords = 0;

    unsigned* header = pkt.reserve(1);
    unsigned* unpackData = header;
    
    header[0] = unpackAddr + 1;
    header[1] = 0;
    header[2] = 0;
    header[3] = 0;
    qwords++;

    pkt.BeginTag(); qwords++;
        pkt.ad(SCE_GS_PRMODE, &pass[0].prmode); qwords++;
        pkt.ad(SCE_GS_TEX0_1, &pass[0].tex0); qwords++;
        pkt.ad(SCE_GS_TEX1_1, &pass[0].tex1); qwords++;
        pkt.ad(SCE_GS_ALPHA_1, &pass[0].alpha); qwords++;   
        pkt.ad(SCE_GS_TEST_1,&pass[0].test); qwords++;
    pkt.EndTag();

    header[1] = pkt.GetUnpackAddr();
    pkt.BeginTag(); qwords++;
        pkt.ad(SCE_GS_PRMODE, &pass[1].prmode); qwords++;
        pkt.ad(SCE_GS_TEX0_1, &pass[1].tex0); qwords++;
        pkt.ad(SCE_GS_TEX1_1, &pass[1].tex1); qwords++;
        pkt.ad(SCE_GS_TEST_1, &pass[1].test); qwords++;
        pkt.ad(SCE_GS_ALPHA_1, &pass[1].alpha); qwords++;
    pkt.EndTag();

    header[2] = (reflectMethod<<1)|(isLit) ;

    header[3] = pkt.GetUnpackAddr();

    {
        header[3] = pkt.GetUnpackAddr();	    
        
        pddiMatrix modelView, normalMat, rotMat;
        rotMat.FillRotateXYZ( rotVect.x, rotVect.y, rotVect.z );
        
        // Normals are transformed by the inverse transpose of the modelview  
        normalMat.Mult( *context->state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top(), rotMat );        
        normalMat.Invert();
        normalMat.Transpose();

        //pkt.AddQwords( &normalMat, 4 ); qwords += 4;
        pkt.AddQwords( &normalMat, 4); qwords += 4;
    }

    pkt.EndUnpack();

    if(isLit)
    {
        context->PreMultiplyLights(&lighting);
    }

    if(vu->GetDirty())
    {
        // copy context data to vu1, run vu program to copy data into registers
        // nv todo:  upload transform only if lighting is disabled
        vu->SetDirty(false);
        vif.FlushA_Safe();
        vif.ITop(0);
        vif.UnpackQW(0, vu->GetSizeQW(), vu);
        vif.MsCal(VU1_LOAD_CONTEXT);
    }

    vif.FlushA_Safe();
    vif.Direct(sizeof(GSContext)/16, gsContext);
    vif.UnpackQW( unpackAddr , qwords , unpackData);
}

void ps2ReflectionShader::SetBase(pddiTexture* t)
{
    SetTexture(t, 0);
}

void ps2ReflectionShader::SetReflectionMap(pddiTexture* t)
{
    SetTexture(t, 1);
}

void ps2ReflectionShader::SetTexture(pddiTexture* t, int p)
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

        pass[p].tex1.L = g_MipL;             // magic mipmap tweaker value L
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

void ps2ReflectionShader::SetUVMode(int mode)
{
    pass[0].clamp.WMS = SHADER::uvTable[mode];
    pass[0].clamp.WMT = SHADER::uvTable[mode];
}

void ps2ReflectionShader::SetFilterMode(int mode)
{
    pass[0].tex1.MMAG = SHADER::filterMagTable[mode];
    pass[0].tex1.MMIN = SHADER::filterMinTable[mode];
}

void ps2ReflectionShader::SetBlendMode(int mode)
{
    pass[0].prmode.ABE = (mode != PDDI_BLEND_NONE);

    pass[0].alpha.A = SHADER::alphaBlendTable[mode].A;
    pass[0].alpha.B = SHADER::alphaBlendTable[mode].B;
    pass[0].alpha.C = SHADER::alphaBlendTable[mode].C;
    pass[0].alpha.D = SHADER::alphaBlendTable[mode].D;
    pass[0].alpha.FIX = SHADER::alphaBlendTable[mode].FIX;
}

void ps2ReflectionShader::EnableTwoLayerCBV(int enable)
{
    pass[1].tex0.TFX = enable ? 0 : 1;
}

void ps2ReflectionShader::EnableLighting(int enable)
{
    isLit = enable;
}

void ps2ReflectionShader::SetDiffuse(pddiColour colour)
{
    if(pass[0].texture)
        lighting.diffuse.SetHalfNormalized(colour);
    else
        lighting.diffuse.SetNormalized(colour);
}

void ps2ReflectionShader::SetEmissive(pddiColour colour)
{
    if(pass[0].texture)
        lighting.emissive.SetHalfNormalized(colour);
    else
        lighting.emissive.SetNormalized(colour);
}

void ps2ReflectionShader::SetEmissiveAlpha(int alpha)
{
    lighting.emissive.a = (float)alpha / 255.0f;
    lighting.diffuse.a = (alpha < 255) ? 0.0f : 1.0f;
}

void ps2ReflectionShader::SetSpecular(pddiColour colour)
{
    /* nop */
    return;

    // todo - support specular
    lighting.specular = (float)colour.Intensity() / 255.0f;
    if (lighting.specular < 0.001f) {
        lighting.specular = 0.0f;
    }
    
    pass[0].tex0.TFX = (lighting.shininess > 0.0f && isLit) ? SCE_GS_HIGHLIGHT2 : SCE_GS_MODULATE;
}

void ps2ReflectionShader::SetEnvBlend(pddiColour colour)
{
    pass[1].alpha.FIX = (colour.Intensity()& 0xff) >> 1;
}

void ps2ReflectionShader::SetShininess(float power)
{
    /* nop */
    return;

    lighting.shininess = power;
}

void ps2ReflectionShader::EnableAlphaTest(int enable)
{
    pass[0].test.ATE = enable;
}

void ps2ReflectionShader::SetAlphaCompare(int compare)
{
    pass[0].test.ATST = SHADER::alphaTestTable[compare];
}

void ps2ReflectionShader::SetRotVect(const pddiVector & v) 
{
    const float pi2 = 3.1415926535897932384626433832795f/2.0f;

    rotVect = v;
    /*
    while (rotVect.x >= pi2) rotVect.x -= pi2;
    while (rotVect.y >= pi2) rotVect.y -= pi2;
    while (rotVect.z >= pi2) rotVect.z -= pi2;

    while (rotVect.x <= -pi2) rotVect.x += pi2;
    while (rotVect.y <= -pi2) rotVect.y += pi2;
    while (rotVect.z <= -pi2) rotVect.z += pi2;
    */
}

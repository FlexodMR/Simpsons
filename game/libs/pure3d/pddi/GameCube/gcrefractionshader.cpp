//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcrefractionshader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcbufcopy.hpp>

#include <dolphin/gx.h>

static bool g_AllowBufferCapture = false;

//-------------------------------------------------------
pddiShadeColourTable RefractionShader::gColourTable[] = 
{
    { PDDI_SP_DIFFUSE, SHADE_COLOUR(&SetDiffuseColour) },
    { PDDI_SP_AMBIENT, SHADE_COLOUR(&SetAmbientColour) },
    { PDDI_SP_REFRACTCOLOUR, SHADE_COLOUR(&SetRefractionColour) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable RefractionShader::gTextureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(&SetBaseTexture) },
    { PDDI_SP_NULL, NULL}
};

//-------------------------------------------------------
pddiShadeIntTable RefractionShader::gIntTable[] = 
{
    { PDDI_SP_NULL , NULL }
};

//-------------------------------------------------------
pddiShadeFloatTable RefractionShader::gFloatTable[] = 
{
    { PDDI_SP_REFRACTINDEX, SHADE_FLOAT(&SetRefractionIndex) },
    { PDDI_SP_REFRACTBLEND, SHADE_FLOAT(&SetRefractionBlend) },
    { PDDI_SP_NULL, NULL}
};


extern unsigned long gcShaderAllocSize;
extern unsigned long gcShaderAllocCount;

gcTexture *RefractionShader::mIndTexture = NULL;
gcTexture *RefractionShader::mBackTexture = NULL;

//-------------------------------------------------------
//-------------------------------------------------------
RefractionShader::RefractionShader(gcContext* c) 
{
    mContext = c;

    mLowQuality = true;
    mBlend = 0.95F;
    mTexture = NULL;

    // Create a graident
    if (mIndTexture == NULL)
    {
        mIndTexture = new gcTexture(mContext);
        mIndTexture->Create(8, 8, 8, 0, 0, PDDI_TEXTYPE_LUMINANCE);
        mIndTexture->SetSwizzleEnable(false);

        pddiLockInfo *lock = mIndTexture->Lock(0);
        unsigned *data = (unsigned *)lock->bits;

        int dwords = lock->height * lock->pitch / 4;
        int a;
        for (a = 0; a < dwords; a++) data[a] = 0;
        
        mIndTexture->Unlock(0); 
        mIndTexture->SetWrapMode(GX_CLAMP); // GX_CLAMP, GX_REPEAT, GX_MIRROR
    }

    if (mBackTexture == NULL)
    {
        gcExtBufferCopy *bufcopier = (gcExtBufferCopy *)mContext->GetExtension(PDDI_EXT_BUFCOPY);
        mBackTexture = (gcTexture *) bufcopier->CreateBackTexture(320, 240, 32, true);

        pddiLockInfo *lock = mBackTexture->Lock(0);
        mBackTexture->Unlock(0); 
    }

    gcShaderAllocSize += sizeof(RefractionShader);
    gcShaderAllocCount++;
}

//-------------------------------------------------------
RefractionShader::~RefractionShader() 
{
    if (mTexture != NULL) mTexture->Release();
    gcShaderAllocSize -= sizeof(RefractionShader);
    gcShaderAllocCount--;
}
//-------------------------------------------------------
void RefractionShader::AllowOneBufferCapture()
{
    g_AllowBufferCapture = true;
}
//-------------------------------------------------------
void RefractionShader::Install(void)
{
    pddiBaseShader::InstallShader("refract", &RefractionShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader *RefractionShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new RefractionShader((gcContext*)c);
}

//-------------------------------------------------------
const char *RefractionShader::GetType(void)
{
    static char refract[] = "refract";
    return refract;
}

//-------------------------------------------------------
int RefractionShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void RefractionShader::LowQuality(bool q)
{
    mLowQuality = q;
}

//-------------------------------------------------------
void RefractionShader::SetRefractionColour(pddiColour col)
{
    mRColour = col;
}
//-------------------------------------------------------
void RefractionShader::SetDiffuseColour(pddiColour col)
{
    mDiffuse = col;

}
//-------------------------------------------------------
void RefractionShader::SetAmbientColour(pddiColour col)
{
    mAmbient.r = col.Red();
    mAmbient.g = col.Green();
    mAmbient.b = col.Blue();
    mAmbient.a = col.Alpha();
}

//-------------------------------------------------------
void RefractionShader::SetBaseTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
}

//-------------------------------------------------------
void RefractionShader::SetRefractionIndex(float index) 
{
    // PS2 index is in TEXELS!
    mRIndex = index / -500.0F;
}          

//-------------------------------------------------------
void RefractionShader::SetRefractionBlend(float f)
{
    mBlend = f;
    if (mBlend < 0.0F) mBlend = 0.0F;
    if (mBlend > 1.0F) mBlend = 1.0F;
}


//-------------------------------------------------------
void RefractionShader::PostRender(void)
{
    // Turn off indirect texturing
    GXSetTevDirect(GX_TEVSTAGE1);
}


static inline void FillGXMatrix(float gx[3][4], pddiMatrix &m)
{
    gx[0][0] = m.m[0][0]; gx[0][1] = m.m[1][0]; gx[0][2] = m.m[2][0]; gx[0][3] = m.m[3][0];
    gx[1][0] = m.m[0][1]; gx[1][1] = m.m[1][1]; gx[1][2] = m.m[2][1]; gx[1][3] = m.m[3][1];
    gx[2][0] = m.m[0][2]; gx[2][1] = m.m[1][2]; gx[2][2] = m.m[2][2]; gx[2][3] = m.m[3][2];
}


//-------------------------------------------------------
void RefractionShader::SetPass(int pass)
{

    mContext->PreMultiplyLights(mDiffuse, (pddiColour) 0x00000000, 10.0F);


    float near, far, aspect, fov;
    mContext->GetCamera(&near, &far, &fov, &aspect);

    // one colour rasterization    
    GXSetNumChans(1);


    GXColor white;
    white.r = 255;
    white.g = 255;
    white.b = 255;
    white.a = 255;

    // Need to scale the ambient material value by the ambient light value 
    pddiColour al = mContext->GetAmbientLight();

    int r     = ((mAmbient.r * al.Red())   >> 8); 
    int g     = ((mAmbient.g * al.Green()) >> 8); 
    int b     = ((mAmbient.b * al.Blue())  >> 8); 
    int alpha = ((mAmbient.a * al.Alpha()) >> 8); 

    if (r  > 255) r  = 255;
    if (g  > 255) g  = 255;
    if (b  > 255) b  = 255;
    if (alpha > 255) alpha = 255;

    GXColor amb;
    amb.r = r;
    amb.g = g;
    amb.b = b;
    amb.a = alpha;
    GXSetChanAmbColor(GX_COLOR0A0, amb);
    GXSetChanMatColor(GX_COLOR0A0, white);

    // build the currently active light mask
    int lightmask = 0;
    int a;
    for (a = 0; a < mContext->GetMaxLights(); a++)
    {
        if (mContext->IsLightEnabled(a)) 
        {
            lightmask |= (1 << a);
        }
    }

    GXSetChanCtrl(GX_COLOR0A0, true,  GX_SRC_REG, GX_SRC_REG, (GXLightID) lightmask, GX_DF_CLAMP, GX_AF_NONE);

    // Setup UV generation to scale normals by mRIndex and to add it to screen space UV
    GXSetNumTexGens(3);

    // Texcoord 0: Regular texture coords
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);

    // Texcoord 1: CTM * Positions then scale & offset
    GXSetTexCoordGen2(GX_TEXCOORD1, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_PTTEXMTX0);
    //GXSetTexCoordGen2(GX_TEXCOORD1, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_PTIDENTITY);

    // Texcoord 2: Scale * Normals
    GXSetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_NRM, GX_TEXMTX1);

    // Load textures
    gcExtBufferCopy *bufcopier = (gcExtBufferCopy *)mContext->GetExtension(PDDI_EXT_BUFCOPY);
    if( g_AllowBufferCapture )
    {
        bufcopier->CopyBackBuf(mBackTexture, false, true);
        g_AllowBufferCapture = false;
    }

    // add an assert her4e Ian.
    mTexture->LoadTexture(GX_TEXMAP0);
    mBackTexture->LoadTexture(GX_TEXMAP1);
    mIndTexture->LoadTexture(GX_TEXMAP2);

    // Load CTM into TEXMTX0
    Mtx gxmtx;
    rmt::Matrix m = *(mContext->GetMatrix(PDDI_MATRIX_MODELVIEW));

    rmt::Matrix project;

    fov = 1.0f / tanf(fov * 0.5F);

    float p0 = fov * 0.25F;
    float p1 = 0.0F;
    float p2 = aspect * fov * -0.3F;
    float p3 = 0.0F;
    float p4 = (near / (near - far));

    project.m[0][0] = p0;   project.m[0][1] = 0.0F; project.m[0][2] = p1;   project.m[0][3] = 0.0F;
    project.m[1][0] = 0.0F; project.m[1][1] = p2;   project.m[1][2] = p3;   project.m[1][3] = 0.0F;
    project.m[2][0] = 0.0F; project.m[2][1] = 0.0F; project.m[2][2] = p4;   project.m[2][3] = 0.0F;
    project.m[3][0] = 0.5F; project.m[3][1] = 0.5F; project.m[3][2] = 1.0F; project.m[3][3] = 0.0F;

    m.MultFull(project);

    FillGXMatrix(gxmtx, m);
    GXLoadTexMtxImm(gxmtx, GX_TEXMTX0, GX_MTX3x4);

    // Load Scale & offset for CTM into GX_PTTEXMTX0
    m.Identity();
    m.FillScale(0.5F, 0.5F, 0.0F);
    m.FillTranslate(rmt::Vector(0.5F, 0.5F, 0.0F));
    FillGXMatrix(gxmtx, m);
    GXLoadTexMtxImm(gxmtx, GX_PTTEXMTX0, GX_MTX3x4);


    // Load Index of Refraction (normal scale) TEXMTX1
    m.Identity();
    m.FillScale(mRIndex, mRIndex, 0.0F);
    m.FillTranslate(rmt::Vector(0.0F, 0.0F, 0.00));
    FillGXMatrix(gxmtx, m);
    GXLoadTexMtxImm(gxmtx, GX_TEXMTX1, GX_MTX3x4);

    // Setup indirect texturing
    GXSetNumIndStages(1);
    GXSetIndTexOrder(GX_INDTEXSTAGE0, GX_TEXCOORD2, GX_TEXMAP2); 
    GXSetTevIndirect(GX_TEVSTAGE2,      // TEV Stage UV to modify
                     GX_INDTEXSTAGE0,   // Which IND stage to use
                     GX_ITF_8,          // Number of bits for bump alpha
                     GX_ITB_NONE,       // Bias select
                     GX_ITM_OFF,        // Which IND Matrix
                     GX_ITW_OFF,        // S Wrapping type
                     GX_ITW_OFF,        // T Wrapping type
                     GX_FALSE,           // Add to previous stage
                     GX_FALSE,          // UTC Lod
                     GX_ITBA_OFF);      // Bump alpha channel select



    GXSetNumTevStages(3);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);

    // TEV stage 0: Generate texture colour
    //                            a           b           c            d
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_RASC, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);

    // TEV stage 1: placeholder for ST coord generation
    //                            a           b           c            d
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_KONST);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);

    // Set TEV 2 to modulate texture colour with blend colour and to pass through alpha
    //                            a           b           c            d
    GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_C0,   GX_CC_TEXC, GX_CC_APREV, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,  GX_CA_KONST);
    GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);

    // Never alpha blending with the refraction shader
    GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_COPY);

    // Load the konst register with my data
    GXSetTevKColorSel(GX_TEVSTAGE2, GX_TEV_KCSEL_K0);
    GXSetTevKAlphaSel(GX_TEVSTAGE2, GX_TEV_KASEL_K0_A);
    GXSetTevKColorSel(GX_TEVSTAGE1, GX_TEV_KCSEL_K0);
    GXSetTevKAlphaSel(GX_TEVSTAGE1, GX_TEV_KASEL_K0_A);
    GXSetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
    GXSetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
    GXColor c;
    c.r = mRColour.Red();
    c.g = mRColour.Green();
    c.b = mRColour.Blue();
    c.a = (unsigned char) (mBlend * 255.0F);
    GXSetTevKColor(GX_KCOLOR0, c);

    
}




//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/ShadowShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/pddi.hpp>
#include <dolphin/gx.h>
#include <dolphin/os.h>
#include <math.h>

extern "C" void *malloc(int);
extern "C" void free(void*);

static inline void FillGXMatrix(float gx[3][4], pddiMatrix &m)
{
    gx[0][0] = m.m[0][0]; gx[0][1] = m.m[1][0]; gx[0][2] = m.m[2][0]; gx[0][3] = m.m[3][0];
    gx[1][0] = m.m[0][1]; gx[1][1] = m.m[1][1]; gx[1][2] = m.m[2][1]; gx[1][3] = m.m[3][1];
    gx[2][0] = m.m[0][2]; gx[2][1] = m.m[1][2]; gx[2][2] = m.m[2][2]; gx[2][3] = m.m[3][2];
}


//----------------- Pass 1 TEV State -------------------------------------
static gcColourBlendStruct ShadowPassColourTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct ShadowPassAlphaTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * ColourTevOp) + D + bias) * ColourScale)
    //   A           B           C           D
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,  GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- Lit & Unlit Textured ---------------------------------------
static gcColourBlendStruct TexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TexturedAlphaBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * ColourTevOp) + D + bias) * ColourScale)
    //   A           B           C           D
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};



//-------------------------------------------------------
static TEVSetting TEVSet[2] = 
{
    { &ShadowPassColourTable, &ShadowPassAlphaTable },
    { &TexturedColourBlendTable,   &TexturedAlphaBlendTable   },
};


//-------------------------------------------------------
pddiShadeColourTable ShadowShader::gColourTable[] = 
{
    { PDDI_SP_SHADOWCOLOUR,  SHADE_COLOUR(&SetShadowColour) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable ShadowShader::gTextureTable[] = 
{
    {PDDI_SP_SHADOWTEXTURE, SHADE_TEXTURE(&SetShadowTexture)},
    {PDDI_SP_NULL, NULL}
};

//-------------------------------------------------------
pddiShadeIntTable ShadowShader::gIntTable[] = 
{
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeFloatTable ShadowShader::gFloatTable[] = 
{
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
pddiShadeVectorTable ShadowShader::gVectorTable[] = 
{
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
pddiShadeMatrixTable ShadowShader::gMatrixTable[] = 
{
    { PDDI_SP_NULL, NULL}
};



//-------------------------------------------------------
//-------------------------------------------------------
ShadowShader::ShadowShader(gcContext* c) 
{
    mContext = c;

    mShadowTexture = NULL;

    // Modulate colour by shadow colour
    mShadowColour.Set(0, 0, 0, 127);

}

//-------------------------------------------------------
ShadowShader::~ShadowShader() 
{
    if (mShadowTexture) mShadowTexture->Release();
}


//-------------------------------------------------------
void ShadowShader::Install(void)
{
    pddiBaseShader::InstallShader("shadow", &ShadowShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader *ShadowShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    ShadowShader *shadow = new ShadowShader((gcContext*)c);
    return shadow;
}


//-------------------------------------------------------
const char *ShadowShader::GetType(void)
{
    static char shadow[] = "shadow";
    return shadow;
}



//-------------------------------------------------------
int ShadowShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void ShadowShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}


//-------------------------------------------------------
void ShadowShader::SetShadowColour(pddiColour a) 
{
    mShadowColour = a;
}

//-------------------------------------------------------
void ShadowShader::SetShadowTexture(pddiTexture *tex)
{
    if (mShadowTexture) mShadowTexture->Release();
    mShadowTexture = dynamic_cast<gcTexture*>(tex);
    if (mShadowTexture) mShadowTexture->AddRef();
}



//-------------------------------------------------------
int ShadowShader::CountDevPasses(void) 
{
    return 1;
}



//-------------------------------------------------------
void ShadowShader::SetDevPass(unsigned pass)
{
    
    GXSetNumTevStages(1);

    // Load the texture maps
    mShadowTexture->LoadTexture(GX_TEXMAP0);

    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);

    // TEV Stage 0  Colour
    // REGPREV(C) = Shadow Colour
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);

    // TEV Stage 0  Alpha
    // REGPREV(A) = TEXA > 0 ? alpha : 0
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);

    GXSetBlendMode(GX_BM_BLEND,    GX_BL_ZERO,     GX_BL_SRCCLR,      GX_LO_COPY);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_NEVER, 0);
    GXSetZCompLoc(false);   
 
    // Load the shadow colour into TEVREG0 (GX_CC_C0)
    GXColor sc;
    sc.r = (unsigned char) mShadowColour.Red();
    sc.g = (unsigned char) mShadowColour.Green();
    sc.b = (unsigned char) mShadowColour.Blue();
    sc.a = (unsigned char) mShadowColour.Alpha();
    GXSetTevColor(GX_TEVREG0, sc);

    // Tex coords
    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEXCOORD0, GX_IDENTITY);
}



#if 0
//-------------------------------------------------------
//      Simple texture Projection  shader setup
//
void ShadowShader::SetDevPass(unsigned pass)
{
    if (!mEnableShadows || (mLightDepthTexture == NULL))
    {
        if (mChildShader != NULL) mChildShader->SetDevPass(pass);
        return ;
    }

    if (mChildShader != NULL) mChildShader->SetDevPass(pass);

    GXTevStageID stage = GX_TEVSTAGE0;
    GXSetNumTevStages(1);

    // Load the texture maps
    mLightDepthTexture->LoadTexture(GX_TEXMAP0);
    //GXLoadTexObj(&mRampTexture, GX_TEXMAP0);
    GXLoadTexObj(&mRampTexture, GX_TEXMAP1);

    // Tex coord generation for depth value lookup
    GXLoadTexMtxImm(mRampGenMatrix, GX_TEXMTX7, GX_MTX3x4);

    // Make a swap table which performs I->R, A->G conversion
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_ALPHA,  GX_CH_ALPHA, GX_CH_ALPHA, GX_CH_ALPHA);

    //GXSetTevOrder(stage,    GX_TEXCOORD0,  GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevOrder(stage,    GX_TEXCOORD1,  GX_TEXMAP1, GX_COLOR0A0);
    GXSetTevColorIn(stage,  GX_CC_ZERO,    GX_CC_ZERO, GX_CC_ZERO,    GX_CC_TEXC);
    GXSetTevColorOp(stage,  GX_TEV_ADD,    GX_TB_ZERO, GX_CS_DIVIDE_2, GX_TRUE, GX_TEVPREV);
    GXSetTevSwapMode(stage, GX_TEV_SWAP0,  GX_TEV_SWAP0);

    GXSetNumTexGens(2);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0);
    GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX7);
//   GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);

}
#endif


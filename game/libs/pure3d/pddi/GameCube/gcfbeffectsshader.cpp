//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcFBEffectsShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <dolphin/gx.h>


//-------------------------------------------------------
pddiShadeColourTable gcFBEffectsShader::gColourTable[] = 
{
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable gcFBEffectsShader::gTextureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(&SetTexture)},
    {PDDI_SP_NULL , NULL}
};

//-------------------------------------------------------
pddiShadeIntTable gcFBEffectsShader::gIntTable[] = 
{
    { PDDI_SP_BLENDMODE,    SHADE_INT(&SetBlendMode) },
    { PDDI_SP_ALPHATEST,    SHADE_INT(&EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE, SHADE_INT(&SetAlphaCompare) },
    { PDDI_SP_NULL , NULL }
};

//-------------------------------------------------------
pddiShadeFloatTable gcFBEffectsShader::gFloatTable[] = 
{
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
//-------------------------------------------------------
gcFBEffectsShader::gcFBEffectsShader(gcContext* c) 
{
    mContext = c;

    mTexture = NULL;
    
    mAlphaTest        = false;
    mAlphaCompareMode = PDDI_COMPARE_GREATER;
    mAlphaBlendMode   = PDDI_BLEND_NONE;
}

//-------------------------------------------------------
gcFBEffectsShader::~gcFBEffectsShader() 
{
    if (mTexture != NULL) mTexture->Release();
}


//-------------------------------------------------------
void gcFBEffectsShader::Install(void)
{
    pddiBaseShader::InstallShader("fbeffects", &gcFBEffectsShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a fbeffects shader
pddiBaseShader *gcFBEffectsShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new gcFBEffectsShader((gcContext*)c);
}

//-------------------------------------------------------
const char *gcFBEffectsShader::GetType(void)
{
    static char fbeffects[] = "fbeffects";
    return fbeffects;
}

//-------------------------------------------------------
int gcFBEffectsShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcFBEffectsShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}

//-------------------------------------------------------
void gcFBEffectsShader::SetTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
}


//-------------------------------------------------------
void gcFBEffectsShader::SetBlendMode(int mode) 
{
    mAlphaBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcFBEffectsShader::EnableAlphaTest(int b) 
{
    mAlphaTest = (b != 0);
}

//-------------------------------------------------------
void gcFBEffectsShader::SetAlphaCompare(int compare) 
{
    mAlphaCompareMode = pddiCompareMode(compare);
}

//-------------------------------------------------------
int gcFBEffectsShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcFBEffectsShader::PreRender(void)
{
}

//-------------------------------------------------------
void gcFBEffectsShader::PostRender(void)
{
}

//-------------------------------------------------------
void gcFBEffectsShader::SetDevPass(unsigned pass)
{
    GXSetNumChans(1);
    GXSetNumTevStages(1);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);

    if (mTexture == NULL)
    {
        GXSetNumTexGens(0);
    }
    else
    {
        GXSetNumTexGens(1);
        GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
        mTexture->LoadTexture(GX_TEXMAP0);
    }

    if (mAlphaTest)
    {
        unsigned char aref = (unsigned char)(255.0F * 0.5f);
        GXSetAlphaCompare(gcAlphaCompTable[mAlphaCompareMode], aref, GX_AOP_OR, GX_NEVER, 0);
        GXSetZCompLoc(false);   
    }
    else
    {
        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
#ifdef NDEBUG
        GXSetZCompLoc(true);   
#else
        GXSetZCompLoc(false);   
#endif
    }

    // setup alpha blending mode
    int m = (int) mAlphaBlendMode;
    GXSetBlendMode(gcBlendModeTable[m].Type, gcBlendModeTable[m].Source, gcBlendModeTable[m].Dest, gcBlendModeTable[m].Op);

    // Setup rasterizer
    GXSetChanCtrl(GX_COLOR0A0, false, GX_SRC_VTX, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);

    // setup TEV 0
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);

    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA);

}




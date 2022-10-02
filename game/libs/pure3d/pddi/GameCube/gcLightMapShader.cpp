//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcLightMapShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <dolphin/gx.h>

//----------------- Lit & Unlit Untextured -------------------------------------
static gcColourBlendStruct UntexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct UntexturedAlphaBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * ColourTevOp) + D + bias) * ColourScale)
    //   A           B           C           D
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA,  GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
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
    GX_CA_ZERO, GX_CA_TEXA, GX_CA_RASA, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- Specular  --------------------------------------------------
static gcColourBlendStruct SpecularColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_RASC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct SpecularAlphaBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * ColourTevOp) + D + bias) * ColourScale)
    //   A           B           C           D
    GX_CA_RASA, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- Lightmap Textured ---------------------------------------
static gcColourBlendStruct LMTexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct LMTexturedAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};



static TEVSetting TEVSet[5] = 
{
    { &UntexturedColourBlendTable, &UntexturedAlphaBlendTable },
    { &TexturedColourBlendTable,   &TexturedAlphaBlendTable   },
    { &SpecularColourBlendTable,   &SpecularAlphaBlendTable   },
    { &SpecularColourBlendTable,   &SpecularAlphaBlendTable   },
    { &LMTexturedColourBlendTable, &LMTexturedAlphaBlendTable }
};

//-------------------------------------------------------
pddiShadeColourTable gcLightMapShader::gColourTable[] = 
{
    { PDDI_SP_AMBIENT,  SHADE_COLOUR(&SetAmbient) },
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&SetSpecular) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable gcLightMapShader::gTextureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(&SetTexture)},
    {PDDI_SP_LIGHTMAP, SHADE_TEXTURE(&SetLightMap)},
    {PDDI_SP_NULL , NULL}
};

//-------------------------------------------------------
pddiShadeIntTable gcLightMapShader::gIntTable[] = 
{
    { PDDI_SP_UVMODE,       SHADE_INT(&SetUVMode) },
    { PDDI_SP_FILTER,       SHADE_INT(&SetFilterMode) },
    { PDDI_SP_SHADEMODE,    SHADE_INT(&SetShadeMode) },
    { PDDI_SP_ISLIT,        SHADE_INT(&EnableLighting) },
    { PDDI_SP_BLENDMODE,    SHADE_INT(&SetBlendMode) },
    { PDDI_SP_ALPHATEST,    SHADE_INT(&EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE, SHADE_INT(&SetAlphaCompare) },
    { PDDI_SP_NULL , NULL }
};

//-------------------------------------------------------
pddiShadeFloatTable gcLightMapShader::gFloatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&SetShininess) },
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
//-------------------------------------------------------
gcLightMapShader::gcLightMapShader(gcContext* c) 
{
    mContext = c;

    mDirty = true;

    mTexture = NULL;
    mLightMap = NULL;
    mTexGen = PDDI_TEXGEN_NONE;
    mUVMode = PDDI_UV_CLAMP;
    mFilterMode = PDDI_FILTER_BILINEAR;

    mIsLit = false;
    mIsSpecular = false;
    mShadeMode = PDDI_SHADE_GOURAUD;
    mAmbient.Set(255, 255, 255);
    mDiffuse.Set(255, 255, 255);
    mSpecular.Set(0, 0, 0);
    mEmissive.Set(0, 0, 0);
    mShininess = 0.0F;

    mAlphaTest = false;
    mAlphaCompareMode = PDDI_COMPARE_GREATER;
    mAlphaBlendMode = PDDI_BLEND_NONE;

    mRasStates[2].mEnableLights = false;
    mRasStates[2].mAttenuation  = GX_AF_NONE;
    mRasStates[2].mLightMask    = GX_LIGHT_NULL;
}

//-------------------------------------------------------
gcLightMapShader::~gcLightMapShader() 
{
    if (mTexture != NULL) mTexture->Release();
    if (mLightMap != NULL) mLightMap->Release();
}


//-------------------------------------------------------
void gcLightMapShader::Install(void)
{
    pddiBaseShader::InstallShader("lightmap", &gcLightMapShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader *gcLightMapShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new gcLightMapShader((gcContext*)c);
}

//-------------------------------------------------------
const char *gcLightMapShader::GetType(void)
{
    static char lightmap[] = "lightmap";
    return lightmap;
}

//-------------------------------------------------------
int gcLightMapShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcLightMapShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}

//-------------------------------------------------------
void gcLightMapShader::SetTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    mDirty = true;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
}

//-------------------------------------------------------
void gcLightMapShader::SetLightMap(pddiTexture* t)
{
    if(t == mLightMap) return;

    mDirty = true;

    if(mLightMap != NULL) mLightMap->Release();
    mLightMap = (gcTexture *)t;
    if(mLightMap != NULL) mLightMap->AddRef();
}

//-------------------------------------------------------
void gcLightMapShader::SetUVMode(int mode) 
{
    mDirty = true;
    mUVMode = (pddiUVMode)mode;
}

//-------------------------------------------------------
void gcLightMapShader::SetFilterMode(int mode) 
{
    mDirty = true;
    mFilterMode = (pddiFilterMode)mode;
}

//-------------------------------------------------------
void gcLightMapShader::SetShadeMode(int shade) 
{
    mDirty = true;
    mShadeMode = (pddiShadeMode)shade;
}

//-------------------------------------------------------
void gcLightMapShader::EnableLighting(int b)
{
    mDirty = true;
    mIsLit = (b != 0);
}

//-------------------------------------------------------
void gcLightMapShader::SetAmbient(pddiColour a) 
{
    mDirty = true;
    mAmbient = a;
}

//-------------------------------------------------------
void gcLightMapShader::SetDiffuse(pddiColour colour) 
{
    mDirty = true;
    mDiffuse = colour;
}

//-------------------------------------------------------
void gcLightMapShader::SetSpecular(pddiColour c) 
{
    mDirty = true;
    mSpecular = c;
}

//-------------------------------------------------------
void gcLightMapShader::SetEmissive(pddiColour c) 
{
    mDirty = true;
    mEmissive = c;
}

//-------------------------------------------------------
void gcLightMapShader::SetShininess(float power) 
{
    mDirty = true;
    mShininess = power;
}

//-------------------------------------------------------
void gcLightMapShader::SetBlendMode(int mode) 
{
    mDirty = true;
    mAlphaBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcLightMapShader::EnableAlphaTest(int b) 
{
    mDirty = true;
    mAlphaTest = (b != 0);
}

//-------------------------------------------------------
void gcLightMapShader::SetAlphaCompare(int compare) 
{
    mDirty = true;
    mAlphaCompareMode = pddiCompareMode(compare);
}

//-------------------------------------------------------
int gcLightMapShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcLightMapShader::SetDevPass(unsigned pass)
{
    Rebuild();

    mContext->PreMultiplyLights(mDiffuse, mSpecular, mShininess);

    int nNumTevStages = 0;
    int nNumTexGens   = 0;
    
    int nTexCoord = (int) GX_TEXCOORD0;
    if (mTexture)
    {
        nNumTevStages++;
        nNumTexGens++;
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTexCoordGen((GXTexCoordID)nTexCoord++, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
        mTexture->LoadTexture(GX_TEXMAP0);      
    }
    
    if (mLightMap)
    {
        nNumTevStages++;
        nNumTexGens++;
        GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTexCoordGen((GXTexCoordID)nTexCoord, GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY);
        mLightMap->LoadTexture(GX_TEXMAP1);      
    }
    
    if (mIsSpecular)
    {
        nNumTevStages++;
        GXSetNumChans(2);
        GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }
    else
    {
        GXSetNumChans(1);
    }
    
    GXSetNumTevStages(nNumTevStages);
    GXSetNumTexGens(nNumTexGens);
    
    if (mAlphaTest)
    {
        unsigned char aref = (unsigned char)(255.0F * 0.5f);
        GXSetAlphaCompare(gcAlphaCompTable[mAlphaCompareMode], aref, GX_AOP_OR, GX_NEVER, 0);
        GXSetZCompLoc(false);   
    }
    else
    {
        GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
        GXSetZCompLoc(true);   
    }


    int m = (int) mAlphaBlendMode;
    GXSetBlendMode(gcBlendModeTable[m].Type, gcBlendModeTable[m].Source, gcBlendModeTable[m].Dest, gcBlendModeTable[m].Op);

    // Need to scale the ambient material value by the ambient light value 
    pddiColour al = mContext->GetAmbientLight();

    int r     = mEmissive.Red()   + ((mAmbient.Red()   * al.Red())   >> 8); 
    int g     = mEmissive.Green() + ((mAmbient.Green() * al.Green()) >> 8); 
    int b     = mEmissive.Blue()  + ((mAmbient.Blue()  * al.Blue())  >> 8); 
    int alpha = mEmissive.Alpha() + ((mAmbient.Alpha() * al.Alpha()) >> 8); 

    if (r  > 255) r  = 255;
    if (g  > 255) g  = 255;
    if (b  > 255) b  = 255;
    if (alpha > 255) alpha = 255;

    mRasStates[0].mAmbient.r = (unsigned char) r;
    mRasStates[0].mAmbient.g = (unsigned char) g;
    mRasStates[0].mAmbient.b = (unsigned char) b;
    mRasStates[0].mAmbient.a = (unsigned char) alpha;

    mRasStates[2].mAmbient = mRasStates[0].mAmbient;

    mRasStates[1].mAmbient.r = 0; // Don't add any ambient to specular pass
    mRasStates[1].mAmbient.g = 0;
    mRasStates[1].mAmbient.b = 0;
    mRasStates[1].mAmbient.a = 0;

    mRasStates[0].mEnableLights = mIsLit;
    mRasStates[1].mEnableLights = mIsSpecular;

    mTEVStates[0].mKonstColourSource = GX_TEV_KCSEL_K0;
    mTEVStates[0].mKonstAlphaSource  = GX_TEV_KASEL_K0_A;

    mTEVStates[2].mKonstColourSource = GX_TEV_KCSEL_K1;
    mTEVStates[2].mKonstAlphaSource =  GX_TEV_KASEL_K1_A;
    
    mTEVStates[1].mKonstColourSource = GX_TEV_KCSEL_K0;
    mTEVStates[1].mKonstAlphaSource  = GX_TEV_KASEL_K0_A;

    // build the currently active light mask
    if (mIsLit)
    {
        int lightmask = 0;
        int a;
        for (a = 0; a < mContext->GetMaxLights(); a++)
        {
            if (mContext->IsLightEnabled(a)) 
            {
                lightmask |= (1 << a);
            }
        }
        
        mRasStates[0].mLightMask = (GXLightID) lightmask;
        mRasStates[1].mLightMask = mIsSpecular ? (GXLightID)(lightmask << _GC_MAX_LIGHTS): GX_LIGHT_NULL;
    }

    mRasStates[0].SetRasterizer(GX_COLOR0);
    mRasStates[1].SetRasterizer(GX_COLOR1);

    mRasStates[2].SetRasterizer(GX_ALPHA0);
    mRasStates[2].SetRasterizer(GX_ALPHA1);

    int nNumStages = (int)GX_TEVSTAGE0;
    
    if (mTexture)
    {
        mTEVStates[0].SetTEV((GXTevStageID)nNumStages++);
    }
    
    if (mLightMap)
    {
        mTEVStates[1].SetTEV((GXTevStageID)nNumStages++);
    }
    
    if (mIsSpecular)
    {
        mTEVStates[2].SetTEV((GXTevStageID)nNumStages++);
    }
}



//**************************************************************
//
// Class gcTEVState
//
//
void gcLightMapShader::Rebuild(void)
{
    if (!mDirty) return;

    int set = mTexture ? 1 : 0;
    int lm = mLightMap ? 1 : 0;
 
    // Basic blending parameters
    mTEVStates[0].mTEVSet = &TEVSet[set];
    mTEVStates[2].mTEVSet = &TEVSet[set + 2];

    if(mLightMap && mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[4];
    }
    else if(mLightMap && !mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[1];
    }
    else if (!mLightMap)
    {
        mTEVStates[1].mTEVSet = &TEVSet[0];
    }

    if (mIsLit) mIsSpecular = 0 != (mSpecular.c & 0x00FFFFFF);
    else        mIsSpecular = false;

    mTEVStates[0].mColourChannelID = GX_COLOR0A0;
    mTEVStates[1].mColourChannelID = GX_COLOR0A0;
    mTEVStates[2].mColourChannelID = mIsSpecular ? GX_COLOR1A1 : GX_COLOR_NULL;

    // No Specular map for now
    mTEVStates[2].mTextureUVID  = GX_TEXCOORD_NULL;
    mTEVStates[2].mTextureMapID = GX_TEXMAP_NULL;

    int nTexCoord = (int) GX_TEXCOORD0;
    
    if (mTexture == NULL)
    {
        // Disable textures
        mTEVStates[0].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[0].mTextureMapID = GX_TEXMAP_NULL;
    }
    else
    {
        // Enable texture
        mTEVStates[0].mTextureUVID  = (GXTexCoordID)nTexCoord++;
        mTEVStates[0].mTextureMapID = GX_TEXMAP0;
        mTexture->SetWrapMode(gcUVWrapMode[mUVMode]);
    }
    
    if(mLightMap == NULL)
    {
        // Disable light map
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[1].mTextureMapID = GX_TEXMAP_NULL;      
    }
    else
    {
        // Enable lightmap
        mTEVStates[1].mTextureUVID  = (GXTexCoordID)nTexCoord;
        mTEVStates[1].mTextureMapID = GX_TEXMAP1;
        mLightMap->SetWrapMode(gcUVWrapMode[mUVMode]);
    }

    // P3D NEVER has two vertex colour channels (for now)
    mRasStates[1].mAmbientSource  = GX_SRC_REG;
    mRasStates[1].mMaterialSource = GX_SRC_REG;

    if (mIsLit)
    {
        // Do the material colour stuff
        // Lights are pre-multiplied by the diffuse to get around the Nintendo lighting model
        mRasStates[0].mMaterial.r = 255;
        mRasStates[0].mMaterial.g = 255;
        mRasStates[0].mMaterial.b = 255;
        mRasStates[0].mMaterial.a = 255;

        mRasStates[0].mAmbientSource  = GX_SRC_REG;
        mRasStates[0].mMaterialSource = GX_SRC_REG;

        mRasStates[1].mMaterial = mRasStates[0].mMaterial;

        mRasStates[0].mAttenuation = GX_AF_SPOT;
        mRasStates[1].mAttenuation = mIsSpecular ? GX_AF_SPEC : GX_AF_NONE;

        mRasStates[2].mMaterial       = mRasStates[0].mMaterial;
        mRasStates[2].mAmbientSource  = GX_SRC_REG;
        mRasStates[2].mMaterialSource = GX_SRC_REG;
    }
    else
    {
        mRasStates[0].mMaterial.r = (unsigned char)mDiffuse.Red();
        mRasStates[0].mMaterial.g = (unsigned char)mDiffuse.Green();
        mRasStates[0].mMaterial.b = (unsigned char)mDiffuse.Blue();
        mRasStates[0].mMaterial.a = (unsigned char)mDiffuse.Alpha();

        mRasStates[0].mAmbientSource  = GX_SRC_VTX;
        mRasStates[0].mMaterialSource = GX_SRC_VTX;

        mRasStates[1].mMaterial = mRasStates[0].mMaterial;

        mRasStates[2].mMaterial = mRasStates[0].mMaterial;
        mRasStates[2].mAmbientSource  = GX_SRC_VTX;
        mRasStates[2].mMaterialSource = GX_SRC_VTX;
    }

    mDirty = false;
}



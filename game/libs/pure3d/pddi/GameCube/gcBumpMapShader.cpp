//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcBumpMapShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <dolphin/gx.h>

//----------------- Lit & Unlit Untextured -------------------------------------
static gcColourBlendStruct UntexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct UntexturedAlphaBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * ColourTevOp) + D + bias) * ColourScale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- Lit & Unlit Textured ---------------------------------------
static gcColourBlendStruct TexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TexturedAlphaBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CA_ZERO, GX_CA_TEXA, GX_CA_RASA, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- Specular  --------------------------------------------------
static gcColourBlendStruct SpecularColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CC_RASC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct SpecularAlphaBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * ColourTevOp) + D + bias) * ColourScale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CA_RASA, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- Bumpmap Textured ---------------------------------------
static gcColourBlendStruct BMTexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_DISABLE

};

static gcAlphaBlendStruct BMTexturedAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_DISABLE
};

//----------------- Bumpmap Textured Shift ---------------------------------
static gcColourBlendStruct BMTexturedShiftColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_SUB, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct BMTexturedShiftAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_DISABLE
};


static TEVSetting TEVSet[6] = 
{
    { &UntexturedColourBlendTable, &UntexturedAlphaBlendTable },
    { &TexturedColourBlendTable,   &TexturedAlphaBlendTable   },
    { &SpecularColourBlendTable,   &SpecularAlphaBlendTable   },
    { &SpecularColourBlendTable,   &SpecularAlphaBlendTable   },
    { &BMTexturedColourBlendTable,      &BMTexturedAlphaBlendTable },
    { &BMTexturedShiftColourBlendTable, &BMTexturedShiftAlphaBlendTable }
    
};




//-------------------------------------------------------
pddiShadeColourTable gcBumpMapShader::gColourTable[] = 
{
    { PDDI_SP_AMBIENT,  SHADE_COLOUR(&SetAmbient) },
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&SetSpecular) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable gcBumpMapShader::gTextureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(&SetTexture)},
    {PDDI_SP_BUMPMAP, SHADE_TEXTURE(&SetBumpMap)},
    {PDDI_SP_NULL , NULL}
};

//-------------------------------------------------------
pddiShadeIntTable gcBumpMapShader::gIntTable[] = 
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
pddiShadeFloatTable gcBumpMapShader::gFloatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&SetShininess) },
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
//-------------------------------------------------------
gcBumpMapShader::gcBumpMapShader(gcContext* c) 
{
    mContext = c;

    mDirty = true;

    mTexture = NULL;
    mBumpMap = NULL;
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
gcBumpMapShader::~gcBumpMapShader() 
{
    if (mTexture != NULL) mTexture->Release();
}


//-------------------------------------------------------
void gcBumpMapShader::Install(void)
{
    pddiBaseShader::InstallShader("bumpmap", &gcBumpMapShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a BumpMap shader
pddiBaseShader *gcBumpMapShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new gcBumpMapShader((gcContext*)c);
}

//-------------------------------------------------------
const char *gcBumpMapShader::GetType(void)
{
    static char bumpmap[] = "bumpmap";
    return bumpmap;
}

//-------------------------------------------------------
int gcBumpMapShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcBumpMapShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}

//-------------------------------------------------------
void gcBumpMapShader::SetTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    mDirty = true;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
}

//-------------------------------------------------------
void gcBumpMapShader::SetBumpMap(pddiTexture *t)
{
    if (t == mBumpMap) return;

    mDirty = true;

    if (mBumpMap != NULL) mBumpMap->Release();
    mBumpMap = (gcTexture *)t;
    if (mBumpMap != NULL) mBumpMap->AddRef(); 
}

//-------------------------------------------------------
void gcBumpMapShader::SetUVMode(int mode) 
{
    mDirty = true;
    mUVMode = (pddiUVMode)mode;
}

//-------------------------------------------------------
void gcBumpMapShader::SetFilterMode(int mode) 
{
    mDirty = true;
    mFilterMode = (pddiFilterMode)mode;
}

//-------------------------------------------------------
void gcBumpMapShader::SetShadeMode(int shade) 
{
    mDirty = true;
    mShadeMode = (pddiShadeMode)shade;
}

//-------------------------------------------------------
void gcBumpMapShader::EnableLighting(int b)
{
    mDirty = true;
    mIsLit = (b != 0);
}

//-------------------------------------------------------
void gcBumpMapShader::SetAmbient(pddiColour a) 
{
    mDirty = true;
    mAmbient = a;
}

//-------------------------------------------------------
void gcBumpMapShader::SetDiffuse(pddiColour colour) 
{
    mDirty = true;
    mDiffuse = colour;
}

//-------------------------------------------------------
void gcBumpMapShader::SetSpecular(pddiColour c) 
{
    mDirty = true;
    mSpecular = c;
}

//-------------------------------------------------------
void gcBumpMapShader::SetEmissive(pddiColour c) 
{
    mDirty = true;
    mEmissive = c;
}

//-------------------------------------------------------
void gcBumpMapShader::SetShininess(float power) 
{
    mDirty = true;
    mShininess = power;
}

//-------------------------------------------------------
void gcBumpMapShader::SetBlendMode(int mode) 
{
    mDirty = true;
    mAlphaBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcBumpMapShader::EnableAlphaTest(int b) 
{
    mDirty = true;
    mAlphaTest = (b != 0);
}

//-------------------------------------------------------
void gcBumpMapShader::SetAlphaCompare(int compare) 
{
    mDirty = true;
    mAlphaCompareMode = pddiCompareMode(compare);
}

//-------------------------------------------------------
void gcBumpMapShader::PreRender(void)
{
    mContext->ScaleNormal(1.0/48.0);
}

//-------------------------------------------------------
void gcBumpMapShader::PostRender(void)
{
    mContext->ScaleNormal(1.0);
}

//-------------------------------------------------------
int gcBumpMapShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcBumpMapShader::SetDevPass(unsigned pass)
{
    Rebuild();

    mContext->PreMultiplyLights(mDiffuse, mSpecular, mShininess);

    int nNumTevStages = 0;
    int nNumTexGens   = 0;
    
    // Note: Currently a material texture must always exist
    //       in order for bump mapping to work.  The "bump" 
    //       stage depends on the coordinates (GX_TEXCOORD0) 
    //       generated from the material texture.
    //       Tangents and Binormals are currently being calculated
    //       from the material texture.
    
    if (mTexture)
    {
        nNumTevStages++;
        nNumTexGens++;
        
        mTexture->LoadTexture(GX_TEXMAP0);
        GXSetNumTexGens(nNumTexGens);
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }

    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);

    if (mBumpMap)
    {
        nNumTevStages+=2;
        nNumTexGens+=2;

        GXSetNumTexGens(nNumTexGens);
        mBumpMap->LoadTexture(GX_TEXMAP1);   

        GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP0, GX_TEV_SWAP0);
      
        GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
        GXSetTexCoordGen(GX_TEXCOORD2, GX_TG_BUMP0, GX_TG_TEXCOORD1, GX_IDENTITY);
         
    }
    
    if (mIsSpecular)
    {
        nNumTevStages++;
        GXSetNumChans(2);
        GXSetTevSwapMode(GX_TEVSTAGE3, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }
    else
    {
        GXSetNumChans(1);
    }
    
    GXSetNumTevStages(nNumTevStages);
    
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

    mTEVStates[1].mKonstColourSource = GX_TEV_KCSEL_K0;
    mTEVStates[1].mKonstAlphaSource  = GX_TEV_KASEL_K0_A;

    mTEVStates[2].mKonstColourSource = GX_TEV_KCSEL_K0;
    mTEVStates[2].mKonstAlphaSource  = GX_TEV_KASEL_K0_A;

    mTEVStates[3].mKonstColourSource = GX_TEV_KCSEL_K1;
    mTEVStates[3].mKonstAlphaSource =  GX_TEV_KASEL_K1_A;

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
    
    if (mBumpMap)
    {
        mTEVStates[1].SetTEV((GXTevStageID)nNumStages++);
        mTEVStates[2].SetTEV((GXTevStageID)nNumStages++);
    }
    
    if (mIsSpecular)
    {
        mTEVStates[3].SetTEV((GXTevStageID)nNumStages++);
    }
}



//**************************************************************
//
// Class gcTEVState
//
//
void gcBumpMapShader::Rebuild(void)
{
    if (!mDirty) return;

    int set = mTexture ? 1 : 0;
    int bm  = mBumpMap ? 1 : 0;
 
    // Basic blending parameters
    mTEVStates[0].mTEVSet = &TEVSet[set];
    mTEVStates[3].mTEVSet = &TEVSet[2];

    if(mBumpMap && mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[4];
        mTEVStates[2].mTEVSet = &TEVSet[5];
    }
    else if(mBumpMap && !mTexture)
    {
        // This situation should never occur
        mTEVStates[1].mTEVSet = &TEVSet[4];
        mTEVStates[2].mTEVSet = &TEVSet[5];
    }

    if (mIsLit) mIsSpecular = 0 != (mSpecular.c & 0x00FFFFFF);
    else        mIsSpecular = false;

    mTEVStates[0].mColourChannelID = GX_COLOR0A0;
    mTEVStates[1].mColourChannelID = GX_COLOR0A0;
    mTEVStates[2].mColourChannelID = GX_COLOR_NULL;
    mTEVStates[3].mColourChannelID = mIsSpecular ? GX_COLOR1A1 : GX_COLOR_NULL;

    // No Specular map for now
    mTEVStates[3].mTextureUVID  = GX_TEXCOORD_NULL;
    mTEVStates[3].mTextureMapID = GX_TEXMAP_NULL;
    
    if (mTexture == NULL)
    {
        // Disable textures
        mTEVStates[0].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[0].mTextureMapID = GX_TEXMAP_NULL;
    }
    else
    {
        // Enable texture
        mTEVStates[0].mTextureUVID  = GX_TEXCOORD0;
        mTEVStates[0].mTextureMapID = GX_TEXMAP0;
        mTexture->SetWrapMode(gcUVWrapMode[mUVMode]);
    }
    
    if(mBumpMap == NULL)
    {
        // Disable bump map
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[1].mTextureMapID = GX_TEXMAP_NULL;      

        mTEVStates[2].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[2].mTextureMapID = GX_TEXMAP_NULL;      
    }
    else
    {
        // Enable bumpmap
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD1;
        mTEVStates[1].mTextureMapID = GX_TEXMAP1;

        mTEVStates[2].mTextureUVID  = GX_TEXCOORD2;
        mTEVStates[2].mTextureMapID = GX_TEXMAP1;

        mBumpMap->SetWrapMode(gcUVWrapMode[mUVMode]);
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

      // used to set up alpha
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



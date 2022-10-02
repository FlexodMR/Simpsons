//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcBoardReflShader.hpp>
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

//----------------- Bumpmap Textured Shift ---------------------------------
static gcColourBlendStruct BMTexturedShiftColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct BMTexturedShiftAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale       Clamp
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_DISABLE
    
};

static TEVSetting TEVSet[4] = 
{
    { &UntexturedColourBlendTable, &UntexturedAlphaBlendTable },
    { &TexturedColourBlendTable,   &TexturedAlphaBlendTable   },
    { &SpecularColourBlendTable,   &SpecularAlphaBlendTable   },
    { &BMTexturedShiftColourBlendTable, &BMTexturedShiftAlphaBlendTable }
    
};

//-------------------------------------------------------
pddiShadeColourTable gcBoardReflShader::gColourTable[] = 
{
    { PDDI_SP_AMBIENT,  SHADE_COLOUR(&SetAmbient) },
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&SetSpecular) },
    { PDDI_SP_ENVBLEND, SHADE_COLOUR(&SetReflBlend) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable gcBoardReflShader::gTextureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(&SetTexture)},
    {PDDI_SP_REFLMAP, SHADE_TEXTURE(&SetReflection)},
    {PDDI_SP_NULL , NULL}
};

//-------------------------------------------------------
pddiShadeIntTable gcBoardReflShader::gIntTable[] = 
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
pddiShadeFloatTable gcBoardReflShader::gFloatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&SetShininess) },
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
//-------------------------------------------------------
gcBoardReflShader::gcBoardReflShader(gcContext* c) 
{
    mContext = c;

    mDirty = true;

    mTexture = NULL;
    mReflection = NULL;
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

    mReflBlend.r = 128;
    mReflBlend.g = 128;
    mReflBlend.b = 128;
    mReflBlend.a = 0;

    mAlphaTest = false;
    mAlphaCompareMode = PDDI_COMPARE_GREATER;
    mAlphaBlendMode = PDDI_BLEND_NONE;

    mRasStates[2].mEnableLights = false;
    mRasStates[2].mAttenuation  = GX_AF_NONE;
    mRasStates[2].mLightMask    = GX_LIGHT_NULL;
}

//-------------------------------------------------------
gcBoardReflShader::~gcBoardReflShader()
{
    if (mTexture != NULL) mTexture->Release();
    if (mReflection != NULL) mReflection->Release();
}


//-------------------------------------------------------
void gcBoardReflShader::Install(void)
{
    pddiBaseShader::InstallShader("boardRefl", &gcBoardReflShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader *gcBoardReflShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new gcBoardReflShader((gcContext*)c);
}

//-------------------------------------------------------
const char *gcBoardReflShader::GetType(void)
{
    static char boardRefl[] = "boardRefl";
    return boardRefl;
}

//-------------------------------------------------------
int gcBoardReflShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcBoardReflShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}

//-------------------------------------------------------
void gcBoardReflShader::SetTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    mDirty = true;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
    
}

//-------------------------------------------------------
void gcBoardReflShader::SetReflection(pddiTexture* t)
{
    if(t == mReflection) return;

    mDirty = true;

    if(mReflection != NULL) mReflection->Release();
    mReflection = (gcTexture *)t;
    if(mReflection != NULL) mReflection->AddRef();
}

//-------------------------------------------------------
void gcBoardReflShader::SetUVMode(int mode) 
{
    mDirty = true;
    mUVMode = (pddiUVMode)mode;
}

//-------------------------------------------------------
void gcBoardReflShader::SetFilterMode(int mode) 
{
    mDirty = true;
    mFilterMode = (pddiFilterMode)mode;
}

//-------------------------------------------------------
void gcBoardReflShader::SetShadeMode(int shade) 
{
    mDirty = true;
    mShadeMode = (pddiShadeMode)shade;
}

//-------------------------------------------------------
void gcBoardReflShader::EnableLighting(int b)
{
    mDirty = true;
    mIsLit = (b != 0);
}

//-------------------------------------------------------
void gcBoardReflShader::SetAmbient(pddiColour a) 
{
    mDirty = true;
    mAmbient = a;
}

//-------------------------------------------------------
void gcBoardReflShader::SetDiffuse(pddiColour colour) 
{
    mDirty = true;
    mDiffuse = colour;
}

//-------------------------------------------------------
void gcBoardReflShader::SetSpecular(pddiColour c) 
{
    mDirty = true;
    mSpecular = c;
}

//-------------------------------------------------------
void gcBoardReflShader::SetReflBlend(pddiColour c) 
{
    mReflBlend.r = c.Red();
    mReflBlend.g = c.Green();
    mReflBlend.b = c.Blue();
    mReflBlend.a = c.Alpha();
}


//-------------------------------------------------------
void gcBoardReflShader::SetEmissive(pddiColour c) 
{
    mDirty = true;
    mEmissive = c;
}

//-------------------------------------------------------
void gcBoardReflShader::SetShininess(float power) 
{
    mDirty = true;
    mShininess = power;
}

//-------------------------------------------------------
void gcBoardReflShader::SetBlendMode(int mode) 
{
    mDirty = true;
    mAlphaBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcBoardReflShader::EnableAlphaTest(int b) 
{
    mDirty = true;
    mAlphaTest = (b != 0);
}

//-------------------------------------------------------
void gcBoardReflShader::SetAlphaCompare(int compare)
{
    mDirty = true;
    mAlphaCompareMode = pddiCompareMode(compare);
}

//-------------------------------------------------------
bool gcBoardReflShader::SetVector(unsigned param, const pddiVector& vector)
{
    mCameraVector = vector;
    return true;
}

//-------------------------------------------------------
int gcBoardReflShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcBoardReflShader::SetDevPass(unsigned pass)
{
    Rebuild();
    
    mContext->PreMultiplyLights(mDiffuse, mSpecular, mShininess);
    
    // Set up a light that is in the same 
    // position as the camera 
    GXLightObj pl;
    GXColor lightColor;
    
    lightColor.r = 255;
    lightColor.g = 255;
    lightColor.b = 255;
    lightColor.a = 255;
    
    GXInitLightColor(&pl, lightColor);
  
    GXInitLightAttn(&pl, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
    GXInitLightPos(&pl, mCameraVector.x, mCameraVector.y, mCameraVector.z);
    GXInitLightDir(&pl, 0.0f, 0.0f, 1.0f);
    
    GXLoadLightObjImm(&pl, GX_LIGHT7);

    int nNumTevStages = 0;
    int nNumTexGens   = 0;
    
    // Note: Currently a material texture must always exist
    //       in order for reflection mapping to work.  The "reflection" 
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

    if (mReflection)
    {
        nNumTevStages++;
        nNumTexGens++;

        GXSetNumTexGens(nNumTexGens);
        mReflection->LoadTexture(GX_TEXMAP1);   

        GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
        
        // we want light number 7 (which was set up above)
        // to effect the reflection texture
        GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_BUMP7, GX_TG_TEXCOORD0, GX_IDENTITY);      
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

    mTEVStates[1].mKonstColourSource = GX_TEV_KCSEL_K0;
    mTEVStates[1].mKonstAlphaSource  = GX_TEV_KASEL_K0_A;
    
    mTEVStates[2].mKonstColourSource = GX_TEV_KCSEL_K1;
    mTEVStates[2].mKonstAlphaSource =  GX_TEV_KASEL_K1_A;

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

    // set up the blend value for the reflection map
    GXSetTevColor(GX_TEVREG0, mReflBlend);

    int nNumStages = (int)GX_TEVSTAGE0;
      
    if (mTexture)
    {
        mTEVStates[0].SetTEV((GXTevStageID)nNumStages);
        nNumStages++;
        
        if (mReflection)
        {
            mTEVStates[1].SetTEV((GXTevStageID)nNumStages);
            nNumStages++;
        }
    }
    
    if (mIsSpecular)
    {
        mTEVStates[2].SetTEV((GXTevStageID)nNumStages);
        nNumStages++;
    }
}



//**************************************************************
//
// Class gcTEVState
//
//
void gcBoardReflShader::Rebuild(void)
{
    if (!mDirty) return;

    int set = mTexture ? 1 : 0;
 
    // Basic blending parameters
    mTEVStates[0].mTEVSet = &TEVSet[set];
    mTEVStates[2].mTEVSet = &TEVSet[2];

    if(mReflection && mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[3];
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
    
    if(mReflection == NULL)
    {
        // Disable environment
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[1].mTextureMapID = GX_TEXMAP_NULL;      
    }
    else
    {
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD1;
        mTEVStates[1].mTextureMapID = GX_TEXMAP1;

        mReflection->SetWrapMode(gcUVWrapMode[mUVMode]);
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



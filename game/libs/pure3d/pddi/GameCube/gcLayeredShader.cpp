//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcLayeredShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <dolphin/gx.h>

//----------------- 0. Lit & Unlit Untextured -------------------------------------
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

//----------------- 1. Lit & Unlit Textured ---------------------------------------
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

//----------------- 2. + 3. Specular  ----------------------------------------------
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

//----------------- 4. TopTex None ---------------------------------------
static gcColourBlendStruct TTNoneColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TTNoneAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_TEXA, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- 5. TopTex Alpha ---------------------------------------
static gcColourBlendStruct TTAlphaColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_TEXC, GX_CC_CPREV, GX_CC_TEXA, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TTAlphaAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_TEXA, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- 6. TopTex Add ---------------------------------------
static gcColourBlendStruct TTAddColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TTAddAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_TEXA, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- 7.  TopTex Subtract ---------------------------------------
static gcColourBlendStruct TTSubtractColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_SUB, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TTSubtractAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_TEXA, GX_CA_ZERO,  GX_CA_ZERO, GX_CA_ZERO, GX_TEV_SUB, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- 8. TopTex Modulate ---------------------------------------
static gcColourBlendStruct TTModulateColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TTModulateAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

//----------------- 9. TopTex Modulate2 ---------------------------------------
static gcColourBlendStruct TTModulate2ColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO, GX_TEV_ADD, GX_CS_SCALE_2, GX_ENABLE
};

static gcAlphaBlendStruct TTModulate2AlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_ZERO, GX_CA_TEXA, GX_CA_APREV, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_2, GX_ENABLE
};

//----------------- 10. TopTex AddModulateAlpha ---------------------------------------
static gcColourBlendStruct TTAddModAlphaColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_APREV, GX_CC_TEXC, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct TTAddModAlphaAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static TEVSetting TEVSet[11] = 
{
    { &UntexturedColourBlendTable,    &UntexturedAlphaBlendTable    },  // 0
    { &TexturedColourBlendTable,      &TexturedAlphaBlendTable      },  // 1
    { &SpecularColourBlendTable,      &SpecularAlphaBlendTable      },  // 2
    { &SpecularColourBlendTable,      &SpecularAlphaBlendTable      },  // 3
    { &TTNoneColourBlendTable,        &TTNoneAlphaBlendTable        },  // 4
    { &TTAlphaColourBlendTable,       &TTAlphaAlphaBlendTable       },  // 5
    { &TTAddColourBlendTable,         &TTAddAlphaBlendTable         },  // 6
    { &TTSubtractColourBlendTable,    &TTSubtractAlphaBlendTable    },  // 7
    { &TTModulateColourBlendTable,    &TTModulateAlphaBlendTable    },  // 8
    { &TTModulate2ColourBlendTable,   &TTModulate2AlphaBlendTable   },  // 9
    { &TTAddModAlphaColourBlendTable, &TTAddModAlphaAlphaBlendTable }   // 10
};

//-------------------------------------------------------
pddiShadeColourTable gcLayeredShader::gColourTable[] = 
{
    { PDDI_SP_AMBIENT,  SHADE_COLOUR(&SetAmbient) },
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&SetSpecular) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable gcLayeredShader::gTextureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(&SetTexture)},
    {PDDI_SP_TOPTEX, SHADE_TEXTURE(&SetTopTex)},
    {PDDI_SP_NULL , NULL}
};

//-------------------------------------------------------
pddiShadeIntTable gcLayeredShader::gIntTable[] = 
{
    { PDDI_SP_UVMODE,       SHADE_INT(&SetUVMode) },
    { PDDI_SP_FILTER,       SHADE_INT(&SetFilterMode) },
    { PDDI_SP_SHADEMODE,    SHADE_INT(&SetShadeMode) },
    { PDDI_SP_ISLIT,        SHADE_INT(&EnableLighting) },
    { PDDI_SP_BLENDMODE,    SHADE_INT(&SetBlendMode) },
    { PDDI_SP_ALPHATEST,    SHADE_INT(&EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE, SHADE_INT(&SetAlphaCompare) },
    { PDDI_SP_TEXBLENDMODE, SHADE_INT(&SetTextureBlendMode) },
    { PDDI_SP_NULL , NULL }
};

//-------------------------------------------------------
pddiShadeFloatTable gcLayeredShader::gFloatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&SetShininess) },
    { PDDI_SP_NULL, NULL}
};


//-------------------------------------------------------
//-------------------------------------------------------
gcLayeredShader::gcLayeredShader(gcContext* c) 
{
    mContext = c;

    mDirty = true;

    mTexture     = NULL;
    mTopTex      = NULL;
    mTexBlendMode = PDDI_BLEND_MODULATE;
    mTexGen      = PDDI_TEXGEN_NONE;
    mUVMode      = PDDI_UV_CLAMP;
    mFilterMode  = PDDI_FILTER_BILINEAR;

    mIsLit       = false;
    mIsSpecular  = false;
    mShadeMode   = PDDI_SHADE_GOURAUD;
    
    mAmbient.Set(255, 255, 255);
    mDiffuse.Set(255, 255, 255);
    mSpecular.Set(0, 0, 0);
    mEmissive.Set(0, 0, 0);
    mShininess = 0.0F;

    mAlphaTest        = false;
    mAlphaCompareMode = PDDI_COMPARE_GREATER;
    mAlphaBlendMode   = PDDI_BLEND_NONE;

    mRasStates[2].mEnableLights = false;
    mRasStates[2].mAttenuation  = GX_AF_NONE;
    mRasStates[2].mLightMask    = GX_LIGHT_NULL;
}

//-------------------------------------------------------
gcLayeredShader::~gcLayeredShader() 
{
    if (mTexture != NULL) mTexture->Release();
    if (mTopTex != NULL) mTopTex->Release();
}


//-------------------------------------------------------
void gcLayeredShader::Install(void)
{
    pddiBaseShader::InstallShader("layered", &gcLayeredShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader* gcLayeredShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new gcLayeredShader((gcContext*)c);
}

//-------------------------------------------------------
const char* gcLayeredShader::GetType(void)
{
    static char layered[] = "layered";
    return layered;
}

//-------------------------------------------------------
int gcLayeredShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcLayeredShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}

//-------------------------------------------------------
void gcLayeredShader::SetTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    mDirty = true;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
}

//-------------------------------------------------------
void gcLayeredShader::SetTopTex(pddiTexture* t)
{
    if(t == mTopTex) return;

    mDirty = true;

    if(mTopTex != NULL) mTopTex->Release();
    mTopTex = (gcTexture *)t;
    if(mTopTex != NULL) mTopTex->AddRef();

}

//-------------------------------------------------------
void gcLayeredShader::SetUVMode(int mode) 
{
    mDirty = true;
    mUVMode = (pddiUVMode)mode;
}

//-------------------------------------------------------
void gcLayeredShader::SetFilterMode(int mode) 
{
    mDirty = true;
    mFilterMode = (pddiFilterMode)mode;
}

//-------------------------------------------------------
void gcLayeredShader::SetTextureBlendMode(int mode)
{
    mDirty = true;
    mTexBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcLayeredShader::SetShadeMode(int shade) 
{
    mDirty = true;
    mShadeMode = (pddiShadeMode)shade;
}

//-------------------------------------------------------
void gcLayeredShader::EnableLighting(int b)
{
    mDirty = true;
    mIsLit = (b != 0);
}

//-------------------------------------------------------
void gcLayeredShader::SetAmbient(pddiColour a) 
{
    mDirty = true;
    mAmbient = a;
}

//-------------------------------------------------------
void gcLayeredShader::SetDiffuse(pddiColour colour) 
{
    mDirty = true;
    mDiffuse = colour;
}

//-------------------------------------------------------
void gcLayeredShader::SetSpecular(pddiColour c) 
{
    mDirty = true;
    mSpecular = c;
}

//-------------------------------------------------------
void gcLayeredShader::SetEmissive(pddiColour c) 
{
    mDirty = true;
    mEmissive = c;
}

//-------------------------------------------------------
void gcLayeredShader::SetShininess(float power) 
{
    mDirty = true;
    mShininess = power;
}

//-------------------------------------------------------
void gcLayeredShader::SetBlendMode(int mode) 
{
    mDirty = true;
    mAlphaBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcLayeredShader::EnableAlphaTest(int b) 
{
    mDirty = true;
    mAlphaTest = (b != 0);
}

//-------------------------------------------------------
void gcLayeredShader::SetAlphaCompare(int compare) 
{
    mDirty = true;
    mAlphaCompareMode = pddiCompareMode(compare);
}

//-------------------------------------------------------
int gcLayeredShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcLayeredShader::SetDevPass(unsigned pass)
{
    Rebuild();

    mContext->PreMultiplyLights(mDiffuse, mSpecular, mShininess);

    int nNumTevStages = 0;
    int nNumTexGens   = 0;
    
    int nTexCoord = (int) GX_TEXCOORD0;
    if (mTexture)
    {
        mTexture->LoadTexture(GX_TEXMAP0); 
        
        nNumTevStages++;
        nNumTexGens++;
        GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTexCoordGen((GXTexCoordID)nTexCoord++, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
              
    }
    
    if (mTopTex)
    {
        mTopTex->LoadTexture(GX_TEXMAP1);      
 
        nNumTevStages++;
        nNumTexGens++;
        GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTexCoordGen((GXTexCoordID)nTexCoord, GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY);
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
    
    if (mTopTex)
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
void gcLayeredShader::Rebuild(void)
{
    if (!mDirty) return;

    int set = mTexture ? 1 : 0;
    int tt = mTopTex ? 1 : 0;
 
    // Basic blending parameters
    mTEVStates[0].mTEVSet = &TEVSet[set];
    mTEVStates[2].mTEVSet = &TEVSet[set + 2];

    if(mTopTex && mTexture)
    {
        switch( mTexBlendMode )
        {
          case PDDI_BLEND_NONE:
                // sk This seems a little hacky but...
                mTopTex = 0;            
          break;

          case PDDI_BLEND_ALPHA:
                mTEVStates[1].mTEVSet = &TEVSet[5];
          break;

          case PDDI_BLEND_ADD:
                mTEVStates[1].mTEVSet = &TEVSet[6];
          break;

          case PDDI_BLEND_SUBTRACT:
                mTEVStates[1].mTEVSet = &TEVSet[7];            
          break;

          case PDDI_BLEND_MODULATE:
                mTEVStates[1].mTEVSet = &TEVSet[8];            
          break;
          
          case PDDI_BLEND_MODULATE2:
                mTEVStates[1].mTEVSet = &TEVSet[9];
          break;

          case PDDI_BLEND_ADDMODULATEALPHA:
                mTEVStates[1].mTEVSet = &TEVSet[10];            
          break;

          default:
                mTEVStates[1].mTEVSet = &TEVSet[8];
          break;
        }
    }
    else if(mTopTex && !mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[1];
    }
    else if (!mTopTex)
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
    
    if(mTopTex == NULL)
    {
        // Disable top texture
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[1].mTextureMapID = GX_TEXMAP_NULL;      
    }
    else
    {
        // Enable top texture
        mTEVStates[1].mTextureUVID  = (GXTexCoordID)nTexCoord;
        mTEVStates[1].mTextureMapID = GX_TEXMAP1;
        mTopTex->SetWrapMode(gcUVWrapMode[mUVMode]);
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

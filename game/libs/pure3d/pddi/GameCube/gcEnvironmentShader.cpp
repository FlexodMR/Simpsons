//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcEnvironmentShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <dolphin/mtx.h>

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
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};


//----------------- Environment Textured ---------------------------------------
static gcColourBlendStruct EnvTexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
//    GX_CC_TEXC, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct EnvTexturedAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
//    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
    GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

/*
//----------------- Environment Textured ---------------------------------------
static gcColourBlendStruct EnvTexturedColourBlendTable =
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_CPREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};

static gcAlphaBlendStruct EnvTexturedAlphaBlendTable = 
{  // dest = CLAMP((((A * (1.0 - C) + B * C) * TevOp) + D + bias) * scale)
    //   A           B           C           D          TevOp       Scale
    GX_CA_ZERO, GX_CA_TEXA, GX_CA_A0, GX_CA_APREV, GX_TEV_ADD, GX_CS_SCALE_1, GX_ENABLE
};
*/


static TEVSetting TEVSet[5] = 
{
    { &UntexturedColourBlendTable,  &UntexturedAlphaBlendTable },
    { &TexturedColourBlendTable,    &TexturedAlphaBlendTable   },
    { &SpecularColourBlendTable,    &SpecularAlphaBlendTable   },
    { &SpecularColourBlendTable,    &SpecularAlphaBlendTable   },
    { &EnvTexturedColourBlendTable, &EnvTexturedAlphaBlendTable }
};

//-------------------------------------------------------
pddiShadeColourTable gcEnvironmentShader::gColourTable[] = 
{
    { PDDI_SP_AMBIENT,  SHADE_COLOUR(&SetAmbient) },
    { PDDI_SP_DIFFUSE,  SHADE_COLOUR(&SetDiffuse) },
    { PDDI_SP_EMISSIVE, SHADE_COLOUR(&SetEmissive) },
    { PDDI_SP_SPECULAR, SHADE_COLOUR(&SetSpecular) },
    { PDDI_SP_ENVBLEND, SHADE_COLOUR(&SetEnvBlend) },
    { PDDI_SP_NULL, NULL }
};

//-------------------------------------------------------
pddiShadeTextureTable gcEnvironmentShader::gTextureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(&SetTexture)},
    {PDDI_SP_REFLMAP, SHADE_TEXTURE(&SetEnvironment)},
    {PDDI_SP_NULL , NULL}
};

//-------------------------------------------------------
pddiShadeIntTable gcEnvironmentShader::gIntTable[] = 
{
    { PDDI_SP_UVMODE,       SHADE_INT(&SetUVMode) },
    { PDDI_SP_FILTER,       SHADE_INT(&SetFilterMode) },
    { PDDI_SP_SHADEMODE,    SHADE_INT(&SetShadeMode) },
    { PDDI_SP_ISLIT,        SHADE_INT(&EnableLighting) },
    { PDDI_SP_BLENDMODE,    SHADE_INT(&SetBlendMode) },
    { PDDI_SP_ALPHATEST,    SHADE_INT(&EnableAlphaTest) },
    { PDDI_SP_ALPHACOMPARE, SHADE_INT(&SetAlphaCompare) },
    { PDDI_SP_TWOSIDED,     SHADE_INT(&SetDoubleSided) },
    { PDDI_SP_NULL , NULL }
};

//-------------------------------------------------------
pddiShadeFloatTable gcEnvironmentShader::gFloatTable[] = 
{
    { PDDI_SP_SHININESS, SHADE_FLOAT(&SetShininess) },
    { PDDI_SP_NULL, NULL}
};

pddiShadeVectorTable gcEnvironmentShader::gVectorTable[] = 
{
    {PDDI_SP_ROTVEC, SHADE_VECTOR(&gcEnvironmentShader::SetRotVect)},
    {PDDI_SP_NULL , NULL}
};


//-------------------------------------------------------
//-------------------------------------------------------
gcEnvironmentShader::gcEnvironmentShader(gcContext* c) 
{
    mContext = c;

    mDirty = true;

    mTexture = NULL;
    mEnvironment = NULL;
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
    
    mIsDoubleSided = false;

    mEnvBlend.r = 128;
    mEnvBlend.g = 128;
    mEnvBlend.b = 128;
    mEnvBlend.a = 128;

    mAlphaTest = false;
    mAlphaCompareMode = PDDI_COMPARE_GREATER;
    mAlphaBlendMode = PDDI_BLEND_NONE;

    mRasStates[2].mEnableLights = false;
    mRasStates[2].mAttenuation  = GX_AF_NONE;
    mRasStates[2].mLightMask    = GX_LIGHT_NULL;

    mIsSphereMap = false;
    mSphereRotation.Set(0.0F, 0.0F, 0.0F);

}

//-------------------------------------------------------


//-------------------------------------------------------
gcEnvironmentShader::~gcEnvironmentShader()
{
    if (mTexture != NULL) mTexture->Release();
    if (mEnvironment != NULL) mEnvironment->Release();
}


//-------------------------------------------------------
void gcEnvironmentShader::Install(void)
{
    pddiBaseShader::InstallShader("environment", &gcEnvironmentShader::Allocate, NULL);
    pddiBaseShader::InstallShader("spheremap", &gcEnvironmentShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader *gcEnvironmentShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    gcEnvironmentShader *es = new gcEnvironmentShader((gcContext*)c);
    // Is this a spheremap?
    if (*name == 's') es->mIsSphereMap = true;

    return es;
}

//-------------------------------------------------------
const char *gcEnvironmentShader::GetType(void)
{
    static char environment[] = "environment";
    static char spheremap[]   = "spheremap";

    if (mIsSphereMap) return spheremap;
    return environment;
}

//-------------------------------------------------------
int gcEnvironmentShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}

//-------------------------------------------------------
void gcEnvironmentShader::SetTexture(pddiTexture *t)
{
    if (t == mTexture) return;

    mDirty = true;

    if (mTexture != NULL) mTexture->Release();
    mTexture = (gcTexture *)t;
    if (mTexture != NULL) mTexture->AddRef();
    
}

//-------------------------------------------------------
void gcEnvironmentShader::SetEnvironment(pddiTexture* t)
{
    if(t == mEnvironment) return;

    mDirty = true;

    if(mEnvironment != NULL) mEnvironment->Release();
    mEnvironment = (gcTexture *)t;
    if(mEnvironment != NULL) mEnvironment->AddRef();

}

//-------------------------------------------------------
void gcEnvironmentShader::SetUVMode(int mode) 
{
    mDirty = true;
    mUVMode = (pddiUVMode)mode;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetFilterMode(int mode) 
{
    mDirty = true;
    mFilterMode = (pddiFilterMode)mode;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetShadeMode(int shade) 
{
    mDirty = true;
    mShadeMode = (pddiShadeMode)shade;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetDoubleSided(int doubleSided)
{
    mDirty = true;
    mIsDoubleSided = doubleSided;       
}

//-------------------------------------------------------
void gcEnvironmentShader::EnableLighting(int b)
{
    mDirty = true;
    mIsLit = (b != 0);
}

//-------------------------------------------------------
void gcEnvironmentShader::SetAmbient(pddiColour a) 
{
    mDirty = true;
    mAmbient = a;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetDiffuse(pddiColour colour) 
{
    mDirty = true;
    mDiffuse = colour;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetSpecular(pddiColour c) 
{
    mDirty = true;
    mSpecular = c;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetEnvBlend(pddiColour c) 
{
    mEnvBlend.r = c.Red();
    mEnvBlend.g = c.Green();
    mEnvBlend.b = c.Blue();
    mEnvBlend.a = c.Alpha();
}

//-------------------------------------------------------
void gcEnvironmentShader::SetEmissive(pddiColour c) 
{
    mDirty = true;
    mEmissive = c;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetShininess(float power) 
{
    mDirty = true;
    mShininess = power;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetBlendMode(int mode) 
{
    mDirty = true;
    mAlphaBlendMode = (pddiBlendMode)mode;
}

//-------------------------------------------------------
void gcEnvironmentShader::EnableAlphaTest(int b) 
{
    mDirty = true;
    mAlphaTest = (b != 0);
}

//-------------------------------------------------------
void gcEnvironmentShader::SetAlphaCompare(int compare)
{
    mDirty = true;
    mAlphaCompareMode = pddiCompareMode(compare);
}

//-------------------------------------------------------
void gcEnvironmentShader::SetRotVect(rmt::Vector &rot)
{
    mDirty = true;
    mSphereRotation = rot;
}    

//-------------------------------------------------------
void gcEnvironmentShader::PreRender(void)
{

    // store current culling mode
    // set the culling mode
    if(mIsDoubleSided)
    {
        mPrevCullMode = mContext->GetCullMode();
        mContext->SetCullMode(PDDI_CULL_NONE);
    }

    // environment shading matrix mangling
    pddiMatrix result;
    if (mIsSphereMap)
    {
	    pddiMatrix rotMat;
	    rotMat.Identity();
	    rotMat.FillRotateXYZ(mSphereRotation.x, mSphereRotation.y, mSphereRotation.z);

        result.Transpose(*mContext->GetMatrix(PDDI_MATRIX_MODELVIEW));
        result.Mult(rotMat);
    }
    else
    {
        result.Transpose(*mContext->GetMatrix(PDDI_MATRIX_MODELVIEW));
    }    


       
    // convert pddi matrix back into an array.
    float gx[3][4];
    
    gx[0][0] = result.m[0][0]; gx[0][1] = result.m[1][0]; gx[0][2] = result.m[2][0]; gx[0][3] = result.m[3][0];
    gx[1][0] = result.m[0][1]; gx[1][1] = result.m[1][1]; gx[1][2] = result.m[2][1]; gx[1][3] = result.m[3][1];
    gx[2][0] = result.m[0][2]; gx[2][1] = result.m[1][2]; gx[2][2] = result.m[2][2]; gx[2][3] = result.m[3][2];
    
    Mtx scale;
    Mtx trans;
        
    MTXScale(scale, 0.5F, -0.5F, 0.0F);
    MTXTrans(trans, 0.5F,  0.5F, 0.0F);
    MTXConcat(scale, gx, gx);
    MTXConcat(trans, gx, gx);
    
    GXLoadTexMtxImm(gx, GX_TEXMTX5, GX_MTX3x4);  
}

//-------------------------------------------------------
void gcEnvironmentShader::PostRender(void)
{
    // restore culling mode if need be
    if(mIsDoubleSided)
    {
        mContext->SetCullMode(mPrevCullMode);
    }
}

//-------------------------------------------------------
int gcEnvironmentShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcEnvironmentShader::SetDevPass(unsigned pass)
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
    
    if (mEnvironment)
    {
        nNumTevStages++;
        nNumTexGens++;
        GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTexCoordGen((GXTexCoordID)nTexCoord, GX_TG_MTX3x4, GX_TG_NRM, GX_TEXMTX5/*GX_TEXMTX1*/);
        mEnvironment->LoadTexture(GX_TEXMAP1);      
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


    // set up the blend value for the environment map
//    GXSetTevColor(GX_TEVREG0, mEnvBlend);
    GXSetTevKColor(GX_KCOLOR0, mEnvBlend);

    int nNumStages = (int)GX_TEVSTAGE0;
    
    if (mTexture)
    {
        mTEVStates[0].SetTEV((GXTevStageID)nNumStages);
        nNumStages++;
    }
    
    if (mEnvironment)
    {
        mTEVStates[1].SetTEV((GXTevStageID)nNumStages);
        nNumStages++;
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
void gcEnvironmentShader::Rebuild(void)
{
    if (!mDirty) return;

    int set = mTexture ? 1 : 0;
    int env = mEnvironment ? 1 : 0;
 
    // Basic blending parameters
    mTEVStates[0].mTEVSet = &TEVSet[set];
    mTEVStates[2].mTEVSet = &TEVSet[set + 2];

    if(mEnvironment && mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[4];
    }
    else if(mEnvironment && !mTexture)
    {
        mTEVStates[1].mTEVSet = &TEVSet[1];
    }
    else if (!mEnvironment)
    {
        mTEVStates[1].mTEVSet = &TEVSet[0];
    }

    if (mIsLit) mIsSpecular = 0 != (mSpecular.c & 0x00FFFFFF);
    else        mIsSpecular = false;

    mTEVStates[0].mColourChannelID = GX_COLOR0A0;
    mTEVStates[1].mColourChannelID = GX_COLOR_NULL;
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
    
    if(mEnvironment == NULL)
    {
        // Disable light map
        mTEVStates[1].mTextureUVID  = GX_TEXCOORD_NULL;
        mTEVStates[1].mTextureMapID = GX_TEXMAP_NULL;      
    }
    else
    {
        // Enable environment
        mTEVStates[1].mTextureUVID  = (GXTexCoordID)nTexCoord;
        mTEVStates[1].mTextureMapID = GX_TEXMAP1;
        mEnvironment->SetWrapMode(gcUVWrapMode[mUVMode]);
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

        // This fixes alpha on specular blended things.
        mRasStates[0].mMaterial.a = (unsigned char)mDiffuse.Alpha();

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



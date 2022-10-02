//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gctev.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gctex.hpp>

GXTexWrapMode gcUVWrapMode[3] =
{
    GX_REPEAT,  // PDDI_UV_TILE
    GX_CLAMP,   // PDDI_UV_CLAMP
    GX_MIRROR   // No PDDI Equiv
};

GXCompare gcAlphaCompTable[8] = 
{ 
    GX_NEVER,
    GX_ALWAYS,  
    GX_LESS,
    GX_LEQUAL,
    GX_GREATER,    
    GX_GEQUAL,  
    GX_EQUAL,
    GX_NEQUAL 
};

gcBlendModeStruct gcBlendModeTable[8] =
{
    //   Type         Source          Dest               Logic Op
    { GX_BM_NONE,     GX_BL_ONE,      GX_BL_ZERO,        GX_LO_COPY },  // PDDI_BLEND_NONE,
    { GX_BM_BLEND,    GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_COPY },  // PDDI_BLEND_ALPHA
    { GX_BM_BLEND,    GX_BL_ONE,      GX_BL_ONE,         GX_LO_COPY },  // PDDI_BLEND_ADD
    { GX_BM_SUBTRACT, GX_BL_ONE,      GX_BL_ONE,         GX_LO_COPY },  // PDDI_BLEND_SUBTRACT
    { GX_BM_BLEND,    GX_BL_ZERO,     GX_BL_SRCCLR,      GX_LO_COPY },  // PDDI_BLEND_MODULATE,
    { GX_BM_BLEND,    GX_BL_DSTCLR,   GX_BL_SRCCLR,      GX_LO_COPY },  // PDDI_BLEND_MODULATE2,
    { GX_BM_BLEND,    GX_BL_ONE,      GX_BL_SRCALPHA,    GX_LO_COPY },  // PDDI_BLEND_ADDMODULATEALPHA
    { GX_BM_SUBTRACT, GX_BL_SRCALPHA, GX_BL_SRCALPHA,    GX_LO_COPY }   // PDDI_BLEND_SUBMODULATEALPHA
};





//**************************************************************
//
// Class gcTEVState
// SetTEV
//
void gcTEVState::SetTEV(GXTevStageID stage)
{

    // Tev Colour & Alpha settings
    GXSetTevOrder(stage, mTextureUVID, mTextureMapID, mColourChannelID);

    // Tev Colour settings
    GXSetTevColorOp(stage, mTEVSet->Colour->Op,
                                  GX_TB_ZERO, 
                                  mTEVSet->Colour->Scale, 
                                  mTEVSet->Colour->Clamp, 
                                  GX_TEVPREV);
    GXSetTevColorIn(stage, mTEVSet->Colour->RegA,
                                  mTEVSet->Colour->RegB,
                                  mTEVSet->Colour->RegC,
                                  mTEVSet->Colour->RegD);
    // Tev Alpha settings
    GXSetTevAlphaOp(stage, mTEVSet->Alpha->Op, 
                                  GX_TB_ZERO, 
                                  mTEVSet->Alpha->Scale, 
                                  mTEVSet->Alpha->Clamp, 
                                  GX_TEVPREV);
    GXSetTevAlphaIn(stage, mTEVSet->Alpha->RegA,
                                  mTEVSet->Alpha->RegB,
                                  mTEVSet->Alpha->RegC,
                                  mTEVSet->Alpha->RegD);

    GXSetTevKColorSel(stage, mKonstColourSource);
    GXSetTevKAlphaSel(stage, mKonstAlphaSource);
    GXSetTevSwapMode(stage, GX_TEV_SWAP0, GX_TEV_SWAP0); // disable swapping
}



//**************************************************************
//
// Class gcRasterizerState
// Set Rasterizer
//
void gcRasterizerState::SetRasterizer(GXChannelID channel)
{
    GXSetChanAmbColor(channel, mAmbient);
    GXSetChanMatColor(channel, mMaterial);

    if (mEnableLights) GXSetChanCtrl(channel, true,  mAmbientSource, mMaterialSource, mLightMask, GX_DF_CLAMP, mAttenuation);
    else               GXSetChanCtrl(channel, false, mAmbientSource, mMaterialSource, GX_LIGHT_NULL, GX_DF_NONE,  GX_AF_NONE);
}




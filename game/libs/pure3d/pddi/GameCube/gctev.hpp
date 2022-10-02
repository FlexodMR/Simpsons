//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCTEV_HPP_
#define _GCTEV_HPP_

#include <pddi/pddi.hpp>
class gcTexture;

#include <dolphin/gx.h>


struct gcBlendModeStruct
{
    GXBlendMode   Type;
    GXBlendFactor Source;   
    GXBlendFactor Dest;
    GXLogicOp     Op;   
};

struct gcColourBlendStruct
{
    GXTevColorArg RegA;
    GXTevColorArg RegB;
    GXTevColorArg RegC;
    GXTevColorArg RegD;
    GXTevOp       Op;
    GXTevScale    Scale;
    GXBool        Clamp;

};

struct gcAlphaBlendStruct
{
    GXTevAlphaArg RegA;
    GXTevAlphaArg RegB;
    GXTevAlphaArg RegC;
    GXTevAlphaArg RegD;
    GXTevOp       Op;
    GXTevScale    Scale;
    GXBool        Clamp;
};


struct TEVSetting
{
    gcColourBlendStruct *Colour;
    gcAlphaBlendStruct  *Alpha;
};


extern gcBlendModeStruct gcBlendModeTable[];
extern GXTexWrapMode     gcUVWrapMode[];
extern GXCompare         gcAlphaCompTable[];

             
//************************************************************
//
// Class gcTEVState
// GameCube TEV stage variables
//
class gcTEVState
{
 public:
    
    void SetTEV(GXTevStageID stage);

    TEVSetting     *mTEVSet;

    GXTexCoordID    mTextureUVID;       // GX_TEXCOORD_NULL, GX_TEXCOORD0 - GX_TEXCOORD7
    GXTexMapID      mTextureMapID;      // GX_TEXMAP_NULL, GX_TEXMAP_DISABLE, GX_TEXMAP0 - GX_TEXMAP7
    GXChannelID     mColourChannelID;   // GX_COLOR0A0, GX_COLOR1A1, GC_COLOR_NULL

    GXTevKColorSel  mKonstColourSource;
    GXTevKAlphaSel  mKonstAlphaSource;
};



//************************************************************
//
// Class gcRasterizerState
// GameCube Lighting/material colour stuff
//
class gcRasterizerState
{
 public:

    void SetRasterizer(GXChannelID channel);

    bool            mEnableLights;
    GXColor         mAmbient;
    GXColor         mMaterial;
    GXAttnFn        mAttenuation;
    GXLightID       mLightMask;
    GXColorSrc      mAmbientSource;
    GXColorSrc      mMaterialSource;
};

#endif  // GCTEV_HPP


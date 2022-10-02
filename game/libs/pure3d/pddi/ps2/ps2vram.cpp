//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2vram.hpp>
#include <pddi/ps2/ps2sprite.hpp>
#include <pddi/ps2/mfifo.hpp>

ps2Vram::ps2Vram(ps2Context* c) : ctx(c), mBrightness(0x80,0x80,0x80,0)
{ 
    disp = (ps2Display*)ctx->GetDisplay();
    fbw = ctx->GetDisplay()->GetWidth() / 64;

    fbufAddr[0] = fbufAddr[1] = zbufAddr = 0;
    startTexVram = sizeTexVram = 0;
    frameNum = frameIdx = 0;
}

void ps2Vram::BuildGifStrips( class VifStream& gifPkt , bool doUV)
{
    const int sw = ctx->GetDisplay()->GetWidth();
    const int sh = ctx->GetDisplay()->GetHeight();

    // in 12.4 format
    int x0 = (2048<<4) - (sw<<3);
    int y0 = (2048<<4) - (sh<<3);
    int x1 = (2048<<4) + (sw<<3);
    int y1 = (2048<<4) + (sh<<3);

    const int numStrips = sw / 32;

    const int dx = ( x1 - x0 ) / numStrips;

    x1 = x0 + dx;

    gifPkt.A_D( SCE_GS_SCISSOR_2 , SCE_GS_SET_SCISSOR(0,sw-1,0,sh-1) );
    gifPkt.A_D( SCE_GS_XYOFFSET_2 , SCE_GS_SET_XYOFFSET((2048-sw/2)*16 , (2048-sh/2)*16));    

    if ( doUV )
    {
        int u0 = 0;
        int v0 = 0;
        int u1 = sw*16;
        int v1 = sh*16;

        const int du = ( u1 - u0 ) / numStrips;

        u1 = u0 + du;

        for( int i=0; i<numStrips; i++ )
        {
            //int r[2] = { 0x80 , 0 };
            //gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ(0x80, r[i%2], 0x80, 0x80, 0x3f800000) );
            gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
            gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
            gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
            gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1 , y1 , 1) );
            
            u0 += du;
            u1 += du;

            x0 += dx;
            x1 += dx;
        }
    }
    else
    {
        for( int i=0; i<numStrips; i++ )
        {
            gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
            gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1 , y1 , 1) );

            x0 += dx;
            x1 += dx;
        }
    }
}

void ps2Vram::BuildGifStrips( class VifStream& gifPkt , const TexRect& rect )
{
    const int sw = ctx->GetDisplay()->GetWidth();
    const int sh = ctx->GetDisplay()->GetHeight();

    // in 12.4 format
    int x0 = rect.x0;
    int y0 = rect.y0;
    int x1 = rect.x1;
    int y1 = rect.y1;

    const int numStrips = sw / 32;

    const int dx = ( x1 - x0 ) / numStrips;

    x1 = x0 + dx;

    gifPkt.A_D( SCE_GS_SCISSOR_2 , SCE_GS_SET_SCISSOR(0,sw-1,0,sh-1) );
    gifPkt.A_D( SCE_GS_XYOFFSET_2 , SCE_GS_SET_XYOFFSET((2048-sw/2)*16 , (2048-sh/2)*16));    

    int u0 = rect.u0;
    int v0 = rect.v0;
    int u1 = rect.u1;
    int v1 = rect.v1;

    const int du = ( u1 - u0 ) / numStrips;

    u1 = u0 + du;

    for( int i=0; i<numStrips; i++ )
    {
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1 , y1 , 1) );
        
        u0 += du;
        u1 += du;

        x0 += dx;
        x1 += dx;
    }
}

void ps2Vram::BlitBackToFront()
{
    ps2MFIFO* mfifo = ctx->GetMFIFO();

    const int sw = ctx->GetDisplay()->GetWidth();
    const int sh = ctx->GetDisplay()->GetHeight();
    
    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);

    gifPkt.FlushA_Safe();

    gifPkt.BeginGifAD();

    // amb may30/2002 - todo - should really disable z writes
    //gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp , zsm , 1 ) ); // disable zwrites
    const unsigned int srcFbp = fbufAddr[1];
    const unsigned int dstFbp = fbufAddr[0];

    const unsigned int srcPsm = fbufPSM[1];
    const unsigned int dstPsm = fbufPSM[0];
    

    // 0 for point (nearest) filtering, 1 for bilinear
    // point filtering is a bit faster it seems
    static const int filterLinear = 0; 

    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp/32 , fbw, dstPsm, 0 ) );
    gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
    gifPkt.A_D( SCE_GS_DTHE, 1 );
    gifPkt.A_D( SCE_GS_DIMX    , SCE_GS_SET_DIMX( 0x4,0x2,0x5,0x3, 0x0,0x6,0x1,0x7, 0x5,0x3,0x4,0x2, 0x1,0x7,0x0,0x6 ) );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 0, 0, 1, 1, 0) );  // TME=1 , UV = 1, context1
    gifPkt.A_D( SCE_GS_TEST_2  , SCE_GS_SET_TEST_1(0, 0, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS) );  // ZTE is on because of TRC (TRC V2.1e, 16.2.1)
    gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( srcFbp,fbw,srcPsm,10,10,1,0,0,0,0,0,0) );
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( 0,0,1) ); // disable Z writes
    gifPkt.A_D( SCE_GS_TEX1_2  , SCE_GS_SET_TEX1_1( 0,0,filterLinear,filterLinear,0,0,0) );
    gifPkt.A_D( SCE_GS_TEXA    , SCE_GS_SET_TEXA(128,0,128) ); 
    gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ(0x80, 0x80, 0x80, 0x80, 0x3f800000) );
    BuildGifStrips( gifPkt, true );
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( zbufAddr,zbufPSM,0) ); // enabled Z writes
    gifPkt.A_D( SCE_GS_DTHE, 0 );
    gifPkt.A_D( SCE_GS_FINISH , 1 );
    
    gifPkt.EndGifAD();
    mfifo->CloseVifStreamAdd(gifPkt);
}

void ps2Vram::BlitBackToTexture(unsigned fbp,unsigned psm,pddiColour tint)
{
    ps2MFIFO* mfifo = ctx->GetMFIFO();

    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);

    gifPkt.FlushA_Safe();

    gifPkt.BeginGifAD();

    // amb may30/2002 - todo - should really disable z writes
    // THIS ONLY WORKS FOR MIXED MODE!!!!
    const unsigned int srcFbp = fbufAddr[1];
    const unsigned int dstFbp = fbp;

    const unsigned int srcPsm = fbufPSM[1];
    const unsigned int dstPsm = psm;

    // 0 for point (nearest) filtering, 1 for bilinear
    // point filtering is a bit faster it seems
    static const int filterLinear = 0; 

    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp , fbw, dstPsm, 0 ) );
    gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
    gifPkt.A_D( SCE_GS_DTHE, 0 );
    gifPkt.A_D( SCE_GS_TEXFLUSH, 0 );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 0, 0, 1, 1, 0) );  // TME=1 , UV = 1, context1
    gifPkt.A_D( SCE_GS_TEST_2  , SCE_GS_SET_TEST_1(0, 0, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS) );  // ZTE is on because of TRC (TRC V2.1e, 16.2.1)
    gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( srcFbp,fbw,srcPsm,10,10,1,0,0,0,0,0,0) );
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( 0,0,1) ); // disable Z writes
    gifPkt.A_D( SCE_GS_TEX1_2  , SCE_GS_SET_TEX1_1( 0,0,filterLinear,filterLinear,0,0,0) );
    gifPkt.A_D( SCE_GS_TEXA    , SCE_GS_SET_TEXA(128,0,128) ); 
    gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ((tint.Red()+1)>>1,(tint.Green()+1)>>1,(tint.Blue()+1)>>1, 0x80, 0x3f800000) ); // tint it a bit
    BuildGifStrips( gifPkt, true );
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( zbufAddr,zbufPSM,0) ); // enable Z writes
    
    gifPkt.EndGifAD();
    mfifo->CloseVifStreamAdd(gifPkt);
}


void ps2Vram::DownsampleBackbuffer()
{
    int sw = ctx->GetDisplay()->GetWidth();
    int sh = ctx->GetDisplay()->GetHeight();

    const int blocks = ( (sw/2) * (sh/2) * 32) / (8 * 256);
    const int bufferFbp = ctx->GetTextureCache()->AllocRaw( blocks, 0 ) ; // in blocks
    PDDIASSERT( (bufferFbp & 31) == 0 );

    const unsigned int srcFbp = fbufAddr[1];
    const unsigned int dstFbp = bufferFbp;

    const unsigned int srcPsm = fbufPSM[1];
    const unsigned int dstPsm = SCE_GS_PSMCT32;

    const int filterLinear = 1; // bilinear filter

    ps2MFIFO* mfifo = ctx->GetMFIFO();
    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);

    gifPkt.FlushA_Safe();

    gifPkt.BeginGifAD();
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
    gifPkt.A_D( SCE_GS_DTHE, 0 );
    gifPkt.A_D( SCE_GS_CLAMP_2 , SCE_GS_SET_CLAMP_2( 1 , 1, 0, 0 , 0 , 0 ) );
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp/32 , fbw, dstPsm, 0 ) );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 0, 0, 1, 1, 0) );  // TME=1 , UV = 1, context1
    gifPkt.A_D( SCE_GS_TEST_2  , SCE_GS_SET_TEST_1(0, 0, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS) );  // ZTE is on because of TRC (TRC V2.1e, 16.2.1)
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( 0,0,1) ); // disable Z writes
    gifPkt.A_D( SCE_GS_TEX1_2  , SCE_GS_SET_TEX1_1( 0,0,filterLinear,filterLinear,0,0,0) );
    gifPkt.A_D( SCE_GS_TEXA    , SCE_GS_SET_TEXA(128,0,128) ); 
    gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ(0x80, 0x80, 0x80, 0x80, 0x3f800000) );
    gifPkt.A_D( SCE_GS_XYOFFSET_2 , SCE_GS_SET_XYOFFSET(0 , 0));    
    
    //BuildGifStrips( gifPkt, true );

    const int u0 = 8; // 0.5
    const int v0 = 8; // 0.5
    int x0 = 0;
    int y0 = 0;
    int x1,y1,u1,v1;

    for(int i=0;i<5;i++)
    {
        u1 = sw * 16 + 8;
        v1 = sh * 16 + 8;
        sw /= 2;
        sh /= 2;

        // in 12.4 format
        x1 = sw*16;
        y1 = sh*16;
        
        if (i==0) gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( srcFbp,fbw,srcPsm,10,10,1,0,0,0,0,0,0) );
        else gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( dstFbp,fbw,dstPsm,10,10,1,0,0,0,0,0,0) );

        gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 0) );
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1, y1 , 0) );
    }

    u1 = sw * 16 + 8;
    v1 = sh * 16 + 8;


    x1 = ctx->GetDisplay()->GetWidth() * 16;
    y1 = ctx->GetDisplay()->GetHeight() * 16;


    // draw a white rectangle on top of the texture
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 0, 0, 1, 0, 1, 1, 0) );  // ABE=1 , UV = 1, context1    
    gifPkt.A_D( SCE_GS_ALPHA_2  , SCE_GS_SET_ALPHA_1( 0,2,1,2,0x80) ); // Cs*Ad
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(u1, v1, 1) );

    // draw the texture on top of the backbuffer
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( srcFbp/32 , 10, srcPsm, 0 ) );
    gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( dstFbp,10,dstPsm,10,10,1,0,0,0,0,0,0) );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 1, 0, 1, 1, 0) );  // ABE=1 , UV = 1, context1
    gifPkt.A_D( SCE_GS_ALPHA_2  , SCE_GS_SET_ALPHA_1( 0,2,2,1,0x80) ); // Cs+Cd
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1, y1 , 1) );

    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( zbufAddr,zbufPSM,0) ); // enabled Z writes
    gifPkt.A_D( SCE_GS_FINISH , 1 );

    gifPkt.EndGifAD();
    mfifo->CloseVifStreamAdd(gifPkt);  
}

// src is in 12:4 fixed point 
int ps2Vram::DownsampleBackbuffer(const pddiRect* src, int levels)
{
    const int sw = ctx->GetDisplay()->GetWidth();
    const int sh = ctx->GetDisplay()->GetHeight();

    pddiRect rc;

    // convert to texture coordinates.. in fixed point
    rc.left   = (int)(src->left   - (2048.0f - sw/2.0f)*16.0f);
    rc.right  = (int)(src->right  - (2048.0f - sw/2.0f)*16.0f);
    rc.bottom = (int)(src->bottom - (2048.0f - sh/2.0f)*16.0f);
    rc.top    = (int)(src->top    - (2048.0f - sh/2.0f)*16.0f);

    rc.left    = rmt::Min(rmt::Max(rc.left,0),sw*16);
    rc.right   = rmt::Min(rmt::Max(rc.right,0),sw*16);
    rc.top     = rmt::Min(rmt::Max(rc.top,0),sh*16);
    rc.bottom  = rmt::Min(rmt::Max(rc.bottom,0),sh*16);

    int dw = rc.right - rc.left;
    int dh = rc.bottom - rc.top;

    if ((dw < 4) || (dh < 4))
    {
        return 0;
    }

    const unsigned int srcFbp = fbufAddr[1];
    const unsigned int dstFbp = srcFbp;

    const unsigned int srcPsm = fbufPSM[1];
    const unsigned int dstPsm = srcPsm;

    const int filterLinear = 1; // bilinear filter

    ps2MFIFO* mfifo = ctx->GetMFIFO();
    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);

    gifPkt.FlushA_Safe();

    gifPkt.BeginGifAD();
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
    gifPkt.A_D( SCE_GS_DTHE, 0 );
    gifPkt.A_D( SCE_GS_CLAMP_2 , SCE_GS_SET_CLAMP_2( 1 , 1, 0, 0 , 0 , 0 ) );
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp/32 , fbw, dstPsm, 0 ) );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 0, 0, 1, 1, 0) );  // TME=1 , UV = 1, context1
    gifPkt.A_D( SCE_GS_TEST_2  , SCE_GS_SET_TEST_1(0, 0, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS) );  // ZTE is on because of TRC (TRC V2.1e, 16.2.1)
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( 0,0,1) ); // disable Z writes
    gifPkt.A_D( SCE_GS_TEX1_2  , SCE_GS_SET_TEX1_1( 0,0,filterLinear,filterLinear,0,0,0) );
    gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ(0x80, 0x80, 0x80, 0x80, 0x3f800000) );
    gifPkt.A_D( SCE_GS_XYOFFSET_2 , SCE_GS_SET_XYOFFSET(0 , 0));

    // w = rect.right - rect.right , h = rect.bottom - rect.top
    // stretch tex0 : [rect.left,rect.top] -> [rect.right, rect.bottom]
    // to : [0,0] -> [w/2, h/2]

    int u0 = rc.left+31;
    int v0 = rc.top+31;
    int u1 = rc.right;
    int v1 = rc.bottom;

    int x0 = 0;
    int y0 = 0;
    int x1 = dw>>1;
    int y1 = dh>>1;

    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp/32 , fbw, dstPsm, 0xffffff ) );
    gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( srcFbp,fbw,srcPsm,10,10,1,0,0,0,0,0,0) );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1, y1 , 1) );

    u1 -= u0;
    v1 -= v0;
    u0 = 0;
    v0 = 0;


    int offx[2] = { 0,320*16 };

    int lx = x0+offx[0] ,ly = y0;

    for(int i=1;i<levels;i++)
    {
        u1 >>= 1;
        v1 >>= 1;
        x1 >>= 1;
        y1 >>= 1;
        lx = x0+offx[i&1];
        ly = y0;
        gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( dstFbp,fbw,dstPsm,10,10,1,0,0,0,0,0,0) );
        gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0+offx[(i+1)&1]+31,v0+31) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0+offx[i&1],y0,1) );
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1+offx[(i+1)&1],v1) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1+offx[i&1], y1, 1) );
    }

    int p0[2] = { 0, 0  };
    int p1[2] = { sw, sh};

    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp/32 , fbw, dstPsm, 0xffffff ) );
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );   
    int dx = sw / 32;
    int xp = 0;
    for(int i=0;i<dx;i++)
    {
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(lx+16,ly+16) );
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(xp,0,1) );
        gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(lx+16,ly+16) );
        xp += 32*16;
        gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(xp,sh*16, 1) );        
    }
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( dstFbp/32 , fbw, dstPsm, 0x0 ) );        

/*
    x1 = ctx->GetDisplay()->GetWidth() * 16;
    y1 = ctx->GetDisplay()->GetHeight() * 16;

    // draw a white rectangle on top of the texture
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 0, 0, 1, 0, 1, 1, 0) );  // ABE=1 , UV = 1, context1    
    gifPkt.A_D( SCE_GS_ALPHA_2  , SCE_GS_SET_ALPHA_1( 0,2,1,2,0x80) ); // Cs*Ad
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0, y0 , 1) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1, x1, 1) );

    // draw the texture on top of the backbuffer
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_FRAME_2 , SCE_GS_SET_FRAME( srcFbp/32 , 10, srcPsm, 0 ) );
    gifPkt.A_D( SCE_GS_TEX0_2  , SCE_GS_SET_TEX0_1( dstFbp,10,dstPsm,10,10,1,0,0,0,0,0,0) );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 1, 0, 1, 1, 0) );  // ABE=1 , UV = 1, context1
    gifPkt.A_D( SCE_GS_ALPHA_2  , SCE_GS_SET_ALPHA_1( 0,2,2,1,0x80) ); // Cs+Cd
    gifPkt.A_D( SCE_GS_TEXFLUSH , 1 );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
    gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1, y1 , 1) );
    gifPkt.A_D( SCE_GS_ZBUF_2  , SCE_GS_SET_ZBUF( zbufAddr,zbufPSM,0) ); // enabled Z writes
*/    

    gifPkt.EndGifAD();
    mfifo->CloseVifStreamAdd(gifPkt);  

    return 1;
}


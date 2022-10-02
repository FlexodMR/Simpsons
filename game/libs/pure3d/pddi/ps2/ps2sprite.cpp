//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <eeregs.h>
#include <libgraph.h>
#include <eestruct.h>

#include <pddi/ps2/ps2sprite.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/mfifo.hpp>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2display.hpp>
#include <pddi/ps2/packet.hpp>

void ps2Sprite::MoveBuffToBuff( int src_buff, int dest_buff, short filter, unsigned long blend )
{

}

void ps2Sprite::ZBuffToBuff( int src_buff, int dest_buff, short filter, unsigned long blend )
{
}

void ps2Sprite::MoveRG2BA( int src_buff, int dest_buff, short filter, unsigned long blend )
{
}

void ps2Sprite::ClampNearPlane()
{
}

void ps2Sprite::FogSprite()
{
}

#if 0
void ps2Sprite::InvertZBuffer()
{
    int zbp = ((ps2Display*)context->GetDisplay())->GetZBufferAddress();
    int zpsm = ((ps2Display*)context->GetDisplay())->GetZBufferFormat();
    int scrw = ((ps2Display*)context->GetDisplay())->GetWidth();
    int scrh = ((ps2Display*)context->GetDisplay())->GetHeight();

    int offx = (((4096-scrw)/2)<<4);
    int offy = (((4096-scrh)/2)<<4);

    ps2MFIFO* mfifo = context->GetMFIFO();
    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);

    gifPkt.BeginGifAD();
    gifPkt.A_D( SCE_GS_FRAME_1 , SCE_GS_SET_FRAME_1(zbp, scrw/64, zpsm, 0) );
    gifPkt.A_D( SCE_GS_ZBUF_1 , SCE_GS_SET_ZBUF( zbp, zpsm ,1 )); // no Z write // AMB : reset ZBUF?!
    gifPkt.A_D( SCE_GS_TEST_1 , SCE_GS_SET_TEST_1(0,0,0,0,0,0,1,SCE_GS_ZALWAYS));
    gifPkt.A_D( SCE_GS_XYOFFSET_1 , SCE_GS_SET_XYOFFSET_1( offx, offy));
    gifPkt.A_D( SCE_GS_ALPHA_1 , SCE_GS_SET_ALPHA(0, 1, 2, 2, 128));     // (Cs-Cd) x 1 + 0
    gifPkt.A_D( SCE_GS_PRIM , SCE_GS_SET_PRIM( SCE_GS_PRIM_SPRITE, 0, 0, 0, 1, 0, 0, 0, 0) );
    gifPkt.A_D( SCE_GS_RGBAQ , SCE_GS_SET_RGBAQ(sprite.r, sprite.g, sprite.b, sprite.a, 0x3f800000));
    gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ(offx+sprite.x0, offy+sprite.y0,0) );
    gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ(offx+sprite.x1, offy+sprite.y1,0) );
    gifPkt.EndGifAD();
    
    mfifo->CloseVifStreamAdd(gifPkt);
}

void ps2Sprite::BlitTo(unsigned fbp, unsigned psm )
{
    int scrw = ((ps2Display*)context->GetDisplay())->GetWidth();
    int scrh = ((ps2Display*)context->GetDisplay())->GetHeight();
    int zbp = ((ps2Display*)context->GetDisplay())->GetZBufferAddress();
    int zpsm = ((ps2Display*)context->GetDisplay())->GetZBufferFormat();
    int offx = (((4096-scrw)/2)<<4);
    int offy = (((4096-scrh)/2)<<4);

    ps2MFIFO* mfifo = context->GetMFIFO();
    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);

    gifPkt.BeginGifAD();
    gifPkt.A_D( SCE_GS_FRAME_1 , SCE_GS_SET_FRAME_1(fbp/32, scrw/64, psm, 0 ) );
    gifPkt.A_D( SCE_GS_ZBUF_1 , SCE_GS_SET_ZBUF( zbp, zpsm, 0 ) );
    gifPkt.A_D( SCE_GS_TEX0_1 , SCE_GS_SET_TEX0( base, 10, this->psm, 10,10,0,1,0,0,0,0,0));
    gifPkt.A_D( SCE_GS_TEX1_1 , SCE_GS_SET_TEX1( 0,0,0,0,0,0,0 ) );
    gifPkt.A_D( SCE_GS_TEST_1 , SCE_GS_SET_TEST_1(0,0,0,0,0,0,1,SCE_GS_ZALWAYS));
    gifPkt.A_D( SCE_GS_XYOFFSET_1 , SCE_GS_SET_XYOFFSET_1( offx, offy));
    gifPkt.A_D( SCE_GS_ALPHA_1 , SCE_GS_SET_ALPHA(0x2, 0x02, 0x02, 0x00, 0x80) ); // none
    gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
    gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 0, 0, 1, 0, 0) );  // TME=1 ABE = 1
    gifPkt.A_D( SCE_GS_RGBAQ , SCE_GS_SET_RGBAQ(sprite.r, sprite.g, sprite.b, sprite.a, 0x3f800000));
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(sprite.u0,sprite.v0) );
    gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ(offx+sprite.x0, offy+sprite.y0,0) );
    gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(sprite.u1,sprite.v1) );
    gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ(offx+sprite.x1, offy+sprite.y1,0) );
    gifPkt.EndGifAD();
    
    mfifo->CloseVifStreamAdd(gifPkt);

}
#endif

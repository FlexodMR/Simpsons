//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <libvifpk.h>
#include <libgraph.h>

#include <pddi/ps2/external/dma.hpp>
#include <pddi/base/debug.hpp>


void StoreTextureVIF1( u_long128 * base_addr, short start_addr, short pixel_mode, short x,
               short y, short w, short h, short frame_width )
{
    int texture_qwc;
    sceVif1Packet vif1_pkt;
    u_long128 settup_base[10];
    int buff_width;
    u_long prev_imr = 0;
    static u_int enable_path3[4] __attribute__ ( ( aligned( 16 ) ) ) = {
        0x06000000,
        0x00000000,
        0x00000000,
        0x00000000,
    };

    // get quad word count for image
    if ( pixel_mode == SCE_GS_PSMCT32 )
        texture_qwc = ( w * h * 32 ) >> 7;
    else if ( pixel_mode == SCE_GS_PSMCT24 )
        texture_qwc = ( w * h * 24 ) >> 7;
    else if ( pixel_mode == SCE_GS_PSMCT16 )
        texture_qwc = ( w * h * 16 ) >> 7;
    else if ( pixel_mode == SCE_GS_PSMT8 )
        texture_qwc = ( w * h * 8 ) >> 7;
    else
        texture_qwc = ( w * h * 4 ) >> 7;

    PDDIASSERT( texture_qwc <= 32767 );

    buff_width = frame_width >> 6;

    if ( buff_width <= 0 )
        buff_width = 1;

    // set base address of GIF packet
    sceVif1PkInit( &vif1_pkt, &settup_base[0] );
    sceVif1PkReset( &vif1_pkt );

    // will start transfer with VIF code and GS data will follow
    sceVif1PkAddCode( &vif1_pkt, SCE_VIF1_SET_NOP( 0 ) );
    // disable PATH 3 transfer
    sceVif1PkAddCode( &vif1_pkt, SCE_VIF1_SET_MSKPATH3( 0x8000, 0 ) );
    // wait for all 3 PATHS to GS to be complete
    sceVif1PkAddCode( &vif1_pkt, SCE_VIF1_SET_FLUSHA( 0 ) );
    // transfer 6 QW's to GS
    sceVif1PkAddCode( &vif1_pkt, SCE_VIF1_SET_DIRECT( 6, 0 ) );

    // GIF tag for texture settings         
    sceVif1PkAddGsData( &vif1_pkt, SCE_GIF_SET_TAG( 5, 1, NULL, NULL, SCE_GIF_PACKED, 1 ) );
    sceVif1PkAddGsData( &vif1_pkt, 0xEL );

    // set transmission between buffers
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_SET_BITBLTBUF( start_addr, buff_width, pixel_mode,    // SRC
                               NULL, NULL, NULL ) );    // DEST
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_BITBLTBUF );

    // set transmission area between buffers        ( source x,y  dest x,y  and direction )
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_SET_TRXPOS( x, y, 0, 0, 0 ) );
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_TRXPOS );

    // set size of transmission area 
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_SET_TRXREG( w, h ) );
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_TRXREG );

    // set FINISH event occurrence request
    sceVif1PkAddGsData( &vif1_pkt, ( u_long ) ( 0x0 ) );
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_FINISH );

    // set transmission direction  ( LOCAL -> HOST Transmission )
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_SET_TRXDIR( 1 ) );
    sceVif1PkAddGsData( &vif1_pkt, SCE_GS_TRXDIR );

    // get packet size in quad words        
    sceVif1PkTerminate( &vif1_pkt );

    // get current IMR status
    prev_imr = sceGsPutIMR( sceGsGetIMR(  ) | 0x0200 );

    // set the FINISH event
    DPUT_GS_CSR( GS_CSR_FINISH_M );

    // DMA from memory and start DMA transfer
    FlushCache( WRITEBACK_DCACHE );

    DPUT_D1_QWC( 0x7 );
    DPUT_D1_MADR( ( u_int ) vif1_pkt.pBase & 0x0FFFFFFF );
    DPUT_D1_CHCR( 1 | ( 1 << 8 ) );

    asm __volatile__( " sync.l ; sync.p " );

    // check if DMA is complete (STR=0)
    while ( DGET_D1_CHCR(  ) & 0x0100 ){ /* nop */ };
    // check if FINISH event occured
    while ( ( DGET_GS_CSR(  ) & GS_CSR_FINISH_M ) == NULL ){ /* nop */ };

    // change VIF1-FIFO transfer direction (VIF1 -> MAIN MEM or SPR)
    *VIF1_STAT = 0x00800000;

    // change GS bus direction (LOCAL->HOST)
    DPUT_GS_BUSDIR( ( u_long ) 0x00000001 );
    // DMA to memory and start DMA transfer
    FlushCache( WRITEBACK_DCACHE );

    DPUT_D1_QWC( texture_qwc );
    DPUT_D1_MADR( ( u_int ) base_addr & 0x0FFFFFFF );
    DPUT_D1_CHCR( 0 | ( 1 << 8 ) );

    asm __volatile__( " sync.l ; sync.p " );

    // check if DMA is complete (STR=0)
    while ( DGET_D1_CHCR(  ) & 0x0100 ){ /* nop */ };
    // change VIF1-FIFO transfer direction (MAIN MEM or SPR -> VIF1)
    *VIF1_STAT = 0;

    // change GS bus direction (HOST->LOCAL)
    DPUT_GS_BUSDIR( ( u_long ) 0 );

    // restore previous IMR status
    sceGsPutIMR( prev_imr );

    // set the FINISH event
    DPUT_GS_CSR( GS_CSR_FINISH_M );
    // MSKPATH3 is now enabled to allow transfer via PATH3
    DPUT_VIF1_FIFO( *( u_long128 * ) enable_path3 );
}

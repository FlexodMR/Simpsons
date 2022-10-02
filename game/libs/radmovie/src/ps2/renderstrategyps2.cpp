//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        renderstrategyps2.cpp
//
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This file declares the render strategy class for the ps2.
//              The intention is for all of the these render strategy
//              classes to belong to pure3d one day
//
// Date:    	July 22, 2002 RWS
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================
#include <p3d/utility.hpp>
#include <pddi/pddiext.hpp>
#include "renderstrategyps2.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

#define MOVIE_UTIL_PIXEL_BLOCK_EDGE 16

#define bound(val, x) ((((val) + (x) - 1) / (x))*(x))

//=============================================================================
// Static Member Initialization
//=============================================================================

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// radMovieRenderStrategyPs2::radMovieRenderStrategyPs2
//=============================================================================

radMovieRenderStrategyPs2::radMovieRenderStrategyPs2( void )
    :
    radRefCount( 0 ),
    m_pTags( NULL ),
    m_Width( 0 ),
    m_Height( 0 )
{
    //
    // Allocate memory for the tags (Ask me about where these numbers comes from some day)
    //

    m_pTags = ( unsigned int * ) ::radMemoryAllocAligned( 
        GetThisAllocator( ), 
        ::radMemoryRoundUp( 4 * ( ( 720 / 16 ) * ( 480 / 16 ) * 6 + 10 ) * 4, 64 ),
        64 );
}

//=============================================================================
// radMovieRenderStrategyPs2::~radMovieRenderStrategyPs2
//=============================================================================

radMovieRenderStrategyPs2::~radMovieRenderStrategyPs2( void )
{
    ::radMemoryFreeAligned( GetThisAllocator(), m_pTags );
    m_pTags = NULL;
}

//=============================================================================
// radMovieVideoDecoderPs2::SetParameters
//=============================================================================

void radMovieRenderStrategyPs2::SetParameters( unsigned int width, unsigned int height )
{
    m_Width = width;
    m_Height = height;
}

//=============================================================================
// radMovieVideoDecoderPs2::Render
//=============================================================================

bool radMovieRenderStrategyPs2::Render( void * pBuffer )
{
    rAssert( pBuffer != NULL );

    //
    // Before using the dma channel to send the data
    // to video memory, make sure that Pure3D is 
    // finished with it
    //

    p3d::pddi->DrawSync();

    //
    // Inform pure3d that we are filling vram with our own data.  
    // The texture cache is soon to be invalid
    //

    ((pddiExtPS2Control*)(p3d::pddi->GetExtension(PDDI_EXT_PS2_CONTROL)))->InvalidateTexCache( );
    
    //
    // Set up the dma tags to move the blocks of video into their
    // proper locations in vram
    //

    PrepareImageTags( pBuffer, m_pTags );

    //
    // Now it's safe to send the dma to video memory
    //

    LoadImage( m_pTags );
    return true;
}

//=============================================================================
// radMovieVideoDecoderPs2::SetLoadImageTags
//=============================================================================
// 
// 	[ packet creation ]
// 
// 	DMA tag, cnt		(3)
// 	    GIF tag a+d		(2)
// 		BITBLTBUF
// 		TRXREG
// -----------------------------------------------------------
// 	DMA tag, cnt		(4)
// 	    GIF tag a+d		(2)
// 		TRXPOS
// 		TRXDIR
// 	    GIF tag image	(w*h*4/16)
// 	DMA tag, ref		(w*h*4/16)
// -----------------------------------------------------------
// 		...
// 		...
// -----------------------------------------------------------
// 	DMA tag, cnt		(4)
// 	    GIF tag a+d		(2)
// 		TRXPOS
// 		TRXDIR
// 	    GIF tag image EOP	(w*h*4/16)
// 	DMA tag, refe		(w*h*4/16)
// -----------------------------------------------------------

void radMovieRenderStrategyPs2::PrepareImageTags
( 
    void * pVideoFrameBuffer, 
    unsigned int * pTags 
)
{
    u_int *p;
    u_int destBasePointer, dbw, dpsm;
    u_int dir;
    u_int rrw, rrh;
    u_int xdir;
    int mbx = m_Width >> 4;
    int mby = m_Height >> 4;
    int i, j;
    unsigned int skip = 16*16*4;

    // 
    //  set params
    // 

    int displayWidth = p3d::display->GetWidth( );
    int displayHeight = p3d::display->GetHeight( );
    
    destBasePointer = ((pddiExtPS2Control*)(p3d::pddi->GetExtension(PDDI_EXT_PS2_CONTROL)))->GetBackBufferVRAM();
    dbw = ::radMemoryRoundUp( displayWidth, 64 ) / 64;
    dpsm = SCE_GS_PSMCT32;

    dir = 0;

    rrw = 16;
    rrh = 16;

    xdir = 0;

    // 
    // Fill the tags buffer by incrementing along.  Add a tag and 
    // then move on to the next slot
    // 

    p = (u_int*)UncachedAddr(pTags);
    setDMAscTag(
	p, // u_int *p,
	0, // u_int spr,
	0, // u_int addr,
	0, // u_int irq,
	1, // u_int id,
	0, // u_int pce,
	3
    ); p += 4;

    // Apply A+D Packing

    setGIFtag(p, SCE_GIF_PACKED_AD, 1, 0, 0, 0, 0, 2); // 0x0e == SCE_GIF_PACKED_AD ?
    p += 4;  

    // Specify the transmission destination buffer address (the current vram backbuffer), 
    // width (in units of pixels / 64), and format (we're only dealing with RGBA32 so PSMCT32)

    setBITBLTBUF( p, 
        ( ( pddiExtPS2Control * )( p3d::pddi->GetExtension( PDDI_EXT_PS2_CONTROL ) ) )->GetBackBufferVRAM( ), 
        ::radMemoryRoundUp( displayWidth, 64 ) / 64, 
        SCE_GS_PSMCT32 );  
    p += 4;

    // Specify the area of the transmission (always 1 block of pixels = w x h)

    setTRXREG(p, MOVIE_UTIL_PIXEL_BLOCK_EDGE, MOVIE_UTIL_PIXEL_BLOCK_EDGE); 
    p += 4;

    // Figure out where to put the image (centred in the screen)

    int destX = 0;
    int destY = 0;
    
    if( displayWidth > ( int ) m_Width )
    {
        destX = ( displayWidth - m_Width ) / 2;
    }

    // Note that destY can end up being negative here.  That way we can render movies
    // that are 480 pixels high (which are bigger that the ps2 display height of 448
    // pixels.  In the upcoming for loop I'll be dealing with negative y's

    destY = ( displayHeight - ( int ) m_Height ) / 2;

    // Now prepare the transmission of each block of pixels, which will
    // be dma'd one at time.

    for (j = 0; j < mby; j++) 
    {
	    for (i = 0; i < mbx; i++) 
        {
            // Add a dma source chain tag.  Set the id to 
            // 'cnt' and the qword count to 4, so that the 
            // following four tags will be transfered.

	        setDMAscTag(
		        p,      // u_int *p,
		        0,      // u_int spr,
		        0,      // u_int addr,
		        0,      // u_int irq,
		        1,      // u_int id (1 == cnt),
		        0,      // u_int pce,
		        4 );    // u_int qwc
            p += 4;

            // The next four tags are transfered by the 
            // preceeding dma tag

            // Apply A+D Packing

	        setGIFtag(p, SCE_GIF_PACKED_AD, 1, 0, 0, 0, 0, 2);  // SCE_GIF_PACKED_AD --> 0x0e ?
            p += 4;  

            // Specify the position and scanning direction of the transmission.
            // (upperLeft->lowerRight = direction)            

            if( destY + j * MOVIE_UTIL_PIXEL_BLOCK_EDGE > displayHeight )
            {
                setTRXPOS(p, 0, destX + i * MOVIE_UTIL_PIXEL_BLOCK_EDGE, destY + mby - 1 );
            } 
            else if( destY + j * MOVIE_UTIL_PIXEL_BLOCK_EDGE > 0 )
            {
	            setTRXPOS(p, 0, destX + i * MOVIE_UTIL_PIXEL_BLOCK_EDGE, destY + j * MOVIE_UTIL_PIXEL_BLOCK_EDGE ); 
            }
            else
            {
                setTRXPOS(p, 0, destX + i * MOVIE_UTIL_PIXEL_BLOCK_EDGE, 0 ); 
            }
            p += 4;

            // The transmission activation tag (Host->Local Transmission)

	        setTRXDIR(p, xdir); 
            p += 4;

            // Add a PRIM GIF tag and specify if this is the end of
            // the packet.

	        int eop = (j == mby - 1 && i == mbx - 1)? 1: 0;
	        setGIFtag( p, 0, 0, 2, 0, 0, eop, MOVIE_UTIL_PIXEL_BLOCK_EDGE * MOVIE_UTIL_PIXEL_BLOCK_EDGE * 4 / 16 ); 
            p += 4;

            // Add another source chain dma tag.  Set the id to 
            // 'ref', the address to the current pointer location (the current pixel block)
            // of the source buffer, and qword count to the size of a pixel block.

            setDMAscTag(
		        p, // u_int *p,
		        0, // u_int spr,
		        DmaAddr(pVideoFrameBuffer), // void *addr,
		        0, // u_int irq,
		        3, // u_int id, (ref)
		        0, // u_int pce,
		        MOVIE_UTIL_PIXEL_BLOCK_EDGE * MOVIE_UTIL_PIXEL_BLOCK_EDGE * 4 / 16 ); 
            p += 4;


            // Update the position of the source buffer pointer

	        pVideoFrameBuffer = (u_char*)pVideoFrameBuffer + skip;
	    }
    }

    // Add the last source chain dma tag with and 'end' id.
    // When this is processed, Dn_CHCR.STR will be set to 0

    setDMAscTag(
	    p, // u_int *p,
	    0, // u_int spr,
	    NULL, // void *addr,
	    0, // u_int irq,
	    7, // u_int id,
	    0, // u_int pce,
	    0 );
    p += 4;
}

//=============================================================================
// ::radMovieSimpleFullScreenRenderStrategyCreate
//=============================================================================

IRadMovieRenderStrategy * radMovieSimpleFullScreenRenderStrategyCreate( radMemoryAllocator allocator )
{
    return new( allocator )radMovieRenderStrategyPs2( );
}
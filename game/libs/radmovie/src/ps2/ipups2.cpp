//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ipups2.cpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This implements the ipu decoder class of the FTech movie player
//
// Date:    	May 16, 2002
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "ipups2.hpp"

//=============================================================================
// Static Member Initialization
//=============================================================================

ref< radMovieIpuPs2 > radMovieIpuPs2::s_refTheRadMovieIpuPs2 = NULL;

//=============================================================================
// Class radMovieIpuPs2
//=============================================================================

//=============================================================================
// radMovieIpuPs2::radMovieIpuPs2
//=============================================================================

radMovieIpuPs2::radMovieIpuPs2( void )
    :
    radRefCount( 0 ),
    m_IpuState( IPU_READY ),
    m_IpuFlushed( false ),
    m_pOutputBuffer( NULL ),
    m_OutputBufferBytes( 0 ),
    m_IsDmaFromIpuPending( false ),
    m_DmaFromIpuHandlerId( 0 )
{
    sceIpuInit( );
    sceIpuSync(0, 0);
	sceIpuReset();
	sceIpuSync(0, 0);
	sceIpuBCLR(0);
	sceIpuSync(0, 0);

    m_DmaFromIpuHandlerId = AddDmacHandler2( DMAC_FROM_IPU, DmaFromIpuHandler, 0, ( void * ) this );
    rAssert( m_DmaFromIpuHandlerId > 0 );

    EnableDmaFromIpuInterrupt( );
}

//=============================================================================
// radMovieIpuPs2::~radMovieIpuPs2
//=============================================================================

radMovieIpuPs2::~radMovieIpuPs2( void )
{
    rAssert( m_pOutputBuffer == NULL );

    Flush( );

    int ret = RemoveDmacHandler( DMAC_FROM_IPU, m_DmaFromIpuHandlerId );
    rAssert( ret >= 0 );
}

//=============================================================================
// radMovieIpuPs2::Service
//=============================================================================

void radMovieIpuPs2::Service( void )
{
    //
    // Always wait for the ipu to finish its
    // current operation before starting the next
    //

    if( sceIpuIsBusy( ) == true )
    {
        return;
    }

    IpuState state = m_IpuState;

    switch( state )
    {
        case IPU_READY:
        {
            return;
        }
        case IPU_FLAGS:
        {
            //
            // If the ipu hasn't been flushed, the next
            // code in the pipe should be start code.
            //

            rAssert( m_IpuFlushed == true || * IPU_TOP == RAD_IPU_FRAME_START_CODE );
            
            if( sceIpuIsError( ) == true )
            {
                // Throw in an assert to let people know that 
                // things have gone wrong here.

                rAssert( sceIpuIsError( ) == false );
                m_IpuState = IPU_ERROR;
                return;
            }

            //
            // Here we are starting to decode a new frame.
            // We issue the FDEC command to obtain the decoding
            // flags.  If this frame is coming from the middle 
            // of a bitstream (i.e. the ipu hasn't been flushed),
            // we'll need to "proceed" over a start code before
            // reaching the flags.
            //

            sceIpuFDEC( m_IpuFlushed ? 0 : RAD_IPU_FRAME_START_CODE_SIZE );
            m_IpuFlushed = false;

            // Go to the next step

            m_IpuState = IPU_DECODE;
            Service( );
            break;
        }
        case IPU_DECODE:
        {
            if( sceIpuIsError( ) == true )
            {
                rAssert( sceIpuIsError( ) == false );
                m_IpuState = IPU_ERROR;
                return;
            }

            //
            // If we've reached the end of the movie, flush and
            // go to the movie end state
            //

            if( * IPU_TOP == RAD_IPU_MOVIE_END_CODE )
            {
                rDebugChannelPrintf( radMovieDebugChannel2, "radIpuPs2: Decoded last frame of movie\n" );
                
                m_pOutputBuffer = NULL;
                m_OutputBufferBytes = 0;
                                
                m_IpuState = IPU_MOVIE_END;
            }
            else
            {
                //
                // Prepare the dma channel from the ipu to the video
                // output buffer to immediately start filling the buffer
                // when the decode command is issued
                //

                rAssert( m_IsDmaFromIpuPending == false );
                StartDmaFromIpu( & m_pOutputBuffer, & m_OutputBufferBytes );

                //
                // The decoding flags should now be ready from the previous step
                //

                //
                // FDEC provides a peek at the first 32 bits of the bit stream.
                // The decoding flags consist of only the first 8.
                //
                // The contents of decodeFlags looks like this (see sony's "IPU
                // stream format" document):
                //
                // |mp1|qst|ivf| as|   |dtd|  idp  |
                // | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
                //
                // * mp1 - Mpeg 1 bit stream
                // * qst - Q scale type
                // * ivf - Intra VLC format
                // * as  - Alternate scan
                // * dtd - DCT type decode
                // * idp - Intra DC precision
                //

                unsigned int decodeFlags = ( sceIpuGetFVdecResult() >> RAD_IPU_DECODE_FLAG_OFFSET ) & RAD_IPU_DECODE_FLAG_MASK;

                //
                // Set the IPU_CTRL register according to the decode flags
                //

                * IPU_CTRL = ( decodeFlags & ~0x00000004 ) << 16;

                //
                // Decode the frame data using IDEC (intra decoding command).
                // This command will convert the bitstream data into RGB32
                // data.  Decoding will end when the ipu detects a start code
                // or an error code.
                //
                // The decode flags determine whether or not DCT type decoding 
                // should be performed.  Bit 3 of the flags contains this info
                //

                sceIpuIDEC( 
                    SCE_IPU_IDEC_RGB32,        // output format
                    SCE_IPU_IDEC_NODITHER,     // no dithering (only available for rgb16 output)
                    SCE_IPU_IDEC_NOOFFSET,     // no offset
                    ( ( decodeFlags >> 2 ) & 0x00000001 ) ? SCE_IPU_IDEC_DTDECODE : SCE_IPU_IDEC_NODTDECODE, // dct type decode?
                    1,                         // quantizer step code (dummy value)
                    RAD_IPU_DECODE_FLAG_SIZE ); // forward bit (skip over the flags)

                //
                // Wait for the decode to complete
                //

                m_IpuState = IPU_DECODE_WAIT;
                Service( );
            }
            break;
        }
        case IPU_DECODE_WAIT:
        {
            //
            // We are ready to start again when the dma fromIPU completes
            //

            if( m_IsDmaFromIpuPending == false )
            {
                rAssert( IsDmaFromIpuBusy( ) == false );
                m_pOutputBuffer = NULL;
                m_OutputBufferBytes = 0;
                m_IpuState = IPU_READY;
            }
            else
            {
                // Make sure that we're not waiting around because of an error

                if( sceIpuIsError( ) == true )
                {
                    // Throw in an assert to notify people

                    rAssert( sceIpuIsError( ) == false );
                    m_IpuState = IPU_ERROR;
                }
            }
            break;
        }
        default:
        {
            break;
        }
    };
}

//=============================================================================
// radMovieIpuPs2::InputAsync
//=============================================================================

void radMovieIpuPs2::InputAsync( void * pBuffer, unsigned int numBytes )
{
    rAssert( IsInputRequired( ) == true );
    
    StartDmaToIpu( pBuffer, numBytes );
}

//=============================================================================
// radMovieIpuPs2::IsInputRequired
//=============================================================================

bool radMovieIpuPs2::IsInputRequired( void )
{
    //
    // See if dma to ipu is not active
    //

    return( IsDmaToIpuBusy( ) == false );
}

//=============================================================================
// radMovieIpuPs2::DecodeFrameAsync
//=============================================================================

void radMovieIpuPs2::DecodeFrameAsync( void * pOutputBuffer, unsigned int numBytes )
{
    // Ipu widths and heights are multiples of 16 * 4 bytes
    rAssert( ( numBytes % ( 16 * 16 * 4 ) ) == 0 ); 
    rAssert( ( ( ( unsigned int ) pOutputBuffer ) % radMemorySpace_OptimalAlignment ) == 0 );
    rAssert( m_IpuState == IPU_READY );
    rAssert( m_IsDmaFromIpuPending == false );
    rAssert( m_pOutputBuffer == NULL & m_OutputBufferBytes == 0 );

    //
    // Remember the destination buffer and size and start the state machine
    //

    if( m_IpuState == IPU_READY )
    {
        m_pOutputBuffer = pOutputBuffer;
        m_OutputBufferBytes = numBytes;
        m_IpuState = IPU_FLAGS;
        Service( );
    }
}

//=============================================================================
// radMovieIpuPs2::GetState
//=============================================================================

radMovieIpuPs2::IpuState radMovieIpuPs2::GetState( void )
{
    return m_IpuState;
}

//=============================================================================
// radMovieIpuPs2::Flush
//=============================================================================

void radMovieIpuPs2::Flush( void )
{
    //
    // Stop dma transfer to ipu if it is active
    //

    if( IsDmaToIpuBusy( ) == true || IsDmaFromIpuBusy( ) == true )
    {
        StopIpuDma( );
    }

    //
    // Reset the ipu and clear the input fifo
    //

    sceIpuReset( );
    sceIpuBCLR( 0 );

    //
    // We've flushed
    //

    m_pOutputBuffer = NULL;
    m_OutputBufferBytes = 0;
    m_IpuFlushed = true;
    m_IpuState = IPU_READY;
}

//=============================================================================
// radMovieIpuPs2::DmaFromIpuHandler
//=============================================================================

/* static */ int radMovieIpuPs2::DmaFromIpuHandler( int channelNumber, void * pUserData, void * pcAtTimeOfInterrupt  )
{
    rAssert( channelNumber == DMAC_FROM_IPU );
    rAssert( pUserData != NULL );

    reinterpret_cast< radMovieIpuPs2 * >( pUserData )->OnDmaInterruptFromIpu( );

    return 1;
}

//=============================================================================
// radMovieIpuPs2::OnDmaInterruptFromIpu
//=============================================================================

void radMovieIpuPs2::OnDmaInterruptFromIpu( void )
{
    StartDmaFromIpu( & m_pOutputBuffer, & m_OutputBufferBytes );
}

//=============================================================================
// radMovieIpuPs2::Initialize
//=============================================================================

/* static */ void radMovieIpuPs2::Initialize( radMemoryAllocator allocator )
{
    rAssert( s_refTheRadMovieIpuPs2 == NULL );

    s_refTheRadMovieIpuPs2 = new( allocator )radMovieIpuPs2( );
}

//=============================================================================
// radMovieIpuPs2::Terminate
//=============================================================================

/* static */ void radMovieIpuPs2::Terminate( void )
{
    rAssert( s_refTheRadMovieIpuPs2 != NULL );

    s_refTheRadMovieIpuPs2 = NULL;
}

//=============================================================================
// radMovieIpuPs2::GetInstance
//=============================================================================

/* static */ radMovieIpuPs2 * radMovieIpuPs2::GetInstance( void )
{
    return s_refTheRadMovieIpuPs2;
}

//=============================================================================
// ::radMovieVideoDecoderInitialize
//=============================================================================

void radMovieVideoDecoderInitialize( radMemoryAllocator allocator )
{
    radMovieIpuPs2::Initialize( allocator );
}

//=============================================================================
// ::radMovieVideoDecoderTerminate
//=============================================================================

void radMovieVideoDecoderTerminate( void )
{
    radMovieIpuPs2::Terminate( );
}


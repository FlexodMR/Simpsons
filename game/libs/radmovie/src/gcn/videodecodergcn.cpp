//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        videodecodergcn.cpp
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies movie player
//
// Date:    	July 18, 2002
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <radoptions.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include "../common/radmoviefile.hpp"
#include "videodecodergcn.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

#define RAD_VIDEO_DECODER_GET_FILE_SIZE 0xFFFFFFFF
#define RAD_VIDEO_DECODER_FILE_READ     0xFFFFFFFE
#define RAD_VIDEO_DECODER_FILE_RESET    0xFFFFFFFD

// HVQM4 documentation said these value would always be 2.  
// They correspond to HVQM4VideoInfo.h_sampling_rate and
// HVQM4VideoInfo.v_sampling_rate

#define RAD_VIDEO_DECODER_H_SAMP 2
#define RAD_VIDEO_DECODER_V_SAMP 2 

//
// Current implementation only plays movies of 640 * 480. May change in future. For
// PAL, we use  640 * 528
//
#ifndef PAL
#define IMAGE_WIDTH     640
#define IMAGE_HEIGHT    480    
#else
#define IMAGE_WIDTH     640
#define IMAGE_HEIGHT    528    
#endif


int robert = 0;

//=============================================================================
// radMovieVideoDecoder::radMovieVideoDecoderGcn
//=============================================================================

radMovieVideoDecoderGcn::radMovieVideoDecoderGcn( void )
    :
    radRefCount( 0 ),
    m_refRadMovieReadBuffer( NULL ),
    m_pPicture0( NULL ),
    m_pPicture1( NULL ),
    m_pPicture2( NULL ),
    m_pStalePicture( NULL ),
    m_pEncodedPicture( NULL ),
    m_pDecoderWorkBuffer( NULL ),
    m_PictureBufferSize( 0 ),
    m_EncodedPictureBufferSize( 0 ),
    m_DecoderWorkBufferSize( 0 ),
    m_FramesDecoded( 0 ),
    m_RecordsLeftInGOP( 0 ),
    m_GOPsLeft( 0 ),
    m_MicrosecondsPerFrame( 0 ),
    m_State( IRadMovieVideoDecoder::NoData )
{
        robert++;


        rReleasePrintf( "\n\n                   Constructor [0x%x]\n\n\n", this );

    for( unsigned int i = 0; i < 3; i++ )
    {
        m_pPictures[ i ] = NULL;
    }

    ::memset( & m_HVQM4SeqObj, 0, sizeof( HVQM4SeqObj ) );
    ::memset( & m_HVQM4RecHeader, 0, sizeof( HVQM4RecHeader ) );
}

//=============================================================================
// radMovieVideoDecoder::~radMovieVideoDecoderGcn
//=============================================================================

radMovieVideoDecoderGcn::~radMovieVideoDecoderGcn( void )
{
rReleasePrintf( "\n\n                   Destructor [0x%x]\n\n\n", this );

    robert--;

    for( unsigned int i = 0; i < 3; i++ )
    {
        ::radMemoryFree( m_pPictures[ i ] );
        m_pPictures[ i ] = NULL;
    }

    if( m_pDecoderWorkBuffer != NULL )
    {
        ::radMemoryFree( m_pDecoderWorkBuffer );
        m_pDecoderWorkBuffer = NULL;
    }

    if( m_pEncodedPicture != NULL )
    {
        ::radMemoryFree( m_pEncodedPicture );
        m_pEncodedPicture = NULL;
    }
}

//=============================================================================
// radMovieVideoDecoder::Initialize
//=============================================================================

void radMovieVideoDecoderGcn::Initialize( unsigned int maxWidthPixels, unsigned int maxHeightPixels, unsigned int codedVideoBufferSize )
{
    //  
    // Allocate work space for the decoder.  The formula used here works for version
    // 1.50 of the library.  It might change in the future.  If that happens, an
    // assert will happen in during initialization (see Service() ).  This formula
    // is provided in the HVQM4 library documentation.  If things change, you can
    // find it there (under the section HVQM4BuffSize)
    //

    m_DecoderWorkBufferSize = 87728; /*15624 + 
        ( ( ( maxWidthPixels / 4 ) + 2 ) * ( ( maxHeightPixels / 4 ) + 2 ) + 
          ( ( maxWidthPixels / 8 ) + 2 ) * ( ( maxHeightPixels / 8 ) + 2 ) * 2 ) * 2;  */

    m_pDecoderWorkBuffer = radMemoryAlloc( GetThisAllocator( ), m_DecoderWorkBufferSize );       
    rAssert( m_pDecoderWorkBuffer != NULL );

    //
    // Allocate the encoded picture video buffer
    //

    m_EncodedPictureBufferSize = codedVideoBufferSize;
    m_pEncodedPicture = ::radMemoryAlloc( GetThisAllocator( ), m_EncodedPictureBufferSize );

    //
    // Allocate 3 picture buffers
    //

    m_PictureBufferSize = ::radMemoryRoundUp( 
        ( maxWidthPixels * maxHeightPixels * ( RAD_VIDEO_DECODER_H_SAMP * RAD_VIDEO_DECODER_V_SAMP + 2)) / 
        ( RAD_VIDEO_DECODER_H_SAMP * RAD_VIDEO_DECODER_V_SAMP), 32 );

    m_pPictures[ 0 ] = ::radMemoryAlloc( GetThisAllocator( ), m_PictureBufferSize );
    m_pPictures[ 1 ] = ::radMemoryAlloc( GetThisAllocator( ), m_PictureBufferSize );
    m_pPictures[ 2 ] = ::radMemoryAlloc( GetThisAllocator( ), m_PictureBufferSize );

    rAssert( m_pPictures[ 0 ] != NULL );
    rAssert( m_pPictures[ 1 ] != NULL );
    rAssert( m_pPictures[ 2 ]  != NULL );

    //
    // Create the movie read buffer
    //

    m_refRadMovieReadBuffer = new( GetThisAllocator( ) )MovieReadBuffer( 400 * 1024, 400 * 1024 );
}

//=============================================================================
// radMovieVideoDecoder::SetSource
//=============================================================================

void radMovieVideoDecoderGcn::SetSource( IRadFile * pIRadFile, unsigned int widthPixels, unsigned int heightPixels, unsigned int startPosition, unsigned int frameRate )
{
    rAssert( m_State == IRadMovieVideoDecoder::NoData );

    //
    // Prepare the picture pointers
    //

    m_pPicture0 = m_pPictures[ 0 ];
    m_pPicture1 = m_pPictures[ 1 ];
    m_pPicture2 = m_pPictures[ 2 ];
    m_pStalePicture = NULL;

    //
    // Pass the new file on to the movie read buffer
    //

    m_refRadMovieReadBuffer->SetSource( pIRadFile, startPosition );

    // Data is now pending

    SetState( IRadMovieVideoDecoder::DataPending );
}

//=============================================================================
// radMovieVideoDecoder::Reset
//=============================================================================

void radMovieVideoDecoderGcn::Reset( void )
{
    m_pPicture0 = NULL;
    m_pPicture1 = NULL;
    m_pPicture2 = NULL;
    m_pStalePicture = NULL;
    m_FramesDecoded = 0;
    m_RecordsLeftInGOP = 0;
    m_GOPsLeft = 0;
    m_MicrosecondsPerFrame = 0;
    m_CurrentTime = 0;

    //
    // Reset the the movie read buffer
    //
    
    m_refRadMovieReadBuffer->Reset( );

    // We have no data now

    SetState( IRadMovieVideoDecoder::NoData );
}

//=============================================================================
// radMovieVideoDecoder::GetFrameRate
//=============================================================================

float radMovieVideoDecoderGcn::GetFrameRate( void )
{
    if( m_State == IRadMovieVideoDecoder::Ready || m_State == IRadMovieVideoDecoder::Decoding )
    {
        float frameRate = ( float ) 1000000.0f / m_MicrosecondsPerFrame;
        return frameRate;
    }
    else
    {
        // Don't call this until the decoder is ready
        rAssert( false );
        return 0.0f;
    }
}

//=============================================================================
// radMovieVideoDecoder::GetCurrentFrameNumber
//=============================================================================

unsigned int radMovieVideoDecoderGcn::GetCurrentFrameNumber( void )
{
    // The current frame number is actually 2 behind the number we've 
    // decoded, since we hang on to frames for a while

    return m_FramesDecoded - 2;
}

//=============================================================================
// radMovieVideoDecoder::Service
//=============================================================================

void radMovieVideoDecoderGcn::Service( void )
{
    rAssert( m_pDecoderWorkBuffer != NULL );

    if( m_State == IRadMovieVideoDecoder::DataPending )
    {
        //
        // We are waiting for the read buffer to figure out
        // what it's doing and we'd like to decode the first
        // few pictures so that we're ready to go.  Read the movie
        // header and intialize the decoder. Prepare 
        // each picture pointer with a decoded frame.  When
        // they're all satisfied, we can move to the ready 
        // state.
        //

        if( m_pStalePicture == NULL )
        {
            if( true == m_refRadMovieReadBuffer->CanReadBytes( sizeof( HVQM4Header ) + sizeof( HVQM4GOPHeader ) + sizeof( HVQM4RecHeader ) + sizeof( HVQM4VideoHeader ) ) )
            {
                //
                // Read the movie header and initialize things
                //

                HVQM4Header hvqm4Header;

                m_refRadMovieReadBuffer->ReadData( & hvqm4Header, sizeof( hvqm4Header ) );

                // The h4m file shouldn't contain audio (it's put in the rmv file on its own)

                rAssert( hvqm4Header.audio_total == 0 ); 

                // I'll be friendly and let the encoded picture buffer be 
                // reallocated if it was initialized too small.  But print
                // out a warning

                if( m_EncodedPictureBufferSize < hvqm4Header.max_frame_size )
                {
                    rTunePrintf( "ERROR radmovie: * encoded picture buffer too small [%d] bytes\n "
                                 "                * REALLOCATING buffer [%d] bytes\n", 
                                 m_EncodedPictureBufferSize,
                                 hvqm4Header.max_frame_size );

                    m_EncodedPictureBufferSize = hvqm4Header.max_frame_size;

                    ::radMemoryFree( m_pEncodedPicture );
                    m_pEncodedPicture = ::radMemoryAlloc( GetThisAllocator( ), m_EncodedPictureBufferSize );
                }

                m_FramesDecoded = 0;
                m_GOPsLeft = hvqm4Header.gop_total;
                m_MicrosecondsPerFrame = hvqm4Header.usec_per_frame;
                m_pStalePicture = m_pPicture0;

                //
                // Decoder initialization
                //

                ::memset( m_pDecoderWorkBuffer, 0, m_DecoderWorkBufferSize );
                ::memset( & m_HVQM4SeqObj, 0, sizeof( HVQM4SeqObj ) );

                HVQM4InitDecoder( );
                HVQM4InitSeqObj( & m_HVQM4SeqObj, & ( hvqm4Header.videoinfo ) );
                HVQM4SetBuffer( &m_HVQM4SeqObj, m_pDecoderWorkBuffer );

                //
                // Version control asserts and sanity checks
                //

                // File version must match library version

/*                rTuneAssert( hvqm4Header.file_version[ 0  ] == HVQM4_FILEVERSION[ 0  ] && 
                             hvqm4Header.file_version[ 1  ] == HVQM4_FILEVERSION[ 1  ] &&
                             hvqm4Header.file_version[ 2  ] == HVQM4_FILEVERSION[ 2  ] &&
                             hvqm4Header.file_version[ 3  ] == HVQM4_FILEVERSION[ 3  ] &&
                             hvqm4Header.file_version[ 4  ] == HVQM4_FILEVERSION[ 4  ] &&
                             hvqm4Header.file_version[ 5  ] == HVQM4_FILEVERSION[ 5  ] &&
                             hvqm4Header.file_version[ 6  ] == HVQM4_FILEVERSION[ 6  ] &&
                             hvqm4Header.file_version[ 7  ] == HVQM4_FILEVERSION[ 7  ] &&
                             hvqm4Header.file_version[ 8  ] == HVQM4_FILEVERSION[ 8  ] &&
                             hvqm4Header.file_version[ 9  ] == HVQM4_FILEVERSION[ 9  ] &&
                             hvqm4Header.file_version[ 10 ] == HVQM4_FILEVERSION[ 10 ] &&
                             hvqm4Header.file_version[ 11 ] == HVQM4_FILEVERSION[ 11 ] &&
                             hvqm4Header.file_version[ 12 ] == HVQM4_FILEVERSION[ 12 ] &&
                             hvqm4Header.file_version[ 13 ] == HVQM4_FILEVERSION[ 13 ] &&
                             hvqm4Header.file_version[ 14 ] == HVQM4_FILEVERSION[ 14 ] &&
                             hvqm4Header.file_version[ 15 ] == HVQM4_FILEVERSION[ 15 ] );
*/
                // This is an important assert.  See the discussion in Initialize( ).

                unsigned int size = HVQM4BuffSize( & m_HVQM4SeqObj );

                rTuneAssert( size <=  m_DecoderWorkBufferSize );

                // Currently we only support one image size.

                rAssert( m_HVQM4SeqObj.frame_width ==  IMAGE_WIDTH );
                rAssert( m_HVQM4SeqObj.frame_height == IMAGE_HEIGHT );

                // This means that some kind of versioning has changed

                rAssert( RAD_VIDEO_DECODER_H_SAMP == hvqm4Header.videoinfo.h_sampling_rate );   
                rAssert( RAD_VIDEO_DECODER_V_SAMP == hvqm4Header.videoinfo.v_sampling_rate );

                //
                // Prepare info for the first GOP and record
                //

                UpdateGOPInfo( );
                UpdateRecInfo( );

                if( m_GOPsLeft == 0 )
                {
                    // This is a special case that shouldn't really happen

                    rAssert( m_GOPsLeft != 0 );  // Movie contains no frames!!!
                    SetState( IRadMovieVideoDecoder::Error );
                    return;
                }
            }
            else
            {
                // We can do nothing but wait
                return;
            }
        }

        //
        // There is some shuffling of picture pointers that's about
        // to happen here.  The decoding picture must always be picture 2
        // so that it can compare to others
        //
        //
        // Decode First Pictures
        //
        
        if( m_pStalePicture == m_pPicture0 )
        {
            m_pPicture2 = m_pPictures[ 0 ];

            if( AttemptNextDecode( m_pPicture2 ) == true )
            {
                m_pPicture1 = m_pPicture2;
                m_pPicture2 = m_pPictures[ 1 ];
                m_pStalePicture = m_pPicture1;
            }
            else
            {
                return;
            }
        }

        //
        // Decode second Picture
        //

        if( m_pStalePicture == m_pPicture1 )
        {
            if( AttemptNextDecode( m_pPicture2 ) == true )
            {
                m_pPicture0 = m_pPicture1;
                m_pPicture1 = m_pPicture2;
                m_pPicture2 = m_pPictures[ 2 ];
                m_pStalePicture = m_pPicture2;
            }
            else
            {
                return;
            }
        }

        //
        // Decode third Picture
        //

        if( m_pStalePicture == m_pPicture2 )
        {
            if( AttemptNextDecode( m_pPicture2 ) == true )
            {
                m_pStalePicture = NULL;
            }
            else
            {
                return;
            }
        }

        //
        // If we make it all the way down here, we are ready to go
        //

        SetState( IRadMovieVideoDecoder::Ready );
    }
    else if( m_State == IRadMovieVideoDecoder::Ready )
    {
        if( m_pStalePicture != NULL )
        {
            if( m_RecordsLeftInGOP > 0 || m_GOPsLeft > 0 )
            {
//                unsigned int time = ::radTimeGetMilliseconds( );

                if( AttemptNextDecode( m_pStalePicture ) == true )
                {
                    // We succesfully decoded the next frame.  Slide all the pointers down

                    m_pPicture0 = m_pPicture1;
                    m_pPicture1 = m_pPicture2;
                    m_pPicture2 = m_pStalePicture;
                    m_pStalePicture = NULL;
                }

//                rReleasePrintf( "AttemptNextDecode [%d]\n", ::radTimeGetMilliseconds( ) - time );
            }
            else
            {
                // There's no more data to read.  Let the client use up the last frames

                m_pPicture0 = m_pPicture1;
                m_pPicture1 = m_pPicture2;
                m_pPicture2 = NULL;
                m_pStalePicture = NULL;

                //
                // If picture 0 if finally null, we have nothing left to render.
                // The movie is done
                //

                if( m_pPicture0 == NULL )
                {
                    // We should be completely out of data by this point

                    rAssert( m_RecordsLeftInGOP == 0 );
                    rAssert( m_GOPsLeft == 0 );

                    Reset( );
                }
            }
        }
    }
    else if( m_State != IRadMovieVideoDecoder::NoData )
    {
        rAssert( false );
    }
}

//=============================================================================
// radMovieVideoDecoder::GetLockedVideoFrame
//=============================================================================

void * radMovieVideoDecoderGcn::GetLockedVideoFrame( unsigned int * pPresentationTime )
{
    rAssert( pPresentationTime != NULL );

    if( m_pStalePicture == NULL )
    {
        * pPresentationTime = m_MicrosecondsPerFrame * GetCurrentFrameNumber( ) / 1000;

        return m_pPicture0;
    }
    else
    {
        return NULL;
    }
}

//=============================================================================
// radMovieVideoDecoder::UnlockVideoFrame
//=============================================================================

void radMovieVideoDecoderGcn::UnlockVideoFrame( void )
{
    m_pStalePicture = m_pPicture0;
    m_pPicture0 = m_pPicture1;
    m_pPicture1 = m_pPicture2;
    m_pPicture2 = NULL;

}

//=============================================================================
// radMovieVideoDecoder::SetState
//=============================================================================

void radMovieVideoDecoderGcn::SetState( IRadMovieVideoDecoder::State state )
{
    m_State = state;
}

//=============================================================================
// radMovieVideoDecoder::GetState
//=============================================================================

IRadMovieVideoDecoder::State radMovieVideoDecoderGcn::GetState( void )
{
    return m_State;
}

//=============================================================================
// radMovieVideoDecoder::AttemptNextDecode
//=============================================================================

bool radMovieVideoDecoderGcn::AttemptNextDecode( void * pDestination )
{
    unsigned int bytesRequired = m_HVQM4RecHeader.size - sizeof( HVQM4VideoHeader );

    if( m_RecordsLeftInGOP > 0 )
    {
        bytesRequired += sizeof( HVQM4RecHeader );
        bytesRequired += sizeof( HVQM4VideoHeader );
    }
    else if( m_GOPsLeft > 0 )
    {
        bytesRequired += sizeof( HVQM4GOPHeader );
        bytesRequired += sizeof( HVQM4RecHeader );
        bytesRequired += sizeof( HVQM4VideoHeader );
    }
    else
    {
        // This is the last frame to 
    }

    if( true == m_refRadMovieReadBuffer->CanReadBytes( bytesRequired ) )
    {
        // Read and decode the video data

        PerformDecode( pDestination );

        // Get the books up to date
        
        UpdateGOPInfo( );
        UpdateRecInfo( );

        return true;
    }
    else
    {
        // We can do nothing but wait
        return false;
    }

}

//=============================================================================
// radMovieVideoDecoder::UpdateGOPInfo
//=============================================================================

void radMovieVideoDecoderGcn::UpdateGOPInfo( void )
{
    if( m_RecordsLeftInGOP == 0 )
    {
        rAssert( m_refRadMovieReadBuffer->CanReadBytes( sizeof( HVQM4GOPHeader ) ) );

        HVQM4GOPHeader hvqm4GOPHeader;

        m_refRadMovieReadBuffer->ReadData( & hvqm4GOPHeader, sizeof( hvqm4GOPHeader ) );

        m_RecordsLeftInGOP = hvqm4GOPHeader.vidrec_number;
        m_GOPsLeft--;

        rAssert( hvqm4GOPHeader.audrec_number == 0 );
    }
}

//=============================================================================
// radMovieVideoDecoder::UpdateRecInfo
//=============================================================================

void radMovieVideoDecoderGcn::UpdateRecInfo( void )
{
    rAssert( m_refRadMovieReadBuffer->CanReadBytes( sizeof( m_HVQM4RecHeader ) + sizeof( HVQM4VideoHeader ) ) );
    rAssert( m_RecordsLeftInGOP > 0 );

    m_refRadMovieReadBuffer->ReadData( & m_HVQM4RecHeader, sizeof( m_HVQM4RecHeader ) );
    m_refRadMovieReadBuffer->SkipData( sizeof( HVQM4VideoHeader ) );

    m_RecordsLeftInGOP--;
}   

//=============================================================================
// radMovieVideoDecoder::PerformDecode
//=============================================================================

void radMovieVideoDecoderGcn::PerformDecode( void * pDestination )
{
    rAssert( m_refRadMovieReadBuffer->CanReadBytes( m_HVQM4RecHeader.size - sizeof( HVQM4VideoHeader ) ) );
    rAssert( pDestination != NULL );
    rAssert( m_pEncodedPicture != NULL );

    //
    // Read the data 
    //

    m_refRadMovieReadBuffer->ReadData( m_pEncodedPicture, m_HVQM4RecHeader.size - sizeof( HVQM4VideoHeader ) );

    //
    // HVQM4 is decoded according to the type of picture
    //

    switch( m_HVQM4RecHeader.format )
    {
        case HVQM4_VIDEO_I_PIC :
        {
            // Straight forward here.  Give it the encoded data and it gives you a picture

            HVQM4DecodeIpic( & m_HVQM4SeqObj, m_pEncodedPicture, pDestination );
            break;
        }
        case HVQM4_VIDEO_P_PIC :
        {
            // P pictures require the previous picture to diff against

            if( m_pPicture1 != NULL )
            {
                HVQM4DecodePpic( & m_HVQM4SeqObj, m_pEncodedPicture, pDestination, m_pPicture1 );
            }
            else
            {
                rTuneString( "radMovie: Warning: Discarding P frame because no valid previous frame\n");
            }
            break;
        }                
        case HVQM4_VIDEO_B_PIC :
        {
            // B pictures require two previous pictures

            if( m_pPicture0 != NULL && m_pPicture1 != NULL )
            {
                HVQM4DecodeBpic( & m_HVQM4SeqObj, m_pEncodedPicture, pDestination, m_pPicture0, m_pPicture1 );
            }
            else
            {
                rTuneString( "radMovie: Warning: Discarding B frame because no valid previous frame\n");
            }
            break;
        }                
        default:
        {
            rAssert( false );
            break;
        }  
    }           
    
    //
    // Increment the frames counter
    //

    m_FramesDecoded++;
}

//=============================================================================
// radMovieVideoDecoderCreate
//=============================================================================

IRadMovieVideoDecoder * radMovieVideoDecoderCreate( radMemoryAllocator allocator )
{
    return new( allocator )radMovieVideoDecoderGcn( );
}


bool g_Initialized = false;

void radMovieVideoDecoderInitialize( radMemoryAllocator allocator )
{
    rAssert( g_Initialized == false );
    g_Initialized = true;
}

void radMovieVideoDecoderTerminate( void )
{
    rAssert( g_Initialized == true );

    g_Initialized = false;
}

#endif // ! RAD_MOVIEPLAYER_USE_BINK
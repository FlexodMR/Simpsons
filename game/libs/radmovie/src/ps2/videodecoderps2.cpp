//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        videodecoderps2.cpp
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies movie player
//
// Date:    	May 16, 2002
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <libipu.h>
#include <string.h>
#include <radmoviefile.hpp>
#include "ipups2.hpp"
#include "videodecoderps2.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

// TODO: check these ...
//#define RAD_IPU_FRAME_FLAG_SIZE 8
//#define RAD_IPU_FRAME_START_CODE 0x000001B0
//#define RAD_IPU_FRAME_START_CODE_SIZE 32
//#define RAD_IPU_FRAME_NUMBER_UNDEFINED -1000 // A large negative number
//#define RAD_IPU_FRAME_SKIP_CATCH_UP_VALUE 30
//#define RAD_IPU_FRAME_LAG 0 
#define RAD_IPU_FILE_READMULTIPLE RAD_MOVIE_FILE_DATA_POSITION
#define RAD_IPU_DECODER_INPUT_MULTIPLE 16

//
// File operation identification
//

#define RAD_IPU_FILE_RESET_MARKER     0xFFFFFFFF
#define RAD_IPU_FILE_READ_MARKER      0xFFFFFFFE
#define RAD_IPU_FILE_SIZE_MARKER      0xFFFFFFFD
#define RAD_IPU_FILE_MIN_MARKER_VALUE 0xFFFFFFFC

//=============================================================================
// Static Member Initialization
//=============================================================================

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// radMovieVideoDecoderPs2::radMovieVideoDecoderPs2
//=============================================================================

radMovieVideoDecoderPs2::radMovieVideoDecoderPs2( void )
    :
    radRefCount( 0 ),
    m_DecoderInputPending( false ),
    m_refIRadFile( NULL ),
    m_FileBytesRemaining( 0 ),
    m_FileReadSize( 0 ),
    m_State( IRadMovieVideoDecoder::NoData ),
    m_CodedVideoPacketSize( 0 ),
    m_CurrentFileReadPacket( 0 ),
    m_CurrentDecodePacket( 0 ),
    m_AllPacketsFull( false ),
    m_pDecodedVideoBuffer( NULL ),
    m_DecodedVideoBufferSize( 0 ),
    m_DecodedVideoFrameSize( 0 ),
    m_FramesDecoded( 0 ),
    m_FrameRate( 3000 ),
    m_FileState( FileState_None )
{
    for( unsigned int i = 0; i < PS2_VIDEO_DECODE_NUM_PACKETS; i++ )
    {
        m_pCodedVideoPacket[ i ] = NULL;
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::~radMovieVideoDecoderPs2
//=============================================================================

radMovieVideoDecoderPs2::~radMovieVideoDecoderPs2( void )
{
    if( m_DecoderInputPending == true || m_State == IRadMovieVideoDecoder::Decoding )
    {
        if( radMovieIpuPs2::GetInstance( ) != NULL )
        {
            radMovieIpuPs2::GetInstance( )->Flush( );
        }
    }

    if( m_pDecodedVideoBuffer != NULL )
    {
        ::radMemoryFreeAligned( GetThisAllocator( ), m_pDecodedVideoBuffer );
    }

    for( unsigned int i = 0; i < PS2_VIDEO_DECODE_NUM_PACKETS; i++ )
    {
        if( m_pCodedVideoPacket[ i ] != NULL )
        {
            ::radMemoryFreeAligned( GetThisAllocator( ), m_pCodedVideoPacket[ i ] );
        }
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::Initialize
//=============================================================================

void radMovieVideoDecoderPs2::Initialize( unsigned int maxWidthPixels, unsigned int maxHeightPixels, unsigned int codedVideoBufferBytes )
{
    rAssert( ( codedVideoBufferBytes / PS2_VIDEO_DECODE_NUM_PACKETS ) % radFileMaxSectorSize == 0 );  // proper size for double buffering
    rAssert( ( maxWidthPixels % 16 ) == 0 ); // See ipu documentation
    rAssert( ( maxHeightPixels % 16 ) == 0 ); // See ipu documentation
    rAssert( m_pDecodedVideoBuffer == NULL );
    rAssert( m_pCodedVideoPacket[ 0 ] == NULL );
    rAssert( m_State == IRadMovieVideoDecoder::NoData );
    rAssert( PS2_VIDEO_DECODE_NUM_PACKETS >= 2 );

    //
    // Allocate memory for the decoded video output buffer
    //

    m_DecodedVideoBufferSize = maxWidthPixels * maxHeightPixels * 4; // rgb32 pixel is 32 bits wide
    m_pDecodedVideoBuffer = ( char * ) ::radMemoryAllocAligned( GetThisAllocator( ), m_DecodedVideoBufferSize, RAD_IPU_FILE_READMULTIPLE );

    ::memset( m_pDecodedVideoBuffer, 0xEF, m_DecodedVideoBufferSize );

    //
    // Allocate memory for the coded video packets
    //
    
    m_CodedVideoPacketSize = codedVideoBufferBytes / PS2_VIDEO_DECODE_NUM_PACKETS;

    // HACK HACK HACK --joel
    radMemoryAllocator heaps[] = { 7, 1, 9 };  // Zone/Rail, Temp, then HUD (trust me, don't change this)
    ::radMemorySetUsableAllocators (heaps, 3);

    for( unsigned int i = 0; i < PS2_VIDEO_DECODE_NUM_PACKETS; i++ )
    {
        m_pCodedVideoPacket[ i ] = ( char * ) ::radMemoryAllocAligned( 
            ALLOCATOR_SEARCH, m_CodedVideoPacketSize, radFileOptimalMemoryAlignment );

        ::memset( m_pCodedVideoPacket[ i ], 0xEF, m_CodedVideoPacketSize );
    }

    //
    // Print out some helpful information
    //

    rDebugPrintf( "\nradMovieVideoDecoderPs2 Video Allocations: \n" \
                  "     * DecodedVideoBuffer [0x%x]Bytes\n" \
                  "     * CodedVideoBuffer   [0x%x]Bytes x [%d]Packets\n\n",
        m_DecodedVideoBufferSize,
        m_CodedVideoPacketSize, PS2_VIDEO_DECODE_NUM_PACKETS );
}

//=============================================================================
// radMovieVideoDecoderPs2::SetSource
//=============================================================================

void radMovieVideoDecoderPs2::SetSource( IRadFile * pIRadFile, unsigned int widthPixels, unsigned int heightPixels, unsigned int startPosition, unsigned int frameRate )
{
    rAssert( m_State == IRadMovieVideoDecoder::NoData );
    rAssert( m_FileState == FileState_None || m_FileState == FileState_WaitingForReset );

    //
    // Set the counters and states
    //

    m_FramesDecoded = 0;
    m_CurrentFileReadPacket = 0; 
    m_CurrentDecodePacket = 0; 
    m_AllPacketsFull = false;
    m_refIRadFile = pIRadFile;
    m_FileBytesRemaining = 0;
    m_FileReadSize = 0;
    m_DecodedVideoFrameSize = 4 * widthPixels * heightPixels; // rgb32 pixel is 32 bits wide
    ::memset( m_pDecodedVideoBuffer, 0, m_DecodedVideoBufferSize );

    rAssert( frameRate >= 1 && frameRate <= 6000 ); // between 1 and 6000 frames / 100 seconds
    m_FrameRate = frameRate;

    rAssert( m_DecodedVideoFrameSize <= m_DecodedVideoBufferSize );
    rAssert( ( widthPixels % 16 ) == 0 );   // ipu requirement
    rAssert( ( heightPixels % 16 ) == 0 );  // ipu requirement

    //
    // If the new file isn't NULL, get started on it
    //

    if( m_refIRadFile != NULL )
    {
        SetState( IRadMovieVideoDecoder::DataPending );

        //
        // Start things off by making sure the file read
        // position is in the right place
        //

        m_refIRadFile->SetPositionAsync( startPosition );
        
        if( m_FileState == FileState_None )
        {
            //
            // There aren't any pending file operations,
            // so we can immediately figure out what this
            // file is all about
            // 

            SetFileState( FileState_Initializing );
            m_refIRadFile->GetSizeAsync( & m_FileBytesRemaining );
            m_refIRadFile->AddCompletionCallback( this, ( void * ) RAD_IPU_FILE_SIZE_MARKER );
        }
        else if( m_FileState == FileState_WaitingForReset )
        {
            //
            // File operations are pending so we need to 
            // wait before starting on the this new file.
            //

            SetFileState( FileState_Reinitializing );
        }
        else
        {
            rAssert( false );
        }
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::Reset
//=============================================================================

void radMovieVideoDecoderPs2::Reset( void )
{
    m_FramesDecoded = 0;
    m_FileBytesRemaining = 0;
    m_CurrentFileReadPacket = 0;
    m_CurrentDecodePacket = 0;
    m_AllPacketsFull = false;
    m_FileBytesRemaining = 0;
    m_FileReadSize = 0;
    m_DecodedVideoFrameSize = 0;
    radMovieIpuPs2::GetInstance( )->Flush( );
    ::memset( m_pDecodedVideoBuffer, 0, m_DecodedVideoBufferSize );
   
    if( m_FileState == FileState_Ready || m_FileState == FileState_None )
    {
        SetFileState( FileState_None );
    }
    else
    {
        if( m_refIRadFile != NULL )
        {
            SetFileState( FileState_WaitingForReset );
            m_refIRadFile->AddCompletionCallback( this, ( void * ) RAD_IPU_FILE_RESET_MARKER );
        }
    }

    m_refIRadFile = NULL;

    SetState( IRadMovieVideoDecoder::NoData );
}

//=============================================================================
// radMovieVideoDecoderPs2::Service
//=============================================================================

void radMovieVideoDecoderPs2::Service( void )
{
    //
    // Service the the IPU hardware
    //

    radMovieIpuPs2::GetInstance( )->Service( );

    AddDataToBuffer( );
    AddDataToDecoder( );
    MonitorDecoder( );
}

//=============================================================================
// radMovieVideoDecoderPs2::MonitorDecoder
//=============================================================================

void radMovieVideoDecoderPs2::MonitorDecoder( void )
{
    //
    // The state of the video decoder depends on the
    // state of the IPU
    //

    if( m_State == IRadMovieVideoDecoder::Decoding )
    {
        radMovieIpuPs2::IpuState ipuState = radMovieIpuPs2::GetInstance( )->GetState( );

        if( ipuState == radMovieIpuPs2::IPU_READY )
        {
            SetState( IRadMovieVideoDecoder::Ready );
        }
        else if( ipuState == radMovieIpuPs2::IPU_MOVIE_END )
        {
            Reset( );
        }
        else if( ipuState == radMovieIpuPs2::IPU_ERROR )
        {
            SetState( IRadMovieVideoDecoder::Error );
        }
        else
        {
            // Do nothing
        }
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::AddDataToBuffer
//=============================================================================

void radMovieVideoDecoderPs2::AddDataToBuffer( void )
{
    //
    // If the coded video buffer needs more data,
    // get more data for the code video buffer
    //

    if( m_FileState == FileState_Ready && m_AllPacketsFull == false )
    {
        unsigned int requiredBytes = 0;

        if( m_FileBytesRemaining > m_CodedVideoPacketSize )
        {
            requiredBytes = m_CodedVideoPacketSize;
        }
        else
        {
            requiredBytes = m_FileBytesRemaining;
        }

        if( requiredBytes > 0 )
        {
            SetFileState( FileState_Reading );
            m_FileReadSize = requiredBytes;
            m_refIRadFile->ReadAsync( m_pCodedVideoPacket[ m_CurrentFileReadPacket ], m_FileReadSize );
            m_refIRadFile->AddCompletionCallback( this, ( void * ) RAD_IPU_FILE_READ_MARKER );
        }
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::AddDataToDecoder
//=============================================================================

void radMovieVideoDecoderPs2::AddDataToDecoder( void )
{
    //
    // If the IPU required more data to keep on decoding,
    // provide it with more data.
    //

    bool isInputRequired = radMovieIpuPs2::GetInstance( )->IsInputRequired( );

    if( isInputRequired == true )
    {
        // 
        // Start by cleaning up previous operations
        //

        if( m_DecoderInputPending == true )
        {
            m_DecoderInputPending = false;
            m_AllPacketsFull = false;
            m_CurrentDecodePacket = ( m_CurrentDecodePacket + 1 ) % PS2_VIDEO_DECODE_NUM_PACKETS;

            if( m_CurrentDecodePacket == m_CurrentFileReadPacket )
            {
                rTunePrintf( "radMovieVideoDecoderPs2: All coded video packets empty!!!!\n" );
            }
        }

        //
        // Now see if a new operation can be started.
        // Only allow one request to happen at a time.
        //

        if( m_DecoderInputPending == false && 
            ( m_FileState == FileState_Ready || m_FileState == FileState_Reading ) &&
            ( m_AllPacketsFull == true || m_CurrentFileReadPacket != m_CurrentDecodePacket ) )
        {
            m_DecoderInputPending = true;
            radMovieIpuPs2::GetInstance( )->InputAsync( m_pCodedVideoPacket[ m_CurrentDecodePacket ], m_CodedVideoPacketSize );
        }
    }
}


//=============================================================================
// radMovieVideoDecoderPs2::GetState
//=============================================================================

IRadMovieVideoDecoder::State radMovieVideoDecoderPs2::GetState( void )
{
    return m_State;
}

//=============================================================================
// radMovieVideoDecoderPs2::GetFrameRate
//=============================================================================

float radMovieVideoDecoderPs2::GetFrameRate( void )
{
    return ( float ) m_FrameRate / 100;
}

//=============================================================================
// radMovieVideoDecoderPs2::GetCurrentFrameNumber
//=============================================================================

unsigned int radMovieVideoDecoderPs2::GetCurrentFrameNumber( void )
{
    return m_FramesDecoded;
}

//=============================================================================
// radMovieVideoDecoderPs2::GetLockedVideoFrame
//=============================================================================

void * radMovieVideoDecoderPs2::GetLockedVideoFrame( unsigned int * pPresentationTime )
{
    rAssert( pPresentationTime != NULL );
    rAssert( m_State == IRadMovieVideoDecoder::Ready || m_State == IRadMovieVideoDecoder::Decoding );

    //
    // If the state is ready, we can return the video frame.
    // Otherwise we don't return anything 
    //

    if( m_State == IRadMovieVideoDecoder::Ready )
    {
        //
        // The time is  (time ms) = (currentFrame frames) / (frameRate frames/Hs) * (100000 Hs/ms)
        // But it's a little more fancy to avoid overflow.
        //
        unsigned int currentFrame = GetCurrentFrameNumber( );
        * pPresentationTime = 
            ( currentFrame / m_FrameRate) * 100000 + ( currentFrame % m_FrameRate ) * 100000 / m_FrameRate;

        return m_pDecodedVideoBuffer;
    }
    else
    {
        return NULL;
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::UnlockVideoFrame
//=============================================================================

void radMovieVideoDecoderPs2::UnlockVideoFrame( void )
{
    //
    // The frame data is now stale.  Decode the next frame.
    //

    DecodeNextFrame( );
}

//=============================================================================
// radMovieVideoDecoderPs2::OnFileOperationsComplete
//=============================================================================

void radMovieVideoDecoderPs2::OnFileOperationsComplete( void* pUserData )
{
    rAssert( m_State != IRadMovieVideoDecoder::Error );

    if( m_FileState == FileState_Reading )
    {
        if( ( unsigned int ) pUserData == RAD_IPU_FILE_READ_MARKER )
        {
            rAssert( m_FileBytesRemaining >= m_FileReadSize );

            m_FileBytesRemaining -= m_FileReadSize;
            m_CurrentFileReadPacket = ( m_CurrentFileReadPacket + 1 ) % PS2_VIDEO_DECODE_NUM_PACKETS;

            if( m_FileReadSize > 0 && m_CurrentFileReadPacket == m_CurrentDecodePacket )
            {
                m_AllPacketsFull = true;
            }

            m_FileReadSize = 0;
        
            if( m_FileBytesRemaining == 0 )
            {
                rDebugChannelPrintf( radMovieDebugChannel2, "radMovieVideoDecoderPs2: Reached end of file\n" );
            }
        
            SetFileState( FileState_Ready );

            Service( );
        }
    }
    else if( m_FileState == FileState_Initializing )
    {
        if( ( unsigned int ) pUserData == RAD_IPU_FILE_SIZE_MARKER )
        {
            //
            // We've just learned the size of the file
            //

            rAssert( m_refIRadFile != NULL );
            rAssert( m_State == IRadMovieVideoDecoder::DataPending );

            if( m_refIRadFile->IsOpen( ) == true )
            {
                //
                // Start by filling all of the coded video packets
                // Stay in this file initializing state for now
                //
                
                m_refIRadFile->SetPositionAsync( RAD_MOVIE_FILE_DATA_POSITION );
                m_FileBytesRemaining -= RAD_MOVIE_FILE_DATA_POSITION;
                
                for( unsigned int i = 0; i < PS2_VIDEO_DECODE_NUM_PACKETS; i++ )
                {
                    if( m_FileBytesRemaining > m_CodedVideoPacketSize )
                    {
                        m_refIRadFile->ReadAsync( m_pCodedVideoPacket[ i ], m_CodedVideoPacketSize );
                        m_FileBytesRemaining -= m_CodedVideoPacketSize;
                    }
                    else
                    {
                        m_refIRadFile->ReadAsync( m_pCodedVideoPacket[ i ], m_FileBytesRemaining );
                        m_FileBytesRemaining = 0;
                    }
                }

                m_refIRadFile->AddCompletionCallback( this, ( void * ) RAD_IPU_FILE_READ_MARKER );
            }
            else
            {
                rTunePrintf( "radMovieVideoDecoderPs2: Failed to open file: [%s]\n", m_refIRadFile->GetFilename( ) );
                m_FileBytesRemaining = 0;
                m_refIRadFile = NULL;
                SetFileState( FileState_None );
                SetState( IRadMovieVideoDecoder::Error );
            }
        }
        else if( ( unsigned int ) pUserData == RAD_IPU_FILE_READ_MARKER )
        {
            //
            // Now we've filled all of the coded video packets with data.
            // Flush the ipu unit.
            //

            SetFileState( FileState_Ready );
            m_AllPacketsFull = true;
            radMovieIpuPs2::GetInstance( )->Flush( );
            m_DecoderInputPending = false;
            
            //
            // And decode the first frame
            //

            DecodeNextFrame( );
            Service( );
        }
        else
        {
            rAssert( false );
        }
    }
    else if( m_FileState == FileState_Reinitializing )
    {
        // We're waiting for a reset marker
        
        if( ( unsigned int ) pUserData == RAD_IPU_FILE_RESET_MARKER )
        {
            rAssert( m_refIRadFile != NULL );

            SetFileState( FileState_Initializing );
            m_refIRadFile->GetSizeAsync( & m_FileBytesRemaining );
            m_refIRadFile->AddCompletionCallback( this, ( void * )RAD_IPU_FILE_SIZE_MARKER );

            Service( );
        }
    }
    else if( m_FileState == FileState_WaitingForReset )
    {
        // We're waiting for a reset marker
         
        if( ( unsigned int ) pUserData == RAD_IPU_FILE_RESET_MARKER )
        {
            // Safely go to the No File state

            SetFileState( FileState_None );
        }
    }
    else
    {
        rAssert( false );
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::DecodeNextFrame
//=============================================================================

void radMovieVideoDecoderPs2::DecodeNextFrame( void )
{
    rAssert( m_State == IRadMovieVideoDecoder::Ready || m_State == IRadMovieVideoDecoder::DataPending );

    // Pass the decode requeset on to the ipu unit.  Change 
    // our state and increment decode frames counter

    radMovieIpuPs2::GetInstance( )->DecodeFrameAsync( m_pDecodedVideoBuffer, m_DecodedVideoFrameSize );
    m_FramesDecoded++;
    SetState( IRadMovieVideoDecoder::Decoding );
}

//=============================================================================
// radMovieVideoDecoderPs2::SetState
//=============================================================================

void radMovieVideoDecoderPs2::SetState( IRadMovieVideoDecoder::State state )
{
    m_State = state;

    if( m_State == IRadMovieVideoDecoder::Error )
    {
        rAssert( false );
    }
}

//=============================================================================
// radMovieVideoDecoderPs2::SetFileState
//=============================================================================

void radMovieVideoDecoderPs2::SetFileState( FileState state )
{
    m_FileState = state;
}

//=============================================================================
// Function:    radMovieVideoDecoderPs2Create
//=============================================================================

IRadMovieVideoDecoder * radMovieVideoDecoderCreate( radMemoryAllocator allocator )
{
	return new( allocator )radMovieVideoDecoderPs2( );
}


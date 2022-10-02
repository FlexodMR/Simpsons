//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        wmafiledatasource.cpp
//
// Subsystem:	RadSound - WMA File Data Source
//
// Description:	This file implements the xbox radsound WMA File Data Source
//
// Revisions:  	April 23, 2002   Creation
//
//=============================================================================

//=============================================================================
// Included Files
//=============================================================================

#include "pch.hpp"
#include "wmafiledatasource.hpp"

//=============================================================================
// radSoundWmaFileDataSource::radSoundWmaFileDataSource
//=============================================================================

radSoundWmaFileDataSource::radSoundWmaFileDataSource( void )
	:
    m_ProcessCompletedEvent( 0 ),
    m_MaxPackets( 8 ),
    m_YieldRate( 3 ),
    m_LookAheadBufferSize( 64 * 1024 ),
    m_ActualBytesProcessed( 0 ),
    m_pFixupBuffer( NULL ),
    m_pFixupData( NULL ),
    m_FixupBufferSizeInBytes( 0 ),
    m_FixupBytesAvailable( 0 ),
    m_refIRadMemorySpaceCopyRequest( NULL ),
    m_pFrameBuffer( NULL ),
    m_RequestSizeInBytes( 0 ),
    m_RemainingRequestSizeInBytes( 0 ),
    m_refXWmaFileMediaObject( NULL ),
    m_refIRadSoundHalDataSourceCallback( NULL ),
	m_refIRadSoundHalAudioFormat( NULL ),
    m_refIRadFile( NULL )
{
    SetState( NONE );

    ::memset( & m_XMediaPacket, 0, sizeof( m_XMediaPacket ) );

    // We will manually reset this event

    m_ProcessCompletedEvent = ::CreateEvent( NULL, true, false, NULL );
}

//=============================================================================
// radSoundWmaFileDataSource::~radSoundWmaFileDataSource
//=============================================================================

radSoundWmaFileDataSource::~radSoundWmaFileDataSource( void )
{
    ::CloseHandle( m_ProcessCompletedEvent );
    m_ProcessCompletedEvent = 0;

    if( m_pFixupBuffer != NULL )
    {
        ::radMemoryFreeAligned(GetThisAllocator( ), m_pFixupBuffer );
        m_pFixupBuffer = NULL;
        m_pFixupData = NULL;
    }
}

//=============================================================================
// radSoundWmaFileDataSource::InitializeFromFile
//=============================================================================

void radSoundWmaFileDataSource::InitializeFromFile
( 
	IRadFile * pIRadFile,
    unsigned int yieldRate
)
{
	rAssert( m_State == NONE );
	rAssert( pIRadFile != NULL );

	//
	// We have a file that may or may not be open.
    // Use the file callback mechanism to kickstart
    // the data source
    //

	SetState( OPENING_FILE );
	m_refIRadFile = pIRadFile;
    m_YieldRate = yieldRate;
    pIRadFile->AddCompletionCallback( this, NULL );
}

//=============================================================================
// radSoundWmaFileDataSource::GetFile
//=============================================================================

/* virtual */ IRadFile * radSoundWmaFileDataSource::GetFile( void )
{
    return m_refIRadFile;
}   

//=============================================================================
// radSoundWmaFileDataSource::GetState
//=============================================================================

IRadSoundHalDataSource::State radSoundWmaFileDataSource::GetState( void )
{
	if 
    ( 
        m_State == IDLE ||
        m_State == INITIAL_DECODE_AND_COPY ||
        m_State == FIXUP_DECODE ||
        m_State == FIXUP_COPY 
    )
	{
		return IRadSoundHalDataSource::Initialized;
	}
	else if ( m_State == FILE_ERROR )
	{
		return IRadSoundHalDataSource::Error;
	}
	
	return IRadSoundHalDataSource::Initializing;
}

//=============================================================================
// radSoundWmaFileDataSource::GetFormat
//=============================================================================

IRadSoundHalAudioFormat * radSoundWmaFileDataSource::GetFormat( void )
{
    rAssert( GetState( ) == IRadSoundHalDataSource::Initialized );
    rAssert( m_refIRadSoundHalAudioFormat != NULL );

	return m_refIRadSoundHalAudioFormat;
}

//=============================================================================
// radSoundWmaFileDataSource::GetRemainingFrames
//=============================================================================

unsigned int radSoundWmaFileDataSource::GetRemainingFrames( void )
{
    rAssert( GetState( ) == IRadSoundHalDataSource::Initialized );

    if( GetState( ) == IRadSoundHalDataSource::Initialized )
    {
        return 0xFFFFFFFF;
    }
    else
    {
        return 0;
    }
}

//=============================================================================
// radSoundWmaFileDataSource::GetFramesAsync
//=============================================================================

void radSoundWmaFileDataSource::GetFramesAsync
(
	void * pFrameBuffer,
	radMemorySpace destinationMemorySpace,
	unsigned int sizeInFrames,
	IRadSoundHalDataSourceCallback * pIRshdsc
)
{
    rAssert( m_State == IDLE );
	rAssert( pIRshdsc != NULL );
    rAssert( m_refXWmaFileMediaObject != NULL );
    rAssert( pFrameBuffer != NULL );
    rAssert( m_refIRadMemorySpaceCopyRequest == NULL );

    //
    // See if it is appropriate to start a new request
    //

	if( sizeInFrames > 0 && m_State == IDLE )
	{
        m_pFrameBuffer = pFrameBuffer;
        m_DestinationMemorySpace = destinationMemorySpace;
        m_RequestSizeInBytes = m_refIRadSoundHalAudioFormat->FramesToBytes( sizeInFrames );
        m_RemainingRequestSizeInBytes = m_RequestSizeInBytes;
        m_refIRadSoundHalDataSourceCallback = pIRshdsc;
        SetState( INITIAL_DECODE_AND_COPY );
        
        //
        // Empty the fixup buffer
        //

        if( m_FixupBytesAvailable > 0 )
        {
            unsigned int copySize = m_FixupBytesAvailable;
            if( m_RemainingRequestSizeInBytes < m_FixupBytesAvailable )
            {
                m_FixupBytesAvailable = m_RemainingRequestSizeInBytes;
            }

            m_refIRadMemorySpaceCopyRequest = ::radMemorySpaceCopyAsync( pFrameBuffer, destinationMemorySpace, m_pFixupData, radMemorySpace_Local, copySize );

            // Adjust our variables

            m_RemainingRequestSizeInBytes -= copySize;
            m_FixupBytesAvailable -= copySize;
            m_pFixupData = ( char * ) m_pFixupData + copySize;
            m_pFrameBuffer = ( char * ) m_pFrameBuffer + copySize;
        }

        //
        // Decode the data
        //

        if( m_refXWmaFileMediaObject != NULL )
        {
            unsigned long pos, length;
            m_refXWmaFileMediaObject->Seek( 0, FILE_CURRENT, & pos );
            m_refXWmaFileMediaObject->GetLength( & length );
            pos = length - pos;
            if( pos > 0 )
            {
                //
                // Round down the request size to an even multiple
                //

                unsigned requestSize = ::radMemoryRoundDown( m_RemainingRequestSizeInBytes, m_FixupBufferSizeInBytes );

                //
                // Fill the media packet
                //

                if( requestSize > 0 )
                {
                    m_XMediaPacket.pvBuffer = m_pFrameBuffer;
                    m_XMediaPacket.dwMaxSize = requestSize;
                    m_XMediaPacket.pdwCompletedSize = & m_ActualBytesProcessed;
                    m_XMediaPacket.hCompletionEvent = m_ProcessCompletedEvent;

                    // Reset the event and begin processing the data

                    ::ResetEvent( m_ProcessCompletedEvent );
                    m_refXWmaFileMediaObject->Process( NULL, & m_XMediaPacket );   
                }
                else
                {
                    //
                    // We have less than a fixup buffer's worth of data in the request.
                    // We'll signal the event semaphore ourselves.  This will let us handle
                    // this request once the transfer buffer has been clear out.
                    //

                    ::ResetEvent( m_ProcessCompletedEvent );
                    ::SetEvent( m_ProcessCompletedEvent );
                }

            }
            else
            {
                m_refIRadFile = NULL;
                m_refXWmaFileMediaObject = NULL;
            }
        }

        //
        // Add ourselves to the update list so that we can check if 
        // the mediaobject is finished processing the data
        //

        AddToUpdateList( );
	}
	else
	{
		// Don't call us until we're ready
		rWarningMsg( m_State == IDLE, "WmaFileDataSource: Get Frames called while not in the IDLE state" );  
		pIRshdsc->OnDataSourceFramesLoaded( 0 );
	}
}

//=============================================================================
// radSoundWmaFileDataSource::OnFileOperationsComplete
//=============================================================================

void radSoundWmaFileDataSource::OnFileOperationsComplete( void* pUserData )
{ 
    rAssert( m_refXWmaFileMediaObject == NULL );

    //
    // Determine if the file was found
    //

	if( m_refIRadFile->IsOpen( ) == true )
	{
        //
        // The file is open, prepare to the decoder and enter the idle state
        //

        SetState( IDLE );

		HRESULT hr;                
        WAVEFORMATEX wfx;

        hr = ::WmaCreateDecoderEx( 
            NULL, 
            ( HANDLE ) m_refIRadFile->GetHandle( ),   
            true,       // Asynchronous
            m_LookAheadBufferSize,
            m_MaxPackets,
            m_YieldRate,
            & wfx,
            & m_refXWmaFileMediaObject );

        rAssert( SUCCEEDED( hr ) );
        rAssert( m_refXWmaFileMediaObject != NULL );

        if( SUCCEEDED( hr ) && m_refXWmaFileMediaObject != NULL )
        {
            //
            // If required, create IRadSoundHalAudioFormat object
            //

            if( m_refIRadSoundHalAudioFormat == NULL )
            {
                m_refIRadSoundHalAudioFormat = ::radSoundHalAudioFormatCreate( GetThisAllocator( ) );
                m_refIRadSoundHalAudioFormat->Initialize( IRadSoundHalAudioFormat::PCM, NULL,
                    wfx.nSamplesPerSec, wfx.nChannels, wfx.wBitsPerSample );
            }

            //
            // Now we can create the fixup buffer
            // 

            XMEDIAINFO xmi;
            m_refXWmaFileMediaObject->GetInfo( & xmi );
            m_FixupBufferSizeInBytes = xmi.dwOutputSize;

            rAssert( m_pFixupBuffer == NULL );
            rAssert( m_FixupBufferSizeInBytes > 0 );

            m_pFixupBuffer = ::radMemoryAllocAligned( GetThisAllocator( ), m_FixupBufferSizeInBytes, radFileOptimalMemoryAlignment );
            
            rAssert( m_pFixupBuffer != NULL );
        }
    }
	else
	{
		rDebugPrintf( "Failed to open file: [%s]\n", m_refIRadFile->GetFilename( ) );

		//
		// The file system didn't find our file.  Say that the
		// size of the file is zero and move into the idle state.
		// We don't need to fail because of this problem.
		//

		SetState( FILE_ERROR );
		m_refIRadFile = NULL;
	}
}

//=============================================================================
// radSoundWmaFileDataSource::Update
//=============================================================================

/* virtual */ void radSoundWmaFileDataSource::Update( unsigned int elapsed )
{
    State state = m_State;

	switch ( m_State )
	{
		case NONE:
		{
			rAssert( false );
            RemoveFromUpdateList( );
			break;
		}
		case INITIAL_DECODE_AND_COPY:
		{
			_StateInitialDecodeAndCopy( );
			break;
		}
		case FIXUP_DECODE:
		{
			_StateFixupDecode( );
			break;
		}
		case FIXUP_COPY:
		{
			_StateFixupCopy( );
			break;
		}
		case IDLE:
		{
			rAssert( false );
            RemoveFromUpdateList( );
			break;
		}
        default:
		{
			rAssert( false );
            RemoveFromUpdateList( );
			break;
		}
	};
}

//=============================================================================
// radSoundWmaFileDataSource::SetState
//=============================================================================

void radSoundWmaFileDataSource::SetState( State state )
{
//    rReleasePrintf( " **radSoundWmaFileDataSource::SetState   [%d] -> [%d]\n", m_State, state );

    m_State = state;
}

//=============================================================================
// radSoundWmaFileDataSource::_StateInitialDecodeAndCopy
//=============================================================================

void radSoundWmaFileDataSource::_StateInitialDecodeAndCopy( void )
{
    //
    // Check if the xmo is finished processing the data
    //

    if( m_refXWmaFileMediaObject != NULL )
    {
        unsigned long waitValue = ::WaitForSingleObject( m_ProcessCompletedEvent, 0 );

        if( waitValue == WAIT_TIMEOUT )
        {
            // The decoder isn't done yet.  Just return;
            return;
        }
        else if( waitValue == WAIT_OBJECT_0 )
        {
            //
            // The decoder has signaled the event.  It's done, update variables accordingly
            //
            
            rAssert( m_RemainingRequestSizeInBytes >= m_ActualBytesProcessed );

            m_RemainingRequestSizeInBytes -= m_ActualBytesProcessed;
            m_pFrameBuffer = ( char * ) m_pFrameBuffer + m_ActualBytesProcessed;
            m_ActualBytesProcessed = 0;
        }
        else
        {
            // Something is wrong

            rAssert( false );

            m_refIRadFile = NULL;
            m_refXWmaFileMediaObject = NULL;
            SetState( FILE_ERROR );

            m_refIRadSoundHalAudioFormat = NULL;
            m_RequestSizeInBytes = 0;
            m_RemainingRequestSizeInBytes = 0;

            ref< IRadSoundHalDataSourceCallback > refIRadSoundHalDataSourceCallback = m_refIRadSoundHalDataSourceCallback;
            m_refIRadSoundHalDataSourceCallback = NULL;

            RemoveFromUpdateList( );
            refIRadSoundHalDataSourceCallback->OnDataSourceFramesLoaded( 0 );
            return;
        }
    }

    //
    // Check if the initial memory copy is complete
    //

    if( m_refIRadMemorySpaceCopyRequest != NULL && m_refIRadMemorySpaceCopyRequest->IsDone( ) == false )
    {
        // Wait for the copy to finish
        return;
    }
    else
    {
        m_FixupBytesAvailable = 0;
        m_refIRadMemorySpaceCopyRequest = NULL;
    }
           
    //
    // We see if a final fixup is required
    //

    unsigned long pos = 0;
    unsigned long length = 0;

    if( m_refXWmaFileMediaObject != NULL )
    {
        m_refXWmaFileMediaObject->Seek( 0, FILE_CURRENT, & pos );
        m_refXWmaFileMediaObject->GetLength( & length );
        pos = length - pos;
    }
    
    if( pos == 0 )
    {
        //
        // The file contains no more data
        //

        SetState( IDLE );

        unsigned int framesLoaded = m_refIRadSoundHalAudioFormat->BytesToFrames( 
            m_RequestSizeInBytes - m_RemainingRequestSizeInBytes );

        m_refIRadSoundHalAudioFormat = NULL;
        m_RequestSizeInBytes = 0;
        m_RemainingRequestSizeInBytes = 0;

        ref< IRadSoundHalDataSourceCallback > refIRadSoundHalDataSourceCallback = m_refIRadSoundHalDataSourceCallback;
        m_refIRadSoundHalDataSourceCallback = NULL;

        RemoveFromUpdateList( );
        refIRadSoundHalDataSourceCallback->OnDataSourceFramesLoaded( framesLoaded );
    }
    else if( m_RemainingRequestSizeInBytes > 0 )
    {
        //
        // We still need more data.  Fill the fixup buffer
        //

        rAssert( m_pFixupBuffer != NULL );
        SetState( FIXUP_DECODE );
        
        //
        // Fill the media packet
        //

        m_XMediaPacket.pvBuffer = m_pFixupBuffer;
        m_XMediaPacket.dwMaxSize = m_FixupBufferSizeInBytes;
        m_XMediaPacket.pdwCompletedSize = & m_ActualBytesProcessed;
        m_XMediaPacket.hCompletionEvent = m_ProcessCompletedEvent;

        // This is an assert that the wma xmo will generate

        rAssert( ( m_XMediaPacket.dwMaxSize % (2 * m_refIRadSoundHalAudioFormat->GetNumberOfChannels( ) ) ) == 0 );

        // Reset the event and begin processing the data

        ::ResetEvent( m_ProcessCompletedEvent );
        m_refXWmaFileMediaObject->Process( NULL, & m_XMediaPacket );   
    }
    else
    {
        //
        // We have nothing left to do.  Callback and go into the idle state.
        //

        SetState( IDLE );

        ref< IRadSoundHalDataSourceCallback > refIRadSoundHalDataSourceCallback = m_refIRadSoundHalDataSourceCallback;
        m_refIRadSoundHalDataSourceCallback = NULL;

        unsigned int framesLoaded = m_refIRadSoundHalAudioFormat->BytesToFrames( m_RequestSizeInBytes );

        m_RemainingRequestSizeInBytes = 0;
        m_FixupBytesAvailable = 0;
        m_RequestSizeInBytes = 0;

        RemoveFromUpdateList( );
        refIRadSoundHalDataSourceCallback->OnDataSourceFramesLoaded( framesLoaded );
    }
}

//=============================================================================
// radSoundWmaFileDataSource::_StateFixupDecode
//=============================================================================

void radSoundWmaFileDataSource::_StateFixupDecode( void )
{
    rAssert( m_refXWmaFileMediaObject != NULL );

    //
    // Check if the xmo is finished processing the data
    //

    unsigned long waitValue = ::WaitForSingleObject( m_ProcessCompletedEvent, 0 );

    if( waitValue == WAIT_TIMEOUT )
    {
        // The decoder isn't done yet.  Just return;
        return;
    }
    else if( waitValue == WAIT_OBJECT_0 )
    {
        //
        // The decoder has signaled the event.  It's done, update variables accordingly
        //

        m_pFixupData = m_pFixupBuffer;
        m_FixupBytesAvailable = m_ActualBytesProcessed;
        m_ActualBytesProcessed = 0;
    }
    else
    {
        // Something is wrong

        rAssert( false );
        m_ActualBytesProcessed = 0;
        m_FixupBytesAvailable = 0;
    }

    //
    // See if the xmo actually gave us any data
    //

    if( m_FixupBytesAvailable > 0 )
    {
        SetState( FIXUP_COPY );

        unsigned int copySize = m_RemainingRequestSizeInBytes;
        if( m_RemainingRequestSizeInBytes > m_FixupBytesAvailable )
        {
            copySize = m_FixupBytesAvailable;
        }

        m_refIRadMemorySpaceCopyRequest = ::radMemorySpaceCopyAsync( m_pFrameBuffer, m_DestinationMemorySpace, m_pFixupData, radMemorySpace_Local, copySize );

        // Adjust our variables

        m_pFixupData = ( char * ) m_pFixupData + copySize;
        m_FixupBytesAvailable -= copySize;
        m_RemainingRequestSizeInBytes -= copySize;
    }
    else
    {
        //
        // We have nothing left to do.  Callback and go into the IDLE state.
        //

        SetState( IDLE );

        ref< IRadSoundHalDataSourceCallback > refIRadSoundHalDataSourceCallback = m_refIRadSoundHalDataSourceCallback;

        unsigned int framesLoaded = m_refIRadSoundHalAudioFormat->BytesToFrames( 
            m_RequestSizeInBytes - m_RemainingRequestSizeInBytes );

        m_refIRadSoundHalDataSourceCallback = NULL;
        m_RemainingRequestSizeInBytes = 0;
        m_FixupBytesAvailable = 0;
        m_RequestSizeInBytes = 0;
       
        RemoveFromUpdateList( );
        refIRadSoundHalDataSourceCallback->OnDataSourceFramesLoaded( framesLoaded );
    }
}

//=============================================================================
// radSoundWmaFileDataSource::_StateFixupCopy
//=============================================================================

void radSoundWmaFileDataSource::_StateFixupCopy( void )
{
    //
    // Check if the initial memory copy is complete
    //

    if( m_refIRadMemorySpaceCopyRequest != NULL && m_refIRadMemorySpaceCopyRequest->IsDone( ) == false )
    {
        // Wait for the copy to finish
        return;
    }
    else
    {
        m_refIRadMemorySpaceCopyRequest = NULL;

        //
        // We have nothing left to do.  Callback and go into the idle state
        //

        SetState( IDLE );

        ref< IRadSoundHalDataSourceCallback > refIRadSoundHalDataSourceCallback = m_refIRadSoundHalDataSourceCallback;

        unsigned int framesLoaded = m_refIRadSoundHalAudioFormat->BytesToFrames( 
            m_RequestSizeInBytes - m_RemainingRequestSizeInBytes );

        m_refIRadSoundHalDataSourceCallback = NULL;
        m_RemainingRequestSizeInBytes = 0;
        m_RequestSizeInBytes = 0;
       
        RemoveFromUpdateList( );
        refIRadSoundHalDataSourceCallback->OnDataSourceFramesLoaded( framesLoaded );
    }
}

//=============================================================================
// ::radSoundWmaFileDataSourceCreate
//=============================================================================

IRadSoundWmaFileDataSource * radSoundWmaFileDataSourceCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundWmaFileDataSource", allocator ) radSoundWmaFileDataSource( );
}

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        PS2_rSoundBufferAsyncLoader.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the playstation2 implementation of the sound
//              buffer load request object.
//
//=============================================================================

//============================================================================
// Include Files
//============================================================================

#include <eekernel.h> // NULL defined
#include <stdio.h>
#include <radtime.hpp>


#include "../iop/iopclient.hpp"
#include "adpcm.hpp"
#include "adpcmbuffer.hpp"
#include "adpcmbufferloader.hpp"

//============================================================================
// Globals
//============================================================================

/* static */ IRadMemoryPool * radSoundPoolObject< radSoundBufferAsyncLoaderAdpcmPs2 >::s_pIRadMemoryPool = NULL;

//============================================================================
// Class radSoundBufferAsyncLoaderAdpcmPs2
//============================================================================

/* virtual */ void radSoundBufferAsyncLoaderAdpcmPs2::OnDataSourceFramesLoaded( unsigned int framesActuallyRead )
{
    rAssert( m_State == READING_SOURCE_CHUNK );
    rAssert( framesActuallyRead <= m_FramesLoading );

    m_State = DONE_READING_SOURCE_CHUNK;

    if ( framesActuallyRead < m_FramesLoading )
    {
        m_FramesToClear = m_FramesToLoad - ( m_FramesLoaded + framesActuallyRead );
        m_FramesLoading = framesActuallyRead;
    }

    InternalService( );
}

//============================================================================
// radSoundBufferAsyncLoaderAdpcmPs2::
//============================================================================

/* virtual */ bool radSoundBufferAsyncLoaderAdpcmPs2::ServiceRequest( void )
{
    return InternalService( );
}

//============================================================================
// radSoundBufferAsyncLoaderAdpcmPs2::
//============================================================================

radSoundBufferAsyncLoaderAdpcmPs2::radSoundBufferAsyncLoaderAdpcmPs2
(
	IRadSoundHalDataSource * pIRadSoundHalDataSource,
	IRadSoundHalBuffer * pIRadSoundHalBuffer,
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames,
	IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
)
	:
	radSoundHalBufferAsyncRequestAdpcmPs2( pIRadSoundHalBuffer ),
	m_RefCount( 0 ),
    m_State( QUEUED ),
	m_BufferStartInFrames( startPositionInFrames ),
    m_FramesToLoad( numberOfFrames ),
    m_FramesLoaded( 0 ),
    m_FramesLoading( 0 ),
	m_FramesToClear( 0 ),
    m_Cancelled( false ),
	m_pIRadSoundHalBuffer( pIRadSoundHalBuffer ),
	m_pIRadSoundHalDataSource( pIRadSoundHalDataSource ),
    m_pIRadSoundHalBufferLoadCallback( pIRadSoundHalBufferLoadCallback )
{
    rAssert( pIRadSoundHalDataSource != NULL );
	rAssert( pIRadSoundHalBuffer != NULL );

	radSoundHalBufferAsyncRequestAdpcmPs2::Initialize( );
}

/* virtual */ void radSoundBufferAsyncLoaderAdpcmPs2::BeginRequest( void )
{
    m_State = STARTED;

    InternalService( );
}

bool radSoundBufferAsyncLoaderAdpcmPs2::InternalService( void )
{
    State prevState;

    do
    {
        prevState = m_State;
        switch ( m_State )
        {
            case QUEUED:
            {
                rAssert(false);
                break;
            }
            case STARTED:
            {
                if ( m_Cancelled )
                {
                    m_State = FINISHED;
                    break;
                }
            }
            // Fall Through
            case DONE_LOADING_SPU_CHUNK:
            {
                m_FramesLoaded += m_FramesLoading;

                if ( m_FramesToClear > 0 )
                {
                    m_State = CLEARING_EXTRA_DATA;

                    radSoundIopPs2::GetInstance( )->ClearBufferAsync(
                        m_pIRadSoundHalBuffer,
                        m_BufferStartInFrames + m_FramesLoaded,
                        m_FramesToClear );
                }
                else
                {
                    if ( m_FramesLoaded >= m_FramesToLoad )
                    {
                        m_State = DONE_LOADING;
                    }
                    else
                    {
                        m_FramesLoading = m_FramesToLoad - m_FramesLoaded;

                        unsigned int transferBufferSizeInFrames =
                            m_pIRadSoundHalBuffer->GetFormat( )->BytesToFrames(
                                radSoundIopPs2::GetInstance( )->GetTransferBufferSize( ) );

                        if ( m_FramesLoading > transferBufferSizeInFrames )
                        {
                            m_FramesLoading = transferBufferSizeInFrames;
                        } 

                       /* unsigned int bytesLoading =
                            m_pIRadSoundHalBuffer->GetFormat( )->FramesToBytes( m_FramesLoading );
                        
                        if ( m_State == STARTED )
                        {
                            rReleasePrintf( "AUDIO: Loading FIRST Sound Chunk To IOP TransferBuffer: [0x%x] bytes\n", bytesLoading );
                        }
                        else
                        {
                            rReleasePrintf( "AUDIO: Loading SECOND+ Sound Chunk To IOP TransferBuffer: [0x%x] bytes\n", bytesLoading );
                        } */
                        
                        m_State = READING_SOURCE_CHUNK;
                                    
  	                    m_pIRadSoundHalDataSource->GetFramesAsync( 
  		                    (void*) radSoundIopPs2::GetInstance( )->GetTransferBufferAddress( ),
  		                    radMemorySpace_Iop,
                            m_FramesLoading,
                            this );                       

                    }
                }

                break;
            }
            case READING_SOURCE_CHUNK:
            {
                break; // waiting for callback
            }
            case DONE_READING_SOURCE_CHUNK:
            {
                if ( m_FramesLoading > 0 ) // Might have read 0 if end of stream
                {
                    m_State = LOADING_SPU_CHUNK;

                    radSoundIopPs2::GetInstance( )->LoadBufferAsync
                    ( 
	                    radSoundIopPs2::GetInstance( )->GetTransferBufferAddress( ),
	                    m_pIRadSoundHalBuffer,
	                    m_BufferStartInFrames + m_FramesLoaded,
	                    m_FramesLoading
                    );
                }
                else
                {
                    m_State = DONE_LOADING_SPU_CHUNK;
                }

                break;
            }

            case LOADING_SPU_CHUNK:
            {
                if ( radSoundIopPs2::GetInstance( )->LoadBufferComplete( ) )
                {
                    m_State = DONE_LOADING_SPU_CHUNK;
                }
                break;
            }
            case CLEARING_EXTRA_DATA:
            {
                if ( radSoundIopPs2::GetInstance( )->ClearBufferComplete( ) )
                {
                    m_State = DONE_LOADING;
                }
                break;
            }
            case DONE_LOADING:
            {
                m_State = FINISHED;

                if ( m_Cancelled == false )
                {
                    m_pIRadSoundHalBufferLoadCallback->OnBufferLoadComplete( m_FramesLoaded );
                }
            }
            case FINISHED:
            {
               break;
            }   
        }
    } while ( prevState != m_State );

    return m_State == FINISHED;
}

/* virtual */ void radSoundBufferAsyncLoaderAdpcmPs2::CancelRequest( void )
{
    m_Cancelled = true;
}

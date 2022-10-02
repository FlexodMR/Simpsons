//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <dolphin.h>
#include <arq.h>

#include <radfile.hpp>
#include <radtime.hpp>
#include <radsound_hal.hpp>
#include <radsoundfile.hpp>

#include "buffer.hpp"
#include "bufferasyncloader.hpp"

IRadMemoryPool * radSoundPoolObject< radSoundBufferAsyncLoaderGcn >::s_pIRadMemoryPool = NULL;

//======================================================================
// radSoundBufferAsyncLoaderGcn::radSoundBufferAsyncLoaderGcn
//======================================================================

radSoundBufferAsyncLoaderGcn::radSoundBufferAsyncLoaderGcn
(
    radSoundBufferGcn * pRadSoundBufferGcn,
    IRadSoundHalDataSource * pIRadSoundHalDataSource,
    unsigned int bufferOffsetInFrames,
    unsigned int numberOfFrames,
    IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
)
    :
    radSoundBufferAsyncRequestGcn( pRadSoundBufferGcn ),
    m_BufferChannelOffsetInBytes( 0 ),   
    m_TotalBytesToLoad( 0 ),
    m_TotalBytesToReport( 0 ),
    m_CurrentDmaChannel( 0 ),
	m_CurrentDmaComplete( false ),
	m_ChunkBytesToLoad( 0 ),
	m_ChunkBytesLoaded( 0 ),
    m_xIRadSoundHalDataSource( pIRadSoundHalDataSource ),
    m_xIRadSoundHalBufferLoadCallback( pIRadSoundHalBufferLoadCallback ),
    m_Cancelled( false )
{
    // rAssert( m_xRadSoundBufferGcn->GetFormat( ) != NULL ); Nope, 0 is valid address
    
    rAssert( m_xIRadSoundHalDataSource != NULL );
    rAssert( m_xIRadSoundHalBufferLoadCallback != NULL );    
    
    m_TotalBytesToLoad = m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( numberOfFrames );
    m_TotalBytesToReport = m_TotalBytesToLoad;
    
    m_BufferChannelOffsetInBytes =
        m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes(
        bufferOffsetInFrames );
        
    m_BufferChannelOffsetInBytes /= 
        m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );
        
 	AddRef( ); // We must hold ourself alive becaue we wait for the OS
 	
    radSoundBufferAsyncRequestGcn::Initialize( ); 	  	
}

//======================================================================
// radSoundBufferAsyncLoaderGcn::radSoundBufferAsyncLoaderGcn
//======================================================================

radSoundBufferAsyncLoaderGcn::~radSoundBufferAsyncLoaderGcn( void )
{
}


//======================================================================
// radSoundBufferAsyncLoaderGcn::StartLoad
//======================================================================

void radSoundBufferAsyncLoaderGcn::OnBeginOperation( void )
{
    if ( m_Cancelled == false )
    {
	    LoadNextFileChunk( );
    }
    else
    {
        Finish( );
    }
}

//======================================================================
// radSoundBufferAsyncLoaderGcn::LoadNextFileChunk
//======================================================================

void radSoundBufferAsyncLoaderGcn::LoadNextFileChunk( void )
{
	m_ChunkBytesToLoad = m_TotalBytesToLoad - m_ChunkBytesLoaded;

    rAssert( s_MainMemoryBufferSize % ( 2 * ARQ_DMA_ALIGNMENT ) == 0 );
    	
	if ( m_ChunkBytesToLoad > s_MainMemoryBufferSize )
	{
		m_ChunkBytesToLoad = s_MainMemoryBufferSize;
	} 
    
    m_xIRadSoundHalDataSource->GetFramesAsync(
        s_pMainMemoryTransferBuffer,
        radMemorySpace_Main,
        m_xRadSoundBufferGcn->GetFormat( )->BytesToFrames( m_ChunkBytesToLoad ),
        this );
}

//======================================================================
// radSoundBufferAsyncLoaderGcn::OnFileOperationsComplete
//======================================================================

void radSoundBufferAsyncLoaderGcn::	OnDataSourceFramesLoaded( unsigned int framesActuallyRead )
{
    if ( m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( framesActuallyRead ) < m_ChunkBytesToLoad )
    {
        void * pMissedBuffer = ( ( char * ) s_pMainMemoryTransferBuffer ) + m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( framesActuallyRead );
        unsigned int missedBufferSize = m_ChunkBytesToLoad - m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( framesActuallyRead );

        rAssert( s_MainMemoryBufferSize >=
            ( m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( framesActuallyRead ) + missedBufferSize ) );

        //
        // Make sure that the missing bytes are filled with silence
        //

        unsigned char fillChar;
    
        if (  m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) == 8 )
        {
            fillChar = 128;
        }
        else if ( m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) == 16 )
        {
            fillChar = 0;
        }
        else
        {
            rAssert( false );
        }

        ::memset( pMissedBuffer, fillChar, missedBufferSize );   

        //
        // Report the real number of bytes that the data source provided
        //

        m_TotalBytesToReport -= missedBufferSize;
    }

    //
    // The file system alread has DCInvalidated.
    //
       
    if
    (
        //
        // UnInterleave sound data
        // when 1) more than 1 channel
        //      2) data is PCM, so convert Little Endian to Big Endian
        //
        // RAD_SOUND_DATA_TYPE_GCNADPCM data is always in Big Endian format,
        // UnInterleave is only needed when more than one channel is found
        //
        ( m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( ) > 1 ) ||
        ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM )
    )
    {
        //
        // This also reverses the endian, which we need to do if it is
        // not BIG_ENDIAN pcm
        //

        UnInterleaveData( );
    }

    m_CurrentDmaChannel = 0;
    DmaNextChannel( );
}

//======================================================================
// radSoundBufferAsyncLoaderGcn::UnInterleaveData
//======================================================================
void radSoundBufferAsyncLoaderGcn::UnInterleaveData( void )
{
	//
	// We support PCM and big endian (native) PCM.  The native PCM
	// will obviously be faster.
	//
	
    signed short * pInterleaveBuffer   = (signed short*) s_pMainMemoryInterleaveBuffer;
    unsigned int framesToUnInterleave = m_xRadSoundBufferGcn->GetFormat( )->BytesToFrames( m_ChunkBytesToLoad );
    unsigned int numberOfChannels      = m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );

    if ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM )
    {
        for( unsigned int channel = 0; channel < numberOfChannels ; channel ++ )
        {
            signed short * pTransferBuffer = ((signed short*) s_pMainMemoryTransferBuffer) + channel;
            
            pInterleaveBuffer = (signed short*) ::radMemoryRoundUp(
                (unsigned int) pInterleaveBuffer, ARQ_DMA_ALIGNMENT );
                
            for( unsigned int i = 0; i < framesToUnInterleave ; i ++ )
            {
                 *pInterleaveBuffer = __lhbrx( pTransferBuffer, 0 ); // gamecube has hardware endian support
                 pInterleaveBuffer++;
                 pTransferBuffer += numberOfChannels;
            }
        }
    }
    else if ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM_BIGENDIAN )
    {
        for( unsigned int channel = 0; channel < numberOfChannels; channel ++ )
        {
            signed short * pTransferBuffer = ((signed short*) s_pMainMemoryTransferBuffer) + channel;

            pInterleaveBuffer = (signed short*) ::radMemoryRoundUp(
                (unsigned int) pInterleaveBuffer, ARQ_DMA_ALIGNMENT );

            for( unsigned int i = 0; i < framesToUnInterleave ; i ++ )
            {
                 *pInterleaveBuffer = *pTransferBuffer;
                 pInterleaveBuffer++;
                 pTransferBuffer += numberOfChannels;
            }
        }
    }
    else if ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
    {
        char * pInterleaveBufferADPCM = ( char *)( pInterleaveBuffer );
        // uninterleave one frame at a time
        for( unsigned int channel = 0; channel < numberOfChannels; channel ++ )
        {
            char * pTransferBuffer = ( (char *) s_pMainMemoryTransferBuffer) + channel * GCN_ADPCM_BYTES_PER_FRAME;

            pInterleaveBufferADPCM = (char*) ::radMemoryRoundUp(
                (unsigned int) pInterleaveBufferADPCM, ARQ_DMA_ALIGNMENT );

            /* rDebugPrintf( "Uninterleave to: [0x%x] from tb: [0x%x] Frames: [0x%x] \n",
                pInterleaveBufferADPCM, pTransferBuffer, framesToUnInterleave ); */
            
            for( unsigned int i = 0; i < framesToUnInterleave; i ++ )
            {
                 memcpy( pInterleaveBufferADPCM, pTransferBuffer, GCN_ADPCM_BYTES_PER_FRAME );
                 pInterleaveBufferADPCM += GCN_ADPCM_BYTES_PER_FRAME;
                 pTransferBuffer += numberOfChannels * GCN_ADPCM_BYTES_PER_FRAME;
            }
        }
    }
    else
    {
        rAssertMsg( false, "radsound: Unsupported data type" );
    }   
}

//======================================================================
// radSoundBufferAsyncLoaderGcn::OnDmaToAramComplete
//======================================================================

/* virtual */ void radSoundBufferAsyncLoaderGcn::OnDmaToAramComplete( void )
{		
	m_CurrentDmaChannel++;

    if ( m_CurrentDmaChannel < m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( ) )
    {
        DmaNextChannel( );
    }
    else
    {
    	//
    	// Already DMA'd both uninterleaved channels.  Move the file
    	// pointer along and get the next block.
    	//
    	m_ChunkBytesLoaded += m_ChunkBytesToLoad;
    	
    	if ( m_Cancelled == false && ( m_ChunkBytesLoaded < m_TotalBytesToLoad ) )
    	{
    		//
    		// Here there is more to read.
    		//
    	
    		LoadNextFileChunk( );
    	}
    	else
    	{
    		//
    		// Finished loading.  Callback the client at self destruct.
    		//
            
            Finish( );
        }
    }    
}

void radSoundBufferAsyncLoaderGcn::Finish( void )
{
    if ( m_Cancelled == false )
    {
    		
    	m_xIRadSoundHalBufferLoadCallback->OnBufferLoadComplete(
            m_xRadSoundBufferGcn->GetFormat( )->BytesToFrames( m_TotalBytesToReport ) );
    }

    Release( );
}
//======================================================================
// radSoundBufferAsyncLoaderGcn::DmaNextChannel
//======================================================================

void radSoundBufferAsyncLoaderGcn::DmaNextChannel( void )
{

    unsigned long numberOfBytes =
        m_ChunkBytesToLoad
        / m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );
        
    numberOfBytes = ::radMemoryRoundUp(
        numberOfBytes, ARQ_DMA_ALIGNMENT );
        
    unsigned long channelOffset = ::radMemoryRoundUp(
        m_CurrentDmaChannel * numberOfBytes, ARQ_DMA_ALIGNMENT );

    //
    // If file is mono, we didn't have to uninterleave the data, so
    // it is still sitting in the original CD read buffer, not the
    // interleave buffer.
    //

    unsigned long mainMemoryAddress;

    if
    (
        ( m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( ) > 1 ) ||
        ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM )
    )
    {
        mainMemoryAddress = ((unsigned long) s_pMainMemoryInterleaveBuffer) + channelOffset;
    }
    else
    {
        mainMemoryAddress = ((unsigned long) s_pMainMemoryTransferBuffer ) + channelOffset;
    }
 
 	unsigned long dmaChunkOffsetInBytes =
 	    m_ChunkBytesLoaded
 	    / m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );
 	
 	unsigned long aramAddress = m_xRadSoundBufferGcn->GetAramStartAddressInBytes
 	    ( m_CurrentDmaChannel ) + m_BufferChannelOffsetInBytes + dmaChunkOffsetInBytes;
    
    //
    // Now it is safe to do a raw DMA from main memory
    //

    /* rDebugPrintf( "Loading: [0x%x] bytes from: [0x%x] to [0x%x]\n",
        numberOfBytes, mainMemoryAddress, aramAddress ); */

    DmaToAram( mainMemoryAddress, aramAddress, numberOfBytes );      
}

void radSoundBufferAsyncLoaderGcn::Cancel( void )
{
    m_Cancelled = true;    
}



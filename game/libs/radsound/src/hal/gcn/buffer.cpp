//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <dolphin.h>
#include <arq.h>

#include <radsound_hal.hpp>
#include <radsoundfile.hpp>
#include "buffer.hpp"
#include "bufferasyncloader.hpp"
#include "bufferasyncclearer.hpp"

#ifndef NEBUG
static char dc[] = "radSoundBuffer";
#endif

const unsigned int RADSOUNDHAL_BUFFER_CHANNEL_ALIGNMENT = ARQ_DMA_ALIGNMENT;

//======================================================================
// radSoundBufferGcn static init
//======================================================================

radSoundBufferGcn * radLinkedClass< radSoundBufferGcn >::s_pLinkedClassHead = NULL;
radSoundBufferGcn * radLinkedClass< radSoundBufferGcn >::s_pLinkedClassTail = NULL;

//======================================================================
// radSoundBufferGcn::radSoundBufferGcn
//======================================================================

radSoundBufferGcn::radSoundBufferGcn( void )
	:
	m_Looping( false ),
    m_SizeInBytes( 0 )
 {
 }
 

//======================================================================
// radSoundBufferGcn::Initialize
//======================================================================

void radSoundBufferGcn::Initialize
(
	IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
    IRadMemoryObject * pIRadMemoryObject,
    unsigned int sizeInFrames,
	bool looping,
    bool streaming
)
{
    rAssert( pIRadSoundHalAudioFormat != NULL );
    rAssert( pIRadMemoryObject != NULL );
	rAssert( pIRadMemoryObject->GetMemorySize( ) >= ::radSoundHalBufferCalculateMemorySize( 
        IRadSoundHalAudioFormat::Bytes, sizeInFrames, 
        IRadSoundHalAudioFormat::Frames, pIRadSoundHalAudioFormat ) );

    
    m_Looping = looping;

    m_xIRadSoundHalAudioFormat = pIRadSoundHalAudioFormat;
       
    m_xIRadMemoryObject = pIRadMemoryObject;
    
    m_SizeInBytes = m_xIRadSoundHalAudioFormat->FramesToBytes( sizeInFrames );

    rAssert( ((unsigned int)m_xIRadMemoryObject->GetMemoryAddress( ) % ARQ_DMA_ALIGNMENT ) == 0 );

    #ifdef RAD_DEBUG
    {
    	/* char buf[ 128 ];
    	sprintf
    	(
    		buf,
    		"Buffer: Chan:[0x%x] Bytes: [0x%x] Frames: [0x%x] Samples: [0x%x] Aram: [0x%x]\n"
            "        StartLog:[0x%x], EndLog: [0x%x]\n",
    		m_xIRadSoundHalAudioFormat->GetNumberOfChannels( ),
    		m_SizeInBytes,
            sizeInFrames,
    		m_xIRadSoundHalAudioFormat->BytesToSamples( m_SizeInBytes ),
    		m_xIRadMemoryObject->GetMemoryAddress( ),
            GetAramSampleStartInLogicalUnits( 0, 0 ),
            GetAramSampleEndInLogicalUnits( 0 )
    	);
    	rDebugString( buf ); */
    }
    #endif
	
    // Can't check for NULL here because 0 is a valid ARAM address!
}



//======================================================================
// radSoundBufferGcn::~radSoundBufferGcn
//======================================================================

radSoundBufferGcn::~radSoundBufferGcn( void )
{

}

//======================================================================
// radSoundBufferGcn::GetMemoryObject
//======================================================================

IRadMemoryObject * radSoundBufferGcn::GetMemoryObject( void )
{
	return m_xIRadMemoryObject;
}

//======================================================================
// radSoundBufferGcn::Load
//======================================================================

void radSoundBufferGcn::LoadAsync
(
    IRadSoundHalDataSource * pIRadSoundHalDataSource,
    unsigned int bufferStartInFrames,
    unsigned int numberOfFrames,
    IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
)
{
	rAssert( pIRadSoundHalDataSource != NULL );
	rAssert( bufferStartInFrames < m_xIRadSoundHalAudioFormat->BytesToFrames( m_SizeInBytes ) );
	rAssert( bufferStartInFrames + numberOfFrames <= m_xIRadSoundHalAudioFormat->BytesToFrames( m_SizeInBytes ) );

	new ( "radSoundBufferAsyncLoaderGcn" ) radSoundBufferAsyncLoaderGcn
	(
	    this,
		pIRadSoundHalDataSource,
		bufferStartInFrames,
		numberOfFrames,
		pIRadSoundHalBufferLoadCallback
	);
}

//======================================================================
// radSoundBufferGcn::Clear
//======================================================================

/* virtual */ void radSoundBufferGcn::ClearAsync
(
    unsigned int startPositionInSamples,
    unsigned int numberOfSamples,
    IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback
)
{
    new ( "radSoundBufferAsyncLoaderGcn" ) radSoundBufferAsyncClearerGcn
    (
        this,
        startPositionInSamples,
        numberOfSamples,
        pIRadSoundHalBufferClearCallback
    );
}

//======================================================================
// radSoundBufferGcn::IsLooping
//======================================================================

bool radSoundBufferGcn::IsLooping( void )
{
    return m_Looping;
}

//======================================================================
// radSoundBufferGcn::IsLooping
//======================================================================

IRadSoundHalAudioFormat * radSoundBufferGcn::GetFormat( void )
{
	return m_xIRadSoundHalAudioFormat;
}

//======================================================================
// radSoundBufferGcn::GetAramStartAddressInBytes
//======================================================================

unsigned long radSoundBufferGcn::GetAramStartAddressInBytes( unsigned int channel )
{
    return (unsigned long) m_xIRadMemoryObject->GetMemoryAddress( ) + ( GetAlignedBufferSize( ) * channel );
}

//======================================================================
// radSoundBufferGcn::GetAramSampleStartInLogicalUnits
//======================================================================

unsigned long radSoundBufferGcn::GetAramSampleStartInLogicalUnits( unsigned int channel, unsigned int startSampleIndex )
{
    unsigned long logicalUnits = GetAramStartAddressInBytes( channel ) +
        ( m_xIRadSoundHalAudioFormat->SamplesToBytes( startSampleIndex )
            / m_xIRadSoundHalAudioFormat->GetNumberOfChannels( ) );

    if ( m_xIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
    {
        logicalUnits = ( logicalUnits * 2 ) + GCN_ADPCM_FRAME_HEADER_SIZE;
    }
    else
    {
        logicalUnits = logicalUnits / ( m_xIRadSoundHalAudioFormat->GetBitResolution( ) / 8 );
    }
    return logicalUnits;
}

//======================================================================
// radSoundBufferGcn::GetAramSampleEndInLogicalUnits
//======================================================================

unsigned long radSoundBufferGcn::GetAramSampleEndInLogicalUnits( unsigned int channel )
{
    unsigned long logicalUnits = GetAramStartAddressInBytes( channel ) +
        ( m_SizeInBytes / m_xIRadSoundHalAudioFormat->GetNumberOfChannels( ) );
    
    if ( m_xIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
    {
        logicalUnits = ( logicalUnits * 2 ) - 1;
    }
    else
    {
        logicalUnits = ( logicalUnits / ( m_xIRadSoundHalAudioFormat->GetBitResolution( ) / 8 ) ) - 1;
    }

    return logicalUnits;
}

//======================================================================
// radSoundBufferGcn::GetAlignedBufferSize
//======================================================================

unsigned long radSoundBufferGcn::GetAlignedBufferSize( void )
{
    return ::radMemoryRoundUp(
        m_SizeInBytes / m_xIRadSoundHalAudioFormat->GetNumberOfChannels( ),
        ARQ_DMA_ALIGNMENT );
}

//======================================================================
// radSoundBufferGcn::GetSizeInFrames
//======================================================================

unsigned int radSoundBufferGcn::GetSizeInFrames( void )
{
    return m_xIRadSoundHalAudioFormat->BytesToFrames( m_SizeInBytes );
}

//======================================================================
// radSoundBufferGcn::CancelAsyncOperations
//======================================================================

void radSoundBufferGcn::CancelAsyncOperations( void )
{
    radSoundBufferAsyncRequestGcn::CancelAsyncOperations( this );
}

//========================================================================
// radSoundBufferGcn::GetMinTransferSizeInFrames
//========================================================================

unsigned int radSoundBufferGcn::GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType )
{
    rAssert( m_xIRadSoundHalAudioFormat != NULL );

    //
    // Channels of data are eventually dma'd seperately to spu.
    // Therefore, transfers must occur in multiples of the optimal
    // dma multiple * the number of channels.
    //

    return m_xIRadSoundHalAudioFormat->ConvertSizeType( sizeType, 
        radMemorySpace_OptimalMultiple * m_xIRadSoundHalAudioFormat->GetNumberOfChannels( ),
        IRadSoundHalAudioFormat::Bytes );
}

void radSoundBufferGcn::ReSetAudioFormat( IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat )
{
    rAssert( m_xIRadSoundHalAudioFormat->Matches( pIRadSoundHalAudioFormat ) );
    m_xIRadSoundHalAudioFormat = pIRadSoundHalAudioFormat;
}

//======================================================================
// ::radSoundHalBufferCreate
//======================================================================

IRadSoundHalBuffer * radSoundHalBufferCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundBufferGcn", allocator ) radSoundBufferGcn( );
}



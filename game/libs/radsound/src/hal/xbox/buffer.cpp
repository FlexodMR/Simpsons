//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "buffer.hpp"
#include "bufferasyncloader.hpp"

const unsigned int RADSOUNDHAL_BUFFER_CHANNEL_ALIGNMENT = 0;

//========================================================================
// radSoundBufferXBox::Initialize
//========================================================================

/* virtual */ void radSoundBufferXBox::Initialize
(
    IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
	IRadMemoryObject * pIRadMemoryObject,
	unsigned int sizeInFrames,
    bool looping,
    bool streaming
)
{    
    //
    // Do some validity checks
    //
    rAssert( pIRadSoundHalAudioFormat != NULL );
    rAssert( pIRadSoundHalAudioFormat->GetEncoding() == IRadSoundHalAudioFormat::PCM ||
		     pIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::XBOXADPCM);
	rAssert( pIRadMemoryObject != NULL );
	rAssert( pIRadMemoryObject->GetMemorySize( ) >= ::radSoundHalBufferCalculateMemorySize( 
        IRadSoundHalAudioFormat::Bytes, sizeInFrames, 
        IRadSoundHalAudioFormat::Frames, pIRadSoundHalAudioFormat ) );

    //
    // Store the information about this chunk of memory
    //
	m_xIRadMemoryObject_WavData = pIRadMemoryObject;
    m_xIRadSoundHalAudioFormat = pIRadSoundHalAudioFormat;
    m_Looping = looping;
    m_SizeInSamples = m_xIRadSoundHalAudioFormat->FramesToSamples(
		sizeInFrames );       
}

//========================================================================
// radSoundBufferXBox::GetMemoryObject
//========================================================================

IRadMemoryObject * radSoundBufferXBox::GetMemoryObject( void )
{
	return m_xIRadMemoryObject_WavData;
}

//========================================================================
// radSoundBufferXBox::Clear
//========================================================================

void radSoundBufferXBox::ClearAsync
( 
	unsigned int offsetInFrames,
	unsigned int sizeInFrames,
	IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback
)
{
    unsigned int offsetInBytes = m_xIRadSoundHalAudioFormat->FramesToBytes( offsetInFrames );
    unsigned int sizeInBytes = m_xIRadSoundHalAudioFormat->FramesToBytes( sizeInFrames );  

    unsigned char fillChar = ( m_xIRadSoundHalAudioFormat->GetBitResolution( ) == 8 ) ? 128 : 0;

    ::memset(
		(char*) m_xIRadMemoryObject_WavData->GetMemoryAddress( ) + offsetInBytes,
		fillChar, sizeInBytes );

	if ( pIRadSoundHalBufferClearCallback != NULL )
	{
		pIRadSoundHalBufferClearCallback->OnBufferClearComplete( );
	}
}

//========================================================================
// radSoundBufferXBox::GetMinTransferSizeInFrames
//========================================================================

/* virtual */ unsigned int radSoundBufferXBox::GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType )
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

//========================================================================
// radSoundBufferXBox::GetSizeInSamples
//========================================================================

/* virtual */ unsigned int radSoundBufferXBox::GetSizeInSamples( void )
{
    return m_SizeInSamples;
}

//========================================================================
// radSoundBufferXBox::GetSizeInFrames
//========================================================================

/* virtual */ unsigned int radSoundBufferXBox::GetSizeInFrames( void )
{
    return m_xIRadSoundHalAudioFormat->SamplesToFrames( m_SizeInSamples );
}

//========================================================================
// radSoundBufferXBox::GetBufferMemory
//========================================================================

/* virtual */ void * radSoundBufferXBox::GetBufferMemory( void )
{
    return m_xIRadMemoryObject_WavData->GetMemoryAddress( );
}

//========================================================================
// radSoundBufferXBox::~radSoundBufferXBox
//========================================================================

radSoundBufferXBox::~radSoundBufferXBox
(
    void
)
{

}

//========================================================================
// radSoundBufferXBox::radSoundBufferXBox
//========================================================================

radSoundBufferXBox::radSoundBufferXBox
(
    void
)
    :
    m_xIRadSoundHalAudioFormat( NULL ),
    m_SizeInSamples( 0 ),
    m_Looping( false )
{
}

//========================================================================
// radSoundBufferXBox::GetSoundSamplingFormat
//========================================================================
    
/* virtual */ IRadSoundHalAudioFormat * radSoundBufferXBox::GetFormat( void )
{
	return m_xIRadSoundHalAudioFormat;
}

//========================================================================
// radSoundBufferXBox::LoadAsync
//========================================================================

void radSoundBufferXBox::LoadAsync
(
	IRadSoundHalDataSource * pIRadSoundHalDataSource,
	unsigned int bufferStartInFrames,
	unsigned int numberOfFrames,
	IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
)
{
	rAssert( pIRadSoundHalDataSource != NULL );

	unsigned int bufferByteOffset = m_xIRadSoundHalAudioFormat->FramesToBytes( bufferStartInFrames );

//	rAssert( pIRadSoundHalDataSource->GetRemainingFrames( ) >= numberOfFrames );
	rAssert( bufferByteOffset + m_xIRadSoundHalAudioFormat->FramesToBytes( numberOfFrames ) <= m_xIRadSoundHalAudioFormat->SamplesToBytes( m_SizeInSamples ) );
	
	ref< radSoundBufferAsyncLoaderXBox > pLoader = new ( "radSoundBufferAsyncLoaderXBox" ) radSoundBufferAsyncLoaderXBox( );

	pLoader->Initialize(
		pIRadSoundHalDataSource,
		bufferStartInFrames,
		numberOfFrames,
		this,
		m_xIRadMemoryObject_WavData->GetMemoryAddress( ),
		pIRadSoundHalBufferLoadCallback );

}

//========================================================================
// radSoundBufferXBox::IsLooping
//========================================================================

/* virtual */ bool radSoundBufferXBox::IsLooping
(
    void
)
{
    return m_Looping;
}

void radSoundBufferXBox::CancelAsyncOperations( void )
{
    radSoundBufferAsyncLoaderXBox::CancelRequests( this );
}

//========================================================================
// ::radSoundHalBufferCreate
//========================================================================

IRadSoundHalBuffer * radSoundHalBufferCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundHalBuffer", allocator ) radSoundBufferXBox( );
}

radSoundBufferXBox * radLinkedClass<radSoundBufferXBox>::s_pLinkedClassHead = NULL;
radSoundBufferXBox * radLinkedClass<radSoundBufferXBox>::s_pLinkedClassTail = NULL;

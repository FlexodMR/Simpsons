//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        PS2_rSoundBuffer.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the playstation2 version of the rSoundBuffer
//              component.
//
//=============================================================================

//======================================================================
// Include Files
//======================================================================

#include <eekernel.h> // defines NULL
#include <string.h> // memset
#include <stdio.h>
#include <sifrpc.h>
#include <libsdr.h>

#include <raddebug.hpp>

#include "../iop/iopclient.hpp"
#include "adpcm.hpp"
#include "adpcmbuffer.hpp"
#include "adpcmbufferloader.hpp"
#include "adpcmbufferclearer.hpp"

//======================================================================
// Globals
//======================================================================

const unsigned int RADSOUNDHAL_BUFFER_CHANNEL_ALIGNMENT = 0;

radSoundBufferAdpcmPs2 * radLinkedClass< radSoundBufferAdpcmPs2 >::s_pLinkedClassHead = NULL;
radSoundBufferAdpcmPs2 * radLinkedClass< radSoundBufferAdpcmPs2 >::s_pLinkedClassTail = NULL;

//======================================================================
// radSoundBufferAdpcmPs2::Initialize
//======================================================================

void radSoundBufferAdpcmPs2::Initialize
(
	IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
	IRadMemoryObject * pIRadMemoryObject,
	unsigned int sizeInFrames,
	bool looping,
    bool streaming
)
{
    //
    // Store the format of the buffer and make sure we support it
    //

    rAssert( pIRadSoundHalAudioFormat != NULL );
	rAssert( pIRadMemoryObject );
//	rWarningMsg( TestSamplingRateTruncation( pIRadSoundHalAudioFormat->GetSampleRate( ) ) == true,
//		"radSoundBufferAdpcmPs2: Sampling Rate required truncation.  Playback pitch will be affected\n" );
	rAssert( pIRadMemoryObject->GetMemorySize( ) >= ::radSoundHalBufferCalculateMemorySize( 
        IRadSoundHalAudioFormat::Bytes, sizeInFrames, 
        IRadSoundHalAudioFormat::Frames, pIRadSoundHalAudioFormat ) );

	m_xIRadMemoryObject = pIRadMemoryObject;
    m_xIRadSoundHalAudioFormat = pIRadSoundHalAudioFormat;

    rAssert( m_xIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::VAG );

    //
    // Store if we are a looping buffer, we might/will have to fix up the data
    // to promote this behavior.
    //

    m_Looping = looping;
	m_SizeInFrames = sizeInFrames;
}

//======================================================================
// radSoundBufferAdpcmPs2::TestSamplingRateTruncation
//======================================================================

bool radSoundBufferAdpcmPs2::TestSamplingRateTruncation( unsigned int samplingRate )
{
	// Actual required playback rate 

	float floatInitial = ( ( ::radSoundUIntToFloat( samplingRate ) / 48000.0f ) * 4096.0f ); 

	// Test to make sure that no error occurs in becoming a float

	float floatAfter = radSoundShortToFloat( radSoundFloatToShort( floatInitial ) );

	return ( floatInitial == floatAfter );
}

//======================================================================
// radSoundBufferAdpcmPs2::GetMemoryObject
//======================================================================

IRadMemoryObject * radSoundBufferAdpcmPs2::GetMemoryObject( void )
{
	return m_xIRadMemoryObject;
}

//======================================================================
// radSoundBufferAdpcmPs2::Clear
//======================================================================

/* virtual */ void radSoundBufferAdpcmPs2::ClearAsync
( 
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames,
	IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback
)
{
	new ( "radSoundHalAdpcmBufferClearer" )radSoundHalAdpcmBufferClearer
    (
		this,
		startPositionInFrames,
		numberOfFrames,
		pIRadSoundHalBufferClearCallback
	);
}  

//======================================================================
// radSoundBufferAdpcmPs2::Load
//======================================================================

/* virtual */ void radSoundBufferAdpcmPs2::LoadAsync
(
	IRadSoundHalDataSource * pIRadSoundHalDataSource,
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames,
	IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
)
{
	new ( "radSoundBufferAsyncLoaderAdpcmPs2" ) radSoundBufferAsyncLoaderAdpcmPs2
    (
		pIRadSoundHalDataSource,
		this,
		startPositionInFrames,
		numberOfFrames,
		pIRadSoundHalBufferLoadCallback
	);
}


//==============================================================
// radSoundBufferAdpcmPs2::GetSizeInFrames
//==============================================================

/* virtual */ unsigned int radSoundBufferAdpcmPs2::GetSizeInFrames
(
    void
)
{
//    return m_xIRadSoundHalAudioFormat->BytesToFrames( m_xIRadMemoryObject->GetMemorySize( ) );
	return m_SizeInFrames;
}

//==================================================================
// radSoundBufferAdpcmPs2::GetSamplingFormat
//==================================================================

/* virtual */ IRadSoundHalAudioFormat * radSoundBufferAdpcmPs2::GetFormat( void )
{
    return m_xIRadSoundHalAudioFormat;
}

//==================================================================
// radSoundBufferAdpcmPs2::IsLoopin
//==================================================================

/* virtual */ bool radSoundBufferAdpcmPs2::IsLooping
(
    void
)
{
    return m_Looping;
}

//==================================================================
// radSoundBufferAdpcmPs2::GetStartAddress
//==================================================================

/* virtual */ unsigned int radSoundBufferAdpcmPs2::GetStartAddress
(
    void
)
{
    return (unsigned int) m_xIRadMemoryObject->GetMemoryAddress( );
}

//==================================================================
// radSoundBufferAdpcmPs2::GetSizeInByes
//==================================================================

/* virtual */ unsigned int radSoundBufferAdpcmPs2::GetSizeInBytes
(
    void
)
{
//    return m_xIRadMemoryObject->GetMemorySize( );
	return m_xIRadSoundHalAudioFormat->FramesToBytes( m_SizeInFrames );
}

//==================================================================
// radSoundBufferAdpcmPs2::radSoundBufferAdpcmPs2
//==================================================================

radSoundBufferAdpcmPs2::radSoundBufferAdpcmPs2( void )
    :
    m_Looping( false ),
	m_SizeInFrames( 0 )
{
}

//==================================================================
// radSoundBufferAdpcmPs2::~rSoundBuffer
//==================================================================

radSoundBufferAdpcmPs2::~radSoundBufferAdpcmPs2( void )
{

}

//==================================================================
// radSoundBufferAdpcmPs2::CancelAsyncOperations
//==================================================================

void radSoundBufferAdpcmPs2::CancelAsyncOperations( void )
{
    radSoundHalBufferAsyncRequestAdpcmPs2::CancelAllRequests( this );
}

//========================================================================
// radSoundBufferAdpcmPs2::GetMinTransferSizeInFrames
//========================================================================

unsigned int radSoundBufferAdpcmPs2::GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType )
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
// radSoundHalBufferCreate
//========================================================================

IRadSoundHalBuffer * radSoundHalBufferCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundHalBuffer", allocator ) radSoundBufferAdpcmPs2( );
}


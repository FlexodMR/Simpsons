//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "audioformatgcn.hpp"

radSoundHalAudioFormatGcn::radSoundHalAudioFormatGcn( void )
    :
    m_pIRadSoundHalAudioFormat( NULL ),
    m_pRadSoundHalAdpcmInfoGcn( NULL )
{
}

radSoundHalAudioFormatGcn::~radSoundHalAudioFormatGcn( void )
{
    if ( m_pRadSoundHalAdpcmInfoGcn != NULL )
    {
        ::radMemoryFree( GetThisAllocator( ), m_pRadSoundHalAdpcmInfoGcn );
    }
}
	
void radSoundHalAudioFormatGcn::Initialize
(
    radSoundHalAdpcmInfoGcn * pRadSoundHalAdpcmInfoGcn,
    IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat
)
{
    m_pIRadSoundHalAudioFormat = pIRadSoundHalAudioFormat;

    if ( pRadSoundHalAdpcmInfoGcn != NULL )
    {
        m_pRadSoundHalAdpcmInfoGcn = (radSoundHalAdpcmInfoGcn*) ::radMemoryAlloc(
            GetThisAllocator( ), sizeof( radSoundHalAdpcmInfoGcn ) * m_pIRadSoundHalAudioFormat->GetNumberOfChannels( ) );
        
        ::memcpy(
            m_pRadSoundHalAdpcmInfoGcn,
            pRadSoundHalAdpcmInfoGcn,
            sizeof( radSoundHalAdpcmInfoGcn ) * m_pIRadSoundHalAudioFormat->GetNumberOfChannels( ) );
    }
       
};

//======================================================================
// radSoundHeader::LogicalUnitsToSample
//======================================================================

unsigned long radSoundHalAudioFormatGcn::LogicalUnitsToSamples( unsigned int logicalUnits )
{
    unsigned int sample;

    if ( m_pIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
    {
        // for ADPCM, there's 14 sample / frame ( 16 logical unit )
        // must align to frame boundary
        sample = logicalUnits / ( GCN_ADPCM_BYTES_PER_FRAME * 2 ) * GCN_ADPCM_SAMPLES_PER_FRAME;
    }
    else
    {
        sample = logicalUnits;
    }

    return sample;
}

//======================================================================
// radSoundHeader::SampleToLogicalUnits
//======================================================================

unsigned long radSoundHalAudioFormatGcn::SamplesToLogicalUnits( unsigned int samples )
{
    unsigned int logicalUnits;

    if ( m_pIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
    {
        // must align to frame
        logicalUnits = samples / GCN_ADPCM_SAMPLES_PER_FRAME * ( GCN_ADPCM_BYTES_PER_FRAME * 2 );
    }
    else
    {
        logicalUnits = samples;
    }

    return logicalUnits;
}

radSoundHalAdpcmInfoGcn * radSoundHalAudioFormatGcn::GetAdpcmInfo( unsigned int channel )
{
    rAssert( channel < m_pIRadSoundHalAudioFormat->GetNumberOfChannels( ) );
    rAssert( m_pIRadSoundHalAudioFormat->GetEncoding() == IRadSoundHalAudioFormat::GCNADPCM );

    return &( m_pRadSoundHalAdpcmInfoGcn[ channel ] );
}

struct IRadSoundHalAudioFormatGcn  * radSoundHalAudioFormatGcnCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalAudioFormatGcn", allocator ) radSoundHalAudioFormatGcn( );
}
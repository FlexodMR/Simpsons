//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radsound_gcn.hpp>
#include <radsoundfile.hpp>
#include <radsoundobject.hpp>

struct radSoundHalAudioFormatGcn
	:
	public IRadSoundHalAudioFormatGcn,
	public radSoundObject
{
    IMPLEMENT_REFCOUNTED( "radSoundHalAudioFormatGcn" )

	radSoundHalAudioFormatGcn( void );
	virtual ~radSoundHalAudioFormatGcn( void );
	
	// IRadSoundHalAudioFormatGcn

    virtual void Initialize(
        radSoundHalAdpcmInfoGcn * pRadHalSoundAdpcmInfoGcn,
        IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat );

    virtual unsigned long LogicalUnitsToSamples( unsigned int logicalUnits );
    virtual unsigned long SamplesToLogicalUnits( unsigned int samples );

    virtual radSoundHalAdpcmInfoGcn * GetAdpcmInfo( unsigned int channel );

    // Data Members

    radSoundHalAdpcmInfoGcn * m_pRadSoundHalAdpcmInfoGcn;
    IRadSoundHalAudioFormat * m_pIRadSoundHalAudioFormat; // Weak to parent
};
//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <eekernel.h> // defines NULL
#include <sdmacro.h>
#include <libsdr.h>
#include <sdrcmd.h>

#include "effect.hpp"
#include "adpcm\adpcm.hpp"

/*static*/ radSoundEffectPs2::EffectModeInfo radSoundEffectPs2::s_aEffectModeInfo[] =
{
    { IRadSoundEffectPs2::Off,      SD_REV_MODE_OFF,      0x80 },
    { IRadSoundEffectPs2::Room,     SD_REV_MODE_ROOM,     0x26c0 },
    { IRadSoundEffectPs2::StudioA,  SD_REV_MODE_STUDIO_A, 0x1f40 },
    { IRadSoundEffectPs2::StudioB,  SD_REV_MODE_STUDIO_B, 0x4840 },
    { IRadSoundEffectPs2::StudioC,  SD_REV_MODE_STUDIO_C, 0x6fe0 },
    { IRadSoundEffectPs2::Hall,     SD_REV_MODE_HALL,     0xade0 },
    { IRadSoundEffectPs2::Space,    SD_REV_MODE_SPACE,    0xf6c0 },
    { IRadSoundEffectPs2::Echo,     SD_REV_MODE_ECHO,     0x18040 },
    { IRadSoundEffectPs2::Delay,    SD_REV_MODE_DELAY,    0x18040 },
    { IRadSoundEffectPs2::Pipe,     SD_REV_MODE_PIPE,     0x3c00 }
};

/* static */ unsigned int radSoundEffectPs2::s_NumberOfEffectModes
    = sizeof( radSoundEffectPs2::s_aEffectModeInfo ) / sizeof( radSoundEffectPs2::EffectModeInfo );

radSoundEffectPs2::radSoundEffectPs2( void )
    :
    m_Mode( IRadSoundEffectPs2::Room ),
    m_Delay( 0.5f ),
    m_FeedBack( 0.5f ),
	m_Gain( 1.0f ),
	m_MasterGain( 0.0f ),
	m_Enabled( true ),
    m_DirtyFlags( DIRTY_ALL ),
    m_Core( NULL_CORE )
{
}

/* virtual */ radSoundEffectPs2::~radSoundEffectPs2( void )
{
}

/* virtual */ void radSoundEffectPs2::Update( void )
{
	if ( m_DirtyFlags != DIRTY_NONE )
	{
		SetHardware( );

		m_DirtyFlags = DIRTY_NONE;
	}
}

/* virtual */ void radSoundEffectPs2::SetMasterGain( float masterGain )
{
	if ( m_MasterGain != masterGain )
	{
		m_MasterGain = masterGain;

		m_DirtyFlags |= DIRTY_GAIN;
	}
}

/* virtual */ float radSoundEffectPs2::GetMasterGain( void )
{
	return m_MasterGain;
}

/* virtual */ void radSoundEffectPs2::SetMode( IRadSoundEffectPs2::Mode mode )
{
    rWarning( mode <= IRadSoundEffectPs2::Pipe );
    rWarning( mode >= IRadSoundEffectPs2::Off );

    if ( mode < IRadSoundEffectPs2::Off )
    {
        mode = IRadSoundEffectPs2::Off;
    }
    else if ( mode > IRadSoundEffectPs2::Pipe )
    {
        mode = IRadSoundEffectPs2::Pipe;
    }

    if ( m_Mode != mode )
    {
        m_Mode = mode;

        m_DirtyFlags |= DIRTY_MODE;
    }
}

/* virtual */ IRadSoundEffectPs2::Mode radSoundEffectPs2::GetMode( void )
{
    return m_Mode;
}

/* virtual */ void radSoundEffectPs2::SetDelay( float delay )
{
    rWarning( delay >= 0.0f );
    rWarning( delay <= 1.0f );

    if ( delay < 0.0f )
    {
        delay = 0.0f;
    }
    else if ( delay > 1.0f )
    {
        delay = 1.0f;
    }

    if ( m_Delay != delay )
    {
        m_Delay = delay;

        m_DirtyFlags |= DIRTY_PARAMS;
    }
}

/* virtual */ float radSoundEffectPs2::GetDelayTime( void )
{
    return m_Delay;
}

/* virtual */ void radSoundEffectPs2::SetFeedback( float feedBack )
{
    rWarning( feedBack >= 0.0f );
    rWarning( feedBack <= 1.0f );

    if ( feedBack < 0.0f )
    {
        feedBack = 0.0f;
    }
    else if ( feedBack > 1.0f )
    {
        feedBack = 1.0f;
    }

    if ( m_FeedBack != feedBack )
    {
        m_FeedBack = feedBack;

        m_DirtyFlags |= DIRTY_PARAMS;
    }
}

/* virtual */ float radSoundEffectPs2::GetFeedback( void )
{
    return m_FeedBack;
}

/* virtual */ void radSoundEffectPs2::SetGain( float gain )
{
	if ( m_Gain != gain )
	{
		m_Gain = gain;

		m_DirtyFlags |= DIRTY_GAIN;
	}
}

/* virtual */ float radSoundEffectPs2::GetGain( void )
{
	return m_Gain;
}

/* virtual */ void radSoundEffectPs2::SetEnabled( bool enabled )
{
	if ( m_Enabled != enabled )
	{
		m_Enabled = enabled;

		m_DirtyFlags |= DIRTY_ENABLED;
	}
}

/* virtual */ bool radSoundEffectPs2::GetEnabled( void )
{
	return m_Enabled;
}

radSoundEffectPs2::EffectModeInfo * radSoundEffectPs2::FindSonyModeInfo( void )
{
    for( unsigned int mode = 0; mode < s_NumberOfEffectModes; mode ++ )
    {
        if ( s_aEffectModeInfo[ mode ].m_Mode == m_Mode )
        {
            return & s_aEffectModeInfo[ mode ];
        }
    }

    rAssert( 0 ); // something has gone very wrong.

    return NULL;
}

void radSoundEffectPs2::SetHardware( void )
{
    short leftVol;
    short rightVol;

    //
    // Fill our structure and call sony
    //
    rAssert( m_Core != NULL_CORE );
    
    if ( ( m_DirtyFlags & ( DIRTY_MODE | DIRTY_PARAMS ) ) != 0 )
    {
        int delay;       // 0 to 127 ( ECHO and DELAY only )
        int feedback;    // 0 to 127 ( ECHO and DELAY only )

        //
        // Calculate Delay
        //
        delay = (int) ( m_Delay * 127.0f );
        rAssert( delay >= 0 );
        rAssert( delay <= 127 );

        //
        // Calculate Feedback
        //
        feedback = (int) ( m_FeedBack * 127.0f );
        rAssert( feedback >= 0 );
        rAssert( feedback <= 127 );

        //
        // Fill in the structure
        //

        //
        // Calculate the effect return volume, don't know why sony calls it depth.
		// This really sets the effect return volume
        //

        leftVol = ::radSoundVolumeAnalogToHardwareAdpcmPs2( m_Gain * m_MasterGain ) * 2;
        rightVol = ::radSoundVolumeAnalogToHardwareAdpcmPs2( m_Gain * m_MasterGain ) * 2;
        
        rAssert( leftVol >= 0 );
        rAssert( rightVol >= 0 );
        rAssert( leftVol < 0x7FFF );
        rAssert( rightVol < 0x7FFF );

        sceSdEffectAttr myEffectsAttr;
        myEffectsAttr.core      = m_Core; // This is not currently used by sony
        myEffectsAttr.mode      = FindSonyModeInfo( )->m_SonyDefine;

        myEffectsAttr.depth_L   = leftVol; // same as iop call that sets the register
        myEffectsAttr.depth_R   = rightVol; // same as iop call that sets the register
        myEffectsAttr.delay     = delay;
        myEffectsAttr.feedback  = feedback;

        //
        // This call blocks.
        //
        if ( ( m_DirtyFlags & DIRTY_MODE ) != 0 )
        {
            ::sceSdRemote( 1, rSdClearEffectWorkArea, m_Core, 1, myEffectsAttr.mode );
        }
        ::sceSdRemote( 1, rSdSetEffectAttr, m_Core, & myEffectsAttr );
    }
    else if ( ( m_DirtyFlags & DIRTY_GAIN ) != 0 )
    {
        leftVol = ::radSoundVolumeAnalogToHardwareAdpcmPs2( m_Gain * m_MasterGain ) * 2;
        rightVol = ::radSoundVolumeAnalogToHardwareAdpcmPs2( m_Gain * m_MasterGain ) * 2;

        rAssert( leftVol >= 0 );
        rAssert( rightVol >= 0 );
        rAssert( leftVol < 0x7FFF );
        rAssert( rightVol < 0x7FFF );

        ::sceSdRemote( 1, rSdSetParam, m_Core | SD_P_EVOLL, leftVol );
        ::sceSdRemote( 1, rSdSetParam, m_Core | SD_P_EVOLR, rightVol );
    }
}

void radSoundEffectPs2::Attach( unsigned int core )
{
	m_Core = core;

	m_DirtyFlags = DIRTY_ALL;
}

void radSoundEffectPs2::Detach( void )
{
	//
	// Turn off hardware effect.
	//

    sceSdEffectAttr myEffectsAttr;
    myEffectsAttr.core      = m_Core; // This is not currently used by sony
    myEffectsAttr.mode      = SD_REV_MODE_OFF;

    if ( ( m_DirtyFlags & DIRTY_MODE ) != 0 )
    {
        myEffectsAttr.mode |= SD_REV_MODE_CLEAR_WA;
    }

    myEffectsAttr.depth_L   = 0;
    myEffectsAttr.depth_R   = 0;
    myEffectsAttr.delay     = 0;
    myEffectsAttr.feedback  = 0;

    //
    // This call blocks.
    //
    ::sceSdRemote( 1, rSdSetEffectAttr, m_Core, & myEffectsAttr );

	m_Core = NULL_CORE;
}

IRadSoundEffectPs2 * radSoundCreateEffectPs2( radMemoryAllocator allocator )
{
    return new ( "radSoundEffectPs2", allocator ) radSoundEffectPs2( );
}

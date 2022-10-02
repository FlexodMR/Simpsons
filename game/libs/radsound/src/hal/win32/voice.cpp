//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================

//========================================================================
// Include Files
//========================================================================

#include "pch.hpp"
#include "voice.hpp"

//============================================================================
// Static Initialization
//============================================================================

radSoundHalVoiceWin * radSoundHalVoiceWin::s_pLinkedClassHead = NULL;
radSoundHalVoiceWin * radSoundHalVoiceWin::s_pLinkedClassTail = NULL;

//========================================================================
// radSoundHalVoiceWin::radSoundHalVoiceWin
//========================================================================

radSoundHalVoiceWin::radSoundHalVoiceWin( void )
    :
	m_Priority( 5 ),
    m_Pitch( 1.0f ),
    m_Pan( 0.0f ),
    m_Volume( 1.0f ),
    m_MuteFactor( 1.0f ),
    m_Trim( 1.0f ),
    m_pBufferData( NULL ),
	m_xRadSoundHalPositionalGroup( NULL )
{
}

//========================================================================
// radSoundHalVoiceWin::~radSoundHalVoiceWin
//========================================================================

radSoundHalVoiceWin::~radSoundHalVoiceWin
(
    void
)
{
    //
    // Tell our buffer object that we are done with the voice/(buffer), our
    // buffer object manages the lifetime if its voices.
    //

    Stop( );

	if ( m_xRadSoundHalPositionalGroup != NULL )
	{
		m_xRadSoundHalPositionalGroup->RemovePositionalEntity( this );
		m_xRadSoundHalPositionalGroup;
	}

    if( m_pBufferData != NULL )
    {
        bool positional = ( m_xIDirectSound3dBuffer != NULL );

        m_xIDirectSound3dBuffer = NULL;
        m_xIDirectSoundBuffer = NULL;
        m_xRadSoundHalBufferWin->FreeBufferData( positional, m_pBufferData );
        m_pBufferData = NULL;
    }
}

void radSoundHalVoiceWin::SetPriority( unsigned int priority )
{
	m_Priority = priority;
}

unsigned int radSoundHalVoiceWin::GetPriority( void )
{
	return m_Priority;
}

//========================================================================
// radSoundHalVoiceWin::SetBuffer
//========================================================================

void radSoundHalVoiceWin::SetBuffer( IRadSoundHalBuffer * pIRadSoundHalBuffer )
{
    Stop( );

    m_xIDirectSoundBuffer = NULL;
    m_xIDirectSound3dBuffer = NULL;
    if( m_pBufferData != NULL )
    {
        rAssert( m_xRadSoundHalBufferWin != NULL );
        m_xRadSoundHalBufferWin->FreeBufferData( m_xRadSoundHalPositionalGroup != NULL, m_pBufferData );
        m_pBufferData = NULL;
    }
    m_xRadSoundHalBufferWin = NULL;

	ref< IRadSoundHalAudioFormat > pOldIRadSoundHalAudioFormat = m_xIRadSoundHalAudioFormat;
    m_xIRadSoundHalAudioFormat = NULL;

    if ( pIRadSoundHalBuffer != NULL )
    {
        m_xRadSoundHalBufferWin = static_cast< radSoundHalBufferWin * >( pIRadSoundHalBuffer );
        rAssert( m_xRadSoundHalBufferWin != NULL );

        m_xRadSoundHalBufferWin->GetBufferData( m_xRadSoundHalPositionalGroup != NULL, & m_pBufferData );
        m_xIDirectSoundBuffer = m_pBufferData->m_refIDirectSoundBuffer;

        m_xIDirectSoundBuffer->QueryInterface
        (
            IID_IDirectSound3DBuffer,
            (void**) & m_xIDirectSound3dBuffer
        );
        // Now get the format of the buffer, we'll just store it here

        m_xIRadSoundHalAudioFormat = m_xRadSoundHalBufferWin->GetFormat( );


		//
		// The new format had better be the same as the old one 
		// (if the old one isn't null
		//
		rAssert
		( 
			pOldIRadSoundHalAudioFormat != NULL ?
			m_xIRadSoundHalAudioFormat->Matches( pOldIRadSoundHalAudioFormat ) :
			true
		);

        // make sure we're at the beggining, if we got the non-duplicate buffer back,
        // it may still be set to the old position.

    
        SetPitchInternal( );
        SetVolumeInternal( );
        SetPanInternal( );
        SetPlaybackPositionInSamples( 0 );

        if ( m_xIDirectSound3dBuffer != NULL && m_xRadSoundHalPositionalGroup != NULL )
        {
			OnApplyPositionalInfo( );
        }
    }
}

IRadSoundHalBuffer * radSoundHalVoiceWin::GetBuffer( void )
{
    return m_xRadSoundHalBufferWin;
}

void radSoundHalVoiceWin::Play( )
{
    if ( m_xIDirectSoundBuffer != NULL && IsHardwarePlaying( ) == false)
    {
        DWORD flags = 0;

        if( m_xRadSoundHalBufferWin->IsStreaming( ) == false )
        {
            flags |= ( m_xIDirectSound3dBuffer != NULL ) ? DSBPLAY_TERMINATEBY_DISTANCE : DSBPLAY_TERMINATEBY_PRIORITY;
        }
        flags |= m_xRadSoundHalBufferWin->IsLooping() ? DSBPLAY_LOOPING : 0;

         HRESULT hr = m_xIDirectSoundBuffer->Play(
            0,
            m_xRadSoundHalBufferWin->IsStreaming( ) ? 0 : m_Priority, // Must be 0 for buffers without DSBCAPS_LOCDEFER defined during creation
            flags );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::Play failed" );

        // Make some debug info available if it's needed.

        DWORD status;
        hr = m_xIDirectSoundBuffer->GetStatus( & status );

        if( m_xRadSoundHalBufferWin->IsStreaming( ) == false && ( status & DSBSTATUS_LOCHARDWARE ) == 0 )
        {
            rAssert( ( status & DSBSTATUS_LOCSOFTWARE ) > 0 );
            // rDebugPrintf( "IDirectSoundBuffer is playing in software\n" );
        }

        DSBCAPS caps;
        ::ZeroMemory( ( void * ) & caps, sizeof( caps ) );
        caps.dwSize = sizeof( caps );
        hr = m_xIDirectSoundBuffer->GetCaps( & caps );
        rWarning( SUCCEEDED( hr ) );
    }
}

void radSoundHalVoiceWin::Stop( void )
{
    if ( ( m_xIDirectSoundBuffer != NULL ) && ( IsHardwarePlaying( ) == true ) )
    {
        #ifdef RAD_DEBUG
            extern bool g_VoiceStoppingPlayingSilence;

            if ( g_VoiceStoppingPlayingSilence == false )
            {
                if ( ( m_Trim * m_Volume ) > 0.0f )
                {
                    rDebugPrintf( "radsound: TRC Violation: Voice stopped while playing and (trim * volume) > 0.0f\n" );
                }
            }
        #endif // RAD_DEBUG

        HRESULT hr = m_xIDirectSoundBuffer->Stop( );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::Stop failed" );
    }
}

bool radSoundHalVoiceWin::IsPlaying( void )
{
    return IsHardwarePlaying( );
}

unsigned int radSoundHalVoiceWin::GetPlaybackPositionInSamples( void )
{
    if ( ( m_xIDirectSoundBuffer != NULL ) && ( m_xIRadSoundHalAudioFormat != NULL ) )
    {
        unsigned long currentPositionInBytes = 0;
        unsigned int currentPositionInSamples = 0;

        HRESULT hr = m_xIDirectSoundBuffer->GetCurrentPosition( & currentPositionInBytes, NULL );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::GetCurrentPosition failed" );

        return m_xIRadSoundHalAudioFormat->BytesToSamples( currentPositionInBytes );
    }

    return 0;
}

void radSoundHalVoiceWin::SetPlaybackPositionInSamples( unsigned int positionInSamples )
{
    if ( m_xIDirectSoundBuffer != NULL )
	{
		unsigned int position;
				
		if ( m_xIRadSoundHalAudioFormat == NULL )
		{
			position = 0;
		}
		else
		{
			position = m_xIRadSoundHalAudioFormat->SamplesToBytes( positionInSamples );
		}

        HRESULT hr = m_xIDirectSoundBuffer->SetCurrentPosition( position );
    }
}

void radSoundHalVoiceWin::SetMuted( bool muted)
{
    if ( muted != GetMuted( ) )
    {
        m_MuteFactor = muted ? 0.0f : 1.0f;
        SetVolumeInternal( );
    }

}

bool radSoundHalVoiceWin::GetMuted( void )
{
    return m_MuteFactor == 0.0f ? true : false;
}

void radSoundHalVoiceWin::SetVolume( float volume )
{
	::radSoundVerifyAnalogVolume( volume );

    if ( volume != m_Volume )
    {
        ::radSoundVerifyChangeThreshold(
            IsHardwarePlaying( ), "Volume", volume, m_Volume, radSoundVolumeChangeThreshold );

		m_Volume = volume;

        SetVolumeInternal( );
    }

}

float radSoundHalVoiceWin::GetVolume( void )
{
    return m_Volume;
}

void radSoundHalVoiceWin::SetTrim( float trim )
{
	::radSoundVerifyAnalogVolume( trim );

    if ( m_Trim != trim )
    {
        ::radSoundVerifyChangeThreshold(
            IsHardwarePlaying( ), "Trim", trim, m_Trim, radSoundVolumeChangeThreshold );

        m_Trim = trim;

        SetVolumeInternal( );
    }
}
    
float radSoundHalVoiceWin::GetTrim( void )
{
    return m_Trim;
}

void radSoundHalVoiceWin::SetPitch( float pitch )
{
    ::radSoundVerifyAnalogPitch( pitch );

    if ( m_Pitch != pitch )
    {
        m_Pitch = pitch;

		SetPitchInternal( );
    }
}

float radSoundHalVoiceWin::GetPitch( void )
{
    return m_Pitch;
}

void radSoundHalVoiceWin::SetPan( float pan )
{
    ::radSoundVerifyAnalogPan( pan );
    
    if ( m_Pan != pan )
    {
        m_Pan = pan;

		SetPanInternal( );
    }
}

float radSoundHalVoiceWin::GetPan( void )
{
    return m_Pan;
}

radSoundAuxMode radSoundHalVoiceWin::GetAuxMode( unsigned int aux )
{
    rWarningMsg( false, "voice::GetAuxMode not available in win32" );
    return radSoundAuxMode_PreFader;
}

void radSoundHalVoiceWin::SetAuxMode( unsigned int aux, radSoundAuxMode  mode )
{
    rWarningMsg( false, "voice::SetAuxMode not available in win32" );
}

float radSoundHalVoiceWin::GetAuxGain( unsigned int aux )
{
    rWarningMsg( false, "voice::GetAuxGain not available in win32" );
    return 1.0f;
}

void radSoundHalVoiceWin::SetAuxGain( unsigned int aux, float gain )
{
    rWarningMsg( false, "voice::SetAuxGain not available in win32" );
}

//========================================================================
// Function radSoundHalVoiceWin::IsHardwarePlaying
//========================================================================

bool radSoundHalVoiceWin::IsHardwarePlaying( void )
{
    if ( m_xIDirectSoundBuffer != NULL )
    {
        unsigned long status;

        HRESULT hr = m_xIDirectSoundBuffer->GetStatus( & status );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::GetStatus failed" );
        rWarningMsg( ( status & DSBSTATUS_BUFFERLOST ) == 0, "radSoundHalVoiceWin: IDirectSoundBuffer lost" );

        // Check our internal flag of the last known "play state", if our flag
        // is playing but the hardware voice has stopped it means we haven't notified
        // the client that the voice was done

        return ( status & DSBSTATUS_PLAYING );
    }

    return false;
}

//========================================================================
// radSoundHalVoiceWin::SetVolumeInternal
//========================================================================

void radSoundHalVoiceWin::SetVolumeInternal( void )
{
    float volume = m_Trim * m_Volume * m_MuteFactor;

    if ( m_xIDirectSoundBuffer != NULL )
    {
		float rollOffFactor = 1.0f;

		if( m_xRadSoundHalPositionalGroup != NULL )
		{
			rollOffFactor = m_xRadSoundHalPositionalGroup->m_VolumeRolloffFactor;
		}

// rReleasePrintf( "%d\n", ::radSoundVolumeDbToHardwareWin( ::radSoundVolumeAnalogToDb( /* 0.0f */ volume * ::radSoundVolumeAmplitudeToAnalog( rollOffFactor ) ) ) );

		m_xIDirectSoundBuffer->SetVolume( ::radSoundVolumeDbToHardwareWin( ::radSoundVolumeAnalogToDb( /* 0.0f */ volume * ::radSoundVolumeAmplitudeToAnalog( rollOffFactor ) ) ) );  
    }        
}

//========================================================================
// radSoundHalVoiceWin::SetPitchInternal
//========================================================================

void radSoundHalVoiceWin::SetPitchInternal( void )
{
    if ( m_xIDirectSoundBuffer != NULL )
    {
        if ( m_xIRadSoundHalAudioFormat != NULL )
        {
            HRESULT hr = m_xIDirectSoundBuffer->SetFrequency( ::radSoundPercentageToHardwarePitchWin( m_Pitch, m_xIRadSoundHalAudioFormat->GetSampleRate( ) ) );

            rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetFrequency failed!" );
        }            
    }
}

//========================================================================
// radSoundHalVoiceWin::SetPanInternal
//========================================================================

void radSoundHalVoiceWin::SetPanInternal( void )
{
    if ( m_xIDirectSoundBuffer != NULL )
    {
        ref< IDirectSound3DBuffer > xIDirectSound3DBuffer;

        HRESULT hr = m_xIDirectSoundBuffer->QueryInterface( IID_IDirectSound3DBuffer, (void**) & xIDirectSound3DBuffer );

        //
        // Can't set the pan if the voice is positional
        //
        if ( FAILED( hr ) )
        {
            long longPan = static_cast< long >( 100.0f * ::radSoundPanAnalogToDb( m_Pan ) );    

            HRESULT hr = m_xIDirectSoundBuffer->SetPan( longPan );

            rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetPan failed" );
        }
    }
}

//========================================================================
// radSoundHalVoiceWin::SetPositionalGroup
//========================================================================

/* virtual */ void radSoundHalVoiceWin::SetPositionalGroup
( 
	IRadSoundHalPositionalGroup * pIRadSoundHalPositionalGroup 
)
{

	radSoundHalPositionalGroup * pRadSoundHalPositionalGroup
		= dynamic_cast< radSoundHalPositionalGroup * >(
			pIRadSoundHalPositionalGroup );
			
    if ( pRadSoundHalPositionalGroup != m_xRadSoundHalPositionalGroup )
    {
        unsigned int oldPosition = GetPlaybackPositionInSamples( );
        bool wasPlaying = IsPlaying( );

	    if ( pRadSoundHalPositionalGroup != m_xRadSoundHalPositionalGroup )
        {
		    if ( m_xRadSoundHalPositionalGroup != NULL )
		    {
			    m_xRadSoundHalPositionalGroup->RemovePositionalEntity( this );
		    }

		    m_xRadSoundHalPositionalGroup = pRadSoundHalPositionalGroup;

		    if ( m_xRadSoundHalPositionalGroup != NULL )
		    {
			    m_xRadSoundHalPositionalGroup->AddPositionalEntity( this );
		    }
	    }

	    if ( m_xRadSoundHalBufferWin != NULL )
	    {
		    // AddRefHere or SetBuffer will fail

		    ref< radSoundHalBufferWin > xSoundHalBufferTemp( m_xRadSoundHalBufferWin );

		    SetBuffer( m_xRadSoundHalBufferWin );
	    }

	    SetPlaybackPositionInSamples( oldPosition );

	    if ( wasPlaying )
	    {
			    Play( );
	    }
	}        
}

//========================================================================
// radSoundHalVoiceWin::GetPositionalGroup
//========================================================================

/* virtual */ IRadSoundHalPositionalGroup * radSoundHalVoiceWin::GetPositionalGroup
(	
	void 
)
{
	return m_xRadSoundHalPositionalGroup;
}


//========================================================================
// radSoundHalVoiceWin::SetPositionalGroup
//========================================================================

/* virtual */ void radSoundHalVoiceWin::OnApplyPositionalInfo( void )
{
	if ( m_xIDirectSound3dBuffer != NULL )
	{
		SetVolumeInternal( );

		HRESULT hr = m_xIDirectSound3dBuffer->SetAllParameters(
			& m_xRadSoundHalPositionalGroup->m_Ds3dBuffer, DS3D_DEFERRED );

		rWarningMsg( SUCCEEDED( hr ), "IDirectSoundVoice::SetAllParameters Failed.\n" );
	}

}

//========================================================================
// ::radSoundhalVoiceCreate
//========================================================================


IRadSoundHalVoice * radSoundHalVoiceCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalVoiceWin", allocator ) radSoundHalVoiceWin( );
}





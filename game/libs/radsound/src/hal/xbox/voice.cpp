//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "voice.hpp"
#include "radsoundxbox.hpp"
#include "..\common\rolloff.hpp"

//========================================================================
// Definitions
//========================================================================

#define IMAADPCM_BITS_PER_SAMPLE        4
#define IMAADPCM_HEADER_LENGTH          4
                                        
#define IMAADPCM_MAX_CHANNELS           2
#define IMAADPCM_PCM_BITS_PER_SAMPLE    16

#define XBOX_ADPCM_SAMPLES_PER_BLOCK    64

// These must be static, XDK doesn't copy them

//========================================================================
// Global Functions
//========================================================================

WORD CalculateAdpcmEncodeAlignment
(
    WORD                    nChannels,
    WORD                    nSamplesPerBlock
)
{
    const WORD              nEncodedSampleBits  = nChannels * IMAADPCM_BITS_PER_SAMPLE;
    const WORD              nHeaderBytes        = nChannels * IMAADPCM_HEADER_LENGTH;
    WORD                    nBlockAlign;

    //
    // Calculate the raw block alignment that nSamplesPerBlock dictates.  This
    // value may include a partial encoded sample, so be sure to round up.
    //
    // Start with the samples-per-block, minus 1.  The first sample is actually
    // stored in the header.
    //

    nBlockAlign = nSamplesPerBlock - 1;

    //
    // Convert to encoded sample size
    //

    nBlockAlign *= nEncodedSampleBits;
    nBlockAlign += 7;
    nBlockAlign /= 8;

    //
    // The stereo encoder requires that there be at least two DWORDs to process
    //

    nBlockAlign += 7;
    nBlockAlign /= 8;
    nBlockAlign *= 8;

    //
    // Add the header
    //

    nBlockAlign += nHeaderBytes;

    return nBlockAlign;
}

void CreateImaAdpcmFormat
(
    WORD                    nChannels, 
    DWORD                   nSamplesPerSec, 
    WORD                    nSamplesPerBlock,
    LPXBOXADPCMWAVEFORMAT    pwfx
)
{
    pwfx->wfx.wFormatTag = WAVE_FORMAT_XBOX_ADPCM;
    pwfx->wfx.nChannels = nChannels;
    pwfx->wfx.nSamplesPerSec = nSamplesPerSec;
    pwfx->wfx.nBlockAlign = CalculateAdpcmEncodeAlignment(nChannels, nSamplesPerBlock);
    pwfx->wfx.nAvgBytesPerSec = nSamplesPerSec * pwfx->wfx.nBlockAlign / nSamplesPerBlock;
    pwfx->wfx.wBitsPerSample = IMAADPCM_BITS_PER_SAMPLE;
    pwfx->wfx.cbSize = sizeof(*pwfx) - sizeof(pwfx->wfx);
    pwfx->wSamplesPerBlock = nSamplesPerBlock;
}

//========================================================================
// Component radSoundVoiceXBox
//========================================================================

IRadMemoryPool * radSoundPoolObject< radSoundReleasingVoiceNode >::s_pIRadMemoryPool = NULL;
radSoundReleasingVoiceNode * radLinkedClass< radSoundReleasingVoiceNode >::s_pLinkedClassHead = NULL;
radSoundReleasingVoiceNode * radLinkedClass< radSoundReleasingVoiceNode >::s_pLinkedClassTail = NULL;

//========================================================================
// radSoundVoiceXBox::ReleaseVoiceToPool
//========================================================================

void radSoundVoiceXBox::ReleaseVoiceToPool( ref< IDirectSoundBuffer > & refIDsb )
{    
    if ( refIDsb != NULL )
    {
        DWORD dwStatus;
        
        refIDsb->GetStatus( &dwStatus );
    
        if ( dwStatus & DSBSTATUS_PLAYING )
        {
            /* unsigned int time = ::radTimeGetMicroseconds( );

            do

            {
                refIDsb->GetStatus( &dwStatus );
            } while( dwStatus & DSBSTATUS_PLAYING );

            rDebugPrintf( "Spinning on stop: [%d]microseconds\n",
                ::radTimeGetMicroseconds() - time ); */

            radSoundReleasingVoiceNode * pRsrvn = new ( "radSoundReleasingVoiceNode" )radSoundReleasingVoiceNode( );
            pRsrvn->m_refIDirectSoundBuffer = refIDsb;
         }

        refIDsb = NULL;
    }
}

//========================================================================
// radSoundVoiceXBox::Service
//========================================================================

void radSoundVoiceXBox::Service( void )
{
    radSoundReleasingVoiceNode * pSearch = radLinkedClass< radSoundReleasingVoiceNode >::GetLinkedClassHead( );
    radSoundReleasingVoiceNode * pTemp;
    DWORD dwStatus;

    while ( pSearch )
    {
        pSearch->m_refIDirectSoundBuffer->GetStatus( &dwStatus );

        if ( ! ( dwStatus & DSBSTATUS_PLAYING ) )
        {
            // Be careful when deleting and itterating!

            pTemp = pSearch->GetLinkedClassNext( );

            delete pSearch;

            pSearch = pTemp;
            
        }
        else
        {
            pSearch = pSearch->GetLinkedClassNext( );
        }
    }
}

//========================================================================
// radSoundVoiceXBox::Initialize
//========================================================================

void radSoundVoiceXBox::Initialize( radMemoryAllocator allocator )
{

   radSoundPoolObject< radSoundReleasingVoiceNode >::Initialize( allocator, 256, 256 );
}

//========================================================================
// radSoundVoiceXBox::Terminate
//========================================================================

void radSoundVoiceXBox::Terminate( void )
{
    radSoundPoolObject< radSoundReleasingVoiceNode >::Terminate();
}

//========================================================================
// radSoundVoiceXBox::radSoundVoiceXBox
//========================================================================

radSoundVoiceXBox::radSoundVoiceXBox( void )
    :
    m_Playing( false ),
	m_Priority( 5 ),
    m_Pitch( 1.0f ),
    m_Pan( 0.0f ),
    m_Volume( 1.0f ),
	m_Trim( 1.0f ),
	m_MuteFactor( 1.0f ),
	m_LastPlaybackPositionInBytes( 0 )
{		
    // Just to make sure
    rAssert( RSDVOICE_OUTPUT_MAX <= DSMIXBIN_ASSIGNMENT_MAX / 2 );
   
    // Clear out the output sends
    for( unsigned int i = 0; i < RSDVOICE_OUTPUT_MAX; i++ )
    {
        m_refOutputSendState[ i ].m_Gain           =  0.0f;
        m_refOutputSendState[ i ].m_Mode           =  radSoundAuxMode_Off;
        m_refOutputSendState[ i ].m_pDsMixBin[ 0 ] =  DSMIXBIN_FXSEND_13; // unused mixbin
        m_refOutputSendState[ i ].m_pDsMixBin[ 1 ] =  DSMIXBIN_FXSEND_13; // unused mixbin
    }

    // Always set the last two send to the speakers
    // Note that I'm setting the speakers' outputs to being in PostFader
    // mode.  That's true isn't it?  That's a reasonable thing to do?
    m_refOutputSendState[ RSDVOICE_OUTPUT_MAX - 1 ].m_Gain           = 1.0f;
    m_refOutputSendState[ RSDVOICE_OUTPUT_MAX - 1 ].m_Mode           = radSoundAuxMode_PostFader; 
    m_refOutputSendState[ RSDVOICE_OUTPUT_MAX - 1 ].m_pDsMixBin[ 0 ] = DSMIXBIN_FRONT_LEFT;
    m_refOutputSendState[ RSDVOICE_OUTPUT_MAX - 1 ].m_pDsMixBin[ 1 ] = DSMIXBIN_FRONT_RIGHT;

    // Find out if we should be handling some effects
    for( unsigned int j = 0; j < ::radSoundHalSystemGet( )->GetNumAuxSends( ); j++ )
    {
        OnSetAuxEffect( j, ::radSoundHalSystemXBoxGet( )->GetAuxEffect( j ) );
    }
}

//========================================================================
// radSoundVoiceXBox::~radSoundVoiceXBox
//========================================================================

radSoundVoiceXBox::~radSoundVoiceXBox
(
    void
)
{
    //
    // Tell our buffer object that we are done with the voice/(buffer), our
    // buffer object manages the lifetime if its voices.
    //

    Stop( );

	if ( m_refRadSoundHalPositionalGroup != NULL )
	{
		m_refRadSoundHalPositionalGroup->RemovePositionalEntity( this );
	}

    ReleaseVoiceToPool( m_refIDirectSoundBuffer );
}

//========================================================================
// radSoundVoiceXBox::SetPriority
//========================================================================

void radSoundVoiceXBox::SetPriority( unsigned int priority )
{
	m_Priority = priority;
}

//========================================================================
// radSoundVoiceXBox::GetPriority
//========================================================================

unsigned int radSoundVoiceXBox::GetPriority( void )
{
	return m_Priority;
}

//========================================================================
// radSoundVoiceXBox::SetBuffer
//========================================================================

void radSoundVoiceXBox::SetBuffer
(
    IRadSoundHalBuffer * pIRadSoundHalBuffer
)
{
    Stop( );

    ReleaseVoiceToPool( m_refIDirectSoundBuffer );

    //
    // Free all of our previous stuff.
    //        

	m_refIRadSoundHalAudioFormat = NULL;
	m_refRadSoundBufferXBox = NULL;

    //
    // NULL is ok.
    //

    if ( pIRadSoundHalBuffer != NULL )
    {
		m_refRadSoundBufferXBox = static_cast< radSoundBufferXBox * >( pIRadSoundHalBuffer );
		m_refIRadSoundHalAudioFormat = m_refRadSoundBufferXBox->GetFormat( );

        CreateDirectSoundBuffer( ); 
    
        SetPitch( m_Pitch );
        SetVoiceVolume( );
        SetPlaybackPositionInSamples( 0 );

        if ( m_refRadSoundHalPositionalGroup == NULL )
        {
            SetPan( m_Pan );
        }
        else
        {
			OnApplyPositionalInfo( );
        }               
    }
}

//========================================================================
// radSoundVoiceXBox::GetBuffer
//========================================================================

/* virtual */ IRadSoundHalBuffer * radSoundVoiceXBox::GetBuffer( void )
{
    return m_refRadSoundBufferXBox;
}

//========================================================================
// radSoundVoiceXBox::Play
//========================================================================

void radSoundVoiceXBox::Play
(
    void
)
{
    if ( m_refIDirectSoundBuffer != NULL )
    {
        if ( m_Playing == false )
        {
            m_Playing = true;

			// Force recalculation of position if we play.

			if ( m_refRadSoundHalPositionalGroup != NULL )
			{
				radSoundVector position;

				m_refRadSoundHalPositionalGroup->GetPosition( & position );

				HRESULT hr = m_refIDirectSoundBuffer->SetPosition
				(
					position.m_x,
					position.m_y,
					position.m_z,
					DS3D_IMMEDIATE
				);

				rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DBuffer::SetPosition failed" );
			}

            HRESULT hr = m_refIDirectSoundBuffer->Play
            (
                0,
                0,
                m_refRadSoundBufferXBox->IsLooping() ? DSBPLAY_LOOPING : 0
            );

			if ( SUCCEEDED( hr ) )
			{
				//
				// Stupid bug in DirectSound requires this.
				//

				hr = m_refIDirectSoundBuffer->SetCurrentPosition( m_LastPlaybackPositionInBytes );

				rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetPositional failed" );

				rAssert( IsHardwarePlaying( ) );
			}
			else
			{
				rTuneString( "radSoundVoiceXBox: IDirectSoundBuffer::Play() failed.  You are probably out of voices.\n" );				
			}
        }
    }
}

//========================================================================
// radSoundVoiceXBox::Stop
//========================================================================

void radSoundVoiceXBox::Stop
(
    void
)
{
    if ( m_Playing == true )
    {
        m_Playing = false;

        rAssert( m_refIDirectSoundBuffer != NULL );
        
        HRESULT hr = m_refIDirectSoundBuffer->Stop( );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::Stop failed" );

		hr = m_refIDirectSoundBuffer->GetCurrentPosition( (LPDWORD) & m_LastPlaybackPositionInBytes, NULL );

		rWarningMsg( SUCCEEDED( hr ), "IDrectSoundBuffer::GetCurrentPositional failed" );

        // !WARNING! !WARNING! !WARNING! - DirectSound will return IsPlaying() == true !!!!
        // Don't try this: rAssert( IsHardwarePlaying( ) == false );
        // Stopping the voice is an async operation, this is why we switched to
        // using our own internal m_Playing flag.

        #ifndef RAD_RELEASE

            extern bool g_VoiceStoppingPlayingSilence;
            
            if ( g_VoiceStoppingPlayingSilence == false )
            {
                bool stopOk;
                
                if ( ( m_Trim * m_Volume ) > 0.0f )
                {
                    stopOk = false;
                }
                else
                {
                    stopOk = true;
                }
            
                if ( m_refRadSoundHalPositionalGroup != NULL && ( false == stopOk ) )
                {
                    radSoundVector listenerPosition;
                    radSoundVector voicePosition;
                    
                    float maxDistance;
                    float minDistance;
                    
                    m_refRadSoundHalPositionalGroup->GetMinMaxDistance( & minDistance, & maxDistance );
                    
                    m_refRadSoundHalPositionalGroup->GetPosition( & voicePosition );
                    radSoundHalListenerGet( )->GetPosition( & listenerPosition );
                    
                    float distBetween = listenerPosition.GetDistanceBetween( voicePosition );
                    
                    if ( distBetween < maxDistance )
                    {
                        stopOk = false;
                    }
                    else
                    {
                        stopOk = true;
                    }
                }
                    
                if ( ! stopOk )
                {
                    rTunePrintf( "radsound: TRC Violation: Voice stopped while audible\n" );
                }
            }                
            

        #endif // !RAD_RELEASE
    }
}

//========================================================================
// Function radSoundVoiceXBox::IsPlaying
//========================================================================

bool radSoundVoiceXBox::IsPlaying
(
    void
)
{
    // Check to see if the voices has finished playing through the
    // buffer.  Only check if the playing flag is set because
    // IsHardwarePlaying() can return true even though we are stopped
    // because it is an async operation.

    if ( m_Playing == true )
    {
        if ( IsHardwarePlaying( ) == false )
        {
            m_Playing = false;
        }
    }

	return m_Playing;
}

//========================================================================
// radSoundVoiceXBox::SetPlaybackPositionInSamples
//========================================================================

void radSoundVoiceXBox::SetPlaybackPositionInSamples
(
    unsigned int positionInSamples
)
{
    if ( m_refIDirectSoundBuffer != NULL )
	{
		unsigned int position;
				
		if ( m_refIRadSoundHalAudioFormat == NULL )
		{
			position = 0;
		}
		else
		{
			position = m_refIRadSoundHalAudioFormat->SamplesToBytes( positionInSamples );
		}

        HRESULT hr = m_refIDirectSoundBuffer->SetCurrentPosition( position );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetCurrentPosition failed" );

		m_LastPlaybackPositionInBytes = position;
    }
}

//========================================================================
// radSoundVoiceXBox::GetPlaybackPositionInSamples
//========================================================================

unsigned int radSoundVoiceXBox::GetPlaybackPositionInSamples
(
    void
)
{
    if ( ( m_refIDirectSoundBuffer != NULL ) && ( m_refIRadSoundHalAudioFormat != NULL ) )
    {
        unsigned long currentPositionInBytes = 0;

        HRESULT hr = m_refIDirectSoundBuffer->GetCurrentPosition( & currentPositionInBytes, NULL );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::GetCurrentPosition failed" );

        return m_refIRadSoundHalAudioFormat->BytesToSamples( currentPositionInBytes );
    }

    return 0;
}

//========================================================================
// radSoundVoiceXBox::SetVolume
//========================================================================

void radSoundVoiceXBox::SetVolume
(
    float volume
)
{
	::radSoundVerifyAnalogVolume( volume );

	if ( m_Volume != volume )
	{
        radSoundVerifyChangeThreshold( m_Playing, "Volume", m_Volume, volume, radSoundVolumeChangeThreshold );
		
        m_Volume = volume;

		SetVoiceVolume( );
	}
}

//========================================================================
// Function radSoundVoiceXBox::GetVolume
//========================================================================

float radSoundVoiceXBox::GetVolume
(
    void
)
{
    return m_Volume;
}

//========================================================================
// radSoundVoiceXBox::SetTrim
//========================================================================

void radSoundVoiceXBox::SetTrim( float trim )
{
	::radSoundVerifyAnalogVolume( trim );

	if ( m_Trim != trim )
	{
        radSoundVerifyChangeThreshold( m_Playing, "Trim", m_Trim, trim, radSoundVolumeChangeThreshold );

		m_Trim = trim;

		SetVoiceVolume( );
	}
}

//========================================================================
// radSoundVoiceXBox::GetTrim
//========================================================================

float radSoundVoiceXBox::GetTrim( void )
{
	return m_Trim;
}

//========================================================================
// radSoundVoiceXBox::SetMuted
//========================================================================

void radSoundVoiceXBox::SetMuted( bool muted )
{
	float muteFactor = muted ? 0.0f : 1.0f;

	if ( m_MuteFactor != muteFactor )
	{
		m_MuteFactor = muteFactor;

		SetVoiceVolume( );
	}
}

//========================================================================
// radSoundVoiceXBox::GetMuted
//========================================================================

bool radSoundVoiceXBox::GetMuted( void )
{
	return m_MuteFactor == 1.0f ? false : true;
}

//========================================================================
// radSoundVoiceXBox::SetPan
//========================================================================

void radSoundVoiceXBox::SetPan
(
    float pan
)
{
    ::radSoundVerifyAnalogPan( pan );

    if( m_Pan != pan )
    {
	    m_Pan = pan;
    
        SetVoiceVolume( );
    }
}

//========================================================================
// radSoundVoiceXBox::GetPan
//========================================================================

float radSoundVoiceXBox::GetPan
(
    void
)
{
    return m_Pan;
}

//========================================================================
// Function radSoundVoiceXBox::SetPitch
//========================================================================  

void radSoundVoiceXBox::SetPitch
(
    float pitch
)
{
    ::radSoundVerifyAnalogPitch( pitch );

	m_Pitch = pitch;

    if ( m_refIDirectSoundBuffer != NULL )
    {
        if ( m_refIRadSoundHalAudioFormat != NULL )
        {
            HRESULT hr = m_refIDirectSoundBuffer->SetFrequency(
				::radSoundPercentageToHardwarePitchXBox( m_Pitch, (unsigned int) m_refIRadSoundHalAudioFormat->GetSampleRate( ) ) );

            rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetFrequency failed!" );
        }            
    }
}

//========================================================================
// Function radSoundVoiceXBox::GetPitch
//========================================================================

float radSoundVoiceXBox::GetPitch
(
    void
)
{
    return m_Pitch;          
}


//========================================================================
// radSoundVoiceXBox::SetAuxMode
//========================================================================

/* virtual */ void radSoundVoiceXBox::SetAuxMode( unsigned int aux, radSoundAuxMode mode )
{
	rAssert( aux < RSDVOICE_OUTPUT_MAX );
    rAssertMsg( m_refRadSoundHalPositionalGroup == NULL, "Postional voices cannot control aux sends\n" );
    
    if( m_refOutputSendState[ aux ].m_Mode != mode )
    {
        m_refOutputSendState[ aux ].m_Mode = mode;
        
        if( m_refOutputSendState[ aux ].m_Mode == radSoundAuxMode_Off )
        {
            OnSetAuxEffect( aux, NULL );
        }
        else
        {
            OnSetAuxEffect( aux, ::radSoundHalSystemXBoxGet( )->GetAuxEffect( aux ) );
        }
    }
}

//========================================================================
// radSoundVoiceXBox::GetAuxMode
//========================================================================

/* virtual */ radSoundAuxMode radSoundVoiceXBox::GetAuxMode( unsigned int aux )
{
	rAssert( aux < RSDVOICE_OUTPUT_MAX );

	return m_refOutputSendState[ aux ].m_Mode;
}

//========================================================================
// radSoundVoiceXBox::SetAuxGain
//========================================================================

/* virtual */ void radSoundVoiceXBox::SetAuxGain( unsigned int aux, float gain )
{
	rAssert( aux < RSDVOICE_OUTPUT_MAX );
    rAssertMsg( m_refRadSoundHalPositionalGroup == NULL, "Postional voices cannot control aux sends\n" );
    ::radSoundVerifyAnalogVolume( gain );

    if( m_refOutputSendState[ aux ].m_Gain != gain )
    {
        radSoundVerifyChangeThreshold( m_Playing, "AuxGain", m_refOutputSendState[ aux ].m_Gain, gain, radSoundVolumeChangeThreshold );

        m_refOutputSendState[ aux ].m_Gain = gain;
        SetVoiceVolume( );        
    }
}

//========================================================================
// radSoundVoiceXBox::GetAuxGain
//========================================================================

/* virtual */ float radSoundVoiceXBox::GetAuxGain( unsigned int aux )
{
	rAssert( aux < RSDVOICE_OUTPUT_MAX );

    return m_refOutputSendState[ aux ].m_Gain;
}

//========================================================================
// radSoundVoiceXBox::SetPositional
//========================================================================

/* virtual */ void radSoundVoiceXBox::SetPositionalGroup
(
	IRadSoundHalPositionalGroup * pIRadSoundHalPositionalGroup
)
{
	radSoundHalPositionalGroup * pRadSoundHalPositionalGroup
		= dynamic_cast< radSoundHalPositionalGroup * >(
			pIRadSoundHalPositionalGroup );

    if ( pRadSoundHalPositionalGroup != m_refRadSoundHalPositionalGroup )
    {
		if ( m_refRadSoundHalPositionalGroup != NULL )
		{
			m_refRadSoundHalPositionalGroup->RemovePositionalEntity( this );
		}

		m_refRadSoundHalPositionalGroup = pRadSoundHalPositionalGroup;

		if ( m_refRadSoundHalPositionalGroup != NULL )
		{
			m_refRadSoundHalPositionalGroup->AddPositionalEntity( this );
		}

		if ( m_refRadSoundBufferXBox != NULL )
		{
			//
			// Force a re-create of the DirectSoundBuffer
			//

			radSoundBufferXBox * pRadSoundBufferXBox = m_refRadSoundBufferXBox;
			pRadSoundBufferXBox->AddRef( );
			SetBuffer( pRadSoundBufferXBox );
			pRadSoundBufferXBox->Release( );
		}
    }
}

//========================================================================
// radSoundVoiceXBox::GetPositionalGroup
//========================================================================

IRadSoundHalPositionalGroup * radSoundVoiceXBox::GetPositionalGroup( void )
{
	return m_refRadSoundHalPositionalGroup;
}

//========================================================================
// radSoundVoiceXBox::SetPositionalInfo
//========================================================================

void radSoundVoiceXBox::OnApplyPositionalInfo( void )
{
	if ( m_refIDirectSoundBuffer != NULL )
	{
		HRESULT hr = m_refIDirectSoundBuffer->SetAllParameters(
			& m_refRadSoundHalPositionalGroup->m_Ds3dBuffer, DS3D_DEFERRED );

		rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetAllParameters Failed.\n" );

        hr = m_refIDirectSoundBuffer->SetI3DL2Source(
            & m_refRadSoundHalPositionalGroup->m_DsI3dl2Buffer, DS3D_DEFERRED );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetI3DL2Source Failed.\n" );
	}
};

//========================================================================
// radSoundVoiceXBox::OnSetAuxEffect
//========================================================================

void radSoundVoiceXBox::OnSetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundEffect )
{
    if( m_refRadSoundHalPositionalGroup == NULL )
    {
        rAssert( auxNumber < RSDVOICE_OUTPUT_MAX );

        if( pIRadSoundEffect != NULL && m_refOutputSendState[ auxNumber ].m_Mode != radSoundAuxMode_Off )
        {
            if( pIRadSoundEffect->GetNumInputs( ) == 2 )
            {
                m_refOutputSendState[ auxNumber ].m_pDsMixBin[ 0 ] = pIRadSoundEffect->GetInput( 0 );
                m_refOutputSendState[ auxNumber ].m_pDsMixBin[ 1 ] = pIRadSoundEffect->GetInput( 1 );
            }
            else if( pIRadSoundEffect->GetNumInputs( ) == 1 )
            {
                m_refOutputSendState[ auxNumber ].m_pDsMixBin[ 0 ] = pIRadSoundEffect->GetInput( 0 );
                m_refOutputSendState[ auxNumber ].m_pDsMixBin[ 1 ] = pIRadSoundEffect->GetInput( 0 );
            }
            else
            {
                rAssert( pIRadSoundEffect->GetNumInputs( ) == 1 ||
                    pIRadSoundEffect->GetNumInputs( ) == 2 );
            }
        }
        else
        {
            m_refOutputSendState[ auxNumber ].m_pDsMixBin[ 0 ] = DSMIXBIN_FXSEND_13;  // unused mix bin
            m_refOutputSendState[ auxNumber ].m_pDsMixBin[ 1 ] = DSMIXBIN_FXSEND_13;  // unused mix bin
        }

        if( m_refIDirectSoundBuffer != NULL )
        {
            // Redirect the directsoundbuffer's outputs

            DSMIXBINS dsmb;
            DSMIXBINVOLUMEPAIR pDsmbvp[ DSMIXBIN_ASSIGNMENT_MAX ];

            PopulateDsMixBins( & dsmb, pDsmbvp );

            HRESULT hr = m_refIDirectSoundBuffer->SetMixBins( &dsmb );
		    rAssert( SUCCEEDED( hr ) );
        }
    }
}

//========================================================================
// Function radSoundVoiceXBox::IsHardwarePlaying
//========================================================================

bool radSoundVoiceXBox::IsHardwarePlaying( void )
{
    if ( m_refIDirectSoundBuffer != NULL )
    {
        unsigned long status;

        HRESULT hr = m_refIDirectSoundBuffer->GetStatus( & status );

        rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::GetStatus failed" );

        // Check our internal flag of the last known "play state", if our flag
        // is playing but the hardware voice has stopped it means we haven't notified
        // the client that the voice was done

        return ( status & DSBSTATUS_PLAYING );
    }

    return false;
}

//========================================================================
// radSoundVoiceXBox::SetVoiceVolume
//========================================================================

void radSoundVoiceXBox::SetVoiceVolume( void )
{
    if ( m_refIDirectSoundBuffer != NULL )
    {
        if ( m_refRadSoundHalPositionalGroup == NULL )
        {
            // We control all of the volume
            // settings manually for nonpositional buffers

        	DSMIXBINS dsMixBins;
            DSMIXBINVOLUMEPAIR pDsmbvp[ DSMIXBIN_ASSIGNMENT_MAX ];

            PopulateDsMixBins( & dsMixBins, pDsmbvp );

            // Set the mix bin gains
            HRESULT hr = m_refIDirectSoundBuffer->SetMixBinVolumes( & dsMixBins );
            rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetMixBinVolumes failed" );
        }
        else
        {
            // This is positional.  We can let direct
            // sound worry about everything

		    long dbVolume = ::radSoundVolumeDbToHardwareXBox(
			    ::radSoundVolumeAnalogToDb( m_Volume * m_Trim * m_MuteFactor ) );
            
            HRESULT hr = m_refIDirectSoundBuffer->SetVolume( dbVolume );

            rWarningMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::SetVolume failed" );
        }
    }
}

//========================================================================
// radSoundVoiceXBox::SetVoiceOutputs
//========================================================================

void radSoundVoiceXBox::SetVoiceOutputs( void )
{
 

}

//========================================================================
// radSoundVoiceXBox::CreateDirectSoundBuffer
//========================================================================

void radSoundVoiceXBox::CreateDirectSoundBuffer( void )
{   
	ref< IDirectSound >       xIDirectSound;
	::radSoundHalSystemXBoxGet( )->GetDirectSoundReference( & xIDirectSound );
	
	//
	// This structure's first member is just a WAVEFORMATEX, so use it
	// in both cases PCM/ADPCM
	//

    XBOXADPCMWAVEFORMAT wfx;

	if ( m_refIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::PCM )
	{
		wfx.wfx.wFormatTag = WAVE_FORMAT_PCM;
		wfx.wfx.wBitsPerSample  = m_refIRadSoundHalAudioFormat->GetBitResolution( );	
		wfx.wfx.nChannels       = (unsigned short) m_refIRadSoundHalAudioFormat->GetNumberOfChannels( );
		wfx.wfx.nSamplesPerSec  = (unsigned int) m_refIRadSoundHalAudioFormat->GetSampleRate( );// */ 22050;
		wfx.wfx.nBlockAlign     = (wfx.wfx.wBitsPerSample / 8) * wfx.wfx.nChannels;
		wfx.wfx.nAvgBytesPerSec = wfx.wfx.nSamplesPerSec * wfx.wfx.nBlockAlign;			 
	}
	else if ( m_refIRadSoundHalAudioFormat->GetEncoding( ) == IRadSoundHalAudioFormat::XBOXADPCM )
	{
		CreateImaAdpcmFormat( m_refIRadSoundHalAudioFormat->GetNumberOfChannels( ), (unsigned int) m_refIRadSoundHalAudioFormat->GetSampleRate( ), XBOX_ADPCM_SAMPLES_PER_BLOCK, & wfx );
	}
	else
	{
		rAssert( 0 );
	}

    DSBUFFERDESC dsbd;    

    dsbd.dwSize = sizeof( dsbd );
    dsbd.dwFlags = DSBCAPS_CTRLFREQUENCY | DSBCAPS_CTRLVOLUME | DSBCAPS_LOCDEFER;
    dsbd.dwFlags |= m_refRadSoundHalPositionalGroup != NULL ? DSBCAPS_CTRL3D : 0x00;

    dsbd.dwInputMixBin = 0;
    dsbd.dwBufferBytes = 0;

	DSMIXBINS dsMixBins;

    if ( m_refRadSoundHalPositionalGroup == NULL )
    {
        DSMIXBINVOLUMEPAIR pDsmbvp[ DSMIXBIN_ASSIGNMENT_MAX ];
        
        PopulateDsMixBins( & dsMixBins, pDsmbvp );
        // Set buffer outputs
       
        dsbd.lpMixBins = & dsMixBins;
    }
    else
    {
        dsbd.lpMixBins = NULL;
    }

    dsbd.lpwfxFormat = (WAVEFORMATEX*) & wfx;

    HRESULT hr = xIDirectSound->CreateSoundBuffer( & dsbd, & m_refIDirectSoundBuffer, NULL );

    rAssert( SUCCEEDED( hr ) );

    if ( m_refRadSoundHalPositionalGroup != NULL )
    {
        hr = m_refIDirectSoundBuffer->SetRolloffCurve(
            g_pRotPoints,
            g_NumRotPoints,
            DS3D_DEFERRED );
    }

    //
    // Set the headroom to 0dB
    //
    
    if ( m_refRadSoundHalPositionalGroup == NULL )
    {
        hr = m_refIDirectSoundBuffer->SetHeadroom( 900 );
    }
    else
    {
        hr = m_refIDirectSoundBuffer->SetHeadroom( 0 );
    }
      

    rAssert( SUCCEEDED( hr ) );

    if( m_refRadSoundHalPositionalGroup != NULL )
    {
        HRESULT hr = m_refIDirectSoundBuffer->SetI3DL2Source( 
            & m_refRadSoundHalPositionalGroup->m_DsI3dl2Buffer, DS3D_IMMEDIATE );

        rAssert( SUCCEEDED( hr ) );
    }

    hr = m_refIDirectSoundBuffer->SetBufferData
    (
        m_refRadSoundBufferXBox->GetBufferMemory( ),
        m_refRadSoundBufferXBox->GetFormat( )->FramesToBytes( m_refRadSoundBufferXBox->GetSizeInFrames( ) )
    );

    rAssert( SUCCEEDED( hr ) );
}

//========================================================================
// radSoundVoiceXBox::PopulateDsMixBins
//========================================================================

void radSoundVoiceXBox::PopulateDsMixBins( DSMIXBINS * pDsMixBins, DSMIXBINVOLUMEPAIR * pDsMixBinVolumePairs )
{
    rAssert( pDsMixBins != NULL );
    rAssert( pDsMixBinVolumePairs != NULL );
    rAssert( sizeof( * pDsMixBinVolumePairs ) >= DSMIXBIN_ASSIGNMENT_MAX );

    // Translate the pan value into a left and right gain
    float panL = 1.0f;
    float panR = 1.0f;

    ::radSoundPanToVolumePower( m_Pan, & panL, & panR );

    // Fill the volume pairs with the initial gains

    unsigned int bin = 0;

    for( unsigned int i = 0; i < RSDVOICE_OUTPUT_MAX; i++ )
    {
        // Final volume values depend on if this send
        // is being pre-faded or post-faded
        // (this technique RELIES ON IDirectSoundBuffer::SetVolume
        // never being called on non-positional buffers!! )

        if( m_refOutputSendState[ i ].m_Mode == radSoundAuxMode_PreFader )
        {
            // pre-faded volume = sendGain * trim * mute * pan

            if ( DSMIXBIN_FXSEND_13 != m_refOutputSendState[ i ].m_pDsMixBin[ 0 ] )
            {
                pDsMixBinVolumePairs[ bin ].lVolume = radSoundVolumeDbToHardwareXBox(
                    radSoundVolumeAnalogToDb( m_refOutputSendState[ i ].m_Gain * m_Trim * m_MuteFactor * panL ) );
                pDsMixBinVolumePairs[ bin ].dwMixBin = m_refOutputSendState[ i ].m_pDsMixBin[ 0 ];
                
                bin++;
            }                
            
            if ( DSMIXBIN_FXSEND_13 != m_refOutputSendState[ i ].m_pDsMixBin[ 1 ] && 
                 m_refOutputSendState[ i ].m_pDsMixBin[ 0 ] != m_refOutputSendState[ i ].m_pDsMixBin[ 1 ] )
            {
                pDsMixBinVolumePairs[ bin ].lVolume = radSoundVolumeDbToHardwareXBox(
                    radSoundVolumeAnalogToDb( m_refOutputSendState[ i ].m_Gain * m_Trim * m_MuteFactor * panR) );
                pDsMixBinVolumePairs[ bin ].dwMixBin = m_refOutputSendState[ i ].m_pDsMixBin[ 1 ];
                
                bin++;
            }                
        }
        else
        {
            // pre-faded volume = sendGain * volume * trim * mute * pan

            if ( DSMIXBIN_FXSEND_13 != m_refOutputSendState[ i ].m_pDsMixBin[ 0 ] )
            {
                pDsMixBinVolumePairs[ bin ].lVolume = radSoundVolumeDbToHardwareXBox(
                    radSoundVolumeAnalogToDb( m_refOutputSendState[ i ].m_Gain * m_Volume * m_Trim * m_MuteFactor * panL ) );
                pDsMixBinVolumePairs[ bin ].dwMixBin = m_refOutputSendState[ i ].m_pDsMixBin[ 0 ];

                bin++;
            }


            if ( DSMIXBIN_FXSEND_13 != m_refOutputSendState[ i ].m_pDsMixBin[ 1 ] &&
                 m_refOutputSendState[ i ].m_pDsMixBin[ 0 ] != m_refOutputSendState[ i ].m_pDsMixBin[ 1 ] )
            {
                pDsMixBinVolumePairs[ bin ].lVolume = radSoundVolumeDbToHardwareXBox(
                    radSoundVolumeAnalogToDb( m_refOutputSendState[ i ].m_Gain * m_Volume * m_Trim * m_MuteFactor * panR ) );
                pDsMixBinVolumePairs[ bin ].dwMixBin = m_refOutputSendState[ i ].m_pDsMixBin[ 1 ];

                bin++;
            }                
        }
    }

    // Now fill the mixbins structure
    pDsMixBins->dwMixBinCount = bin;
    pDsMixBins->lpMixBinVolumePairs = pDsMixBinVolumePairs;
}

//========================================================================
// radSoundHalVoiceCreate
//========================================================================

IRadSoundHalVoice * radSoundHalVoiceCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundHalVoice", allocator ) radSoundVoiceXBox( );
}

radSoundVoiceXBox * radLinkedClass<radSoundVoiceXBox>::s_pLinkedClassHead = NULL;
radSoundVoiceXBox * radLinkedClass<radSoundVoiceXBox>::s_pLinkedClassTail = NULL;

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        listener.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	Listener object for positional sound
//
// Creation TH RS
//
//=============================================================================

//============================================================================
// Include Files
//============================================================================

#include "pch.hpp"
#include "listener.hpp"
#include "system.hpp"
#include <eax.h>

//============================================================================
// Static definitions
//============================================================================

/* static */ radSoundHalListener * radSoundHalListener::s_pTheRadSoundHalListener = NULL;


//============================================================================
// radSoundHalListener::radSoundHalListener
//============================================================================

radSoundHalListener::radSoundHalListener
(
	IDirectSound3DListener * pIDirectSound3DListener
)
	:
    m_xIKsPropertySet( NULL ),
    m_EnvEffectsEnabled( false ),
	m_RolloffFactor( 1.0f ),
    m_EnvAuxSend( 0 ),
    m_IsEaxListenerClean( false )
{
	rAssert( s_pTheRadSoundHalListener == NULL );
	rAssert( pIDirectSound3DListener != NULL );

	s_pTheRadSoundHalListener = this;
	m_xIDirectSound3DListener = pIDirectSound3DListener;

	::radSoundZeroMemory( & m_Ds3dListener, sizeof( m_Ds3dListener ) );

	m_Ds3dListener.dwSize = sizeof( m_Ds3dListener );

	m_Ds3dListener.vPosition.x = 0.0f;
	m_Ds3dListener.vPosition.y = 0.0f;
	m_Ds3dListener.vPosition.z = 0.0f;

	m_Ds3dListener.vVelocity.x = 0.0f;
	m_Ds3dListener.vVelocity.y = 0.0f;
	m_Ds3dListener.vVelocity.z = 0.0f;

	m_Ds3dListener.vOrientFront.x = 0.0f;
	m_Ds3dListener.vOrientFront.y = 0.0f;
	m_Ds3dListener.vOrientFront.z = 1.0f;

	m_Ds3dListener.vOrientTop.x = 0.0f;
	m_Ds3dListener.vOrientTop.y = 1.0f;
	m_Ds3dListener.vOrientTop.z = 0.0f;

	// Windows rolloff calculation sucks so we'll do it ourselves.
    // (Note using minrolloff factor disables windows system.)
	m_Ds3dListener.flDistanceFactor = DS3D_DEFAULTDISTANCEFACTOR;
	m_Ds3dListener.flRolloffFactor = DS3D_MINROLLOFFFACTOR;
	m_Ds3dListener.flDopplerFactor = DS3D_DEFAULTDOPPLERFACTOR;

    ::radSoundHalCreateRollOffTable( STD_ROLL_OFF_TABLE_MAX_DIST_VOL, m_pRollOffTable, STD_ROLL_OFF_TABLE_NUM_POINTS );
    ::radSoundHalSetRollOffTable( m_pRollOffTable, STD_ROLL_OFF_TABLE_NUM_POINTS );

    // Prepare for the eventual use of effects.  
    // We'll create a temporary little sound buffer and use it to determine
    // if the sound card supports the EAX 2.0 inteface.  If so we'll hang on to it.

    ::memset( ( void* ) & m_EaxListenerProperties, 0, sizeof( m_EaxListenerProperties ) );
    
    if( radSoundHalSystem::GetInstance( )->GetNumAuxSends( ) > 0 )
    {
        // An arbitrary format

        WAVEFORMATEX format;
        ::ZeroMemory( ( void * ) & format, sizeof( format ) );
        format.wFormatTag = WAVE_FORMAT_PCM;
        format.nChannels = 1;
        format.nSamplesPerSec = 48000;
        format.wBitsPerSample = 8;
        format.nBlockAlign = format.nChannels * format.wBitsPerSample / 8;
        format.nAvgBytesPerSec = format.nSamplesPerSec * format.nBlockAlign;

        // An arbitrary buffer (positional and in hardware)

        DSBUFFERDESC desc;
        ::ZeroMemory( ( void * ) & desc, sizeof( desc ) );
        desc.dwSize = sizeof( desc );
        desc.dwFlags = DSBCAPS_CTRL3D | DSBCAPS_LOCHARDWARE;
        desc.dwBufferBytes = DSBSIZE_MIN;
        desc.lpwfxFormat = & format;
        desc.guid3DAlgorithm = DS3DALG_DEFAULT;

        // Create the buffer and if possible get the property interface

        HRESULT hr;
        ref< IDirectSoundBuffer > refIDirectSoundBuffer = NULL;
        hr = radSoundHalSystem::GetInstance( )->GetDirectSound( )->CreateSoundBuffer( 
            & desc, 
            & refIDirectSoundBuffer, 
            NULL );
        rWarningMsg( SUCCEEDED( hr ), "Environmental reverb not supported with this sound card 0" );

        if( refIDirectSoundBuffer != NULL )
        {
            hr = refIDirectSoundBuffer->QueryInterface( IID_IKsPropertySet, ( void** ) & m_xIKsPropertySet );
            rWarningMsg( SUCCEEDED( hr ), "Environmental reverb not supported with this sound card 2" );

            if( m_xIKsPropertySet != NULL )
            {
                // See if the card supports what we are looking for

                unsigned long support = 0;
                hr = m_xIKsPropertySet->QuerySupport( 
                    DSPROPSETID_EAX_ListenerProperties,
                    DSPROPERTY_EAXLISTENER_ALLPARAMETERS,
                    & support );
                
                if ( FAILED( hr ) ||
                    ( support & ( KSPROPERTY_SUPPORT_SET | KSPROPERTY_SUPPORT_GET ) ) != 
                        ( KSPROPERTY_SUPPORT_SET | KSPROPERTY_SUPPORT_GET ) )
                {
                    // Don't bother with effects
                    rWarningMsg( false, "Environmental reverb not supported with this sound card 3" );
                    m_xIKsPropertySet = NULL;
                }
                else
                {
                    unsigned long bytes;
                    hr = m_xIKsPropertySet->Get(
                        DSPROPSETID_EAX_ListenerProperties,
                        DSPROPERTY_EAXLISTENER_ALLPARAMETERS,
                        NULL, 
                        0,
                        ( void* ) & m_EaxListenerProperties,
                        sizeof( m_EaxListenerProperties ),
                        & bytes );
                    rAssert( SUCCEEDED( hr ) );
                }
            }
        }
    }
}

//============================================================================
// radSoundHalListener::~radSoundHalListener
//============================================================================

radSoundHalListener::~radSoundHalListener
(
	void
)
{
	rAssert( s_pTheRadSoundHalListener == this );
	s_pTheRadSoundHalListener = NULL;

	//
	// Must release listener first! or shitty microsoft will make our pointer
	// to the listener go bad.  You'd thing micrsoft would know how to
	// reference count properly!
	//
	m_xIDirectSound3DListener =  NULL;
}

//========================================================================
// radSoundHalListener::SetPosition
//========================================================================

void radSoundHalListener::SetPosition
(
	radSoundVector * pPosition
)
{
	rAssert( pPosition != NULL );

	m_Ds3dListener.vPosition = * ( ( D3DVECTOR * ) pPosition );
}

//========================================================================
// radSoundHalListener::GetPosition
//========================================================================

void radSoundHalListener::GetPosition
(
	radSoundVector * pPosition
)
{
	rAssert( pPosition != NULL );

	* pPosition = * ( ( radSoundVector * ) & m_Ds3dListener.vPosition );
}

//========================================================================
// radSoundHalListener::SetVelocity
//========================================================================

void radSoundHalListener::SetVelocity
(
    radSoundVector * pVelocity
)
{
	rAssert( pVelocity != NULL );

	#ifdef RAD_DEBUG
	
		if ( pVelocity->GetLength( ) > 100.0f )
		{
			rDebugPrintf( "The radSoundHalListener is going really really fast\n" );
		}
	
	#endif

	m_Ds3dListener.vVelocity = * ( ( D3DVECTOR * ) pVelocity );
}

//========================================================================
// radSoundHalListener::GetVelocity
//========================================================================

void radSoundHalListener::GetVelocity
(
    radSoundVector * pVelocity
)
{
    rAssert( pVelocity != NULL );

	* pVelocity = * ( ( radSoundVector * ) & m_Ds3dListener.vVelocity );
}

//========================================================================
// radSoundHalListener::SetOrientation
//========================================================================

void radSoundHalListener::SetOrientation
(
	radSoundVector * pOrientationFront,
	radSoundVector * pOrientationTop
)
{
	rAssert( pOrientationFront != NULL );
	rAssert( pOrientationTop != NULL );

	m_Ds3dListener.vOrientFront = * ( ( D3DVECTOR * ) pOrientationFront );
	m_Ds3dListener.vOrientTop = * ( ( D3DVECTOR * ) pOrientationTop ) ;
}

//========================================================================
// radSoundHalListener::GetOrientation
//========================================================================

void radSoundHalListener::GetOrientation
(
	radSoundVector * pOrientationFront,
	radSoundVector * pOrientationTop
)
{
	if( pOrientationFront != NULL )
	{
		* pOrientationFront = * ( ( radSoundVector * ) & m_Ds3dListener.vOrientFront );
	}

	if( pOrientationTop != NULL )
	{
		* pOrientationTop = * ( ( radSoundVector * ) & m_Ds3dListener.vOrientTop );
	}
}

//============================================================================
// radSoundHalListener::SetDistanceFactor
//============================================================================

void radSoundHalListener::SetDistanceFactor
(
	float distanceFactor
)
{
	m_Ds3dListener.flDistanceFactor = distanceFactor;
}

//============================================================================
// radSoundHalListener::GetDistanceFactor
//============================================================================

float radSoundHalListener::GetDistanceFactor( void )
{
	return m_Ds3dListener.flDistanceFactor;
}

//============================================================================
// radSoundHalListener::SetRollOffFactor
//============================================================================

void radSoundHalListener::SetRollOffFactor
(
	float rolloffFactor
)
{
	m_RolloffFactor = rolloffFactor;
}

//============================================================================
// radSoundHalListener::GetRollOffFactor
//============================================================================

float radSoundHalListener::GetRollOffFactor( void )
{
	return m_RolloffFactor;
}

//============================================================================
// radSoundHalListener::SetDopplerFactor
//============================================================================

void radSoundHalListener::SetDopplerFactor
(
	float dopplerFactor
)
{
	m_Ds3dListener.flDopplerFactor = dopplerFactor;
}

//============================================================================
// radSoundHalListener::GetDopplerFactor
//============================================================================

float radSoundHalListener::GetDopplerFactor( void )
{
	return m_Ds3dListener.flDopplerFactor;
}

//============================================================================
// radSoundHalListener::SetEnvEffectsEnabled
//============================================================================

void radSoundHalListener::SetEnvEffectsEnabled( bool enabled )
{
    m_EnvEffectsEnabled = enabled;
}

//============================================================================
// radSoundHalListener::GetEnvEffectsEnabled
//============================================================================

bool radSoundHalListener::GetEnvEffectsEnabled( void )
{
    return m_EnvEffectsEnabled;
}

//============================================================================
// radSoundHalListener::SetEnvironmentAuxSend
//============================================================================

void radSoundHalListener::SetEnvironmentAuxSend( unsigned int auxsend )
{
    rAssert( auxsend < radSoundHalSystem::GetInstance( )->GetNumAuxSends( ) );
    m_EnvAuxSend = auxsend;
}

//============================================================================
// radSoundHalListener::GetEnvironmentAuxSend
//============================================================================

unsigned int radSoundHalListener::GetEnvironmentAuxSend( void )
{
    return m_EnvAuxSend;
}

//============================================================================
// radSoundHalListener::SetEaxListenerProperties
//============================================================================

void radSoundHalListener::SetEaxListenerProperties( EAXLISTENERPROPERTIES * pEaxListenerProperties )
{
    m_IsEaxListenerClean = false;

    if( pEaxListenerProperties != NULL )
    {
        m_EaxListenerProperties = * pEaxListenerProperties;
    }
    else
    {
        m_EaxListenerProperties.lRoom = EAXLISTENER_DEFAULTROOM;                   
        m_EaxListenerProperties.lRoomHF = EAXLISTENER_DEFAULTROOMHF;
        m_EaxListenerProperties.flRoomRolloffFactor = EAXLISTENER_DEFAULTROOMROLLOFFFACTOR;    
        m_EaxListenerProperties.flDecayTime = EAXLISTENER_DEFAULTDECAYTIME;            
        m_EaxListenerProperties.flDecayHFRatio = EAXLISTENER_DEFAULTDECAYHFRATIO;         
        m_EaxListenerProperties.lReflections = EAXLISTENER_DEFAULTREFLECTIONS;            
        m_EaxListenerProperties.flReflectionsDelay = EAXLISTENER_DEFAULTREFLECTIONSDELAY;     
        m_EaxListenerProperties.lReverb = EAXLISTENER_DEFAULTREVERB;                 
        m_EaxListenerProperties.flReverbDelay = EAXLISTENER_DEFAULTREVERBDELAY;          
        m_EaxListenerProperties.dwEnvironment = EAXLISTENER_DEFAULTENVIRONMENT;  
        m_EaxListenerProperties.flEnvironmentSize = EAXLISTENER_DEFAULTENVIRONMENTSIZE;      
        m_EaxListenerProperties.flEnvironmentDiffusion = EAXLISTENER_DEFAULTENVIRONMENTDIFFUSION; 
        m_EaxListenerProperties.flAirAbsorptionHF = EAXLISTENER_DEFAULTAIRABSORPTIONHF;      
        m_EaxListenerProperties.dwFlags = DSPROPERTY_EAXLISTENER_ALLPARAMETERS;       
    }
}

//============================================================================
// radSoundHalListener::UpdatePositionalSettings
//============================================================================

void radSoundHalListener::UpdatePositionalSettings
(
	void
)
{
    // Update effects

    if( m_EnvEffectsEnabled == true )
    {
        if( m_IsEaxListenerClean == false )
        {
            m_IsEaxListenerClean = true;

            if( m_xIKsPropertySet != NULL )
            {
                HRESULT hr = m_xIKsPropertySet->Set(
                    DSPROPSETID_EAX_ListenerProperties,
                    DSPROPERTY_EAXLISTENER_ALLPARAMETERS,
                    NULL, 
                    0,
                    ( void* ) & m_EaxListenerProperties,
                    sizeof( m_EaxListenerProperties ) );
                rAssert( SUCCEEDED( hr ) );
            }
        }
    }

    // Update positional info

	radSoundHalPositionalGroup * pRadSoundHalPositionalGroup =
		radSoundHalPositionalGroup::GetLinkedClassHead( );

	while ( pRadSoundHalPositionalGroup != NULL )
	{
		pRadSoundHalPositionalGroup->UpdatePositionalSettings( ( radSoundVector * ) & m_Ds3dListener.vPosition, m_RolloffFactor );

		pRadSoundHalPositionalGroup = pRadSoundHalPositionalGroup->GetLinkedClassNext( );
	}

	{
		HRESULT hr = m_xIDirectSound3DListener->SetAllParameters( & m_Ds3dListener, DS3D_DEFERRED );

		rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetAllParameters failed" );
	}

	{
		HRESULT hr = m_xIDirectSound3DListener->CommitDeferredSettings( );

		rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::CommitDeferredSettings failed" );    
	}

}

//============================================================================
// radSoundHalSystem::GetInstance
//============================================================================

radSoundHalListener * radSoundHalListener::GetInstance( void )
{
    return s_pTheRadSoundHalListener;
}

//============================================================================
// ::radSoundHalListenerGet
//============================================================================

/* static */ IRadSoundHalListener * radSoundHalListenerGet( void )
{
    return radSoundHalListener::GetInstance( );
}

//============================================================================
// ::radSoundHalListenerWinInitialize
//============================================================================

/* static */ void radSoundHalListener::Initialize
( 
	radMemoryAllocator allocator, 
	IDirectSound3DListener * pIDirectSound3DListener
)
{
    rAssert( radSoundHalListener::s_pTheRadSoundHalListener == NULL );

    new ( "radSoundHalListener", allocator ) radSoundHalListener( pIDirectSound3DListener );
    radSoundHalListener::s_pTheRadSoundHalListener->AddRef( );
}


//========================================================================
// radSoundHalListener::Terminate
//========================================================================

/* static */ void radSoundHalListener::Terminate( void )
{
	rAssert( radSoundHalListener::s_pTheRadSoundHalListener != NULL );
	radSoundHalListener::s_pTheRadSoundHalListener->Release( );
}


//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        listener.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This files contains the implementation of the xbox listener
//
// Creation TH
//
//=============================================================================

//============================================================================
// Include Files
//============================================================================

#include "pch.hpp"
#include "listener.hpp"
#include "rsdeffects.hpp"
#include "effect.hpp"

//============================================================================
// radSoundHalListener::radSoundHalListener
//============================================================================

radSoundHalListener::radSoundHalListener
(
	IDirectSound3DListener * pIDirectSound3DListener
)
	:
	m_OrientationFront( 0.0f, 0.0f, 1.0f ),
	m_OrientationTop( 0.0f, 1.0f, 0.0f ),
	m_RollOffFactor( 1.0 ),
	m_DopplerFactor( 1.0 ),
	m_DistanceFactor( 1.0 ),
    m_EnvAuxSend( 0xFFFFFFFF ),
    m_EnvEffectsEnabled( false )
{
    ::radSoundHalCreateRollOffTable( STD_ROLL_OFF_TABLE_MAX_DIST_VOL, s_pRollOffTable, STD_ROLL_OFF_TABLE_NUM_POINTS );
    ::radSoundHalSetRollOffTable( s_pRollOffTable, STD_ROLL_OFF_TABLE_NUM_POINTS );

	rAssert( s_pTheDxSoundListener == NULL );
	rAssert( pIDirectSound3DListener != NULL );

	s_pTheDxSoundListener = this;

	// Get the system direct sound listener object

	m_xIDirectSound3DListener = pIDirectSound3DListener;

    // Ensure that i3dl2 listener settings are appropriate

    m_xIDirectSound3DListener->SetI3DL2Listener( & DirectSoundI3DL2ListenerPreset_NoReverb, DS3D_IMMEDIATE );
}

//============================================================================
// radSoundHalListener::~radSoundHalListener
//============================================================================

radSoundHalListener::~radSoundHalListener
(
	void
)
{
	rAssert( s_pTheDxSoundListener == this );
	s_pTheDxSoundListener = NULL;

	//
	// Must release listener first! or shitty microsoft will make our pointer
	// to the listener go bad.  You'd think micrsoft would know how to
	// reference count properly!
	//
	m_xIDirectSound3DListener =  NULL;
}

//========================================================================
// radSoundHalListener::SetPosition
//========================================================================

void radSoundHalListener::SetPosition
(
	radSoundVector * pPos
)
{
	m_Position = * pPos;

	HRESULT hr = m_xIDirectSound3DListener->SetPosition
	(
		m_Position.m_x,
		m_Position.m_y,
		m_Position.m_z,
		DS3D_DEFERRED
	);

	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetPosition failed" );
}

//========================================================================
// radSoundHalListener::SetPosition
//========================================================================

void radSoundHalListener::GetPosition
(
	radSoundVector * pPos
)
{
	rAssert( pPos != NULL );

	*pPos = m_Position;
}

//========================================================================
// radSoundHalListener::SetOrientationFront
//========================================================================

void radSoundHalListener::SetOrientation
(
	radSoundVector * pOrientationFront,
	radSoundVector * pOrientationTop
)
{

	m_OrientationFront = * pOrientationFront;

	m_OrientationTop = * pOrientationTop;

	HRESULT hr = m_xIDirectSound3DListener->SetOrientation
	(
		m_OrientationFront.m_x,
		m_OrientationFront.m_y,
		m_OrientationFront.m_z,
		m_OrientationTop.m_x,
		m_OrientationTop.m_y,
		m_OrientationTop.m_z,
		DS3D_DEFERRED
	);

	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetOrientation" );
}

//========================================================================
// radSoundHalListener::GetOrientationFront
//========================================================================

void radSoundHalListener::GetOrientation
(
	radSoundVector * pOrientationFront,
	radSoundVector * pOrientationTop
)
{
	rAssert( pOrientationFront != NULL );

	*pOrientationFront = m_OrientationFront;

	rAssert( pOrientationTop != NULL );

	*pOrientationTop = m_OrientationTop;       

}

//============================================================================
// radSoundHalListener::SetVelocity
//============================================================================

void radSoundHalListener::SetVelocity
(
	radSoundVector * pVelocity
)
{
	m_Velocity = * pVelocity;

	#ifdef RAD_DEBUG
		
		if ( pVelocity->GetLength( ) > 341.0f )
		{
			rDebugString( "radSoundVoice: Velocity > 100.0f!\n" );
		}
		
	#endif

	HRESULT hr = m_xIDirectSound3DListener->SetVelocity
	(
		m_Velocity.m_x,
		m_Velocity.m_y,
		m_Velocity.m_z,
		DS3D_DEFERRED
	);

	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetVelocity failed" );
}

//============================================================================
// radSoundHalListener::GetVelocity
//============================================================================

void radSoundHalListener::GetVelocity
(
	radSoundVector * pVelocity
)
{
	rAssert( pVelocity != NULL );

	*pVelocity = m_Velocity;
}

//============================================================================
// radSoundHalListener::SetDistanceFactor
//============================================================================

void radSoundHalListener::SetDistanceFactor
(
	float distanceFactor
)
{
	m_DistanceFactor = distanceFactor;

	HRESULT hr = m_xIDirectSound3DListener->SetDistanceFactor
	(
		static_cast< float >( m_DistanceFactor ),
		DS3D_DEFERRED
	);

	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetDistanceFactor failed" );
}

//============================================================================
// radSoundHalListener::SetDistanceFactor
//============================================================================

float radSoundHalListener::GetDistanceFactor
(
	void
)
{
	return m_DistanceFactor;
}

//============================================================================
// radSoundHalListener::SetDoppleFactor
//============================================================================

void radSoundHalListener::SetDopplerFactor
(
	float doppleFactor
)
{
	m_DopplerFactor = doppleFactor;

	HRESULT hr = m_xIDirectSound3DListener->SetDopplerFactor
	(
		static_cast< float >( m_DopplerFactor ),
		DS3D_DEFERRED
	);

	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetDopplerFactor failed" );
}

//============================================================================
// radSoundHalListener::GetDoppleFactor
//============================================================================

float radSoundHalListener::GetDopplerFactor
(
	void
)
{
	return m_DopplerFactor;
}

//============================================================================
// radSoundHalListener::SetRollOffFactor
//============================================================================

void radSoundHalListener::SetRollOffFactor
(
	float rollOffFactor
)
{
	m_RollOffFactor = rollOffFactor;

	HRESULT hr = m_xIDirectSound3DListener->SetRolloffFactor
	(
		static_cast< float >( m_RollOffFactor ),
		DS3D_DEFERRED
	);

	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::SetRollOffFactor failed" ); 
}

//============================================================================
// SoundListener::GetRollOffFactor
//============================================================================

float radSoundHalListener::GetRollOffFactor
(
	void
)
{
	return m_RollOffFactor;
}

//============================================================================
// radSoundHalListener::SetEnvEffectsEnabled 
//============================================================================

void radSoundHalListener::SetEnvEffectsEnabled( bool enabled )
{
    if( m_EnvEffectsEnabled != enabled )
    {
        m_EnvEffectsEnabled = enabled;
    }
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
    if( m_EnvAuxSend != auxsend )
    {
        m_EnvAuxSend = auxsend;
    }
}

//============================================================================
// radSoundHalListener::SetEnvironmentAuxSend 
//============================================================================

unsigned int radSoundHalListener::GetEnvironmentAuxSend( void )
{
    return m_EnvAuxSend;
}

//============================================================================
// radSoundHalListener::UpdatePositionalSettings
//============================================================================

void radSoundHalListener::UpdatePositionalSettings
(
	void
)
{
	radSoundHalPositionalGroup * pRadSoundHalPositionalGroup =
		radSoundHalPositionalGroup::GetLinkedClassHead( );

	while ( pRadSoundHalPositionalGroup != NULL )
	{
		pRadSoundHalPositionalGroup->UpdatePositionalSettings( );

		pRadSoundHalPositionalGroup = pRadSoundHalPositionalGroup->GetLinkedClassNext( );
	}

    HRESULT hr = m_xIDirectSound3DListener->CommitDeferredSettings( );
	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::CommitDeferredSettings failed" );    

//	hr = m_xIDirectSound3DListener->CommitEffectData( );
//	rWarningMsg( SUCCEEDED( hr ), "IDirectSound3DListener::CommitEffectData failed" );    
}

//========================================================================
// radSoundHalListener::OnSetEnvEffect
//========================================================================

void radSoundHalListener::OnSetEnvEffect( unsigned int auxNumber, const DSI3DL2LISTENER * pDsI3DL2Listener )
{
    if( auxNumber == m_EnvAuxSend )
    {
        if( pDsI3DL2Listener != NULL && m_EnvEffectsEnabled == true )
        {
            HRESULT hr = m_xIDirectSound3DListener->SetI3DL2Listener( pDsI3DL2Listener, DS3D_DEFERRED );
            rAssert( SUCCEEDED( hr ) );
        }
        else
        {
            HRESULT hr = m_xIDirectSound3DListener->SetI3DL2Listener( & DirectSoundI3DL2ListenerPreset_NoReverb, DS3D_DEFERRED );
            rAssert( SUCCEEDED( hr ) );
        }
    }
    else
    {
//        rDebugPrintf( "WARNING: Listener ignoring effect in auxsend[%d]\n", auxNumber );
    }
}


/* static */ radSoundHalListener * radSoundHalListener::s_pTheDxSoundListener = NULL;

//============================================================================
// ::radSoundHalListenerGet
//============================================================================

IRadSoundHalListener * radSoundHalListenerGet( void )
{
    return radSoundHalListener::GetInstance( );
}

//============================================================================
// ::radSoundHalListenerWinInitialize
//============================================================================

void radSoundHalListener::Initialize( radMemoryAllocator allocator, IDirectSound3DListener * pIDs3dl )
{
    rAssert( radSoundHalListener::s_pTheDxSoundListener == NULL );

    new ( "radSoundHalListener", allocator ) radSoundHalListener( pIDs3dl );
    radSoundHalListener::s_pTheDxSoundListener->AddRef( );
}

//============================================================================
// ::radSoundHalListenerWinTerminate
//============================================================================

void radSoundHalListener::Terminate( void )
{
    rAssert( radSoundHalListener::s_pTheDxSoundListener != NULL );

    radSoundHalListener::s_pTheDxSoundListener->Release( );
}
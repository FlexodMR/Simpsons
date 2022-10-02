//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================
//
// File:        effect.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	Effects on the PC
//
// Creation:    RWS
//
//=============================================================================

//============================================================================
// Include Files
//============================================================================

#include "pch.hpp"
#include "effect.hpp"
#include "system.hpp"
#include "listener.hpp"

//============================================================================
// Local Definitions
//============================================================================

#define NO_SEND 0xffffffff

//============================================================================
// radSoundHalEffectEAX2Reverb::radSoundHalEffectEAX2Reverb
//============================================================================

radSoundHalEffectEAX2Reverb::radSoundHalEffectEAX2Reverb( void )
    :
    m_AuxSend( NO_SEND )
{
    // I think it's better to default to reverb that you can really hear

    ::memset( ( void * ) & m_EaxListenerProperties, 0, sizeof( m_EaxListenerProperties ) );
    m_EaxListenerProperties.lRoom = -1000;
    m_EaxListenerProperties.lRoomHF = -500;            
    m_EaxListenerProperties.flRoomRolloffFactor = 0.0f;
    m_EaxListenerProperties.flDecayTime = 3.92f; 
    m_EaxListenerProperties.flDecayHFRatio = 0.70f; 
    m_EaxListenerProperties.lReflections = -1230; 
    m_EaxListenerProperties.flReflectionsDelay = 0.020f;    
    m_EaxListenerProperties.lReverb = -2; 
    m_EaxListenerProperties.flReverbDelay = 0.029f; 
}

//============================================================================
// radSoundHalEffectEAX2Reverb::radSoundHalEffectEAX2Reverb
//============================================================================

radSoundHalEffectEAX2Reverb::~radSoundHalEffectEAX2Reverb( void )
{
}

//============================================================================
// radSoundHalEffectEAX2Reverb::Attach
//============================================================================

void radSoundHalEffectEAX2Reverb::Attach( unsigned int auxSend )
{
    m_AuxSend = auxSend;
    m_StateFlags = RSDEFFECTS_DIRTY_ALL;
    radSoundHalListener::GetInstance( )->SetEaxListenerProperties( & m_EaxListenerProperties );
}

//============================================================================
// radSoundHalEffectEAX2Reverb::Detach
//============================================================================

void radSoundHalEffectEAX2Reverb::Detach( void )
{
    m_AuxSend = NO_SEND;
    m_StateFlags = RSDEFFECTS_CLEAN;
    radSoundHalListener::GetInstance( )->SetEaxListenerProperties( NULL );
}

//============================================================================
// radSoundHalEffectEAX2Reverb::Update
//============================================================================

void radSoundHalEffectEAX2Reverb::Update( void )
{
    if( m_StateFlags != RSDEFFECTS_CLEAN )
    {
        if( radSoundHalListener::GetInstance( )->GetEnvEffectsEnabled( ) == true )
        {
            if( radSoundHalListener::GetInstance( )->GetEnvironmentAuxSend( ) == m_AuxSend )
            {
                m_StateFlags = RSDEFFECTS_CLEAN;
                radSoundHalListener::GetInstance( )->SetEaxListenerProperties( & m_EaxListenerProperties );
            }
        }
    }
}

void radSoundHalEffectEAX2Reverb::SetRoom( int mBValue )
{
    rAssert( mBValue >= EAXLISTENER_MINROOM && mBValue <= EAXLISTENER_MAXROOM );
    m_EaxListenerProperties.lRoom = mBValue;
    OnParameterUpdated( );
}
int   radSoundHalEffectEAX2Reverb::GetRoom( void )
{
    return m_EaxListenerProperties.lRoom;
}
void  radSoundHalEffectEAX2Reverb::SetRoomHF( int mBValue )
{
    rAssert( mBValue >= EAXLISTENER_MINROOMHF && mBValue <= EAXLISTENER_MAXROOMHF );
    m_EaxListenerProperties.lRoomHF = mBValue;
    OnParameterUpdated( );
}
int radSoundHalEffectEAX2Reverb::GetRoomHF( void )
{
    return m_EaxListenerProperties.lRoomHF;
}
void  radSoundHalEffectEAX2Reverb::SetRoomRolloffFactor( float value )
{
    rAssert( value >= EAXLISTENER_MINROOMROLLOFFFACTOR && value <= EAXLISTENER_MAXROOMROLLOFFFACTOR );
    m_EaxListenerProperties.flRoomRolloffFactor = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetRoomRolloffFactor( void )
{
    return m_EaxListenerProperties.flRoomRolloffFactor;
}
void  radSoundHalEffectEAX2Reverb::SetDecayTime( float value )
{
    rAssert( value >= EAXLISTENER_MINDECAYTIME&& value <= EAXLISTENER_MAXDECAYTIME );
    m_EaxListenerProperties.flDecayTime = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetDecayTime( void )
{
    return m_EaxListenerProperties.flDecayTime;
}
void  radSoundHalEffectEAX2Reverb::SetDecayHFRatio( float value )
{
    rAssert( value >= EAXLISTENER_MINDECAYHFRATIO && value <= EAXLISTENER_MAXDECAYHFRATIO );
    m_EaxListenerProperties.flDecayHFRatio = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetDecayHFRatio( void )
{
    return m_EaxListenerProperties.flDecayHFRatio;
}
void  radSoundHalEffectEAX2Reverb::SetReflections( int mBValue )
{
    rAssert( mBValue >= EAXLISTENER_MINREFLECTIONS && mBValue <= EAXLISTENER_MAXREFLECTIONS );
    m_EaxListenerProperties.lReflections = mBValue;
    OnParameterUpdated( );
}
int   radSoundHalEffectEAX2Reverb::GetReflections( void )
{
    return m_EaxListenerProperties.lReflections;
}
void  radSoundHalEffectEAX2Reverb::SetReflectionsDelay( float value )
{
    rAssert( value >= EAXLISTENER_MINREFLECTIONSDELAY && value <= EAXLISTENER_MAXREFLECTIONSDELAY );
    m_EaxListenerProperties.flReflectionsDelay = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetReflectionsDelay( void )
{
    return m_EaxListenerProperties.flReflectionsDelay;
}
void  radSoundHalEffectEAX2Reverb::SetReverb( int mBValue )
{
    rAssert( mBValue >= EAXLISTENER_MINREVERB && mBValue <= EAXLISTENER_MAXREVERB );
    m_EaxListenerProperties.lReverb = mBValue;
    OnParameterUpdated( );
}
int   radSoundHalEffectEAX2Reverb::GetReverb( void )
{
    return m_EaxListenerProperties.lReverb;   
}
void  radSoundHalEffectEAX2Reverb::SetReverbDelay( float value )
{
    rAssert( value >= EAXLISTENER_MINREVERBDELAY && value <= EAXLISTENER_MAXREVERBDELAY );
    m_EaxListenerProperties.flReverbDelay = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetReverbDelay( void )
{
    return m_EaxListenerProperties.flReverbDelay;
}
void  radSoundHalEffectEAX2Reverb::SetEnvironmentSize( float value )
{
    rAssert( value >= EAXLISTENER_MINENVIRONMENTSIZE && value <= EAXLISTENER_MAXENVIRONMENTSIZE );
    m_EaxListenerProperties.flEnvironmentSize = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetEnvironmentSize( void )
{
    return m_EaxListenerProperties.flEnvironmentSize;
}
void  radSoundHalEffectEAX2Reverb::SetEnvironmentDiffusion( float value )
{
    rAssert( value >= EAXLISTENER_MINENVIRONMENTDIFFUSION && value <= EAXLISTENER_MAXENVIRONMENTDIFFUSION );
    m_EaxListenerProperties.flEnvironmentDiffusion = value;
    OnParameterUpdated( );
}
float radSoundHalEffectEAX2Reverb::GetEnvironmentDiffusion( void )
{
    return m_EaxListenerProperties.flEnvironmentDiffusion;
}
void  radSoundHalEffectEAX2Reverb::SetAirAbsorptionHF( float value )
{
    rAssert( value >= EAXLISTENER_MINAIRABSORPTIONHF && value <= EAXLISTENER_MAXAIRABSORPTIONHF );
    m_EaxListenerProperties.flAirAbsorptionHF = value;
    OnParameterUpdated( );    
}
float radSoundHalEffectEAX2Reverb::GetAirAbsorptionHF( void )
{
    return m_EaxListenerProperties.flAirAbsorptionHF;
}
void radSoundHalEffectEAX2Reverb::OnParameterUpdated( void )
{
    radSoundHalListener::GetInstance( )->SetEaxListenerProperties( & m_EaxListenerProperties );
}

//============================================================================
// radSoundHalEffectI3DL2ReverbWin32Create
//============================================================================

IRadSoundHalEffectEAX2Reverb * radSoundHalEffectEAX2ReverbCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalEffectEAX2Reverb", allocator ) radSoundHalEffectEAX2Reverb( );
}

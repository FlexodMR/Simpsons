//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        effect.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	XBox effect interfaces
//
// Creation     Jan 29, 2002    RS  
//
//=============================================================================

//============================================================================
// Include Files
//============================================================================

#include "pch.hpp"
#include <dsound.h>
#include <dsfxparm.h>
#include <stddef.h>  // I don't want to have to use this library file
                     // I'm currently using it so that I can use the offsetof macro

#include <radsoundmath.hpp>
#include "listener.hpp"
#include "rsdeffects.hpp"
#include "effect.hpp"

//============================================================================
// Definitions
//============================================================================

// Apparently lucky number 13 is always the unused bin
#define RADSOUND_UNUSED_MIXBIN DSMIXBIN_FXSEND_13 

//============================================================================
// Global Functions
//============================================================================

unsigned long radSoundEffectAnalogToHardware( float analog )
{
    // The float values range from 0x800000 (-1.0) to 0x7FFFFF (1.0)
    // using 2's complement value
    if( analog >= 0 )
    {
        return ( unsigned long ) ( analog * 0x7FFFFF );
    }
    else
    {
        unsigned long ret = ( unsigned long )( ( 0 - analog ) * 0x7FFFFF );
        
        return ( ret ^ 0xFFFFFF ) + 1;
    }
}

float radSoundEffectHardwareToAnalog( unsigned long hardware )
{
    rAssert( hardware < 0x1000000 );

    // The float values range from 0x800000 (-1.0) to 0x7FFFFF (1.0)
    // using 2's complement value
    if( hardware >= 0x800000 )
    {
        hardware = ( hardware ^ 0xFFFFFF ) + 1;
        return - ( float ) hardware / (float) 0x7FFFFF;
    }
    else
    {
        return hardware / (float)0x7FFFFF;
    }
}


//============================================================================
// Static member initializations
//============================================================================

unsigned int radSoundHalEffectI3DL2ReverbXBox::s_NumInputs   = 1;
unsigned int radSoundHalEffectI3DL2ReverbXBox::s_NumOutputs  = 4;
unsigned long radSoundHalEffectI3DL2ReverbXBox::s_pInputs[]  = { DSMIXBIN_I3DL2 };
unsigned long radSoundHalEffectI3DL2ReverbXBox::s_pOutputs[] = { DSMIXBIN_FRONT_LEFT, 
                                                                 DSMIXBIN_FRONT_RIGHT, 
                                                                 DSMIXBIN_BACK_LEFT, 
                                                                 DSMIXBIN_BACK_RIGHT };

/*unsigned int radSoundHalEffectReverbXBox::s_NumInputs   = 2;
unsigned int radSoundHalEffectReverbXBox::s_NumOutputs  = 4;
unsigned long radSoundHalEffectReverbXBox::s_pInputs[]  = { DSMIXBIN_FXSEND_0, DSMIXBIN_FXSEND_1 };
unsigned long radSoundHalEffectReverbXBox::s_pOutputs[] = { DSMIXBIN_FRONT_LEFT, 
                                                            DSMIXBIN_FRONT_RIGHT, 
                                                            DSMIXBIN_BACK_LEFT, 
                                                            DSMIXBIN_BACK_RIGHT };
*/

unsigned int radSoundHalEffectDistortionXBox::s_NumInputs   = 1;
unsigned int radSoundHalEffectDistortionXBox::s_NumOutputs  = 2;
unsigned long radSoundHalEffectDistortionXBox::s_pInputs[]  = { DSMIXBIN_FXSEND_4 };
unsigned long radSoundHalEffectDistortionXBox::s_pOutputs[] = { DSMIXBIN_FRONT_LEFT, DSMIXBIN_FRONT_RIGHT };

unsigned int radSoundHalEffectEchoXBox::s_NumInputs   = 2;
unsigned int radSoundHalEffectEchoXBox::s_NumOutputs  = 2;
unsigned long radSoundHalEffectEchoXBox::s_pInputs[]  = { DSMIXBIN_FXSEND_2, DSMIXBIN_FXSEND_3 };
unsigned long radSoundHalEffectEchoXBox::s_pOutputs[] = { DSMIXBIN_FRONT_LEFT, DSMIXBIN_FRONT_RIGHT };


//============================================================================
// Component: radSoundHalEffectXBox
//============================================================================

//============================================================================
// radSoundHalEffectXBox::radSoundHalEffectXBox
//============================================================================

radSoundHalEffectXBox::radSoundHalEffectXBox
( 
    unsigned long index,
    unsigned int numInputs,
    unsigned long * pInputs,
    unsigned int numOutputs,
    unsigned long * pOutputs
)
    :   
    m_EffectIndex( index ),
    m_NumInputs( numInputs ),
    m_NumOutputs( numOutputs ),
    m_MasterGain( 0.0f )
{
    rAssert( m_NumInputs <= 2 );
    rAssert( m_NumOutputs <= 4 );

    // This stuff will eventually be determined on the fly 
    // from the effects image

    for( unsigned int i = 0; i < 2; i++ )
    {
        if( i < m_NumInputs )
        {
            m_pInputs[ i ] = pInputs[ i ];
        }
        else
        {
            m_pInputs[ i ] = RADSOUND_UNUSED_MIXBIN;
        }
    }

    for( unsigned int j = 0; j < 4; j++ )
    {
        if( j < m_NumOutputs )
        {
            m_pOutputs[ j ] = pOutputs[ j ];
        }
        else
        {
            m_pOutputs[ j ] = RADSOUND_UNUSED_MIXBIN;
        }
    }
}

//============================================================================
// radSoundHalEffectXBox::radSoundHalEffectXBox
//============================================================================

radSoundHalEffectXBox::radSoundHalEffectXBox( void )
{
    rAssert( false );
}

//============================================================================
// radSoundHalEffectXBox::~radSoundHalEffectXBox
//============================================================================

radSoundHalEffectXBox::~radSoundHalEffectXBox( void )
{
}

//============================================================================
// radSoundHalEffectXBox::SetEffectData
//============================================================================

void radSoundHalEffectXBox::SetEffectData( unsigned int dataOffset, unsigned long dataValue )
{
    // We'll need to talk to direct sound

    ref< IDirectSound > pIDirectSound;
    ::radSoundHalSystemXBoxGet( )->GetDirectSoundReference( & pIDirectSound );
    rAssert( pIDirectSound != NULL );

    pIDirectSound->SetEffectData( m_EffectIndex, dataOffset, &dataValue, sizeof( unsigned long ), DSFX_DEFERRED );    
}

//============================================================================
// radSoundHalEffectXBox::GetEffectData
//============================================================================

unsigned long radSoundHalEffectXBox::GetEffectData( unsigned int dataOffset )
{
    // We'll need to talk to direct sound

    ref< IDirectSound > pIDirectSound;
    ::radSoundHalSystemXBoxGet( )->GetDirectSoundReference( & pIDirectSound );
    rAssert( pIDirectSound != NULL );

    unsigned long dataValue;
    pIDirectSound->GetEffectData( m_EffectIndex, dataOffset, &dataValue, sizeof( unsigned long ) );        
    return dataValue;
}

//============================================================================
// Component: radSoundHalEffectEchoXBox
//============================================================================


//============================================================================
// radSoundHalEffectEchoXBox::radSoundHalEffectEchoXBox
//============================================================================

radSoundHalEffectEchoXBox::radSoundHalEffectEchoXBox( unsigned int effectIndex )
    :
    m_AttachCount( 0 ),
    m_AuxSend( 0xFFFFFFFF ),
    m_DirtyParams( true ),
    m_EffectGain( 0.0f ),
    m_MasterGain( 0.0f ),
    radSoundHalEffectXBox( effectIndex, s_NumInputs, s_pInputs, s_NumOutputs, s_pOutputs )
{
    // I got these initial values from the file distortionstate.ini
    m_HardwareGain.m_Offset = offsetof( DSFX_ECHO_STEREO_PARAMS, dwGain);
    m_HardwareGain.m_Value  = ::radSoundEffectAnalogToHardware( m_EffectGain * m_MasterGain );
}


//============================================================================
// radSoundHalEffectEchoXBox::~radSoundHalEffectStereoXBox
//============================================================================

radSoundHalEffectEchoXBox::~radSoundHalEffectEchoXBox( void )
{

}

//============================================================================
// radSoundHalEffectEchoXBox::SetGain
//============================================================================

void radSoundHalEffectEchoXBox::SetGain( float gain )
{
    ::radSoundVerifyAnalogVolume( gain );

    if( m_EffectGain != gain )
    {
        m_EffectGain = gain;
    
        unsigned long hardwareGain = ::radSoundEffectAnalogToHardware( m_EffectGain * m_MasterGain );

        if( m_HardwareGain.m_Value != hardwareGain )
        {
            m_HardwareGain.m_Value = hardwareGain;
            m_DirtyParams = true;
        }
    }
}

//============================================================================
// radSoundHalEffectEchoXBox::GetGain
//============================================================================

float radSoundHalEffectEchoXBox::GetGain( void )
{
    return m_EffectGain;
}

//============================================================================
// radSoundHalEffectEchoXBox::Attach 
//============================================================================

void radSoundHalEffectEchoXBox::Attach( unsigned int auxSend )
{
    rAssert( m_AttachCount == 0 );
    m_AttachCount++;
    m_AuxSend = auxSend;
    UpdateParameters( );
}

//============================================================================
// radSoundHalEffectEchoXBox::Detach
//============================================================================

void radSoundHalEffectEchoXBox::Detach( void )
{
    m_AttachCount--;
    rAssert( m_AttachCount == 0 );
    m_AuxSend = 0xFFFFFFFF;
}

//============================================================================
// radSoundHalEffectEchoXBox::Update
//============================================================================

void radSoundHalEffectEchoXBox::Update( void )
{
    if( m_AttachCount > 0 && m_DirtyParams )
    {
        m_DirtyParams = false;
        UpdateParameters( );
    }
}

//============================================================================
// radSoundHalEffectEchoXBox::SetMasterGain
//============================================================================

void radSoundHalEffectEchoXBox::SetMasterGain( float masterGain )
{
    ::radSoundVerifyAnalogVolume( masterGain );

    if( m_MasterGain != masterGain )
    {
        m_MasterGain = masterGain;
    
        unsigned long hardwareGain = ::radSoundEffectAnalogToHardware( m_EffectGain * m_MasterGain );

        if( m_HardwareGain.m_Value != hardwareGain )
        {
            m_HardwareGain.m_Value = hardwareGain;
            m_DirtyParams = true;
        }
    }
}

//============================================================================
// radSoundHalEffectEchoXBox::GetGain
//============================================================================

float radSoundHalEffectEchoXBox::GetMasterGain( void )
{
    return m_MasterGain;
}


//============================================================================
// radSoundHalEffectEchoXBox::UpdateParamaters
//============================================================================

void radSoundHalEffectEchoXBox::UpdateParameters( void )
{
    SetEffectData( m_HardwareGain.m_Offset, m_HardwareGain.m_Value );

    ref< IDirectSound > pIDirectSound;
    ::radSoundHalSystemXBoxGet( )->GetDirectSoundReference( & pIDirectSound );
    pIDirectSound->CommitEffectData( );
}

/*

//============================================================================
// Component: radSoundHalEffectReverbXBox
//============================================================================


//============================================================================
// radSoundHalEffectReverbXBox::radSoundHalEffectReverbXBox
//============================================================================

radSoundHalEffectReverbXBox::radSoundHalEffectReverbXBox( unsigned int effectIndex )
    :
    m_AttachCount( 0 ),
    m_AuxSend( 0xFFFFFFFF ),
    m_DirtyParams( true ),
    radSoundHalEffectXBox( effectIndex, s_NumInputs, s_pInputs, s_NumOutputs, s_pOutputs )
{
    rAssert( effectIndex == I3DL2_CHAIN_I3DL2_REVERB );
}

//============================================================================
// radSoundHalEffectReverbXBox::~radSoundHalEffectReverbXBox
//============================================================================

radSoundHalEffectReverbXBox::~radSoundHalEffectReverbXBox( void )
{

}

//============================================================================
// radSoundHalEffectReverbXBox::Attach 
//============================================================================

void radSoundHalEffectReverbXBox::Attach( unsigned int auxSend )
{
    rAssert( m_AttachCount == 0 );
    m_AttachCount++;
    m_AuxSend = auxSend;
}

//============================================================================
// radSoundHalEffectReverbXBox::Detach
//============================================================================

void radSoundHalEffectReverbXBox::Detach( void )
{
    m_AttachCount--;
    rAssert( m_AttachCount == 0 );
    m_AuxSend = 0xFFFFFFFF;
}

//============================================================================
// radSoundHalEffectReverbXBox::Update
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::Update( void )
{
    if( m_AttachCount > 0 && m_DirtyParams )
    {
        m_DirtyParams = false;
    }
}

*/


//============================================================================
// Component: radSoundHalEffectI3DL2ReverbXBox
//============================================================================


//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::radSoundHalEffectI3DL2ReverbXBox
//============================================================================

radSoundHalEffectI3DL2ReverbXBox::radSoundHalEffectI3DL2ReverbXBox( unsigned int effectIndex )
    :
    m_AttachCount( 0 ),
    m_AuxSend( 0xFFFFFFFF ),
    m_MasterGain( 0.0f ),
    m_Room( 0 ),
    m_DirtyParams( true ),
    m_IsTheEnvEffect( true ),
    radSoundHalEffectXBox( effectIndex, s_NumInputs, s_pInputs, s_NumOutputs, s_pOutputs )
{
    rAssert( effectIndex == I3DL2_CHAIN_I3DL2_REVERB );

    m_DsI3dl2Listener = DirectSoundI3DL2ListenerPreset_NoReverb;   
    m_Room            = m_DsI3dl2Listener.lRoom;  
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::~radSoundHalEffectStereoXBox
//============================================================================

radSoundHalEffectI3DL2ReverbXBox::~radSoundHalEffectI3DL2ReverbXBox( void )
{

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetRoom
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::SetRoom( int mBvalue )
{
    if( m_Room != mBvalue )
    {
        rAssert( mBvalue >= DSI3DL2LISTENER_MINROOM );
        rAssert( mBvalue <= DSI3DL2LISTENER_MAXROOM );
        
        m_Room = mBvalue;
        
        float roomAnalog = ::radSoundVolumeDbToAnalog( radSoundVolumeHardwareToDbXBox( m_Room ) );

        int hardwareMb = ::radSoundVolumeDbToHardwareXBox(
			    ::radSoundVolumeAnalogToDb( roomAnalog * m_MasterGain ) );

        rAssert( hardwareMb >= DSI3DL2LISTENER_MINROOM );
        rAssert( hardwareMb <= DSI3DL2LISTENER_MAXROOM );

        m_DsI3dl2Listener.lRoom = hardwareMb;
			    
        m_DirtyParams = true;
    }
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetRoom
//============================================================================

int radSoundHalEffectI3DL2ReverbXBox::GetRoom( void )
{
    return m_Room;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetRoomHF
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::SetRoomHF( int mBvalue )
{
    if( m_DsI3dl2Listener.lRoomHF!= mBvalue )
    {
        rAssert( mBvalue >= DSI3DL2LISTENER_MINROOMHF );
        rAssert( mBvalue <= DSI3DL2LISTENER_MAXROOMHF );
        m_DsI3dl2Listener.lRoomHF = mBvalue;
        m_DirtyParams = true;
    }
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetRoomHF
//============================================================================

int radSoundHalEffectI3DL2ReverbXBox::GetRoomHF( void )
{
    return m_DsI3dl2Listener.lRoomHF;
}

 //============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetRoomRolloffFactor
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::SetRoomRolloffFactor( float value )
{
    if( m_DsI3dl2Listener.flRoomRolloffFactor != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINROOMROLLOFFFACTOR );
        rAssert( value <= DSI3DL2LISTENER_MAXROOMROLLOFFFACTOR );
        m_DsI3dl2Listener.flRoomRolloffFactor = value;
        m_DirtyParams = true;
    }
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetRoomRolloffFactor
//============================================================================

float radSoundHalEffectI3DL2ReverbXBox::GetRoomRolloffFactor( void )
{
    return m_DsI3dl2Listener.flRoomRolloffFactor;
}
 //============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetDecayTime
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::SetDecayTime( float value )
{
    if( m_DsI3dl2Listener.flDecayTime != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINDECAYTIME );
        rAssert( value <= DSI3DL2LISTENER_MAXDECAYTIME );
        m_DsI3dl2Listener.flDecayTime = value;
        m_DirtyParams = true;
    }

}
 //============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetDecayTime
//============================================================================
float radSoundHalEffectI3DL2ReverbXBox::GetDecayTime( void )
{
    return m_DsI3dl2Listener.flDecayTime;
}

 //============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetDecayHFRatio
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::SetDecayHFRatio( float value )
{
    if( m_DsI3dl2Listener.flDecayHFRatio != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINDECAYHFRATIO );
        rAssert( value <= DSI3DL2LISTENER_MAXDECAYHFRATIO);
        m_DsI3dl2Listener.flDecayHFRatio = value;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetDecayHFRatio
//============================================================================

float radSoundHalEffectI3DL2ReverbXBox::GetDecayHFRatio( void )
{
    return m_DsI3dl2Listener.flDecayHFRatio;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetReflections
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetReflections( int mBvalue )
{
    if( m_DsI3dl2Listener.lReflections != mBvalue )
    {
        rAssert( mBvalue >= DSI3DL2LISTENER_MINREFLECTIONS );
        rAssert( mBvalue <= DSI3DL2LISTENER_MAXREFLECTIONS );
        m_DsI3dl2Listener.lReflections = mBvalue;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetReflections
//============================================================================
int radSoundHalEffectI3DL2ReverbXBox::GetReflections( void )
{
    return m_DsI3dl2Listener.lReflections;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetReflectionsDelay
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetReflectionsDelay( float value )
{
    if( m_DsI3dl2Listener.flReflectionsDelay != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINREFLECTIONSDELAY );
        rAssert( value <= DSI3DL2LISTENER_MAXREFLECTIONSDELAY );
        m_DsI3dl2Listener.flReflectionsDelay = value;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetReflectionsDelay
//============================================================================
float radSoundHalEffectI3DL2ReverbXBox::GetReflectionsDelay( void )
{
    return m_DsI3dl2Listener.flReflectionsDelay;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetReverb
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetReverb( int mBvalue )
{
    if( m_DsI3dl2Listener.lReverb != mBvalue )
    {
        rAssert( mBvalue >= DSI3DL2LISTENER_MINREVERB);
        rAssert( mBvalue <= DSI3DL2LISTENER_MAXREVERB );
        m_DsI3dl2Listener.lReverb = mBvalue;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetRoom
//============================================================================
int radSoundHalEffectI3DL2ReverbXBox::GetReverb( void )
{
    return m_DsI3dl2Listener.lReverb;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetReverbDelay
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetReverbDelay( float value )
{
    if( m_DsI3dl2Listener.flReverbDelay != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINREVERBDELAY );
        rAssert( value <= DSI3DL2LISTENER_MAXREVERBDELAY );
        m_DsI3dl2Listener.flReverbDelay = value;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetReverbDelay
//============================================================================
float radSoundHalEffectI3DL2ReverbXBox::GetReverbDelay( void )
{
    return m_DsI3dl2Listener.flReverbDelay;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetDiffusion
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetDiffusion( float value )
{
    if( m_DsI3dl2Listener.flDiffusion != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINDIFFUSION );
        rAssert( value <= DSI3DL2LISTENER_MAXDIFFUSION );
        m_DsI3dl2Listener.flDiffusion = value;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetDiffusion
//============================================================================
float radSoundHalEffectI3DL2ReverbXBox::GetDiffusion( void )
{
    return m_DsI3dl2Listener.flDiffusion;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetDensity
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetDensity( float value )
{
    if( m_DsI3dl2Listener.flDensity != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINDENSITY );
        rAssert( value <= DSI3DL2LISTENER_MAXDENSITY );
        m_DsI3dl2Listener.flDensity = value;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetDensity
//============================================================================
float radSoundHalEffectI3DL2ReverbXBox::GetDensity( void )
{
    return m_DsI3dl2Listener.flDensity;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetHFReference
//============================================================================
void radSoundHalEffectI3DL2ReverbXBox::SetHFReference( float value )
{
    if( m_DsI3dl2Listener.flHFReference != value )
    {
        rAssert( value >= DSI3DL2LISTENER_MINHFREFERENCE );
        rAssert( value <= DSI3DL2LISTENER_MAXHFREFERENCE );
        m_DsI3dl2Listener.flHFReference = value;
        m_DirtyParams = true;
    }

}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetHFReference
//============================================================================
float radSoundHalEffectI3DL2ReverbXBox::GetHFReference( void )
{
    return m_DsI3dl2Listener.flHFReference;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::UpdateListener
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::UpdateListener( void )
{
    radSoundHalListener::GetInstance( )->OnSetEnvEffect( m_AuxSend, & m_DsI3dl2Listener );    
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::Attach 
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::Attach( unsigned int auxSend )
{
    rAssert( m_AttachCount == 0 );
    m_AttachCount++;
    m_AuxSend = auxSend;
    radSoundHalListener::GetInstance( )->OnSetEnvEffect( m_AuxSend, & m_DsI3dl2Listener );    
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::Detach
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::Detach( void )
{
    m_AttachCount--;
    rAssert( m_AttachCount == 0 );
    UpdateListener( );
    radSoundHalListener::GetInstance( )->OnSetEnvEffect( m_AuxSend, NULL );    
    m_AuxSend = 0xFFFFFFFF;
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::Update
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::Update( void )
{
    bool isNewEnvEffect = false;

    // See if we were recently attached

    if( m_IsTheEnvEffect == false )
    {
        if( ::radSoundHalListenerGet( )->GetEnvironmentAuxSend( ) == m_AuxSend )
        {
            if( ::radSoundHalListenerGet( )->GetEnvEffectsEnabled( ) == true )
            {
                isNewEnvEffect = true;
                m_IsTheEnvEffect = true;
            }
        }
    }
    else
    {
        if( ::radSoundHalListenerGet( )->GetEnvironmentAuxSend( ) != m_AuxSend )
        {
            m_IsTheEnvEffect = false;
        }
        if( ::radSoundHalListenerGet( )->GetEnvEffectsEnabled( ) == false )
        {
            m_IsTheEnvEffect = false;
        }
    }
    if( m_AttachCount > 0 && m_DirtyParams == true || isNewEnvEffect == true )
    {
        UpdateListener( );
        m_DirtyParams = false;
    }
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::SetMasterGain
//============================================================================

void radSoundHalEffectI3DL2ReverbXBox::SetMasterGain( float masterGain )
{
    if( m_MasterGain != masterGain )
    {
        ::radSoundVerifyAnalogVolume( masterGain );
 
        m_MasterGain = masterGain;
        
        float roomAnalog = ::radSoundVolumeDbToAnalog( radSoundVolumeHardwareToDbXBox( m_Room ) );

        int hardwareMb = ::radSoundVolumeDbToHardwareXBox(
			    ::radSoundVolumeAnalogToDb( roomAnalog * m_MasterGain ) );

        rAssert( hardwareMb >= DSI3DL2LISTENER_MINROOM );
        rAssert( hardwareMb <= DSI3DL2LISTENER_MAXROOM );

        m_DsI3dl2Listener.lRoom = hardwareMb;
			    
        m_DirtyParams = true;
    }
}

//============================================================================
// radSoundHalEffectI3DL2ReverbXBox::GetMasterGain
//============================================================================

float radSoundHalEffectI3DL2ReverbXBox::GetMasterGain( void )
{
    return m_MasterGain;
}


//============================================================================
// Component: radSoundHalEffectDistortionXBox
//============================================================================


//============================================================================
// radSoundHalEffectDistortionXBox::radSoundHalEffectDistortionXBox
//============================================================================

radSoundHalEffectDistortionXBox::radSoundHalEffectDistortionXBox( unsigned int effectIndex )
    :
    m_AttachCount( 0 ),
    m_AuxSend( 0xFFFFFFFF ),
    m_EffectGain( 0.0f ),
    m_MasterGain( 0.0f ),
    m_DirtyParams( true ),
    radSoundHalEffectXBox( effectIndex, s_NumInputs, s_pInputs, s_NumOutputs, s_pOutputs )
{
    // I got these initial values from the file distortionstate.ini
    m_Parameters[ GAIN ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwGain);
    m_Parameters[ GAIN ].m_Value  = 3000000;

    m_Parameters[ POST_FILTER_B0 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPostFilterB0);
    m_Parameters[ POST_FILTER_B0 ].m_Value  = 4268104;
    m_Parameters[ POST_FILTER_B1 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPostFilterB1);
    m_Parameters[ POST_FILTER_B1 ].m_Value  = 8522616;
    m_Parameters[ POST_FILTER_B2 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPostFilterB2);
    m_Parameters[ POST_FILTER_B2 ].m_Value  = 4070992;
    m_Parameters[ POST_FILTER_A1 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPostFilterA1);
    m_Parameters[ POST_FILTER_A1 ].m_Value  = 8254600;
    m_Parameters[ POST_FILTER_A2 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPostFilterA2);
    m_Parameters[ POST_FILTER_A2 ].m_Value  = 12632424;

    m_Parameters[ PRE_FILTER_B0 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPreFilterB0);
    m_Parameters[ PRE_FILTER_B0 ].m_Value  = 69559;
    m_Parameters[ PRE_FILTER_B1 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPreFilterB1);
    m_Parameters[ PRE_FILTER_B1 ].m_Value  = 139118;
    m_Parameters[ PRE_FILTER_B2 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPreFilterB2);
    m_Parameters[ PRE_FILTER_B2 ].m_Value  = 69559;
    m_Parameters[ PRE_FILTER_A1 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPreFilterA1);
    m_Parameters[ PRE_FILTER_A1 ].m_Value  = 6621656;
    m_Parameters[ PRE_FILTER_A2 ].m_Offset = offsetof( DSFX_DISTORTION_PARAMS, dwPreFilterA2);
    m_Parameters[ PRE_FILTER_A2 ].m_Value  = 14071628;
}

//============================================================================
// radSoundHalEffectDistortionXBox::~radSoundHalEffectStereoXBox
//============================================================================

radSoundHalEffectDistortionXBox::~radSoundHalEffectDistortionXBox( void )
{

}

//============================================================================
// radSoundHalEffectDistortionXBox::SetPreFilterCoefficient
//============================================================================

void radSoundHalEffectDistortionXBox::SetPreFilterCoefficient( IIR2FilterCoefficient coef, float value )
{
    ::radSoundVerifyAnalogPan( value );
    unsigned long hardwareValue = ::radSoundEffectAnalogToHardware( value );
    unsigned int index = 0;
    switch( coef )
    {
        case B0:
        {
            index = PRE_FILTER_B0;
            break;
        }
        case B1:
        {
            index = PRE_FILTER_B1;
            break;
        }
        case B2: 
        {
            index = PRE_FILTER_B2;
            break;
        }
        case A1: 
        {
            index = PRE_FILTER_A1;
            break;
        }
        case A2:
        {
            index = PRE_FILTER_A2;
            break;
        }
        default:
        {
            rAssert( false );
            return;
        }
    }
    if( m_Parameters[ index ].m_Value != hardwareValue )
    {
        m_Parameters[ index ].m_Value = hardwareValue;
        m_DirtyParams = true;
    }
}

//============================================================================
// radSoundHalEffectDistortionXBox::GetPreFilterCoefficient
//============================================================================

float radSoundHalEffectDistortionXBox::GetPreFilterCoefficient( IIR2FilterCoefficient coef )
{
    unsigned int index = 0;
    switch( coef )
    {
        case B0:
        {
            index = PRE_FILTER_B0;
            break;
        }
        case B1:
        {
            index = PRE_FILTER_B1;
            break;
        }
        case B2: 
        {
            index = PRE_FILTER_B2;
            break;
        }
        case A1: 
        {
            index = PRE_FILTER_A1;
            break;
        }
        case A2:
        {
            index = PRE_FILTER_A2;
            break;
        }
        default:
        {
            rAssert( false );
            return 0.0f;
        }
    }

    float value = 0.0f;

    value = ::radSoundEffectHardwareToAnalog( m_Parameters[ index ].m_Value );
    ::radSoundVerifyAnalogPan( value );

    return value;
}

//============================================================================
// radSoundHalEffectDistortionXBox::SeSetPostFilterCoefficienttGain
//============================================================================

void radSoundHalEffectDistortionXBox::SetPostFilterCoefficient( IIR2FilterCoefficient coef, float value )
{
    ::radSoundVerifyAnalogPan( value );
    unsigned long hardwareValue = ::radSoundEffectAnalogToHardware( value );
    unsigned int index = 0;
    switch( coef )
    {
        case B0:
        {
            index = POST_FILTER_B0;
            break;
        }
        case B1:
        {
            index = POST_FILTER_B1;
            break;
        }
        case B2: 
        {
            index = POST_FILTER_B2;
            break;
        }
        case A1: 
        {
            index = POST_FILTER_A1;
            break;
        }
        case A2:
        {
            index = POST_FILTER_A2;
            break;
        }
        default:
        {
            rAssert( false );
            return;
        }
    }
    if( m_Parameters[ index ].m_Value != hardwareValue )
    {
        m_Parameters[ index ].m_Value = hardwareValue;
        m_DirtyParams = true;
    }
}

//============================================================================
// radSoundHalEffectDistortionXBox::GetPostFilterCoefficient
//============================================================================

float radSoundHalEffectDistortionXBox::GetPostFilterCoefficient( IIR2FilterCoefficient coef )
{
    unsigned int index = 0;
    switch( coef )
    {
        case B0:
        {
            index = POST_FILTER_B0;
            break;
        }
        case B1:
        {
            index = POST_FILTER_B1;
            break;
        }
        case B2: 
        {
            index = POST_FILTER_B2;
            break;
        }
        case A1: 
        {
            index = POST_FILTER_A1;
            break;
        }
        case A2:
        {
            index = POST_FILTER_A2;
            break;
        }
        default:
        {
            rAssert( false );
            return 0.0f;            
        }
    }

    float value = 0.0f;
   
    value = ::radSoundEffectHardwareToAnalog( m_Parameters[ index ].m_Value );
    ::radSoundVerifyAnalogPan( value );

    return value;
}

//============================================================================
// radSoundHalEffectDistortionXBox::SetGain
//============================================================================

void radSoundHalEffectDistortionXBox::SetGain( float gain )
{
    ::radSoundVerifyAnalogVolume( gain );

    if( m_EffectGain != gain )
    {
        m_EffectGain = gain;
    
        unsigned long hardwareGain = ::radSoundEffectAnalogToHardware( m_EffectGain * m_MasterGain );

        if( m_Parameters[ GAIN ].m_Value != hardwareGain )
        {
            m_Parameters[ GAIN ].m_Value = hardwareGain;
            m_DirtyParams = true;
        }
    }
}

//============================================================================
// radSoundHalEffectDistortionXBox::GetGain
//============================================================================

float radSoundHalEffectDistortionXBox::GetGain( void )
{
    return m_EffectGain;
}

//============================================================================
// radSoundHalEffectDistortionXBox::SetMasterGain
//============================================================================

void radSoundHalEffectDistortionXBox::SetMasterGain( float masterGain )
{
    ::radSoundVerifyAnalogVolume( masterGain );

    if( m_MasterGain != masterGain )
    {
        m_MasterGain = masterGain;
    
        unsigned long hardwareGain = ::radSoundEffectAnalogToHardware( m_EffectGain * m_MasterGain );

        if( m_Parameters[ GAIN ].m_Value != hardwareGain )
        {
            m_Parameters[ GAIN ].m_Value = hardwareGain;
            m_DirtyParams = true;
        }
    }
}

//============================================================================
// radSoundHalEffectDistortionXBox::GetMasterGain
//============================================================================

float radSoundHalEffectDistortionXBox::GetMasterGain( void )
{
    return m_MasterGain;
}


//============================================================================
// radSoundHalEffectDistortionXBox::Attach 
//============================================================================

void radSoundHalEffectDistortionXBox::Attach( unsigned int auxSend )
{
    rAssert( m_AttachCount == 0 );
    m_AttachCount++;
    m_AuxSend = auxSend;
    UpdateParameters( );
}

//============================================================================
// radSoundHalEffectDistortionXBox::Detach
//============================================================================

void radSoundHalEffectDistortionXBox::Detach( void )
{
    m_AttachCount--;
    rAssert( m_AttachCount == 0 );
    m_AuxSend = 0xFFFFFFFF;
}

//============================================================================
// radSoundHalEffectDistortionXBox::Update
//============================================================================

void radSoundHalEffectDistortionXBox::Update( void )
{
    if( m_AttachCount > 0 && m_DirtyParams )
    {
        m_DirtyParams = false;
        UpdateParameters( );
    }
}

//============================================================================
// radSoundHalEffectDistortionXBox::UpdateParamaters
//============================================================================

void radSoundHalEffectDistortionXBox::UpdateParameters( void )
{
    for( unsigned int i = 0; i < NUM_INDICES; i++ )
    {
        SetEffectData( m_Parameters[ i ].m_Offset, m_Parameters[ i ].m_Value );
    }
    ref< IDirectSound > pIDirectSound;
    ::radSoundHalSystemXBoxGet( )->GetDirectSoundReference( & pIDirectSound );
    pIDirectSound->CommitEffectData( );
}

//============================================================================
// IRadSoundHalEffect Factories
//============================================================================

IRadSoundHalEffectEchoXBox * ::radSoundHalEffectEchoXBoxCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalEchoXBox", allocator ) radSoundHalEffectEchoXBox( ECHO_CHAIN_ECHO );
}

IRadSoundHalEffectI3DL2ReverbXBox * ::radSoundHalEffectI3DL2ReverbXBoxCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalEffectI3DL2ReverbXBox", allocator ) radSoundHalEffectI3DL2ReverbXBox( I3DL2_CHAIN_I3DL2_REVERB );
}

/*
IRadSoundHalEffectReverbXBox * ::radSoundHalEffectMiniReverbXBoxCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalEffectReverbXBox", allocator ) radSoundHalEffectReverbXBox( REVERB_CHAIN_MINI_REVERB );
}
*/

IRadSoundHalEffectDistortionXBox * ::radSoundHalEffectDistortionXBoxCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundHalEffectDistortionXBox", allocator ) radSoundHalEffectDistortionXBox( DISTORTION_CHAIN_DISTORTION );
}



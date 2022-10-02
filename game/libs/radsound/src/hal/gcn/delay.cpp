//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        delay.cpp
//
// Subsystem:   Radical Foundation Tools - Sound system
//
// Description: This file contains an implementation of the delay effect for
//              the Gamecube
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <dolphin.h>
#include <ax.h>
#include <axfx.h>

#include <radfile.hpp>

#include <radsound.hpp>
#include <radsound_gcn.hpp>

#include "..\common\softwarelistener.hpp"

#include "radsoundgcn.hpp"

#include "buffer.hpp"
#include "voice.hpp"
#include "effect.hpp"
#include "radsoundgcn.hpp"
#include "delay.hpp"

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    radSoundEffectDelayGcnCreate
//=============================================================================
// Description: Create a delay sound effect and return it to the caller.
//
// Parameters:  allocator - the allocator to use.
//              
// Returns:     Returns the newly created sound effect.
//------------------------------------------------------------------------------

IRadSoundEffectDelayGcn* radSoundEffectDelayGcnCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundEffectDelayGcn", allocator ) radSoundEffectDelayGcn( );
}


//=============================================================================
// radSoundEffectDelayGcn Member Function Implementation
//=============================================================================

//
// Default constructor
//
radSoundEffectDelayGcn::radSoundEffectDelayGcn( void )
{
    for( unsigned int ch = 0; ch < 3; ch++ )
    {
        SetDelay( ch, 500 );
        SetFeedback( ch, 0 );
        SetOutput( ch, 100 );
    }
}

void radSoundEffectDelayGcn::Attach( unsigned int aux )
{
    radSoundEffectGcn::Attach( aux );
}
void radSoundEffectDelayGcn::Detach( void )
{
    radSoundEffectGcn::Detach( );
}
void radSoundEffectDelayGcn::Update( void )
{
    radSoundEffectGcn::Update( );
}
void radSoundEffectDelayGcn::SetMasterGain( float masterGain )
{
    radSoundEffectGcn::SetMasterGain( masterGain );
}
float radSoundEffectDelayGcn::GetMasterGain( void )
{
    return radSoundEffectGcn::GetMasterGain( );
}

//
// Set the gain
//
void radSoundEffectDelayGcn::SetGain( float gain )
{
    _SetGain( gain );
}

//
// Get the gain
//
float radSoundEffectDelayGcn::GetGain( void )
{
    return _GetGain( );
}

//
// Set whether or not the effect is enabled
//
void radSoundEffectDelayGcn::SetEnabled( bool enabled )
{
    _SetEnabled( enabled );
}

//
// Get whether or not the effect is enabled
//
bool radSoundEffectDelayGcn::GetEnabled( void )
{
    return _GetEnabled( );
}       

//
// Set the delay in milliseconds
//
void radSoundEffectDelayGcn::SetDelay ( unsigned int channel, float milliseconds )
{
    SetAnalogParam
    (
        & m_AfxDelay.delay[ channel ],
        (unsigned int) milliseconds,
        (unsigned int) AXFX_DELAY_MIN_DELAY,
        (unsigned int) AXFX_DELAY_MAX_DELAY
    );
}

//
// Get the delay in milliseconds
//
float radSoundEffectDelayGcn::GetDelay( unsigned int channel )
{
    return GetAnalogParam
    (
        m_AfxDelay.delay[ channel ],
        (unsigned int) AXFX_DELAY_MIN_DELAY,
        (unsigned int) AXFX_DELAY_MAX_DELAY
    );
}

//
// Set the feedback volume
//
void radSoundEffectDelayGcn::SetFeedback( unsigned int channel, float feedback )
{
    SetAnalogParam
    (
        & m_AfxDelay.feedback[ channel ],
        (unsigned int) ( feedback * 100.0f ),
        (unsigned int) AXFX_DELAY_MIN_FEEDBACK,
        (unsigned int) AXFX_DELAY_MAX_FEEDBACK
    );
}

//
// Get the feedback volume
//
float radSoundEffectDelayGcn::GetFeedback( unsigned int channel )
{
    unsigned int feedback = GetAnalogParam
    (
        m_AfxDelay.feedback[ channel ],
        (unsigned int) AXFX_DELAY_MIN_FEEDBACK,
        (unsigned int) AXFX_DELAY_MAX_FEEDBACK
    );
    return ( (float) feedback ) / 100.0f;
}

//
// Set the output volume
//
void radSoundEffectDelayGcn::SetOutput( unsigned int channel, float output )
{
    SetAnalogParam
    (
        & m_AfxDelay.output[ channel ],
        (unsigned int)( output * 100.0f ),
        (unsigned int) AXFX_DELAY_MIN_OUTPUT,
        (unsigned int) AXFX_DELAY_MAX_OUTPUT
    );
}

//
// Get the output volume
//
float radSoundEffectDelayGcn::GetOutput( unsigned int channel )
{
    unsigned int output = GetAnalogParam
    (
        m_AfxDelay.output[ channel ],
        (unsigned int) AXFX_DELAY_MIN_OUTPUT,
        (unsigned int) AXFX_DELAY_MAX_OUTPUT
    );
    return ( (float) output ) / 100.0f;
}


//
// Initialize the delay effect
//
void radSoundEffectDelayGcn::InitEffect( void )
{
    AXFXDelayInit (  &m_AfxDelay );
}

//
// Shutdown the delay effect
//
void radSoundEffectDelayGcn::ShutdownEffect( void )
{
    AXFXDelayShutdown ( & m_AfxDelay );
}

//
// Apply the delay effect
//
void radSoundEffectDelayGcn::ApplyEffect( void )
{
    AXFXDelaySettings ( & m_AfxDelay );
}

//
// Get the delay effect callback function
//
void radSoundEffectDelayGcn::GetEffectCallbackFunction
(
    AXAuxCallback * ppCallback,
    void ** ppData
)
{
    *ppCallback = (AXAuxCallback) AXFXDelayCallback;
    *ppData = (void*) &m_AfxDelay;
}



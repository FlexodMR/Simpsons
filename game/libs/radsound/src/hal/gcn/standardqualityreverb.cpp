//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
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
#include "standardqualityreverb.hpp"
             
void radSoundEffectStdReverbGcn::SetPreDelay( float milliseconds )
{
    SetAnalogParam
    (
        & (m_AfxReverbStd.preDelay),
        milliseconds / 1000.0f,    
        AXFX_REVSTD_MIN_PREDELAY,    
        AXFX_REVSTD_MAX_PREDELAY
    );
}

float radSoundEffectStdReverbGcn::GetPreDelay( void )
{
    return 1000 * GetAnalogParam
    (
        m_AfxReverbStd.preDelay,
        AXFX_REVSTD_MIN_PREDELAY,
        AXFX_REVSTD_MAX_PREDELAY        
    );
}

void radSoundEffectStdReverbGcn::SetReverbTime( float milliseconds )
{
    SetAnalogParam
    (
        & ( m_AfxReverbStd.time),
        milliseconds / 1000.0f,
        AXFX_REVSTD_MIN_TIME,
        AXFX_REVSTD_MAX_TIME          
    );
}

float radSoundEffectStdReverbGcn::GetReverbTime( void )
{
    return 1000 * GetAnalogParam
    (
        m_AfxReverbStd.time,
        AXFX_REVSTD_MIN_TIME,
        AXFX_REVSTD_MAX_TIME          
    );
}

void radSoundEffectStdReverbGcn::SetColoration( float coloration )
{
    SetAnalogParam
    (
        & ( m_AfxReverbStd.coloration ),
        coloration,
        AXFX_REVSTD_MIN_COLORATION,
        AXFX_REVSTD_MAX_COLORATION
    );      
}

float radSoundEffectStdReverbGcn::GetColoration( void )
{
    return GetAnalogParam
    (
        m_AfxReverbStd.coloration,
        AXFX_REVSTD_MIN_COLORATION,
        AXFX_REVSTD_MAX_COLORATION
    );
}

void radSoundEffectStdReverbGcn::SetDamping( float damping )
{
    SetAnalogParam
    (
        & ( m_AfxReverbStd.damping ),
        damping,
        AXFX_REVSTD_MIN_DAMPING,
        AXFX_REVSTD_MAX_DAMPING
    );
}

float radSoundEffectStdReverbGcn::GetDamping( void )
{
    return GetAnalogParam
    (
        m_AfxReverbStd.damping,
        AXFX_REVSTD_MIN_DAMPING,
        AXFX_REVSTD_MAX_DAMPING
    );
}

void radSoundEffectStdReverbGcn::SetMix( float mix )
{
    SetAnalogParam
    (
        & ( m_AfxReverbStd.mix ),
        mix,
        AXFX_REVSTD_MIN_MIX,
        AXFX_REVSTD_MAX_MIX
    );
}

float radSoundEffectStdReverbGcn::GetMix( void )
{
    return GetAnalogParam
    (
        m_AfxReverbStd.mix,
        AXFX_REVSTD_MIN_MIX,
        AXFX_REVSTD_MAX_MIX
    );
}        
        
void radSoundEffectStdReverbGcn::InitEffect( void )
{    
    //This allocates to the heap through OSAlloc.
    //Here's how much
#ifndef FINAL
    unsigned int heapUse = 53088;

    if ( m_AfxReverbStd.preDelay != 0 )
    {
        heapUse += ( ( ( (s32)((m_AfxReverbStd.preDelay) * 32000) * 4) + 32) * 3);
    }

    rReleasePrintf( "Rad sound heap allocation: %d bytes\n", heapUse );
#endif

    AXFXReverbStdInit ( & m_AfxReverbStd );   
}

void radSoundEffectStdReverbGcn::ShutdownEffect( void )
{    
    AXFXReverbStdShutdown ( & m_AfxReverbStd );
}
        
void radSoundEffectStdReverbGcn::ApplyEffect( void )
{
    AXFXReverbStdSettings ( & m_AfxReverbStd );
}

void radSoundEffectStdReverbGcn::GetEffectCallbackFunction
(
    AXAuxCallback * ppCallback,
    void ** ppData
)
{
    *ppCallback = (AXAuxCallback) AXFXReverbStdCallback;
    *ppData = (void*) & m_AfxReverbStd;
}

void radSoundEffectStdReverbGcn::Attach( unsigned int aux )
{
    radSoundEffectGcn::Attach( aux );
}
void radSoundEffectStdReverbGcn::Detach( void )
{
    radSoundEffectGcn::Detach( );
}
void radSoundEffectStdReverbGcn::Update( void )
{
    radSoundEffectGcn::Update( );
}
void radSoundEffectStdReverbGcn::SetMasterGain( float masterGain )
{
    radSoundEffectGcn::SetMasterGain( masterGain );
}
float radSoundEffectStdReverbGcn::GetMasterGain( void )
{
    return radSoundEffectGcn::GetMasterGain( );
}

void radSoundEffectStdReverbGcn::SetGain( float gain )
{
    _SetGain( gain );
}

float radSoundEffectStdReverbGcn::GetGain( void )
{
    return _GetGain( );
}

void radSoundEffectStdReverbGcn::SetEnabled( bool enabled )
{
    _SetEnabled( enabled );
}

bool radSoundEffectStdReverbGcn::GetEnabled( void )
{
    return _GetEnabled( );
}    	
        
radSoundEffectStdReverbGcn::radSoundEffectStdReverbGcn( void )
{

    m_AfxReverbStd.tempDisableFX     = FALSE;
     
    SetPreDelay( 0.1f );        
    SetReverbTime( 3.0f );        
    SetColoration( 0.5f );        
    SetDamping( 0.5f );        
    SetMix( 1.0f );
}

IRadSoundEffectStdReverbGcn * radSoundEffectStdReverbGcnCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundEffectStdReverbGcn", allocator ) radSoundEffectStdReverbGcn( );
}

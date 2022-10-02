//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================

#include "pch.hpp"
#include "system.hpp"
#include "listener.hpp"
#include "buffer.hpp"
#include "voice.hpp"
#include "..\common\banner.hpp"
#include "..\common\memoryregion.hpp"
#include <radplatform.hpp>

//============================================================================
// Local Definitions
//============================================================================

#define BUFFER_DATA_POOL_ELEMENTS 500

//================================================================================
// Static Members
//================================================================================

radSoundHalSystem * radSoundHalSystem::s_pRsdSystem = NULL;
static int g_RadSoundInitializeCount = 0;

//============================================================================
// radSoundHalSystem::radSoundHalSystem
//============================================================================

radSoundHalSystem::radSoundHalSystem( radMemoryAllocator allocator )
    :
    m_NumAuxSends( 0 ),
    m_pSoundMemory( 0 ),
    m_LastServiceTime( ::radTimeGetMilliseconds( ) )
{
    s_pRsdSystem = this;

    for( unsigned int i = 0; i < RSD_SYSTEM_MAX_AUX_SENDS; i++ )
    {
        m_refIRadSoundHalEffect[ i ] = NULL;
    }
    
	::radSoundPrintBanner( );
}

//============================================================================
// radSoundHalSystem::~radSoundHalSystem
//============================================================================

radSoundHalSystem::~radSoundHalSystem( void )
{
	radSoundHalListener::Terminate( );
            
    m_xIDirectSound3DListener = NULL;
    m_xIDirectSoundBuffer_Primary = NULL;
    m_xIDirectSound = NULL;

	radSoundHalMemoryRegion::Terminate( );
    ::radMemoryFreeAligned( GetThisAllocator( ), m_pSoundMemory );

    radSoundHalBufferWin::TerminateBufferDataPool( );

    ::CoUninitialize( );

    s_pRsdSystem = NULL;
}

//============================================================================
// radSoundHalSystem::Initialize
//============================================================================

void radSoundHalSystem::Initialize( const SystemDescription & systemDescription )
{
    rAssertMsg( systemDescription.m_SamplingRate != NULL, 
        "ERROR radsound: system sampling rate must be set"
        "to the highest sampling rate required by you program (probably 48000Hz)" );

    m_NumAuxSends = systemDescription.m_NumAuxSends;
    m_EnableStickyFocus = systemDescription.m_EnableStickyFocus;

    // Initialize DirectSound

    ::CoInitialize( NULL );

    HRESULT hr = ::CoCreateInstance
    (
        CLSID_DirectSound8,
        NULL,
        CLSCTX_INPROC_SERVER,
        IID_IDirectSound8,
        (void**) & m_xIDirectSound
    );

    rAssertMsg( SUCCEEDED( hr ), "DirectSound8 couldn't be created." );

    if ( SUCCEEDED( hr ) )
    {
        HRESULT hr = m_xIDirectSound->Initialize( NULL ); // primary sound driver
    }

    rAssertMsg( SUCCEEDED( hr ), "IDirectSound8::Initialize() failed, no sound card?" );

    if ( SUCCEEDED( hr ) )
    {
        HRESULT hr = m_xIDirectSound->SetCooperativeLevel( ::radPlatformGet( )->GetMainWindowHandle( ), DSSCL_PRIORITY );

        rAssertMsg( SUCCEEDED( hr ), "IDirectSound8::SetCooperativeLevel Failed." );

        if ( SUCCEEDED( hr ) )
        {
            //
            // Setup the primary buffer.
            //

            DSBUFFERDESC dsbdPrimary;
            WAVEFORMATEX wfx;

            ::ZeroMemory( & dsbdPrimary, sizeof( dsbdPrimary ) );

            dsbdPrimary.dwSize = sizeof( dsbdPrimary );
            dsbdPrimary.dwFlags = DSBCAPS_CTRL3D | DSBCAPS_PRIMARYBUFFER;

            if( m_EnableStickyFocus == true )
            {
                dsbdPrimary.dwFlags |= DSBCAPS_STICKYFOCUS;
            }

            dsbdPrimary.dwBufferBytes = 0;
            dsbdPrimary.lpwfxFormat = NULL;

            hr = m_xIDirectSound->CreateSoundBuffer( & dsbdPrimary, & m_xIDirectSoundBuffer_Primary, NULL );

            rAssertMsg( SUCCEEDED( hr ), "IDirectSound8::CreateSoundBuffer Failed." );

            if ( SUCCEEDED( hr ) )
            {
                ::ZeroMemory( & wfx, sizeof( wfx ) ); 
                wfx.wFormatTag      = WAVE_FORMAT_PCM; 
                wfx.nChannels       = 2; 
                wfx.nSamplesPerSec  = systemDescription.m_SamplingRate; 
                wfx.wBitsPerSample  = 16; 
                wfx.nBlockAlign     = wfx.wBitsPerSample / 8 * wfx.nChannels;
                wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;

                hr = m_xIDirectSoundBuffer_Primary->SetFormat( &wfx );

                rAssertMsg( SUCCEEDED( hr ), "IDirectSoundBuffer7/8::SetFormat( ) Failed." );

                hr = m_xIDirectSoundBuffer_Primary->QueryInterface
                (
                    IID_IDirectSound3DListener,
                    (void**) & m_xIDirectSound3DListener
                );            
                
                rAssertMsg( SUCCEEDED( hr ), "IDirectSoundBuffer::QueryInterface (3DListener) Failed." );
            }
        }
    }

    radSoundHalListener::Initialize
	(
		GetThisAllocator( ),
		m_xIDirectSound3DListener
	);

    // Allocate memory

    m_pSoundMemory = ::radMemoryAllocAligned( 
        GetThisAllocator( ),
        systemDescription.m_ReservedSoundMemory, 
        radSoundHalDataSourceReadAlignmentGet( ) );

    radSoundHalMemoryRegion::Initialize( 
        m_pSoundMemory, 
        systemDescription.m_ReservedSoundMemory, 
        systemDescription.m_MaxRootAllocations,
        radSoundHalDataSourceReadAlignmentGet( ), 
        radMemorySpace_Local, GetThisAllocator( ) );

    radSoundHalBufferWin::InitializeBufferDataPool( BUFFER_DATA_POOL_ELEMENTS, GetThisAllocator( ) );
}

//============================================================================
// radSoundHalSystem::GetRootMemoryRegion
//============================================================================

IRadSoundHalMemoryRegion * radSoundHalSystem::GetRootMemoryRegion( void )
{
	return radSoundHalMemoryRegion::GetRootRegion( );
}

//============================================================================
// radSoundHalSystem::GetNumAuxSends
//============================================================================

unsigned int radSoundHalSystem::GetNumAuxSends( )
{
    return m_NumAuxSends;
}

//============================================================================
// radSoundHalSystem::SetOutputMode
//============================================================================

void radSoundHalSystem::SetOutputMode( radSoundOutputMode mode )
{
	rDebugString( "radSoundHalSystem: SetOutputMode() not supported on Win32/XBox use DashBoard\n" );
}

//============================================================================
// radSoundHalSystem::GetOutputMode
//============================================================================

radSoundOutputMode radSoundHalSystem::GetOutputMode( void )
{
	return radSoundOutputMode_Stereo;
}

//============================================================================
// radSoundHalSystem::Service
//============================================================================

void radSoundHalSystem::Service( void )
{
    unsigned int now = ::radTimeGetMilliseconds( );

    radSoundUpdatableObject::UpdateAll( now - m_LastServiceTime );

    m_LastServiceTime = now;
}

//============================================================================
// radSoundHalSystem::ServiceOncePerFrame
//============================================================================

void radSoundHalSystem::ServiceOncePerFrame( void )
{
	radSoundHalListener::GetInstance( )->UpdatePositionalSettings( );

    #ifdef RAD_DEBUG
    DSCAPS desc;
    desc.dwSize = sizeof( DSCAPS );
    HRESULT hr = m_xIDirectSound->GetCaps( & desc );
    #endif 
}

//============================================================================
// radSoundHalSystem::GetStats
//============================================================================
    
void radSoundHalSystem::GetStats( IRadSoundHalSystem::Stats * pStats )
{
    rAssert( pStats );

    ::ZeroMemory( pStats, sizeof( IRadSoundHalSystem::Stats ) );

	//
	// Get voice info
	//

	radSoundHalVoiceWin * pVoiceSearch = radSoundHalVoiceWin::GetLinkedClassHead( );
		
    while ( pVoiceSearch != NULL )
    {
		if ( pVoiceSearch->GetPositionalGroup( ) != NULL )
		{
			pStats->m_NumPosVoices++;

			if ( pVoiceSearch->IsPlaying( ) )
			{
				pStats->m_NumPosVoicesPlaying++;
			}				
		}
		else
		{
			pStats->m_NumVoices++;

			if ( pVoiceSearch->IsPlaying( ) )
			{
				pStats->m_NumVoicesPlaying++;
			}
		}

        pVoiceSearch = pVoiceSearch->GetLinkedClassNext( );
    }

	//
	// GetBuffer info
	//
	
	radSoundHalBufferWin * pBufferSearch = radSoundHalBufferWin::GetLinkedClassHead( );

	while ( pBufferSearch != NULL )
	{
		pStats->m_NumBuffers ++;
		pStats->m_BufferMemoryUsed += pBufferSearch->GetSizeInBytes( );
		
		pBufferSearch = pBufferSearch->GetLinkedClassNext( );
	}
	
	// Effects Memory is always zero it is in the hardware.

	pStats->m_EffectsMemoryUsed = 0;
									
	radSoundHalMemoryRegion::GetRootRegion( )->GetStats( & pStats->m_TotalFreeSoundMemory, NULL, NULL, true );
}

//============================================================================
// radSoundHalSystem::SetAuxEffect
//============================================================================

void radSoundHalSystem::SetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundHalEffect )
{
    rAssert( auxNumber < m_NumAuxSends );

    if( m_refIRadSoundHalEffect[ auxNumber ] != NULL )
    {
        m_refIRadSoundHalEffect[ auxNumber ]->Detach( );
    }

    m_refIRadSoundHalEffect[ auxNumber ] = pIRadSoundHalEffect;

    if( m_refIRadSoundHalEffect[ auxNumber ] != NULL )
    {
        m_refIRadSoundHalEffect[ auxNumber ]->Attach( auxNumber );
    }
}

//============================================================================
// radSoundHalSystem::GetAuxEffect
//============================================================================

IRadSoundHalEffect * radSoundHalSystem::GetAuxEffect( unsigned int auxNumber )
{
    rAssert( auxNumber < m_NumAuxSends );
    return m_refIRadSoundHalEffect[ auxNumber ];
}

//============================================================================
// radSoundHalSystem::SetAuxGain
//============================================================================

void radSoundHalSystem::SetAuxGain( unsigned int aux, float gain )
{
    rWarningMsg( false, "system::SetAuxGain not supported on PC" );
}

//============================================================================
// radSoundHalSystem::GetAuxGain
//============================================================================

float radSoundHalSystem::GetAuxGain( unsigned int aux )
{
    rWarningMsg( false, "system::GetAuxGain not supported on PC" );
    return 1.0f;
}

//============================================================================
// radSoundHalSystem::GetDirectSound
//============================================================================

IDirectSound * radSoundHalSystem::GetDirectSound( void )
{
    return m_xIDirectSound;
}

//============================================================================
// radSoundHalSystem::GetDirectSoundListener
//============================================================================

IDirectSound3DListener * radSoundHalSystem::GetDirectSoundListener( void )
{
    return m_xIDirectSound3DListener;
}

//============================================================================
// radSoundHalSystem::IsStickyFocusEnabled
//============================================================================

bool radSoundHalSystem::IsStickyFocusEnabled( void )
{
    return m_EnableStickyFocus;
}

//============================================================================
// radSoundHalSystem::GetInstance
//============================================================================

radSoundHalSystem * radSoundHalSystem::GetInstance( void )
{
    return s_pRsdSystem;
}

//================================================================================
// ::rsdGetSystem
//================================================================================

IRadSoundHalSystem * radSoundHalSystemGet( void )
{
    rAssert( radSoundHalSystem::s_pRsdSystem != NULL );

    return radSoundHalSystem::s_pRsdSystem;
}

//================================================================================
// ::radSoundIntialize
//================================================================================

void radSoundHalSystemInitialize( radMemoryAllocator allocator  )
{
    rAssert( radSoundHalSystem::s_pRsdSystem == NULL );

    new( "radSoundHalSystem", allocator ) radSoundHalSystem( allocator );
    radSoundHalSystem::s_pRsdSystem->AddRef( );
}

//================================================================================
// ::radSoundIntialize
//================================================================================
        
void radSoundHalSystemTerminate( void )
{
    rAssert( radSoundHalSystem::s_pRsdSystem != NULL );

    radSoundHalSystem::s_pRsdSystem->Release( );
}











   

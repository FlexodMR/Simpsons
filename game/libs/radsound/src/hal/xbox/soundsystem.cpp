//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        soundsystem.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This files contains the implementation of the xbox sound system  
//
// Creation TH
//
//=============================================================================

//============================================================================
// Compiler Warnings
//============================================================================

#if defined RAD_WIN32 || defined RAD_XBOX
#pragma warning ( disable : 4291 )
#endif 

//============================================================================
// Include Files
//============================================================================

#include "pch.hpp"
#include <xtl.h>
#include <dsound.h>
#include <stdio.h>

#include <radfile.hpp>
#include <radobject.hpp>
#include <radobjectlist.hpp>

#include "soundsystem.hpp"
#include "..\common\banner.hpp"
#include "..\common\memoryregion.hpp"
#include "buffer.hpp"
#include "voice.hpp"
#include "bufferasyncloader.hpp"
#include "listener.hpp"
#include "rsdeffects.hpp"
#include <radsoundupdatableobject.hpp>

#define LOADER_POOL_SIZE 16


//============================================================================
// Component: radSoundHalSystem
//============================================================================

//========================================================================
// radSoundHalSystem::radSoundHalSystem
//========================================================================

radSoundHalSystem::radSoundHalSystem( radMemoryAllocator allocator )
    :
	m_pRootMemory( NULL ),
	m_xIDirectSound( NULL ),
	m_xIDirectSoundBuffer_Primary( NULL ),
	m_xIDirectSound3DListener( NULL ),
    m_NumAuxSends( 0 ),
    m_LastServiceTime( ::radTimeGetMilliseconds( ) )
{
    rAssert( s_pTheSoundSystem == NULL );
    s_pTheSoundSystem = this;
    ::radSoundPrintBanner( );
   
    for( unsigned int i = 0; i < RSDSYSTEM_EFFECTS_MAX; i++ )
    {
        m_AuxGain[ i ] = 0.0f;    
    }

    HRESULT hr = DirectSoundCreate( NULL, & m_xIDirectSound, NULL );

    rAssertMsg( SUCCEEDED( hr ), "DirectSoundCreate8 Failed." );

	DownloadScratchImage( );

    radSoundHalListener::Initialize(
		GetThisAllocator( ),
		reinterpret_cast< IDirectSound3DListener * >( m_xIDirectSound.m_pInterface ) );
}

//========================================================================
// radSoundHalSystem::~radSoundHalSystem
//========================================================================

radSoundHalSystem::~radSoundHalSystem( void )
{
	radSoundPoolObject< radSoundBufferAsyncLoaderXBox >::Terminate( );

	radSoundHalMemoryRegion::Terminate( );

    radSoundVoiceXBox::Terminate( );

	::radMemoryFreeAligned( GetThisAllocator( ), m_pRootMemory );

    rAssert( s_pTheSoundSystem == this );

    radSoundHalListener::Terminate( );

    s_pTheSoundSystem = NULL;

    m_xIDirectSound3DListener = NULL;
}

//========================================================================
// radSoundHalSystem::GetDirectSoundReference
//========================================================================

void radSoundHalSystem::GetDirectSoundReference
(
    IDirectSound ** ppIDirectSound
)
{
    rAssert( ppIDirectSound != NULL );

    if ( ppIDirectSound != NULL )
    {
        rAssert( m_xIDirectSound != NULL );

        if ( m_xIDirectSound != NULL )
        {
            *ppIDirectSound = m_xIDirectSound;
            (*ppIDirectSound)->AddRef( );
        }
    }
}

//============================================================================
// radSoundHalSystem::Initialize
//============================================================================

void radSoundHalSystem::Initialize( const SystemDescription & systemDescription )
{
    rAssert( systemDescription.m_NumAuxSends < RSDSYSTEM_EFFECTS_MAX );
    m_NumAuxSends = systemDescription.m_NumAuxSends;

	m_pRootMemory = ::radMemoryAllocAligned( 
        GetThisAllocator( ), 
        systemDescription.m_ReservedSoundMemory, 
        radSoundHalDataSourceReadAlignmentGet( ) );

	radSoundHalMemoryRegion::Initialize(
        m_pRootMemory, 
        systemDescription.m_ReservedSoundMemory, 
        systemDescription.m_MaxRootAllocations,
        radSoundHalDataSourceReadAlignmentGet( ), 
        radMemorySpace_Local, 
        GetThisAllocator( ) );

    radSoundVoiceXBox::Initialize( GetThisAllocator( ) );

	rDebugPrintf( "radSound: Total Sound Memory Available: [%dK]\n", radSoundHalMemoryRegion::GetRootRegion( )->GetSize( ) / 1024 );
	rDebugPrintf( "radSound: Total Aux Sends Available:    [%d]\n", m_NumAuxSends );

	radSoundPoolObject< radSoundBufferAsyncLoaderXBox >::Initialize(
		GetThisAllocator( ), LOADER_POOL_SIZE, LOADER_POOL_SIZE );
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

unsigned int radSoundHalSystem::GetNumAuxSends( void )
{
    return m_NumAuxSends;
}

//============================================================================
// radSoundHalSystem::SetAuxEffect
//============================================================================

void radSoundHalSystem::SetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundHalEffect )
{
	rAssert( auxNumber < m_NumAuxSends );

    if( m_xIRadSoundHalEffect[ auxNumber ] != NULL )
    {
        //
        // Clean up the old effect
        //
        m_xIRadSoundHalEffect[ auxNumber ]->Detach( );
        m_xIRadSoundHalEffect[ auxNumber ] = NULL;
    }

    //
    // Attach the new effect
    //
    if( pIRadSoundHalEffect != NULL )
    {
        m_xIRadSoundHalEffect[ auxNumber ] = pIRadSoundHalEffect;
        m_xIRadSoundHalEffect[ auxNumber ]->SetMasterGain( m_AuxGain[ auxNumber ] );        
        m_xIRadSoundHalEffect[ auxNumber ]->Attach( auxNumber );
    }

    ref< radSoundVoiceXBox > pVoice = radSoundVoiceXBox::GetLinkedClassHead( );
    while( pVoice != NULL )
    {
        pVoice->OnSetAuxEffect( auxNumber, m_xIRadSoundHalEffect[ auxNumber ] );
        pVoice = pVoice->GetLinkedClassNext( );
    }
}

//============================================================================
// radSoundHalSystem::GetAuxEffect
//============================================================================

IRadSoundHalEffect * radSoundHalSystem::GetAuxEffect( unsigned int auxNumber )
{
	rAssert( auxNumber < m_NumAuxSends );

	return m_xIRadSoundHalEffect[ auxNumber ];
}

//============================================================================
// radSoundHalSystem::SetAuxGain
//============================================================================

void radSoundHalSystem::SetAuxGain( unsigned int aux, float gain )
{
	rAssert( aux < m_NumAuxSends );

    if( aux < m_NumAuxSends )
    {
		rWarning( gain >= 0.0f );
		rWarning( gain <= 1.0f );
    
		if ( gain < 0.0f )
		{
			gain = 0.0f;
		}
		else if ( gain > 1.0f )
		{
			gain = 1.0f;
		}
    
		if ( m_AuxGain[ aux ] != gain )
		{
			m_AuxGain[ aux ] = gain;
        
			if ( m_xIRadSoundHalEffect[ aux ] != NULL )
			{
				m_xIRadSoundHalEffect[ aux ]->SetMasterGain( gain );
			}
		}
    }
}

//============================================================================
// radSoundHalSystem::GetAuxGain
//============================================================================

float radSoundHalSystem::GetAuxGain( unsigned int aux )
{
	rAssert( aux < m_NumAuxSends );

    return m_AuxGain[ aux ];
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

    radSoundVoiceXBox::Service( );
    radSoundUpdatableObject::UpdateAll( now - m_LastServiceTime );

    m_LastServiceTime = now;
}
//============================================================================
// radSoundHalSystem::ServiceOncePerFrame
//============================================================================

void radSoundHalSystem::ServiceOncePerFrame( void )
{
	radSoundHalListener::GetInstance( )->UpdatePositionalSettings( );
    
    for( unsigned int i = 0; i < m_NumAuxSends; i++ )
    {
        if( m_xIRadSoundHalEffect[ i ] != NULL )
        {
            m_xIRadSoundHalEffect[ i ]->Update( );
        }
    }

    ::DirectSoundDoWork( );
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

	radSoundVoiceXBox * pVoiceSearch = radSoundVoiceXBox::GetLinkedClassHead( );
		
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
	
	radSoundBufferXBox * pBufferSearch = radSoundBufferXBox::GetLinkedClassHead( );

	while ( pBufferSearch != NULL )
	{
		pStats->m_NumBuffers ++;
		pStats->m_BufferMemoryUsed += pBufferSearch->GetMemoryObject( )->GetMemorySize( );
		
		pBufferSearch = pBufferSearch->GetLinkedClassNext( );
	}
	
	// Effects Memory is always zero it is in the hardware.

	pStats->m_EffectsMemoryUsed = 0;
									
	radSoundHalMemoryRegion::GetRootRegion( )->GetStats( & pStats->m_TotalFreeSoundMemory, NULL, NULL, true );
}

//========================================================================
// radSoundHalSystem::GetInstance
//========================================================================

radSoundHalSystem * radSoundHalSystem::GetInstance( void )
{
    return s_pTheSoundSystem;
}

//========================================================================
// radSoundHalSystem::DownloadScratchImage
//========================================================================

void radSoundHalSystem::DownloadScratchImage( void )
{
	ref< IRadFile > xIRadFile;

	::radFileOpen( & xIRadFile, "img\\rsdeffects.bin", false,
		 OpenExisting, NormalPriority, 0, RADMEMORY_ALLOC_TEMP, radMemorySpace_Local );
	
	xIRadFile->WaitForCompletion( );

	rAssertMsg( xIRadFile->IsOpen(), "Failed to open XBox SPU effects image!\n" );

	if ( xIRadFile->IsOpen( ) )
	{
		char * pImageBuffer = (char*) ::radMemoryAlloc(
			RADMEMORY_ALLOC_TEMP, xIRadFile->GetSize( ) );

		xIRadFile->ReadAsync( pImageBuffer, xIRadFile->GetSize( ) );

		xIRadFile->WaitForCompletion( );

		DSEFFECTIMAGELOC dsEffectImageLoc;
		//
		// This may not be the best way to initialize the i3dl2 settings
		//
		dsEffectImageLoc.dwI3DL2ReverbIndex = I3DL2_CHAIN_I3DL2_REVERB;

		dsEffectImageLoc.dwCrosstalkIndex = I3DL2_CHAIN_XTALK;

		DSEFFECTIMAGEDESC* pImageDesc = NULL;

		HRESULT hr = m_xIDirectSound->DownloadEffectsImage(
			pImageBuffer, xIRadFile->GetSize( ), & dsEffectImageLoc, & pImageDesc );

		rAssertMsg( SUCCEEDED( hr ), "DirectSound8::DownloadEffectsImage() Failed" );
					
		radMemoryFree( RADMEMORY_ALLOC_TEMP, pImageBuffer );
	}

    DirectSoundUseFullHRTF();
}


//================================================================================
// Static Members
//================================================================================

radSoundHalSystem * radSoundHalSystem::s_pTheSoundSystem = NULL;
static int g_RadSoundInitializeCount = 0;

//================================================================================
// ::radSoundGetSystem
//================================================================================

IRadSoundHalSystem * radSoundHalSystemGet( )
{
    rAssertMsg( radSoundHalSystem::GetInstance( ) != NULL, "radSound: Not Initialized." );

    return radSoundHalSystem::GetInstance( );
}

//================================================================================
// ::radSoundGetSystem
//================================================================================


IRadSoundHalSystemXBox * radSoundHalSystemXBoxGet( void )
{
    return radSoundHalSystem::GetInstance( );
    
}

//================================================================================
// ::radSoundIntialize
//================================================================================

void radSoundHalSystemInitialize( radMemoryAllocator allocator  )
{
    if ( g_RadSoundInitializeCount == 0 )
    {
        new ( "radSoundHalSystem", allocator ) radSoundHalSystem( allocator );
        ::radSoundHalSystemGet( )->AddRef( );

    }

    g_RadSoundInitializeCount++;
}

//================================================================================
// ::radSoundTerminate
//================================================================================
        
void radSoundHalSystemTerminate( void )
{
    rAssert( g_RadSoundInitializeCount > 0 );

    g_RadSoundInitializeCount --;

    if ( g_RadSoundInitializeCount == 0 )
    {
        radSoundHalSystem::GetInstance( )->Release( );
    }
}

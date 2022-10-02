//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



//======================================================================
// Include Files
//======================================================================

#include <string.h>

#include <dolphin.h>
#include <dolphin/mix.h>
#include <dolphin/axfx.h>

#include <radsound_hal.hpp>
#include <radsoundupdatableobject.hpp>
#include <banner.hpp>
#include <memoryregion.hpp>
#include "soundsystem.hpp"
#include "softwarelistener.hpp"
#include "voice.hpp"
#include "buffer.hpp"
#include "bufferasyncloader.hpp"
#include "bufferasyncclearer.hpp"

#define ONE_MEG ( 1024 * 1024 )
#define ONE_K   ( 1024 )

#define MRAM_TRANSFER_BUFFER_SIZE   ( ONE_K * 256 )
#define REQUEST_POOL_SIZE      ( 24 )

static radMemoryAllocator gGcEffectsAllocator = RADMEMORY_ALLOC_DEFAULT;

//============================================================================
// radSoundHalSystem::radSoundHalSystem
//============================================================================

void* EffectsAlloc( u32 bytes )
{
    /* rTunePrintf(
        "\n\nUh oh, GC system libs are allocating memory: [0x%x] Bytes, Allocator: [0x%x]\n\n\n",
        bytes,
        gGcEffectsAllocator ); */

    void * pMem = radMemoryAllocAligned( gGcEffectsAllocator, bytes, 32 );

    rTuneAssertMsg( NULL != pMem, "Out of memory allocating audio fx memory" );

    return pMem;
}

void EffectsFree( void * pMem )
{
    /* rTunePrintf( "\n\nUh oh, GC system libs are freeing memory at: [0x%x]\n\n\n", pMem ); */

    radMemoryFree( pMem );
}
    
radSoundHalSystem::radSoundHalSystem( void )
    :
    m_NumAuxSends( 0 ),
    m_pAramAddress( NULL ),
    m_OutputMode( radSoundOutputMode_Stereo ),
    m_LastServiceTime( ::radTimeGetMilliseconds( ) )
{
	rAssert( s_pTheSoundSystem == NULL );

	s_pTheSoundSystem = this;		
    
    ::radSoundPrintBanner( );

    //
    // Init the game cube.
    //

    AIInit(NULL);
    AXInit();
    MIXInit( );

    AXFXSetHooks( EffectsAlloc, EffectsFree);

    radSoundHalListener::Initialize( GetThisAllocator( ) );
    
    // Register user callback for audio frames notification
    
    AXRegisterCallback( & AxAudioFrameCallback );

    for( unsigned int aux = 0; aux < 2; aux ++ )
    {
        //
        // Set the default gains
        //
        m_Gain[ aux ] = 0.0f;
        
    }
    
    AXRegisterAuxACallback( NULL, NULL );
    AXRegisterAuxBCallback( NULL, NULL );
}

//============================================================================
// radSoundHalSystem::AxAudioFrameCallback
//============================================================================

/* static */ void radSoundHalSystem::AxAudioFrameCallback( void )
{
    //
    // This function gets called under interrupt. 
    //
    
    MIXUpdateSettings( );
}
        
//============================================================================
// radSoundHalSystem::~radSoundHalSystem
//============================================================================

radSoundHalSystem::~radSoundHalSystem( void )
{
    radSoundVoiceGcn::Terminate( );
    
    radSoundHalMemoryRegion::Terminate( );
    
    radMemorySpaceFreeAligned( radMemorySpace_Aram, RADMEMORY_ALLOC_DEFAULT, m_pAramAddress );

    radSoundBufferAsyncRequestGcn::Terminate( );
    radSoundPoolObject< radSoundBufferAsyncLoaderGcn >::Terminate( );
    radSoundPoolObject< radSoundBufferAsyncClearerGcn >::Terminate( );

    radSoundHalListener::Terminate( );
	
	MIXQuit( );
	AXQuit( );
    // AIQuit( ); // busted GCN libraries
    
	s_pTheSoundSystem = NULL;	    
}

//============================================================================
// radSoundHalSystem::Initialize
//============================================================================

void radSoundHalSystem::Initialize( const SystemDescription & systemDescription )
{
    rAssert( systemDescription.m_ReservedSoundMemory < ( ONE_MEG * 15 ) );
    rAssert( systemDescription.m_NumAuxSends <= 2 );
    
    gGcEffectsAllocator = systemDescription.m_EffectsAllocator;

    m_NumAuxSends = systemDescription.m_NumAuxSends;

    //
    // Establish the hardware playback rate
    //

    radSoundVoiceGcn::s_HardwarePlaybackRate = 32000.0f; // This is now fixed
    AISetDSPSampleRate( AI_SAMPLERATE_32KHZ );
    
    //
    // Create an external memory manager to manager our sound Memory.
    //

    radMemorySetAllocationName( "Sound Memory" );

    m_pAramAddress = ::radMemorySpaceAllocAligned(
        radMemorySpace_Aram,
        RADMEMORY_ALLOC_DEFAULT,
        systemDescription.m_ReservedSoundMemory,
        ARQ_DMA_ALIGNMENT );

     rAssertMsg( NULL != m_pAramAddress, "Out of ARAM allocating sound memory heap" );

     radSoundHalMemoryRegion::Initialize(
        m_pAramAddress,
        systemDescription.m_ReservedSoundMemory,
        systemDescription.m_MaxRootAllocations + 1, // Add one for the silent buffer
        ARQ_DMA_ALIGNMENT,
        radMemorySpace_Aram,
        GetThisAllocator( ) );        
  
    radSoundVoiceGcn::Initialize( ); // silent buffer init
    radSoundPoolObject< radSoundBufferAsyncLoaderGcn >::Initialize(
        GetThisAllocator( ), REQUEST_POOL_SIZE, REQUEST_POOL_SIZE );

    radSoundPoolObject< radSoundBufferAsyncClearerGcn >::Initialize(
        GetThisAllocator( ), REQUEST_POOL_SIZE, REQUEST_POOL_SIZE );

    radSoundBufferAsyncRequestGcn::Initialize( MRAM_TRANSFER_BUFFER_SIZE, RADMEMORY_ALLOC_DEFAULT );    

    if ( OSGetSoundMode( ) == OS_SOUND_MODE_MONO )
    {
        rDebugString( "radSound: Audio rom output mode is Mono - setting radsound to match\n" );        
        SetOutputMode( radSoundOutputMode_Mono, false );
    }
    else if ( OSGetSoundMode( ) == OS_SOUND_MODE_STEREO )
    {
        rDebugString( "radSound: Audio rom output mode is Stereo - setting radsound to stereo\n" );    
        SetOutputMode( radSoundOutputMode_Stereo, false );
    }   
}

//============================================================================
// radSoundHalSystem::GetRootMemoryRegion
//============================================================================

/* virtual */ IRadSoundHalMemoryRegion * radSoundHalSystem::GetRootMemoryRegion
(
    void
)
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
    SetOutputMode( mode, true );   
}

//============================================================================
// radSoundHalSystem::SetOutputMode
//============================================================================

void radSoundHalSystem::SetOutputMode( radSoundOutputMode mode, bool setRom )
{
    m_OutputMode = mode;
    
    if ( mode == radSoundOutputMode_Stereo )
	{
		if ( setRom )
		{
			rDebugString( "radSound: Setting audio rom output mode: Stereo\n" );    
			OSSetSoundMode( OS_SOUND_MODE_STEREO );     
		}

		::AXSetMode( AX_MODE_STEREO );
	}
	else if ( mode == radSoundOutputMode_Surround )
    {
		if ( setRom )
		{
			rDebugString( "radSound: Setting audio rom output mode: Stereo\n" );    
			OSSetSoundMode( OS_SOUND_MODE_STEREO );     
		}

		::AXSetMode( AX_MODE_SURROUND );
    }
    else
    {
		// This is mono

		if ( setRom )
		{
			rDebugString( "radSound: Setting audio rom output mode: Mono\n" );
			OSSetSoundMode( OS_SOUND_MODE_MONO );
		}

		// Might as well set this to stereo (there is no mono)
		::AXSetMode( AX_MODE_STEREO );
    }

    ::radSoundHalListener::GetInstance( )->SetSupportSurround( mode == radSoundOutputMode_Surround );
    
    radSoundVoiceGcn::OnOutputModeChanged( );
}
		
//============================================================================
// radSoundHalSystem::GetOutputMode
//============================================================================

radSoundOutputMode radSoundHalSystem::GetOutputMode( void )
{
    return m_OutputMode;
}
		
//============================================================================
// radSoundHalSystem::Service
//============================================================================

/* virtual */ void radSoundHalSystem::Service( void )
{
    unsigned int now = ::radTimeGetMilliseconds( );

    radSoundUpdatableObject::UpdateAll( now - m_LastServiceTime );
    radSoundBufferAsyncRequestGcn::Service( );

    m_LastServiceTime = now;
}

//============================================================================
// radSoundHalSystem::ServiceOncePerFrame
//============================================================================

/* virtual */ void radSoundHalSystem::ServiceOncePerFrame( void )
{
    radSoundHalListener::GetInstance( )->UpdatePositionalSettings( );
    radSoundVoiceGcn::UpdateAll( );
    UpdateEffects( );
}

//============================================================================
// radSoundHalSystem::Service
//============================================================================

void radSoundHalSystem::UpdateEffects( void )
{
    for( unsigned int aux = 0; aux < 2; aux ++ )
    {
        if ( m_axRadSoundEffectGcn[ aux ] != NULL )
        {
            m_axRadSoundEffectGcn[ aux ]->Update( );
        }
    }
}

//============================================================================
// radSoundHalSystem::SetAuxEffect
//============================================================================

/* virtual */ void radSoundHalSystem::SetAuxEffect
(
    unsigned int auxNumber,
    IRadSoundHalEffect * pIRadSoundHalEffect
)
{
    rAssert( auxNumber < m_NumAuxSends );
    
    if ( pIRadSoundHalEffect != m_axRadSoundEffectGcn[ auxNumber ] )
    {
        if ( m_axRadSoundEffectGcn[ auxNumber ] != NULL )
        {
            m_axRadSoundEffectGcn[ auxNumber ]->Detach( );
        }
        
        m_axRadSoundEffectGcn[ auxNumber ] = pIRadSoundHalEffect;
        
        if ( m_axRadSoundEffectGcn[ auxNumber ] != NULL )
        {
            m_axRadSoundEffectGcn[ auxNumber ]->SetMasterGain( m_Gain[ auxNumber ] );
            m_axRadSoundEffectGcn[ auxNumber ]->Attach( auxNumber );
        } 
        else
        {
            //
            // Turn on the NULL effect callback
            //
            if( auxNumber == 0 )
            {
                AXRegisterAuxACallback( NULL, NULL );
            }
            else if( auxNumber == 1 )
            {
                AXRegisterAuxBCallback( NULL, NULL );
            }
            else
            {
                rAssert( 0 );
            }
        }
    }
    
    radSoundVoiceGcn::OnAuxEffectChanged( );
}

//============================================================================
// radSoundHalSystem::GetAuxEffect
//============================================================================

/* virtual */ IRadSoundHalEffect * radSoundHalSystem::GetAuxEffect( unsigned int auxNumber )
{
    rAssert( auxNumber < m_NumAuxSends );
    
    return m_axRadSoundEffectGcn[ auxNumber ];
}

//============================================================================
// radSoundHalSystem::SetAuxGain
//============================================================================

void radSoundHalSystem::SetAuxGain( unsigned int auxNum, float gain )
{
    rAssert( auxNum < m_NumAuxSends );

    if( m_Gain[ auxNum ] != gain )
    {
        m_Gain[ auxNum ] = gain;
        
        if ( m_axRadSoundEffectGcn[ auxNum ] != NULL )
        {
            m_axRadSoundEffectGcn[ auxNum ]->SetMasterGain( m_Gain[ auxNum ] );
        }
    }
}

//============================================================================
// radSoundHalSystem::GetAuxGain
//============================================================================

float radSoundHalSystem::GetAuxGain( unsigned int auxNum )
{
    rAssert( auxNum < m_NumAuxSends );
    
    return m_Gain[ auxNum ];
}

//============================================================================
// radSoundHalSystem::GetStats
//============================================================================

/* virtual */ void radSoundHalSystem::GetStats( IRadSoundHalSystem::Stats * pStats )
{
    rAssert( pStats );
    ::memset( pStats, 0, sizeof( IRadSoundHalSystem::Stats ) );

	//
	// Get voice info
	//

    radSoundVoiceGcn * pVoiceSearch = radSoundVoiceGcn::GetLinkedClassHead( );
		
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
	
	radSoundBufferGcn * pBufferSearch = radSoundBufferGcn::GetLinkedClassHead( );

	while ( pBufferSearch != NULL )
	{
		pStats->m_NumBuffers ++;
		pStats->m_BufferMemoryUsed += pBufferSearch->GetFormat( )->FramesToBytes(
            pBufferSearch->GetSizeInFrames( ) );
		
		pBufferSearch = pBufferSearch->GetLinkedClassNext( );
	}
	
	// Effects Memory is not exposed by the game cube libraris

	pStats->m_EffectsMemoryUsed = 0;
									
	radSoundHalMemoryRegion::GetRootRegion( )->GetStats(
	    & pStats->m_TotalFreeSoundMemory, NULL, NULL, true );
}

unsigned int radSoundHalSystem::GetReferenceClock( void )
{
    rAssert( 0 );

    return 0;
}

//================================================================================
// Static Members
//================================================================================

radSoundHalSystem * radSoundHalSystem::s_pTheSoundSystem = NULL;

//================================================================================
// ::rsdGetSystem
//================================================================================


IRadSoundHalSystem * radSoundHalSystemGet( void )
{
    rAssertMsg( radSoundHalSystem::s_pTheSoundSystem != NULL, "radSound: Not Initialized." );

    return radSoundHalSystem::s_pTheSoundSystem;
}
   
//================================================================================
// ::radSoundIntialize
//================================================================================

void radSoundHalSystemInitialize( radMemoryAllocator allocator  )
{
    rAssert( radSoundHalSystem::s_pTheSoundSystem == NULL );

    new( "radSoundHalSystem", allocator ) radSoundHalSystem( );
    radSoundHalSystem::s_pTheSoundSystem->AddRef( );
}

//================================================================================
// ::radSoundIntialize
//================================================================================
        
void radSoundHalSystemTerminate( void )
{
    rAssert( radSoundHalSystem::s_pTheSoundSystem != NULL );

    //
    // This is shitty, but we don't want to have to write a TerminateAsync()
    // function.  I am thinking about a better way to do this.
    //

    while( radSoundBufferAsyncRequestGcn::RequestQueueEmpty( ) == false )
    {
        radFileService( );
        radSoundHalSystem::s_pTheSoundSystem->Service( );
        radSoundHalSystem::s_pTheSoundSystem->ServiceOncePerFrame( );
    }

    radSoundHalSystem::s_pTheSoundSystem->Release( );

    rAssert( radSoundHalSystem::s_pTheSoundSystem == NULL );
}

//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <eekernel.h> // defines NULL
#include <sifdev.h>
#include <sdrcmd.h>
#include <libsdr.h>
#include <string.h>

#include <radplatform.hpp>
#include <radobjectlist.hpp>
#include <raddebug.hpp>
#include <radsoundupdatableobject.hpp>

#include "system.hpp"
#include "..\common\banner.hpp"
#include "..\common\softwarelistener.hpp"
#include "iop\iopclient.hpp"
#include "adpcm\adpcmbufferloader.hpp"
#include "adpcm\adpcmbufferclearer.hpp"
#include "..\common\memoryregion.hpp"
#include "adpcm\vagheader.hpp"
#include "effect.hpp"
#include "adpcm\adpcmvoice.hpp"

#ifdef RAD_DEBUG
static char dc[] = "radSoundHalSystem";
#endif

#define LOAD_POOL_SIZE 16
#define CLEAR_POOL_SIZE 8

#define MIN_SERVICE_ONCE_PER_FRAME_PERIOD 8 // milliseconds
#define IOP_TRANSFER_BUFFER_SIZE (1024*34)
#define IOP_CLEAR_BUFFER_SIZE (1024*8)

//============================================================================
// Constants
//============================================================================


//
// PS2 Sound memory constants
//
static const unsigned int SizeOfEffect = 0x20000;
static const unsigned int StartOfSoundMemory = 0x6000;
static const unsigned int SizeOfSoundMemory = 0x200000 - StartOfSoundMemory;

  
radSoundHalSystem::radSoundHalSystem( radMemoryAllocator allocator )
    :
    m_NumAuxSends( 0 ),
	m_OutputMode( radSoundOutputMode_Stereo ),
    m_LastServiceTime( ::radTimeGetMilliseconds( ) ),
    m_ServiceOncePerFrameTimer( 0 )
{
    s_pRsdSystem = this;
    
    ::radSoundPrintBanner( );
	radSoundHalListener::Initialize( GetThisAllocator( ) );

    //
    // Load our required iop modules
    //

    ::radPlatformGet( )->LoadIrxModule( "libsd.irx" );
    ::radPlatformGet( )->LoadIrxModule( "sdrdrv.irx" );

    //
    // Initialize the Sound rpc system, and cold reset the spu.
    //

	::sceSdRemoteInit();
    
    
    sceSdRemote( 1, rSdInit, SD_INIT_COLD, 0 );

    //
    // Keep our IOP module around so it doesn't unload and load a million times.
    //

    rAssert( ( IOP_TRANSFER_BUFFER_SIZE % 2048 ) == 0 );
    rAssert( ( IOP_CLEAR_BUFFER_SIZE % 2048 ) == 0 );
    
    radSoundIopPs2::Initialize( IOP_TRANSFER_BUFFER_SIZE, IOP_CLEAR_BUFFER_SIZE, allocator );

    //
    // Set both cores to a known state
    //
	for( unsigned int currentCore = 0; currentCore < 2; currentCore++ )
	{
        //
        // Set the gain
        //
        m_Gain[ currentCore ] = 0.0f;

        // Set the reverb start addresses for both cores

        sceSdRemote
        (
			1,
            rSdSetAddr,
            currentCore | SD_A_ESA,
            StartOfSoundMemory + SizeOfSoundMemory - ( SizeOfEffect * currentCore ) - SizeOfEffect
        );


        // Set the reverb end addresses for both cores

        sceSdRemote
        (
			1,
            rSdSetAddr,
            currentCore | SD_A_EEA,
            StartOfSoundMemory + SizeOfSoundMemory - ( SizeOfEffect * currentCore ) - 1
        );

        //
        // Set the master volume for both cores to max
        //
		sceSdRemote(1, rSdSetParam, currentCore|SD_P_MVOLL , 0x3fff);
		sceSdRemote(1, rSdSetParam, currentCore|SD_P_MVOLR , 0x3fff);

        //
        // Init all voices to this known state, volume off, pitch zero,
        // start address at beginning of memory
        //
        for( unsigned int currentVoice = 0; currentVoice < 24; currentVoice ++ )
        {
            sceSdRemote( 1, rSdSetParam, currentCore | ( currentVoice << 0x01 ) |SD_VP_VOLL,  0x0000 );
			sceSdRemote( 1, rSdSetParam, currentCore | ( currentVoice << 0x01 ) |SD_VP_VOLR,  0x0000);
			sceSdRemote( 1, rSdSetParam, currentCore | ( currentVoice << 0x01 ) |SD_VP_PITCH, 0x0000 ); // 1000
			sceSdRemote( 1, rSdSetParam, currentCore | ( currentVoice << 0x01 ) |SD_VP_ADSR1, 0x000f ); // magic numbers adsr == NULL
			sceSdRemote( 1, rSdSetParam, currentCore | ( currentVoice << 0x01 ) |SD_VP_ADSR2, 0x1fc0 ); // taken from sony sample code
			sceSdRemote( 1, rSdSetAddr,  currentCore | ( currentVoice << 0x01 ) |SD_VA_SSA,   0x2800 );
        }


        //
        // Initialize to a hall reverb of some kind
        //
        // !This is important! Not providing a default effect will cause
        // random corruption of the SPU memory. Grrrrr.
        //

        sceSdEffectAttr r_attr;
        r_attr.core     = currentCore;
        r_attr.depth_L  = 0;
        r_attr.depth_R  = 0;
        r_attr.mode = SD_REV_MODE_HALL | SD_REV_MODE_CLEAR_WA;
        sceSdRemote( 1, rSdSetEffectAttr, currentCore, &r_attr);

        //
        // Turn off the reverb set volume to zero
        //
	    sceSdRemote( 1, rSdSetCoreAttr, currentCore | SD_C_EFFECT_ENABLE, 0 );
        sceSdRemote( 1, rSdSetParam, currentCore | SD_P_EVOLL, 0x0000 );
	    sceSdRemote( 1, rSdSetParam, currentCore | SD_P_EVOLR, 0x0000 );

        //
        // Don't route any voices throught the effect system
        //
	    sceSdRemote( 1, rSdSetSwitch, currentCore | SD_S_VMIXEL, 0x000000 );
	    sceSdRemote( 1, rSdSetSwitch, currentCore | SD_S_VMIXER, 0x000000 );

        //
        // Don't rount any voices through the voices through the dry channels
        //
        sceSdRemote( 1, rSdSetSwitch, currentCore | SD_S_VMIXL, 0x00000000);
        sceSdRemote( 1, rSdSetSwitch, currentCore | SD_S_VMIXR, 0x00000000 );
    }
}

//============================================================================
// radSoundHalSystem::~radSoundHalSystem
//============================================================================

radSoundHalSystem::~radSoundHalSystem( void )
{
	radSoundPoolObject< radSoundBufferAsyncLoaderAdpcmPs2 >::Terminate( );
	radSoundPoolObject< radSoundHalAdpcmBufferClearer >::Terminate( );

    radSoundHalListener::Terminate( );
    radSoundIopPs2::Terminate( );

    ::radMemoryMonitorRescindAllocation( (void*)StartOfSoundMemory, radMemorySpace_Sound );

    radSoundHalMemoryRegion::Terminate( );

    s_pRsdSystem = NULL;
}

//============================================================================
// radSoundHalSystem::Initialize
//============================================================================

void radSoundHalSystem::Initialize( const SystemDescription & systemDescription )
{
	rAssertMsg( systemDescription.m_NumAuxSends <= 2, "radSound: ps2 only supports a maximum of 2 aux sends" );
	 
    m_NumAuxSends = systemDescription.m_NumAuxSends;

    ::radMemoryMonitorDeclareAllocation( (void*)StartOfSoundMemory, SizeOfSoundMemory - ( m_NumAuxSends * SizeOfEffect ), MM_MAX_CALLSTACK_DEPTH, radMemorySpace_Sound );

	radSoundHalMemoryRegion::Initialize(
		(void*) StartOfSoundMemory,
		SizeOfSoundMemory - ( m_NumAuxSends * SizeOfEffect ),
        systemDescription.m_MaxRootAllocations,
		VAG_MONO_FRAME_SIZE, // alignment
        radMemorySpace_Sound,
		GetThisAllocator( ) );

    if( m_NumAuxSends == 2 )
    {
        // Since have 2 aux sends we'll enable 
        // writing to the effects memory for both cores
        // (Blocking call)
        sceSdRemote( 1, rSdSetCoreAttr, 1 | SD_C_EFFECT_ENABLE, 1 ); // core1
    }
    
    if( m_NumAuxSends >= 1 )
    {
        // We only have 1 aux send so only enable
        // writing to effects memory for 1 core
        // (Blocking call)
	    sceSdRemote( 1, rSdSetCoreAttr, 0 | SD_C_EFFECT_ENABLE, 1 ); // core0
    }

	rDebugPrintf( "radSound: Total Sound Memory Available: [%dK]\n",
		 radSoundHalMemoryRegion::GetRootRegion( )->GetSize( ) / 1024 );

	rDebugPrintf( "radSound: Aux Sends Available: [%d]\n", m_NumAuxSends );

	radSoundPoolObject< radSoundBufferAsyncLoaderAdpcmPs2 >::Initialize( GetThisAllocator( ), LOAD_POOL_SIZE, LOAD_POOL_SIZE );
	radSoundPoolObject< radSoundHalAdpcmBufferClearer >::Initialize( GetThisAllocator( ), CLEAR_POOL_SIZE, CLEAR_POOL_SIZE );
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
// radSoundHalSystem::SetOutputMode
//============================================================================

void radSoundHalSystem::SetOutputMode( radSoundOutputMode mode )
{
	if ( m_OutputMode != mode )
	{
		m_OutputMode = mode;

        ::radSoundHalListener::GetInstance( )->SetSupportSurround( mode == radSoundOutputMode_Surround );
		
		// Tell all of the voices

		radSoundVoiceAdpcmPs2 * pVoiceSearch = radSoundVoiceAdpcmPs2::GetLinkedClassHead( );

		while ( pVoiceSearch != NULL )
		{
			pVoiceSearch->SetVoiceVolumes( );

			pVoiceSearch = pVoiceSearch->GetLinkedClassNext( );
		}
	}
}

//============================================================================
// radSoundHalSystem::GetOutputMode
//============================================================================

radSoundOutputMode radSoundHalSystem::GetOutputMode( void )
{
	return m_OutputMode;
}

//============================================================================
// radSoundHalSystem::GetReferenceClock
//============================================================================

unsigned int radSoundHalSystem::GetReferenceClock( void )
{
	rAssert( 0 );

	return ::radTimeGetMilliseconds( );
}

//============================================================================
// radSoundHalSystem::GetStats
//============================================================================

void radSoundHalSystem::GetStats( IRadSoundHalSystem::Stats * pStats )
{
    rAssert( pStats );

    ::memset( pStats, 0, sizeof( IRadSoundHalSystem::Stats ) );

	//
	// Get voice info
	//
	radSoundVoiceAdpcmPs2 * pVoiceSearch = radSoundVoiceAdpcmPs2::GetLinkedClassHead( );

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
	// Get buffer info
	//

	radSoundBufferAdpcmPs2 * pBufferSearch = radSoundBufferAdpcmPs2::GetLinkedClassHead( );

	while ( pBufferSearch != NULL )
	{
		pStats->m_NumBuffers++;
		pStats->m_BufferMemoryUsed += pBufferSearch->GetSizeInBytes( );

		pBufferSearch = pBufferSearch->GetLinkedClassNext( );
	}

    // Get the effects memory

	pStats->m_EffectsMemoryUsed += SizeOfEffect * GetNumAuxSends( );

	// And total memory free.

	radSoundHalMemoryRegion::GetRootRegion( )->GetStats(
		& pStats->m_TotalFreeSoundMemory, NULL, NULL, true );
}

//============================================================================
// radSoundHalSystem::UpdateEffects
//============================================================================

void radSoundHalSystem::UpdateEffects( void )
{       
    for( unsigned int core = 0; core < 2; core ++ )
    {       
		if ( m_xIRadSoundHalEffectPs2[ core ] != NULL )
		{
			m_xIRadSoundHalEffectPs2[ core ]->Update( );
		}
	}
}

//============================================================================
// radSoundHalSystem::SetAuxEffect
//============================================================================

void radSoundHalSystem::SetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pIRadSoundHalEffect )
{
	rAssert( auxNumber < m_NumAuxSends );

	if ( auxNumber < m_NumAuxSends )
	{
		if ( m_xIRadSoundHalEffectPs2[ auxNumber ] != NULL )
		{
			if ( m_xIRadSoundHalEffectPs2[ auxNumber ] != NULL )
			{
				m_xIRadSoundHalEffectPs2[ auxNumber ]->Detach( );
			}
		}			

		m_xIRadSoundHalEffectPs2[ auxNumber ] = pIRadSoundHalEffect;

		if ( m_xIRadSoundHalEffectPs2[ auxNumber ] != NULL )
		{
            m_xIRadSoundHalEffectPs2[ auxNumber ]->SetMasterGain( m_Gain[ auxNumber ] );
			m_xIRadSoundHalEffectPs2[ auxNumber ]->Attach( auxNumber );
		}
	}
}

//============================================================================
// radSoundHalSystem::GetAuxEffect
//============================================================================

IRadSoundHalEffect * radSoundHalSystem::GetAuxEffect( unsigned int auxNumber )
{
	rAssert( auxNumber < m_NumAuxSends );

	return m_xIRadSoundHalEffectPs2[ auxNumber ];
}

//============================================================================
// radSoundHalSystem::SetAuxGain
//============================================================================

void radSoundHalSystem::SetAuxGain( unsigned int aux, float gain )
{
	rAssert( aux < m_NumAuxSends );

	if ( aux < m_NumAuxSends )
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
    
		if ( m_Gain[ aux ] != gain )
		{
			m_Gain[ aux ] = gain;
        
			if ( m_xIRadSoundHalEffectPs2[ aux ] != NULL )
			{
				m_xIRadSoundHalEffectPs2[ aux ]->SetMasterGain( gain );
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

    return m_Gain[ aux ];
}

//============================================================================
// radSoundHalSystem::Service
//============================================================================

void radSoundHalSystem::Service( void )
{
    unsigned int now = ::radTimeGetMilliseconds( );

    radSoundVoiceAdpcmPs2::ServiceAll( );
	radSoundHalBufferAsyncRequestAdpcmPs2::Service( );

    radSoundUpdatableObject::UpdateAll( now - m_LastServiceTime );
    m_LastServiceTime = now;
}

//============================================================================
// radSoundHalSystem::ServiceOncePerFrame
//============================================================================

void radSoundHalSystem::ServiceOncePerFrame( void )
{
	unsigned int currentTime = ::radTimeGetMilliseconds( );

	//
	// We don't want to hammer the iop with too many requests.  This timer
	// will protect us if somebody is calling this function in a while loop
	// or something bad like that.
	//
	if( currentTime - m_ServiceOncePerFrameTimer >= MIN_SERVICE_ONCE_PER_FRAME_PERIOD )
	{
		radSoundHalListener::GetInstance( )->UpdatePositionalSettings( );

		UpdateEffects( );

		radSoundIopPs2::GetInstance( )->Service( ); // write voices, do transfers ( play voices with new position );		

		m_ServiceOncePerFrameTimer = currentTime;
	}
}

//================================================================================
// Static Members
//================================================================================

radSoundHalSystem * radSoundHalSystem::s_pRsdSystem = NULL;

//================================================================================
// ::rsdGetSystem
//================================================================================

IRadSoundHalSystem * radSoundHalSystemGet( void )
{
    rAssertMsg( radSoundHalSystem::s_pRsdSystem != NULL, "radSound: Not Initialized." );

    return radSoundHalSystem::s_pRsdSystem;
}
    
//================================================================================
// ::radSoundIntialize
//================================================================================

void radSoundHalSystemInitialize( radMemoryAllocator allocator  )
{
	new( "radSoundHalSystem", allocator ) radSoundHalSystem( allocator );
    radSoundHalSystem::s_pRsdSystem->AddRef( );
}

//================================================================================
// ::radSoundIntialize
//================================================================================
        
void radSoundHalSystemTerminate( void )
{
    //unsigned int endTime = ::radTimeGetMilliseconds( ) + 200;

    //
    // Spin to clean up and transfer last packets to IOP to stop voices.
    // 

    while
    (
        ( radSoundHalBufferAsyncRequestAdpcmPs2::RequestQueueEmpty( ) == false )
    )
    {
        radFileService( );
        radSoundHalSystem::s_pRsdSystem->Service( );
        radSoundHalSystem::s_pRsdSystem->ServiceOncePerFrame( );

        //#ifdef RAD_DEBUG
           // radObject::DumpObjects( );
        //#endif // RAD_DEBUG
    }

    // Make sure everything is turned off.

	radSoundIopPs2::GetInstance( )->Service( );

	radSoundHalSystem::s_pRsdSystem->Release( );

    rAssert( radSoundHalSystem::s_pRsdSystem == NULL );
}

    










    

#include <stdlib.h>
#include <libsd.h>
#include <string.h>
#include <kernel.h>
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <sif.h>
#include <sifcmd.h>
#include <sifrpc.h>
#include <sdrcmd.h>
#include <libsd.h>
#include "iopcommon.hpp"

#define THREAD_PRIORITY ( USER_HIGHEST_PRIORITY )

void * SpuBulkCommandWriteTransfer( void * pData, int size );
void * VoiceCommandCheckVersion( void * pData, int size );

static unsigned int GetMicroseconds( void );
unsigned int Wait2Ts( void );

int radSoundVoiceThreadProc( void );
void * radSoundVoiceRpcHandler( unsigned int fno, void * pData, int size );

static unsigned int g_RpcTransferBuffer [ 1024 ];

union
{
    struct radSoundEeVoiceServerFx_ReadVoiceState_Params readVoiceState;
    struct radSoundIopVoiceServerFx_Initialize_Ret       initialize;
} gTransmitBuffer;

//
// This command does batch processing of SPU commands. First is process all commands it received for the host.
// If then reads the address of all voices and the current switch status and returns this info.
//

// Ee Voice Server structure for issuing SpuState packets

sceSifClientData g_SifClientData_Voice __attribute__((aligned (64)));

void radSoundVoiceServerInitialize( void )
{
    struct ThreadParam threadParam;
    int th;

    //
    // Simply create a sony style cooperative "thread" and we're done
    //

    threadParam.attr         = TH_C;
    threadParam.entry        = radSoundVoiceThreadProc;        // the thread function
    threadParam.initPriority = THREAD_PRIORITY;
    threadParam.stackSize    = 0x800;
    threadParam.option       = 0;

    th = CreateThread( & threadParam );

    if (th > 0)
    {
        StartThread( th, 0 );
    }
    else
    {
        printf( "radSoundIop: Failed to create VoiceServerThread\n" );       
    }
}

void radSoundVoiceServerTerminate( void )
{
}

int radSoundVoiceThreadProc( void )
{
    sceSifQueueData qd;
    sceSifServeData sd;
    unsigned int i;

    //
    // Initialize the Rpc System
    //

    sceSifInitRpc( 0 );
        
    //
    // Get a queue for our rpc calls.
    //

    sceSifSetRpcQueue( & qd, GetThreadId() );
    
    //
    // Now register using our server Id.
    //

    sceSifRegisterRpc
    (
        & sd,
        radSoundIopVoiceServerId,
        radSoundVoiceRpcHandler,  // This is our server function
        (void *) &g_RpcTransferBuffer[0],
        0,
        0,
        & qd
    );

    //
    // Enter the RPC loop, and we will probably never return.
    // 

    sceSifRpcLoop( & qd );
       
    return 1;
}

void * radSoundVoiceRpcHandler
(
    unsigned int fno,
    void * pData,
    int size
)
{
    //
    // Just switch on the function that the EE called and dispatch to one of
    // our handler functions.
    //

    switch( fno )
    {
		case radSoundIopVoiceServerFx_Initialize :
		{
			return VoiceCommandCheckVersion( pData, size );
		}
        case radSoundIopVoiceServerFx_WriteVoiceState :
        {
            return SpuBulkCommandWriteTransfer( pData, size );
        }
        default:
        {
            printf( "radSoundIop: Unknown voice server function called!\n" );
        }
    }

    return (void *) 0;
}

void* SpuBulkCommandWriteTransfer( void * pData, int size )
{
    struct radSoundIopVoiceServerFx_WriteVoiceState_Params* writePacket;
    
    int core;
    int voice;

    struct radSoundSpuVoiceParams * pOld;
    struct radSoundSpuVoiceParams * pNew;

    if( size != sizeof( struct radSoundIopVoiceServerFx_WriteVoiceState_Params ) )
    {
        printf("radSoundIop: ERROR: Fatal problem in RadSound IOP code\n");       
        return( NULL );
    }

    writePacket = (struct radSoundIopVoiceServerFx_WriteVoiceState_Params*) pData;

    for ( core = 0; core < 2; core ++ )
    {
        for ( voice = 0 ; voice < 24; voice ++ )
        {
            pNew = & ( (*writePacket).m_SpuVoiceParams[ core ][ voice ] );

			if ( pNew->m_Flags )
			{
				// printf( "C:[%d] V:[%d] Old: [%d] New: [%d] sold: [%d] snew: [%d]\n", core, voice, pOld, pNew, & g_radSoundIopVoiceServerFx_WriteVoiceState_Params, writePacket );
            
				if ( pNew->m_Flags & PITCH_DIRTY )
				{
					// printf( "Set Pitch: core: [%d] voice: [%d] value: [%d] was: [%d]\n", core, voice, pNew->m_Pitch, pOld->m_Pitch );
					sceSdSetParam( core | (voice << 0x01) | SD_VP_PITCH, pNew->m_Pitch );
				}

				if ( pNew->m_Flags & LVOL_DIRTY )
				{
					// printf( "Set Left Volume: core: [%d] voice: [%d] value: [%d] was: [%d]\n", core, voice, pNew->m_LeftVolume, pOld->m_LeftVolume );
					sceSdSetParam( core | (voice << 0x01) | SD_VP_VOLL, pNew->m_LeftVolume );
				}

				if ( pNew->m_Flags & RVOL_DIRTY )
				{
					// printf( "Set Right Volume: core: [%d] voice: [%d] value: [%d] was: [%d]\n", core, voice, pNew->m_RightVolume, pOld->m_LeftVolume );
					sceSdSetParam( core | (voice << 0x01) | SD_VP_VOLR, pNew->m_RightVolume );
				}

				if ( pNew->m_Flags & STARTADDRESS_DIRTY )
				{
					// printf( "Set Start Address: core: [%d] voice: [%d] value: [%d] was: [%d]\n", core, voice, pNew->m_StartAddress, pOld->m_StartAddress );
					sceSdSetAddr( core | (voice << 0x01) | SD_VA_SSA, pNew->m_StartAddress );
				}

				if ( pNew->m_Flags & LOOPADDRESS_DIRTY )
				{
					// printf( "Set Loop Address: core: [%d] voice: [%d] value: [%d] was: [%d]\n", core, voice, pNew->m_LoopAddress, pOld->m_LoopAddress );
					sceSdSetAddr( core | (voice << 0x01) | SD_VA_LSAX, pNew->m_LoopAddress );
				}
			}
        }
    }

	//
	// Set effect routing switches
	//

	sceSdSetSwitch( 0 | SD_S_VMIXEL, writePacket->m_VoiceEffectMaskLeft[ 0 ] );
	sceSdSetSwitch( 0 | SD_S_VMIXER, writePacket->m_VoiceEffectMaskRight[ 0 ] );
	sceSdSetSwitch( 1 | SD_S_VMIXEL, writePacket->m_VoiceEffectMaskLeft[ 1 ] );
	sceSdSetSwitch( 1 | SD_S_VMIXER, writePacket->m_VoiceEffectMaskRight[ 1 ] );

	//
	// Set dry switches
	//

	sceSdSetSwitch( 0 | SD_S_VMIXL, writePacket->m_VoiceDryMaskLeft[ 0 ] );
	sceSdSetSwitch( 0 | SD_S_VMIXR, writePacket->m_VoiceDryMaskRight[ 0 ] );
	sceSdSetSwitch( 1 | SD_S_VMIXL, writePacket->m_VoiceDryMaskLeft[ 1 ] );
	sceSdSetSwitch( 1 | SD_S_VMIXR, writePacket->m_VoiceDryMaskRight[ 1 ] );

    sceSdSetSwitch( 0 | SD_S_KOFF, writePacket->m_KeyOffMask[ 0 ] );
    sceSdSetSwitch( 1 | SD_S_KOFF, writePacket->m_KeyOffMask[ 1 ] );

    Wait2Ts( );

    sceSdSetSwitch( 0 | SD_S_KON, writePacket->m_KeyOnMask[ 0 ] );
    sceSdSetSwitch( 1 | SD_S_KON, writePacket->m_KeyOnMask[ 1 ] ); 

    Wait2Ts( );

    //
    // Write back params
    //
    
    gTransmitBuffer.readVoiceState.m_Stamp = writePacket->m_Stamp;
    gTransmitBuffer.readVoiceState.m_EndPointMask[ 0 ] = sceSdGetSwitch( 0 | SD_S_ENDX );
    gTransmitBuffer.readVoiceState.m_EndPointMask[ 1 ] = sceSdGetSwitch( 1 | SD_S_ENDX );

    for ( core = 0; core < 2; core ++ )
    {
        for ( voice = 0 ; voice < 24; voice ++ )
        {
            gTransmitBuffer.readVoiceState.m_VoiceAddress[ core ][ voice ] = sceSdGetAddr( core | (voice << 0x01) | SD_VA_NAX );
        }
    }
    
    return & gTransmitBuffer.readVoiceState;
}

void * VoiceCommandCheckVersion( void * pData, int size )
{
    struct radSoundIopVoiceServerFx_Initialize_Params * pParams =
        (struct radSoundIopVoiceServerFx_Initialize_Params*) pData;

    if ( pParams->m_Version != radSoundVoiceServerVersion )
    {
        printf( "radSound: IopVoiceServer Version Missmatch EE:[%d] Iop:[%d]\n",
            pParams->m_Version, radSoundVoiceServerVersion );

	    gTransmitBuffer.initialize.m_InitializedOk = 0;
    }
    else
    {
        printf( "radSound: IopVoiceServer Init\n" );
        printf( "    Version: [0x%x]\n", pParams->m_Version );

        gTransmitBuffer.initialize.m_InitializedOk = 1;
    }

	return & gTransmitBuffer.initialize;
}

//============================================================================
// Function: GetMicroseconds
//
// Description: Simply returns the system time in microseconds.
//============================================================================

static unsigned int GetMicroseconds( void )
{
    struct SysClock sc;
    int sec;
    int usec;

    int ret = GetSystemTime( & sc );

    //rAssert( ret == KE_OK );

    SysClock2USec( & sc,
        & sec,
        & usec );

    return ( sec * 1000 * 1000) + usec;
}

#define TWO_TS 42 // 42 microseconds is two dsp cycles at 48000

unsigned int Wait2Ts( void )
{
    unsigned int target = GetMicroseconds( ) + TWO_TS;

    while ( GetMicroseconds( ) <= target )
    {
        RotateThreadReadyQueue( THREAD_PRIORITY );
    }
}
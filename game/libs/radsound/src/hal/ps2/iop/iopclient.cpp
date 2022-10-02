//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        PS2_radSoundIopPs2.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the EE Side implementation of the EE --> IOP
//          communication component.  This component uses sony's remote
//          procedure call implementation.
//
//=============================================================================


#include <eekernel.h>
#include <eetypes.h>
#include <eeregs.h>
#include <stdio.h>
#include <sif.h>
#include <sifrpc.h>
#include <sifdev.h>
#include <sdrcmd.h>
#include <libsdr.h>
#include <string.h>

#include <radplatform.hpp>
#include <radthread.hpp>
#include <radtime.hpp>
#include <radsound.hpp>
#include <radsoundobject.hpp>

#include "iopcommon.hpp"
#include "iopclient.hpp"

#include "..\adpcm\vagheader.hpp"

//============================================================================
// Global Data
//============================================================================

//
// Load server variables
//

sceSifClientData				   g_SifClientData_Load				     __attribute__((aligned (64)));

radSoundIopLoadServerFxParams g_IopLoadServerFxParamBuffer __attribute__((aligned (64)));
radSoundIopLoaderServerFxRet  g_IopLoadServerFxRetBuffer __attribute__((aligned (64)));

//
// Voice server variables.
//

sceSifClientData				   g_SifClientData_Voice				 __attribute__((aligned (64)));

union
{
    radSoundIopVoiceServerFx_Initialize_Params m_RadSoundIopVoiceServerFx_Initialize_Params;
    radSoundIopVoiceServerFx_Initialize_Ret    m_RadSoundIopVoiceServerFx_Initialize_Ret;
} g_IopVoiceServerFxParamBuffer __attribute__((aligned (64)));

radSoundIopVoiceServerFx_Initialize_Ret    * g_pRadSoundIopVoiceServerFx_Initialize_Ret = & ( g_IopVoiceServerFxParamBuffer.m_RadSoundIopVoiceServerFx_Initialize_Ret );
radSoundIopVoiceServerFx_Initialize_Params * g_pRadSoundIopVoiceServerFx_Initialize_Params = & ( g_IopVoiceServerFxParamBuffer.m_RadSoundIopVoiceServerFx_Initialize_Params );
 
radSoundIopVoiceServerFx_WriteVoiceState_Params g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Sending __attribute__((aligned (64)));
radSoundIopVoiceServerFx_WriteVoiceState_Params g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current __attribute__((aligned (64)));
radSoundEeVoiceServerFx_ReadVoiceState_Params   g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Receiving  __attribute__((aligned (64)));
radSoundEeVoiceServerFx_ReadVoiceState_Params   g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Current  __attribute__((aligned (64)));

#define MAX_VAG_CHANNELS 2

// Class static

radSoundIopPs2 * radSoundIopPs2::s_pTheSoundRpcClient = NULL;

//============================================================================
// radSoundIopPs2::radSoundIopPs2
//============================================================================

radSoundIopPs2::radSoundIopPs2( unsigned int transferBufferSize,
    unsigned int clearBufferSize )
    :
    m_TransferBufferAddress( 0 ),
    m_TransferBufferSize( transferBufferSize )

{
    terminate = false;
    
    ::radMemoryRoundUp( transferBufferSize, VAG_MONO_FRAME_SIZE * MAX_VAG_CHANNELS );
    ::radMemoryRoundUp( transferBufferSize, VAG_MONO_FRAME_SIZE ); // does 1 channel at a time

    s_pTheSoundRpcClient = this;

    ::memset( & g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Sending, 0, sizeof( g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Sending ) );
    ::memset( & g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current, 0, sizeof( g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current ) );
    ::memset( & g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Receiving, 0, sizeof( g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Receiving ) );
    ::memset( & g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Current, 0, sizeof( g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Current ) );

    ::sceSifInitRpc( 0 );

    loadThreadState = LoadThreadState_Idle;
    
    ::radThreadCreateSemaphore( & m_refLoadSema, 0, GetThisAllocator( ) );
    ::radThreadCreateMutex( & m_refLoadMutex );
        
    ::radThreadCreateThread( & m_refLoadThread, 
        LoadThreadProc,
        this,
        IRadThread::PriorityHigh,
        4096,
        GetThisAllocator( ) );
    
    ::radThreadCreateSemaphore( & m_refVoiceSema, 0, GetThisAllocator( ) );
    ::radThreadCreateMutex( & m_refVoiceMutex );
        
    voiceThreadState = VoiceThreadState_Idle;
    
    ::radThreadCreateThread( & m_refVoiceThread, 
        VoiceThreadProc,
        this,
        IRadThread::PriorityHigh,
        4096,
        GetThisAllocator( ) );
        
    ::radPlatformGet( )->LoadIrxModule( "radsound.irx" );

    BindToIopLoadServer( clearBufferSize );
    BindToIopVoiceServer( );
}

//============================================================================
// radSoundIopPs2::~radSoundIopPs2( void )
//============================================================================

radSoundIopPs2::~radSoundIopPs2( void )
{
    s_pTheSoundRpcClient = NULL;
}

unsigned int radSoundIopPs2::VoiceThreadProc( void * pUserData )
{
    radSoundIopPs2 * pIop = (radSoundIopPs2*) pUserData;
    
    while( true )
    {
        pIop->m_refVoiceSema->Wait( );
        
        if ( pIop->terminate )
        {
            break;
        }
        
        rAssert( VoiceThreadState_Busy == pIop->voiceThreadState );

        int ret = ::sceSifCallRpc
        (
            & g_SifClientData_Voice,
            radSoundIopVoiceServerFx_WriteVoiceState, // command
            0, // wait
            & g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Sending,
            sizeof( g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Sending ),
            & g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Receiving,
            sizeof( g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Receiving ),
            0,
            0
        );

	    rAssert( ret >= 0 );
	    
	    pIop->m_refVoiceMutex->Lock( );
	    pIop->voiceThreadState = VoiceThreadState_Idle;
	    pIop->m_refVoiceMutex->Unlock( );
	        
    }
    
    return 0;
}

unsigned int radSoundIopPs2::LoadThreadProc( void * pUserData )
{
    radSoundIopPs2 * pIop = (radSoundIopPs2*) pUserData;
    
    while( true )
    {
        pIop->m_refLoadSema->Wait( );
        
        if ( pIop->terminate )
        {
            break;
        }
        
        switch( pIop->loadThreadState )
        {
            case LoadThreadState_Loading:
            {
	            int ret = ::sceSifCallRpc(
		            & g_SifClientData_Load,
		            radSoundIopLoadServerFx_LoadBufferAsync,
		            0, // wait mode
		            & ( g_IopLoadServerFxParamBuffer.m_LoadBufferAsync ),
		            sizeof( g_IopLoadServerFxParamBuffer.m_LoadBufferAsync ),
		            0, 0, 0, 0 );
	                rAssert( ret >= 0 );
	                
	            break;
	        }
	        case LoadThreadState_Clearing:
	        {
                int ret = ::sceSifCallRpc
                (
                    & g_SifClientData_Load,
                    radSoundIopLoadServerFx_ClearBufferAsync,
                    0,
                    & ( g_IopLoadServerFxParamBuffer.m_ClearBufferAsync ),
                    sizeof( g_IopLoadServerFxParamBuffer.m_ClearBufferAsync ),
                    0,
                    0,
                    0,
                    0
                );

	            rAssert( ret >= 0 );
	            
	            break;
	        }
	        default:
	        {
	            rAssert( false );
	        }
	    }
	    
	    pIop->m_refLoadMutex->Lock( );
	    pIop->loadThreadState = LoadThreadState_Idle;
	    pIop->m_refLoadMutex->Unlock( );
    }
    
    return 0;		    
}
        
//============================================================================
// radSoundIopPs2::
//============================================================================

void radSoundIopPs2::LoadBufferAsync ( 
	unsigned int iopTransferBuffer,
	IRadSoundHalBuffer * pIRadSoundHalBuffer,
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames )
{
	rAssert( LoadThreadState_Idle == loadThreadState );

	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_IopTransferBuffer = iopTransferBuffer;
	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_SpuBuffer = ( unsigned int ) pIRadSoundHalBuffer->GetMemoryObject( )->GetMemoryAddress( );
	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_SpuBufferSizeInFrames = pIRadSoundHalBuffer->GetSizeInFrames( );
	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_LoadStartInFrames = startPositionInFrames;
	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_NumberOfLoadFrames = numberOfFrames;
	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_NumberOfChannels = pIRadSoundHalBuffer->GetFormat( )->GetNumberOfChannels( );
	g_IopLoadServerFxParamBuffer.m_LoadBufferAsync.m_Looping = pIRadSoundHalBuffer->IsLooping( );

    loadThreadState = LoadThreadState_Loading;
    
    m_refLoadSema->Signal( );
}

//============================================================================
// radSoundIopPs2::
//============================================================================

void radSoundIopPs2::ClearBufferAsync(
	IRadSoundHalBuffer * pIRadSoundHalBuffer,
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames )
{
    rAssert( LoadThreadState_Idle == loadThreadState );

    g_IopLoadServerFxParamBuffer.m_ClearBufferAsync.m_SpuBufferAddress = ( unsigned int ) pIRadSoundHalBuffer->GetMemoryObject( )->GetMemoryAddress( );
	g_IopLoadServerFxParamBuffer.m_ClearBufferAsync.m_SpuBufferSizeInFrames = pIRadSoundHalBuffer->GetSizeInFrames( );
	g_IopLoadServerFxParamBuffer.m_ClearBufferAsync.m_StartPositionInFrames = startPositionInFrames;
    g_IopLoadServerFxParamBuffer.m_ClearBufferAsync.m_NumberOfFrames = numberOfFrames;
	g_IopLoadServerFxParamBuffer.m_ClearBufferAsync.m_NumberOfChannels = pIRadSoundHalBuffer->GetFormat( )->GetNumberOfChannels( );
    g_IopLoadServerFxParamBuffer.m_ClearBufferAsync.m_Looping = pIRadSoundHalBuffer->IsLooping( );
    
    loadThreadState = LoadThreadState_Clearing;
    
    m_refLoadSema->Signal( );
}     

//============================================================================
// radSoundIopPs2::
//============================================================================
        
void radSoundIopPs2::Service( void )
{
    m_refVoiceMutex->Lock( );
    if ( VoiceThreadState_Busy == voiceThreadState )
    {
        m_refVoiceMutex->Unlock( );
        return;
    }
    m_refVoiceMutex->Unlock( );

    g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Current = g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Receiving;	
    g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Sending = g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current;        

    g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current.m_Stamp++;
    g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current.m_KeyOnMask[ 0 ] = 0; // reset state
    g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current.m_KeyOnMask[ 1 ] = 0;
    g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current.m_KeyOffMask[ 0 ] = 0;
    g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current.m_KeyOffMask[ 1 ] = 0;

    for( unsigned int core = 0; core < 2; core ++ )
    {
        for ( unsigned int voice = 0; voice < 24; voice ++ )
        {
            g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current.m_SpuVoiceParams[ core ][ voice ].m_Flags = 0;
        }
    }
    
    voiceThreadState = VoiceThreadState_Busy;
    
    m_refVoiceSema->Signal( );
}

//============================================================================
// radSoundIopPs2::
//============================================================================

bool radSoundIopPs2::LoadBufferComplete( void )
{
    return LoadThreadState_Idle == loadThreadState;
}

//============================================================================
// radSoundIopPs2::
//============================================================================

bool radSoundIopPs2::ClearBufferComplete( void )
{
    return LoadThreadState_Idle == loadThreadState;
} 

//============================================================================
// radSoundIopPs2::
//============================================================================

void radSoundIopPs2::BindToIopLoadServer( unsigned int clearBufferSize )
{
    while( 1 )
    {
        if ( sceSifBindRpc( & g_SifClientData_Load, radSoundIopLoadServerId, 0 ) < 0 )
        {
            rAssertMsg( false, "Failed to bind to radsound load server" );
        }

        if ( g_SifClientData_Load.serve != 0 )
        {
            break;
        }

        rDebugPrintf( "Binding to Iop Load Server\n" );
    }

    rDebugPrintf( "Bound To Iop Load Server\n" );

    g_IopLoadServerFxParamBuffer.m_Initialize.m_Version = radSoundLoadServerVersion;
    g_IopLoadServerFxParamBuffer.m_Initialize.m_TransferBufferSize     = m_TransferBufferSize;
    g_IopLoadServerFxParamBuffer.m_Initialize.m_UninterleaveBufferSize = m_TransferBufferSize;
    g_IopLoadServerFxParamBuffer.m_Initialize.m_ClearBufferSize        = clearBufferSize;
    g_IopLoadServerFxParamBuffer.m_Initialize.m_EnableDebugChannel     = 0;

    int ret = ::sceSifCallRpc( & g_SifClientData_Load,
        radSoundIopLoadServerFx_Initialize,
        0, // wait
        & ( g_IopLoadServerFxParamBuffer.m_Initialize ),
        sizeof( g_IopLoadServerFxParamBuffer.m_Initialize ),
        & ( g_IopLoadServerFxRetBuffer.m_Initialize ),
        sizeof( g_IopLoadServerFxRetBuffer.m_Initialize ),
        0,
        0 );

    rAssert( ret >= 0 );

    rAssertMsg( g_IopLoadServerFxRetBuffer.m_Initialize.m_InitializedOk == 1, "Failed to initialize Iop module" );

    m_TransferBufferAddress = g_IopLoadServerFxRetBuffer.m_Initialize.m_TransferBufferAddress;
}

void radSoundIopPs2::BindToIopVoiceServer( void )
{
    while( 1 )
    {
        if ( sceSifBindRpc( & g_SifClientData_Voice, radSoundIopVoiceServerId, 0 ) < 0 )
        {
            rAssertMsg( false, "Failed to bind to radsound voice server" );
        }

        if ( g_SifClientData_Voice.serve != 0 )
        {
            break;
        }
    }

    g_pRadSoundIopVoiceServerFx_Initialize_Params->m_Version = radSoundVoiceServerVersion;

    int ret = ::sceSifCallRpc
    (
          & g_SifClientData_Voice,
          radSoundIopVoiceServerFx_Initialize, // command
          0, // wait
          g_pRadSoundIopVoiceServerFx_Initialize_Params,
          sizeof( *g_pRadSoundIopVoiceServerFx_Initialize_Params ),
          g_pRadSoundIopVoiceServerFx_Initialize_Ret,
          sizeof( *g_pRadSoundIopVoiceServerFx_Initialize_Ret ),
          0,
          0
    );

	rAssert( ret >= 0 );

	rAssert( g_pRadSoundIopVoiceServerFx_Initialize_Ret->m_InitializedOk == 1 );
}

//============================================================================
// radSoundIopPs2::
//============================================================================

radSoundIopVoiceServerFx_WriteVoiceState_Params * radSoundIopPs2::GetWriteCommandPacket( void )
{
    return & g_RadSoundIopVoiceServerFx_WriteVoiceState_Params_Current;
}

//============================================================================
// radSoundIopPs2::
//============================================================================

radSoundEeVoiceServerFx_ReadVoiceState_Params * radSoundIopPs2::GetReadCommandPacket( void )
{
    return & g_RadSoundEeVoiceServerFx_ReadVoiceState_Params_Current;
}

radSoundIopPs2 * radSoundIopPs2::GetInstance( void )
{
    rAssert( radSoundIopPs2::s_pTheSoundRpcClient != NULL );

    return radSoundIopPs2::s_pTheSoundRpcClient;
}

void radSoundIopPs2::Initialize(
    unsigned int transferBufferSize,
    unsigned int clearBufferSize,
    radMemoryAllocator allocator )
{
    rAssert( radSoundIopPs2::s_pTheSoundRpcClient == NULL );

    new ( "radSoundIopPs2", allocator ) radSoundIopPs2( transferBufferSize, clearBufferSize );
    radSoundIopPs2::s_pTheSoundRpcClient->AddRef( );
}
void radSoundIopPs2::Terminate( void )
{
    rAssert( radSoundIopPs2::s_pTheSoundRpcClient != NULL );

    radSoundIopPs2::s_pTheSoundRpcClient->Release( );
}

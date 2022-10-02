//============================================================================
// File:        iopserverload.c
//
// Subsystem:   RadSound - PS2 implementation
//
// Description: This file contains implementation of an iop thread which is 
//              responsible for transfering data to SPU memory and 
//              uninterleaving stereo data.
//       
//============================================================================

//============================================================================
// Included Files
//============================================================================

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
#include "..\adpcm\vagheader.hpp"

//============================================================================
// Macros
//============================================================================

#define THREAD_PRIORITY ( ( ( USER_HIGHEST_PRIORITY + USER_LOWEST_PRIORITY ) / 2 ) + 1 )
#define DMA_CHANNEL 0

//============================================================================
// Public Function Prototypes
//============================================================================

// Initialization and Termination

void radSoundLoadServerInitialize( void );
void radSoundLoadServerTerminate( void );

//============================================================================
// Private Function Prototypes
//============================================================================

// Remote Procedure Call Functions

static int    LoadThreadProc( void );
static void * radSoundLoadRpcHandler(unsigned int fno, void *data, int size);

// Command handlers

static void * Fx_Initialize( void * pData, int size );
static void * Fx_LoadBufferAsync( void * pData, int size );
static void * Fx_ClearBufferAsync( void * pData, int size );
static void * Fx_DebugVerifySpuRange( void * pData, int size );

// Helper Functions

void FixupVagData( 	
	unsigned int iopTransferBuffer,	unsigned int spuBufferSizeInFrames,
	unsigned int loadStartInFrames,	unsigned int numberOfLoadFrames, 
	unsigned int numberOfChannels,	unsigned int looping );

void UninterleaveAndDMAAsync( 
	unsigned int spuBuffer, unsigned int iopBuffer, 
	unsigned int spuBufferSizeInFrames, unsigned int startInFrames,	
	unsigned int numberOfFrames, unsigned int numberOfChannels );

void DmaIopToSpu16( unsigned int bytes,
    unsigned int iopStartAddress,
    unsigned int spuStartAddress );

void DmaIopToSpu64( unsigned int bytes,
    unsigned int iopStartAddress,
    unsigned int spuStartAddress );

void DmaSpuToIop64( unsigned int bytes,
    unsigned int spuStartAddress,
    unsigned int iopStartAddress );
    
unsigned int GetMicroseconds( void );  

//============================================================================
// Global Data
//============================================================================

// Ee Load Server structure for issuing "Done" callbacks

sceSifClientData g_SifClientData_Load __attribute__((aligned (16)));

union radSoundIopLoadServerFxParams g_IopLoadServerFxParamBuffer __attribute__((aligned (64)));
union radSoundIopLoaderServerFxRet  g_IopLoadServerFxRetBuffer __attribute__((aligned (64)));

// For doing non 64 byte multiple dmas (read/write/modify operations)

static char g_pFixupChunk[ 64 ] __attribute__((aligned (64)));

// These buffers are allocated when the Ee sends its Init packet.

unsigned int g_DebugChannelEnabled;

struct Buffer
{
    unsigned int m_Size;
    unsigned char * m_pMemory;
};

struct BufferInfo
{
    struct Buffer m_Clear;
    struct Buffer m_Uninterleave;
    struct Buffer m_Transfer;    
} g_Buffers;

//============================================================================
// Stuff that should be in raddebug.hpp but nobody maintains IOP libs
//============================================================================

#define rReleaseBreak() { asm( ".word 0x0000004d"); }
int rDebugAssertFail_Implementation( const char* condition, const char* filename, unsigned int linenum)
{
    printf( "Assert Failed: [%s] [%s] [%d]\n", condition, filename, linenum );
    return 1;
}
#define rAssert( x ) if (!(x)) if ( rDebugAssertFail_Implementation(#x,__FILE__,__LINE__) ) { rReleaseBreak(); }

//============================================================================
// Function: Fx_Initialize
//
// Description: Entry point to the load system.
//============================================================================

void radSoundLoadServerInitialize( void )
{
    struct ThreadParam threadParam;
    int th;   

    //
    // Start the Rpc Load Server Thread.
    //

    threadParam.attr         = TH_C;
    threadParam.entry        = LoadThreadProc;
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
        printf( "radSoundIop: Failed to create LoadServerThread\n" );       
    }
}

//============================================================================
// Function: Fx_Initialize
//
// Description: Not implemented, game never terminates without resetting
//============================================================================

void radSoundLoadServerTerminate( void )
{
}

//============================================================================
// Function: LoadThreadProc
//
// Description: This thread blocks waiting for Rpc calls from the Ee
//============================================================================

int LoadThreadProc( void )
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
        radSoundIopLoadServerId,
        radSoundLoadRpcHandler,        // This is our server function
        (void *) & g_IopLoadServerFxParamBuffer,
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

//============================================================================
// Function: radSoundLoadRpcHandler
//
// Description: This function is called by the sony libraries when the EE
//      makes an RPC request to our server number.
//============================================================================

void * radSoundLoadRpcHandler
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
		case radSoundIopLoadServerFx_Initialize:
		{
			return Fx_Initialize( pData, size );
		}
		case radSoundIopLoadServerFx_LoadBufferAsync:
		{
			return Fx_LoadBufferAsync( pData, size );
		}
        case radSoundIopLoadServerFx_ClearBufferAsync:
        {
            return Fx_ClearBufferAsync( pData, size );
        }
        case radSoundIopLoadServerFx_DebugVerifySpuRange:
		{
			return Fx_DebugVerifySpuRange( pData, size );
		}
        default:
        {
            printf( "radSoundIop: Unknown load server function called!\n" );
            return NULL;
        }
    }
}

//============================================================================
// Function: Fx_Initialize
// 
// Description: This function is called by the Ee sound system, it initializes
//      this Load Module and allocates buffer memory.
//============================================================================

void * Fx_Initialize( void * pData, int size )
{
    unsigned int i;

    struct radSoundIopLoadServerFx_Initialize_Params * pParams =
        (struct radSoundIopLoadServerFx_Initialize_Params*) pData;

    struct radSoundIopLoadServerFx_Initialize_Ret    * pRet =
        (struct radSoundIopLoadServerFx_Initialize_Ret*)    & g_IopLoadServerFxRetBuffer;

    if ( pParams->m_Version != radSoundLoadServerVersion )
    {
        printf( "radSound: IopLoadServer Version Missmatch EE:[%d] Iop:[%d]\n",
            pParams->m_Version, radSoundLoadServerVersion );

	    pRet->m_InitializedOk = 0;
    }
    else
    {
        printf( "radSound: IopLoadServer Init:\n" );
        printf( "    Version:                  [0x%x]\n", pParams->m_Version );
        printf( "    Debug Channel Enabled:    [0x%x]\n", pParams->m_EnableDebugChannel );
        printf( "    UnInterleave Buffer Size: [%d]\n", pParams->m_UninterleaveBufferSize );
        printf( "    Transfer Buffer Size:     [%d]\n", pParams->m_TransferBufferSize );
        printf( "    Clear Buffer Size:        [%d]\n", pParams->m_ClearBufferSize );
        printf( "    Total Memory Used:        [%d]\n", pParams->m_TransferBufferSize +
                                                        pParams->m_UninterleaveBufferSize +
                                                        pParams->m_ClearBufferSize );

        g_DebugChannelEnabled= pParams->m_EnableDebugChannel;

        g_Buffers.m_Clear.m_Size = pParams->m_ClearBufferSize;
        g_Buffers.m_Clear.m_pMemory = AllocSysMemory( SMEM_Low, g_Buffers.m_Clear.m_Size, NULL );
        rAssert( g_Buffers.m_Clear.m_pMemory != NULL );

        g_Buffers.m_Uninterleave.m_Size = pParams->m_UninterleaveBufferSize;
        g_Buffers.m_Uninterleave.m_pMemory = AllocSysMemory( SMEM_Low, pParams->m_UninterleaveBufferSize, NULL );
        rAssert( g_Buffers.m_Uninterleave.m_pMemory != NULL );

        g_Buffers.m_Transfer.m_Size = pParams->m_TransferBufferSize;
        g_Buffers.m_Transfer.m_pMemory = AllocSysMemory( SMEM_Low, pParams->m_TransferBufferSize, NULL );
        rAssert( g_Buffers.m_Transfer.m_pMemory != NULL );

        // Fill clear buffer with Adpcm clear pattern.

        memset( g_Buffers.m_Clear.m_pMemory, 0, g_Buffers.m_Clear.m_Size );

        for( i = 0 ; i < g_Buffers.m_Clear.m_Size ; i+=16 )
        {
            g_Buffers.m_Clear.m_pMemory[ i ] = 0xC0;
        }

        pRet->m_InitializedOk = 1;
        pRet->m_TransferBufferAddress = (unsigned int) g_Buffers.m_Transfer.m_pMemory;
    }

	return pRet;
}

//============================================================================
// Function: Fx_LoadBufferAsync
//
// Description: The function will prepare the data for playback and
//              then DMA the requested frames into the SPU as per EE request.  
//============================================================================

void * Fx_LoadBufferAsync
( 
	void * pData,
	int size
)
{
	struct radSoundIopLoadServerFx_LoadBuffer_Params * pParams =
        ( struct radSoundIopLoadServerFx_LoadBuffer_Params * ) pData;
	
    unsigned int startTime = GetMicroseconds( );

    rAssert( size == sizeof( struct radSoundIopLoadServerFx_LoadBuffer_Params ) );

    if ( g_DebugChannelEnabled )
    {
	    printf( "Buffer Load:\n" );
	    printf( "	iopbuffer[0x%x] spubuffer[0x%x] bufferframes[%d] start[%d] num_frames[%d] channels[%d]\n", 
	        pParams->m_IopTransferBuffer,
	        pParams->m_SpuBuffer,
	        pParams->m_SpuBufferSizeInFrames,
	        pParams->m_LoadStartInFrames,
	        pParams->m_NumberOfLoadFrames,
	        pParams->m_NumberOfChannels );
    }

	FixupVagData(
		pParams->m_IopTransferBuffer,
		pParams->m_SpuBufferSizeInFrames,
		pParams->m_LoadStartInFrames,
		pParams->m_NumberOfLoadFrames,
		pParams->m_NumberOfChannels,
		pParams->m_Looping );

	UninterleaveAndDMAAsync(
		pParams->m_SpuBuffer,
		pParams->m_IopTransferBuffer,
		pParams->m_SpuBufferSizeInFrames,
		pParams->m_LoadStartInFrames,
		pParams->m_NumberOfLoadFrames,
		pParams->m_NumberOfChannels );

    return NULL;
};

//============================================================================
// Function: Fx_ClearBufferAsync
//
// Description: This function handles an EE request to clear an area of sound
//      memory with silent .vag data.  This is NOT 0.  See discussion above
//      of the peculiarities of the .vag data format.  Note that this function
//      will automatically chunk up the clear into multiple DMA operations
//      each one the size of our clear buffer.
//============================================================================

void * Fx_ClearBufferAsync
(
    void * pData,
    int size
)
{
    unsigned int channel; // counter

    unsigned char * pLoopStartFixup = NULL;
    unsigned char * pLoopEndFixup   = NULL;

    struct radSoundIopLoadServerFx_ClearBuffer_Params * pParams
        = ( struct radSoundIopLoadServerFx_ClearBuffer_Params * ) pData;

    unsigned int bytesCleared = 0;
    unsigned int bytesClearing = 0; 
    unsigned int bytesToClear = pParams->m_NumberOfFrames * VAG_MONO_FRAME_SIZE;
    unsigned int startPositionInBytes = pParams->m_StartPositionInFrames * VAG_MONO_FRAME_SIZE;
    unsigned int spuBufferChannelSizeInBytes = ( pParams->m_SpuBufferSizeInFrames * VAG_MONO_FRAME_SIZE );
        	
    rAssert( sizeof( struct radSoundIopLoadServerFx_ClearBuffer_Params ) );

    if ( g_DebugChannelEnabled )
    {
        printf( "Buffer Clear: Buffer: [0x%x] SizeInFrames: [0x%x] StartFrame: [0x%x] NumFrames: [0x%x] Channels: [0x%x] Looping: [0x%x]\n",
            pParams->m_SpuBufferAddress,
            pParams->m_SpuBufferSizeInFrames,
	        pParams->m_StartPositionInFrames,
	        pParams->m_NumberOfFrames,
	        pParams->m_NumberOfChannels,
            pParams->m_Looping );
    }

    while ( bytesCleared < bytesToClear )
    {
        unsigned int loopBit = pParams->m_Looping ? VAG_LOOP_BIT : 0x00;

        bytesClearing = bytesToClear - bytesCleared;

        if ( bytesClearing > g_Buffers.m_Clear.m_Size )
        {
            bytesClearing = g_Buffers.m_Clear.m_Size;
        }

	    //
	    // Set the loop start/end markers.  We keep a reference to 
	    // the bytes that are altered so that we can restore them later
	    //

        if( ( startPositionInBytes + bytesCleared ) == 0 )
        {
	        pLoopStartFixup  = g_Buffers.m_Clear.m_pMemory + 1;
	        *pLoopStartFixup = VAG_LOOP_START_BIT | loopBit;
        }

        if ( ( startPositionInBytes + bytesCleared + bytesClearing ) == spuBufferChannelSizeInBytes )
        {
	        pLoopEndFixup    = g_Buffers.m_Clear.m_pMemory + bytesClearing - 15;
	        *pLoopEndFixup   = VAG_LOOP_END_BIT | loopBit;
        }
		
        for( channel = 0; channel < pParams->m_NumberOfChannels; channel++ )
        {
            DmaIopToSpu16(
                bytesClearing,
                (unsigned int) g_Buffers.m_Clear.m_pMemory,
                pParams->m_SpuBufferAddress + startPositionInBytes + bytesCleared + ( channel * spuBufferChannelSizeInBytes ) );
        }

        //
        // Check if we altered the clear buffer previously. If so, restore the data.
        //

        if( pLoopStartFixup != NULL )
        {
            *pLoopStartFixup = 0x00;
        }

        if( pLoopEndFixup != NULL )
        {
            *pLoopEndFixup = 0x00;
        }

        bytesCleared += bytesClearing;
    }

    //
    // Don't return any information.
    //

    return NULL;
}
   
//============================================================================
// Function: FixupVagData
//
// Description: The .vag data format relies on markers in the data to control 
//      the hardware, yeah, this is stupid, I know, but life goes on.  See
//      discussion of the .vag data format above.
//============================================================================

void FixupVagData
(
	unsigned int iopTransferBuffer,
	unsigned int spuBufferSizeInFrames,
	unsigned int loadStartInFrames,
	unsigned int numberOfLoadFrames,
	unsigned int numberOfChannels,
	unsigned int looping
)
{
    int channel;
    unsigned int numberOfLoadBytes;
    char loopbit = 0x00;

    numberOfLoadBytes = numberOfLoadFrames * VAG_MONO_FRAME_SIZE * numberOfChannels;

	// Prepare the looping fix-up bit

	if( looping )
	{
		loopbit = VAG_LOOP_BIT;
	}

    for ( channel = 0; channel < numberOfChannels; channel ++ )
    {
	    // Set the first loop start/end bits if we are loading the first block
        // of data.

        if ( loadStartInFrames == 0 )
        {
            *((char*)(iopTransferBuffer + 1 + (VAG_MONO_FRAME_SIZE * channel)))  = ( VAG_LOOP_START_BIT | loopbit ); // start
        }

        // If we are loading the last block of data, set the end bits.

        if ( (loadStartInFrames + numberOfLoadFrames) == spuBufferSizeInFrames )
        {
	        *((char*)(iopTransferBuffer + numberOfLoadBytes - 15 - (VAG_MONO_FRAME_SIZE * channel))) = ( VAG_LOOP_END_BIT | loopbit ); // end
        }
    }
};

//============================================================================
// Function: UninterleaveAndDMAAsync
// 
//
// Description: This function uninterleaves the data (stereo data) and then
//		starts up the dma state machine.  Interleaved data consists of
//      alternating frames of channel 0 and channel 1.  This function seperates
//      the channels into two mono buffers.
//============================================================================

void UninterleaveAndDMAAsync
( 
	unsigned int spuBuffer,
	unsigned int iopBuffer,
	unsigned int spuBufferSizeInFrames,
	unsigned int startInFrames,
	unsigned int numberOfFrames,
	unsigned int numberOfChannels
)
{
    unsigned int channel;

	unsigned int radFrameSize = VAG_MONO_FRAME_SIZE * numberOfChannels;
    unsigned int uninterleaveStartTime = 0;
    unsigned int uninterleaveFinishTime = 0;

	rAssert( g_Buffers.m_Uninterleave.m_Size >= ( numberOfFrames * radFrameSize ) );

	// Uninterleave only if it's necessary

	if( numberOfChannels == 1 )
	{        
        DmaIopToSpu16(
            numberOfFrames * radFrameSize,
            iopBuffer,
            spuBuffer + startInFrames * radFrameSize );
	}
	else if( numberOfChannels == 2 )
	{
		// A frame is sixteen bytes which can be moved
		// in four, four byte pieces

		unsigned int * pDest0    = (unsigned int*) g_Buffers.m_Uninterleave.m_pMemory;
        unsigned int * pDestEnd0 = (unsigned int*) ( (unsigned int) g_Buffers.m_Uninterleave.m_pMemory + ( numberOfFrames * VAG_MONO_FRAME_SIZE ) );
        unsigned int * pDest1    = (unsigned int*) ( (unsigned int) g_Buffers.m_Uninterleave.m_pMemory + ( g_Buffers.m_Uninterleave.m_Size / 2 ) );
		unsigned int * pSrc      = (unsigned int*) iopBuffer;

	    FlushDcache( ); // Make sure we don't fixup garbage in the cache.
        		
		// Uninterleave the data to be loaded
		
		while( pDest0 < pDestEnd0 )
		{			
			pDest0[ 0 ] = pSrc[ 0 ];
			pDest0[ 1 ] = pSrc[ 1 ];
			pDest0[ 2 ] = pSrc[ 2 ];
			pDest0[ 3 ] = pSrc[ 3 ];

			pDest1[ 0 ] = pSrc[ 4 ];
			pDest1[ 1 ] = pSrc[ 5 ];
			pDest1[ 2 ] = pSrc[ 6 ];
			pDest1[ 3 ] = pSrc[ 7 ];

            pDest0 += 4;
            pDest1 += 4;
            pSrc   += 8;
		}

        for( channel = 0; channel < numberOfChannels; channel++ )
        {
            DmaIopToSpu16(
                numberOfFrames * VAG_MONO_FRAME_SIZE,
                (unsigned int) g_Buffers.m_Uninterleave.m_pMemory + ( channel * ( g_Buffers.m_Uninterleave.m_Size / numberOfChannels ) ),
                spuBuffer + ( startInFrames * VAG_MONO_FRAME_SIZE ) + ( channel * spuBufferSizeInFrames * VAG_MONO_FRAME_SIZE ) );
        }
    }
    else
    {
        rAssert( 0 );
    }
}

//============================================================================
// Function: DmaIopToSpu16
// 
// Description: This function DMAs fro IOP to SPU memory.  Because the DMA
//      unit only DMAs 64 byte blocks and sound data is in 16 byte multiples
//      we might have to perform a read/modify write operation on the
//      last bit of data.
//============================================================================

void DmaIopToSpu16( unsigned int bytes, unsigned int iopStartAddress, unsigned int spuStartAddress )
{

    unsigned int evenMultipleBytesToTransfer;
    unsigned int extraChunkBytesToTransfer;

	//
    // Operation not started. Lets begin.
    // Calculate the number of bytes to transfer, that is a multple of 64.
    //

    if ( g_DebugChannelEnabled )
    {
        printf( "DmaIopToSpu16:\n    Bytes: [0x%x] IopAddress:[0x%x] SpuStartAddress:[0x%x]\n",
            bytes, iopStartAddress, spuStartAddress );
    }

    if ( bytes >= 64 )
    {
        evenMultipleBytesToTransfer = ( bytes - ( bytes % 64 ) );
    }
    else
    {
        evenMultipleBytesToTransfer = 0;
    }

    //
    // Calculate the number of bytes to fixup
    //
    extraChunkBytesToTransfer = bytes % 64;

    //
    // Transfer our 64 byte multiple data to the spu
    //
    if ( evenMultipleBytesToTransfer > 0 )
    {
        DmaIopToSpu64( evenMultipleBytesToTransfer, iopStartAddress, spuStartAddress );
    }

    //
    // Now we have extra bytes to transfer, so we read in a 64 byte chunk from
    // SPU memory, add our data to it, and write it back
    //
    if( extraChunkBytesToTransfer > 0 )
    {
        DmaSpuToIop64( 64, spuStartAddress + evenMultipleBytesToTransfer, (unsigned int) g_pFixupChunk );

        //
        // Add our bytes to the 64 byte chunk
        //
    
        memcpy( g_pFixupChunk, (char *) (iopStartAddress + evenMultipleBytesToTransfer), extraChunkBytesToTransfer );

		//
        // Transfer the whole 64 bytes back
        //

        DmaIopToSpu64( 64, (unsigned int) g_pFixupChunk, spuStartAddress + evenMultipleBytesToTransfer );
    }
} 

//============================================================================
// Function: DmaIopToSpu64
// 
// Description: This function DMAs from IOP to SPU memory.  This version of
//      our dma function doesn't fixup non-64 byte aligned data blocks.
//============================================================================

void DmaIopToSpu64( unsigned int bytes,
    unsigned int iopStartAddress,
    unsigned int spuStartAddress )
{
    int ret;

    rAssert( bytes % 64 == 0 );
    rAssert( spuStartAddress % 16 == 0 );

    if ( g_DebugChannelEnabled )
    {
        printf( "DmaIopToSpu64:\n    Bytes: [0x%x] IopAddress:[0x%x] SpuStartAddress:[0x%x]\n",
            bytes, iopStartAddress, spuStartAddress );
    }

    ret = sceSdVoiceTrans(
        DMA_CHANNEL,
        SD_TRANS_MODE_WRITE | SD_TRANS_BY_DMA,
        (u_char*) iopStartAddress,
        spuStartAddress,
        bytes );

    rAssert( ret == bytes );

    ret = sceSdVoiceTransStatus ( DMA_CHANNEL, SD_TRANS_STATUS_WAIT );

    rAssert( ret == 1 );

}

//============================================================================
// Function: DmaSpuToIop64
// 
// Description: This function DMAs from SPU to IOP memory.  The version of
//      the dma function doesn't fixup non-64 byte aligned data blocks.
//============================================================================

void DmaSpuToIop64( unsigned int bytes,
    unsigned int spuStartAddress,
    unsigned int iopStartAddress )
{
    int ret;

    rAssert( bytes % 64 == 0 );
    rAssert( spuStartAddress % 16 == 0 );

    ret = sceSdVoiceTrans(
        DMA_CHANNEL,
        SD_TRANS_MODE_READ | SD_TRANS_BY_DMA,
        (unsigned char*) iopStartAddress,
        spuStartAddress,
        bytes );

    rAssert( ret == bytes );

    ret = sceSdVoiceTransStatus( DMA_CHANNEL, SD_TRANS_STATUS_WAIT );
    
    rAssert( ret == 1 );    
}

//============================================================================
//
// Function:    Fx_DebugVerifySpuRange
//
// Description: Has a look at some specified spu memory verifies that the loop
//              bits are in order.  Prints out a warning message for each
//              line of offending data.
//============================================================================

void * Fx_DebugVerifySpuRange
( 
	void * pData,
	int size
)
{
    char * pVerifyMemory;
	char * pCurrent = NULL;
	struct radSoundIopLoadServerFx_DebugVerifySpuRange_Params * pParams = NULL;

    unsigned int ripthrough = 0;
    unsigned int channel = 0;
    unsigned int spuRangeStart = 0;
    unsigned int spuRangeSize = 0;
    unsigned int numberOfChannels = 0;
    unsigned char prevVal = 0x00;

    rAssert( size == sizeof( struct radSoundIopLoadServerFx_DebugVerifySpuRange_Params ) );
          
    pParams = ( struct radSoundIopLoadServerFx_DebugVerifySpuRange_Params * ) pData;
    
    pVerifyMemory = AllocSysMemory( SMEM_Low, spuRangeSize, NULL );
    rAssert( pVerifyMemory != NULL );

    // Set up some working variables

    spuRangeStart = pParams->m_SpuRangeStart;
    spuRangeSize =  pParams->m_SpuRangeSize;
    numberOfChannels = pParams->m_NumberOfChannels;
        
	//
    // Dma from Spu --> Iop
    //

	memset( pVerifyMemory, 0xCD, spuRangeSize );

    FlushDcache( );

    printf( "Fx_DebugVerifySpuRange: IOP [0x%8x] <- SPU [0x%8x] BytesRead [0x%x] Channels [%d]\n", 
        pVerifyMemory, 
        spuRangeStart, 
        ( spuRangeSize & 0xFFFFFFC0 ) + 64, numberOfChannels );

    DmaSpuToIop64( ( spuRangeSize & 0xFFFFFFC0 ) + 64, spuRangeStart, (unsigned int) pVerifyMemory );

    //
    // Now have a look at the loop bits
    //

    for( channel = 0; channel < numberOfChannels; channel++ )
    {
        for ( ripthrough = (unsigned int) ( ( channel * spuRangeSize / 2 ) + pVerifyMemory + 1 ); ripthrough < (unsigned int) pVerifyMemory + spuRangeSize; ripthrough += 16 )
        {
		    if
            (   * ( ( char * ) ripthrough ) != 0x00 &&  // non-looping
                * ( ( char * ) ripthrough ) != 0x01 &&  // end bit (/w no loop)
                * ( ( char * ) ripthrough ) != 0x02 &&  // looping 
                * ( ( char * ) ripthrough ) != 0x03 &&  // end bit (/w loop)
                * ( ( char * ) ripthrough ) != 0x04 &&  // start bit (/w no loop)
                * ( ( char * ) ripthrough ) != 0x06     // start bit (/w loop)
            )
            {
                printf( "******* VERIFY SPU RANGE ERROR ******* loop bit found @ [temp_iop 0x%x] with value of [0x%x]\n" \
                        "       temp_iop buffer start [0x%x] spu range start [0x%x] range size [0x%x]\n",
                    ripthrough,
                    * ( ( char * ) ripthrough ),
                    pVerifyMemory,
                    spuRangeStart,
                    spuRangeSize );
                return NULL;
            }

		    if
            (
                * ( ( char * ) ripthrough ) == 0x01 ||
                * ( ( char * ) ripthrough ) == 0x03 
            )
            {
                // Is this a valid end bit?
                if( prevVal == 0x00 || prevVal == 0x02 )
                {
                    break;
                }
            }
            prevVal = * ( ( char * ) ripthrough );
        }
	}

    return NULL;
};

//============================================================================
// Function: GetMicroseconds
//
// Description: Simply returns the system time in microseconds.
//============================================================================

unsigned int GetMicroseconds( void )
{
    struct SysClock sc;
    int sec;
    int usec;

    int ret = GetSystemTime( & sc );

    rAssert( ret == KE_OK );

    SysClock2USec( & sc,
        & sec,
        & usec );

    return ( sec * 1000 * 1000) + usec;
}

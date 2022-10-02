//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <dolphin.h>
#include <arq.h>

#include <radfile.hpp>
#include <radsound.hpp>

#include "radsoundgcn.hpp"

#include "buffer.hpp"
#include "bufferasyncrequest.hpp"

//======================================================================
// Static Initialization
//======================================================================

/* static */ radSoundBufferAsyncRequestGcn * radSoundBufferAsyncRequestGcn::s_pRequestHead = NULL;

/* static */ void * radSoundBufferAsyncRequestGcn::s_pMainMemoryTransferBuffer = NULL;
/* static */ void * radSoundBufferAsyncRequestGcn::s_pMainMemoryInterleaveBuffer = NULL;
/* static */ unsigned long radSoundBufferAsyncRequestGcn::s_MainMemoryBufferSize = 0;

/* static */ radMemoryAllocator radSoundBufferAsyncRequestGcn::s_MainMemoryTransferBufferAllocator = RADMEMORY_ALLOC_DEFAULT;

//======================================================================
// radSoundBufferAsyncReuquestGcn::radSoundBufferAsyncRequestGcn
//======================================================================

radSoundBufferAsyncRequestGcn::radSoundBufferAsyncRequestGcn
(
    radSoundBufferGcn * pRadSoundBufferGcn
)
    :
    m_pRequestNext( NULL ),
    m_xRadSoundBufferGcn( pRadSoundBufferGcn )
{  
    rAssert( m_xRadSoundBufferGcn != NULL );
}

//======================================================================
// radSoundBufferAsyncRequestGcn::radSoundBufferAsyncRequestGcn
//======================================================================

void radSoundBufferAsyncRequestGcn::Initialize( void )
{
    radSoundBufferAsyncRequestGcn * pSearch = s_pRequestHead;
    radSoundBufferAsyncRequestGcn * pPrev = NULL;

    while ( pSearch != NULL )
    {
        pPrev = pSearch;
        pSearch = pSearch->m_pRequestNext;
    }

    if ( pPrev == NULL )
    {
        s_pRequestHead = this;
    }
    else
    {
        pPrev->m_pRequestNext = this;
    }

    if( s_pRequestHead == this )
    {
        OnBeginOperation( );
    }
}
        
//======================================================================
// radSoundBufferAsyncRequestGcn::radSoundBufferAsyncRequestGcn
//======================================================================

radSoundBufferAsyncRequestGcn::~radSoundBufferAsyncRequestGcn( void )
{
    //
    // Remove ourself from the load queue for our priority
    //

    s_pRequestHead = m_pRequestNext;
        
    //
    // Issue the next request if any; look for a high priority load
    // first
    //

    if ( s_pRequestHead != NULL )
    {
        s_pRequestHead->OnBeginOperation( );
    }
}

//======================================================================
// radSoundBufferAsyncRequestGcn::DmaToAram
//======================================================================

void radSoundBufferAsyncRequestGcn::DmaToAram
(
    unsigned long mainMemoryAddress,
    unsigned long aramAddress, 
    unsigned long numberOfBytes
)
{
    m_xIRadMemorySpaceCopyRequest = ::radMemorySpaceCopyAsync(
        (void*) aramAddress, radMemorySpace_Aram, (void*) mainMemoryAddress, radMemorySpace_Main, numberOfBytes );
}

//======================================================================
// radSoundBufferAsyncRequestGcn::Update
//======================================================================

void radSoundBufferAsyncRequestGcn::Update( void )
{
    if ( m_xIRadMemorySpaceCopyRequest != NULL )
    {
        if ( m_xIRadMemorySpaceCopyRequest->IsDone( ) )
        {
            m_xIRadMemorySpaceCopyRequest = NULL;
	    
		    OnDmaToAramComplete( );
	    }
    }
}

//======================================================================
// radSoundBufferAsyncRequestGcn::Initialize ( static )
//======================================================================

const unsigned int minAdpcm = 32 * 2 * 2;

/* static */ void radSoundBufferAsyncRequestGcn::Initialize
(
    unsigned long mainMemoryTransferBufferSize,
    radMemoryAllocator allocator
)
{
    //
    // We actually split this main memory size into two, one half is for the
    // cd read, then we uninterleave stereo data into the interleave buffer if
    // it is stereo, then DMA each channel over separately.
    //

    // Info:
	//     When we read from disk, the gamecube needs
    //     the buffer address to be 32 byte-aligned,
	//     the readsize should be a multiple of 32,
	//     and store offset should be a multiple of 4.

    s_MainMemoryTransferBufferAllocator = allocator;

    s_MainMemoryBufferSize =
        ::radMemoryRoundUp(
            mainMemoryTransferBufferSize / 2, ARQ_DMA_ALIGNMENT * 2 );

    s_MainMemoryBufferSize = ::radMemoryRoundUp( s_MainMemoryBufferSize, minAdpcm );
            
    s_pMainMemoryTransferBuffer = ::radMemoryAllocAligned(
            s_MainMemoryTransferBufferAllocator, s_MainMemoryBufferSize + ( ARQ_DMA_ALIGNMENT * 2 ),
            ARQ_DMA_ALIGNMENT );
               
    s_pMainMemoryInterleaveBuffer = ::radMemoryAllocAligned(
            s_MainMemoryTransferBufferAllocator, s_MainMemoryBufferSize + ( ARQ_DMA_ALIGNMENT * 2 ),
            ARQ_DMA_ALIGNMENT );

    rAssert( ((unsigned long)s_pMainMemoryTransferBuffer) % ARQ_DMA_ALIGNMENT == 0 );
    rAssert( ((unsigned long)s_pMainMemoryInterleaveBuffer) % ARQ_DMA_ALIGNMENT == 0 );
     
    rAssertMsg( s_pMainMemoryTransferBuffer != NULL, "radsound: Failed to allocate main memory transfer buffer" );
    rAssertMsg( s_pMainMemoryInterleaveBuffer != NULL, "radsound: Failed to allocator main memory interleave buffer" );
}

//======================================================================
// radSoundBufferAsyncRequestGcn::Terminate ( static )
//======================================================================

/* static */ void radSoundBufferAsyncRequestGcn::Terminate( void )
{
    //
    // Just free up our static transfer buffers
    //

    ::radMemoryFreeAligned( s_MainMemoryTransferBufferAllocator, s_pMainMemoryTransferBuffer );
    ::radMemoryFreeAligned( s_MainMemoryTransferBufferAllocator, s_pMainMemoryInterleaveBuffer );
}

/* static */ void radSoundBufferAsyncRequestGcn::CancelAsyncOperations( IRefCount * pIRefCount_Owner )
{
    radSoundBufferAsyncRequestGcn * pSearch = s_pRequestHead;

    while ( pSearch != NULL )
    {
        if ( static_cast< IRefCount * >( pSearch->m_xRadSoundBufferGcn ) == pIRefCount_Owner )
        {
            pSearch->Cancel( );
        }

        pSearch = pSearch->m_pRequestNext;
    }
}

/* static */ void radSoundBufferAsyncRequestGcn::Service( void )
{
    if ( s_pRequestHead != NULL )
    {
        s_pRequestHead->Update( );
    }    
    
}



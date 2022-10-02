//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//============================================================================
// Include Files
//============================================================================

#include "pch.hpp"
#include <stdio.h>
#include "buffer.hpp"
#include "bufferloader.hpp"
#include "system.hpp"

const unsigned int RADSOUNDHAL_BUFFER_CHANNEL_ALIGNMENT = 1;

//============================================================================
// Static Initialization
//============================================================================

radSoundHalBufferWin * radSoundHalBufferWin::s_pLinkedClassHead = NULL;
radSoundHalBufferWin * radSoundHalBufferWin::s_pLinkedClassTail = NULL;
ref< IRadMemoryPool > radSoundHalBufferWin::s_refIRadMemoryPool = NULL;
radSoundHalBufferWin::BufferData * radSoundHalBufferWin::s_pLRUFreeBufferListHead = NULL;
radSoundHalBufferWin::BufferData * radSoundHalBufferWin::s_pLRUFreeBufferListTail = NULL;
unsigned int radSoundHalBufferWin::DebugInfo::s_TotalFreeCount = 0;
unsigned int radSoundHalBufferWin::DebugInfo::s_TotalBusyCount = 0;
unsigned int radSoundHalBufferWin::DebugInfo::s_Total = 0;

//========================================================================
// radSoundHalBufferWin::~radSoundHalBufferWin
//========================================================================

radSoundHalBufferWin::~radSoundHalBufferWin( void )
{
    BufferData * pBufferDataIter = NULL;

    pBufferDataIter = m_pFreeBufferDataList_Pos;

    while( pBufferDataIter != NULL )
    {
        BufferData * pOldData = pBufferDataIter;
        pBufferDataIter = pBufferDataIter->m_pNext;
        RemoveFromList( pOldData );
        DeleteBufferData( pOldData );
    }

    pBufferDataIter = m_pFreeBufferDataList_NonPos;

    while( pBufferDataIter != NULL )
    {
        BufferData * pOldData = pBufferDataIter;
        pBufferDataIter = pBufferDataIter->m_pNext;
        RemoveFromList( pOldData );
        DeleteBufferData( pOldData );
    }

    pBufferDataIter = m_pBusyBufferDataList;

    while( pBufferDataIter != NULL )
    {
        BufferData * pOldData = pBufferDataIter;
        pBufferDataIter = pBufferDataIter->m_pNext;
        RemoveFromList( pOldData );
        DeleteBufferData( pOldData );
    }
}

//========================================================================
// radSoundHalBufferWin::radSoundHalBufferWin
//========================================================================

radSoundHalBufferWin::radSoundHalBufferWin(	void )
    :
    m_SizeInFrames( 0 ),
    m_LoadStartInBytes( 0 ),
    m_pLockedLoadBuffer( NULL ),
    m_LockedLoadBytes( 0 ),
    m_Looping( false ),
    m_Streaming( false ),
    m_pFreeBufferDataList_Pos( NULL ),
    m_pFreeBufferDataList_NonPos( NULL ),
    m_pBusyBufferDataList( NULL ),
    m_refIRadSoundHalAudioFormat( NULL ),
    m_refIRadMemoryObject( NULL ),
    m_refIRadSoundHalBufferLoadCallback( NULL )
{
    ::memset( & m_DebugInfo, 0, sizeof( m_DebugInfo ) );
}

//========================================================================
// radSoundHalBufferWin::Initialize
//========================================================================

void radSoundHalBufferWin::Initialize
(
	IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
    IRadMemoryObject * pIRadMemoryObject,
    unsigned int sizeInFrames,
	bool looping,
    bool streaming
)
{
    rAssert( pIRadSoundHalAudioFormat != NULL );
    rAssert( pIRadSoundHalAudioFormat->GetEncoding() == IRadSoundHalAudioFormat::PCM );
	rAssert( pIRadMemoryObject->GetMemorySize( ) >= ::radSoundHalBufferCalculateMemorySize( 
        IRadSoundHalAudioFormat::Bytes, sizeInFrames, 
        IRadSoundHalAudioFormat::Frames, pIRadSoundHalAudioFormat ) );

    m_refIRadSoundHalAudioFormat = pIRadSoundHalAudioFormat;
	m_refIRadMemoryObject = pIRadMemoryObject;
	m_Looping = looping;
    m_Streaming = streaming;
    m_SizeInFrames = sizeInFrames;
}

//========================================================================
// radSoundHalBufferWin::GetMemoryObject
//========================================================================

IRadMemoryObject * radSoundHalBufferWin::GetMemoryObject( void )
{
	return m_refIRadMemoryObject;
}

//========================================================================
// radSoundHalBufferWin::Clear
//========================================================================

void radSoundHalBufferWin::ClearAsync
( 
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames,
	IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback
)
{
    // Only worry about the busy buffers

    BufferData * pBufferIter = m_pBusyBufferDataList;

    while( pBufferIter != NULL )
    {
        ClearDirectSoundBuffer( pBufferIter->m_refIDirectSoundBuffer, startPositionInFrames, numberOfFrames );
        pBufferIter = pBufferIter->m_pNext;
    }

	if ( pIRadSoundHalBufferClearCallback != NULL )
	{
		pIRadSoundHalBufferClearCallback->OnBufferClearComplete( );
	}
}

//========================================================================
// radSoundHalBufferWin::ClearDirectSoundBuffer
//========================================================================

void radSoundHalBufferWin::ClearDirectSoundBuffer
(
    IDirectSoundBuffer * pIDirectSoundBuffer,
    unsigned int offsetInFrames,
    unsigned int sizeInFrames
)
{
    if ( pIDirectSoundBuffer != NULL )
    {
        rAssert( offsetInFrames < m_SizeInFrames );
        rAssert( ( offsetInFrames + sizeInFrames ) <= m_SizeInFrames );

        unsigned int offsetInBytes = m_refIRadSoundHalAudioFormat->FramesToBytes( offsetInFrames );
        unsigned int sizeInBytes = m_refIRadSoundHalAudioFormat->FramesToBytes( sizeInFrames );  

        unsigned char fillChar = ( m_refIRadSoundHalAudioFormat->GetBitResolution( ) == 8 ) ? 128 : 0;

        void * dataPtr = NULL; 
        unsigned long lockedBytes;  
        HRESULT hr;

        hr = pIDirectSoundBuffer->Lock
        (
            offsetInBytes,
            sizeInBytes,
            & dataPtr,
            & lockedBytes,
            NULL,
            NULL,
            0
        );

        rAssertMsg( SUCCEEDED( hr ), "radSoundHalBufferWin::Clear - Lock Failed.\n" );

        if ( SUCCEEDED( hr ) )
        {
            rAssert( lockedBytes == sizeInBytes );

            ::memset( dataPtr, fillChar, lockedBytes );

            hr = pIDirectSoundBuffer->Unlock
            (
                dataPtr,
                lockedBytes,
                NULL,
                NULL
            );

            rAssertMsg( SUCCEEDED( hr ), "radSoundHalBufferWin::Clear - UnLock Failed.\n" );
        }
    }
}

//========================================================================
// radSoundHalBufferWin::GetSizeInBytes
//========================================================================

unsigned int radSoundHalBufferWin::GetSizeInBytes( void )
{
    return m_refIRadSoundHalAudioFormat->FramesToBytes( m_SizeInFrames );
}

//========================================================================
// radSoundHalBufferWin::IsStreaming
//========================================================================

bool radSoundHalBufferWin::IsStreaming( void )
{
    return m_Streaming;
}

//========================================================================
// radSoundHalBufferWin::GetSizeInFrames
//========================================================================

unsigned int radSoundHalBufferWin::GetSizeInFrames( void )
{
    return m_SizeInFrames;
}

//========================================================================
// radSoundHalBufferWin::CreateDirectSoundBuffer
//========================================================================

void radSoundHalBufferWin::CreateDirectSoundBuffer
(
    bool support3DSound,
    IDirectSoundBuffer ** ppIDirectSoundBuffer
)
{
    DSBUFFERDESC bd;
    ::ZeroMemory( & bd, sizeof( bd ) );
    bd.dwSize = sizeof( bd );

    WAVEFORMATEX wfx;
    ::ZeroMemory( & wfx, sizeof( wfx ) );
    wfx.cbSize = sizeof( wfx );

    wfx.wFormatTag      = WAVE_FORMAT_PCM; 
    wfx.nChannels       = (unsigned short) m_refIRadSoundHalAudioFormat->GetNumberOfChannels( );
    wfx.nSamplesPerSec  = (unsigned long) m_refIRadSoundHalAudioFormat->GetSampleRate( );
    wfx.wBitsPerSample  = m_refIRadSoundHalAudioFormat->GetBitResolution( );
    wfx.nBlockAlign     = m_refIRadSoundHalAudioFormat->GetFrameSizeInBytes( );
    wfx.nAvgBytesPerSec = wfx.nSamplesPerSec * wfx.nBlockAlign;
    bd.lpwfxFormat = & wfx;

    bd.dwFlags = DSBCAPS_CTRLFREQUENCY | DSBCAPS_CTRLVOLUME;
    bd.dwFlags |= ( m_Streaming ) ? DSBCAPS_LOCSOFTWARE : DSBCAPS_LOCDEFER;
    bd.dwFlags |= DSBCAPS_GETCURRENTPOSITION2;

    if( support3DSound == true )
    {
        bd.dwFlags |= DSBCAPS_CTRL3D;
        bd.dwFlags |= DSBCAPS_MUTE3DATMAXDISTANCE;
        bd.guid3DAlgorithm = DS3DALG_NO_VIRTUALIZATION;
    }
    else
    {
        bd.dwFlags |= DSBCAPS_CTRLPAN;
        bd.guid3DAlgorithm = GUID_NULL;
    }

    if( radSoundHalSystem::GetInstance( )->IsStickyFocusEnabled( ) == true )
    {
        bd.dwFlags |= DSBCAPS_STICKYFOCUS;
    }


    bd.dwBufferBytes = m_refIRadSoundHalAudioFormat->FramesToBytes( m_SizeInFrames );
    HRESULT hr = radSoundHalSystem::GetInstance( )->GetDirectSound( )->CreateSoundBuffer( & bd, ppIDirectSoundBuffer , NULL );
    rAssertMsg( SUCCEEDED( hr ), "Couldn't Create Direct Sound Buffer" );

    ClearDirectSoundBuffer( *ppIDirectSoundBuffer, 0, m_SizeInFrames );

    // Fill this will the clip data if it's a clip

    void * pBuffer;
    unsigned long bytes;
    rAssert( m_refIRadMemoryObject != NULL );

    // Copy in our data from 

    hr = ( * ppIDirectSoundBuffer )->Lock(
		    0,
		    0,
		    & pBuffer,
		    & bytes,
		    NULL,
		    NULL,
		    DSBLOCK_ENTIREBUFFER );
    rAssert( SUCCEEDED( hr ) );

    ::radSoundMemCopy( pBuffer, m_refIRadMemoryObject->GetMemoryAddress( ), bytes );

    hr = ( * ppIDirectSoundBuffer )->Unlock(
        pBuffer,
        bytes,
        NULL,
        0 );
}

//========================================================================
// radSoundHalBufferWin::GetBufferData
//========================================================================

void radSoundHalBufferWin::GetBufferData
(
    bool positional,
    BufferData ** ppBufferData
)
{
    rAssert( ppBufferData != NULL );
    rAssert( * ppBufferData == NULL );

    if( positional == true )
    {
        * ppBufferData = m_pFreeBufferDataList_Pos;

        if( * ppBufferData != NULL )
        {
            RemoveFromList( * ppBufferData );
        }
    }
    else
    {
        * ppBufferData = m_pFreeBufferDataList_NonPos;

        if( * ppBufferData != NULL )
        {
            RemoveFromList( * ppBufferData );
        }
    }

    if( * ppBufferData == NULL )
    {
        // Otherwise prepare a new one

        ref< IDirectSoundBuffer > pIDirectSoundBuffer = NULL;
        CreateDirectSoundBuffer( positional, & pIDirectSoundBuffer );
        rAssert( pIDirectSoundBuffer != NULL );

        CreateBufferData( ppBufferData, pIDirectSoundBuffer );
        rAssert( * ppBufferData != NULL );
   }

    if( m_Streaming == true )
    {
        // For streaming buffers, only be one buffer active at a time
    
        rAssert( m_pBusyBufferDataList == NULL );
    }

    // Add the buffer data to the busy list

    if( * ppBufferData != NULL )
    {
        AddToList( & m_pBusyBufferDataList, * ppBufferData );
    }
}

//========================================================================
// radSoundHalBufferWin::FreeBufferData
//========================================================================

void radSoundHalBufferWin::FreeBufferData
(
    bool positional,
    BufferData * pBufferData
)
{
    rAssert( pBufferData != NULL );

    if( pBufferData != NULL )
    {
        RemoveFromList( pBufferData );

        if( positional == true )
        {
            if( m_Streaming == true )
            {
                // Streaming buffers shouldn't be allocating a bunch of directsound buffers
                rAssert( m_pFreeBufferDataList_Pos == NULL );
            }

            AddToList( & m_pFreeBufferDataList_Pos, pBufferData );
        }
        else
        {
            if( m_Streaming == true )
            {
                // Streaming buffers shouldn't be allocating a bunch of directsound buffers
                rAssert( m_pFreeBufferDataList_NonPos == NULL );
            }

            AddToList( & m_pFreeBufferDataList_NonPos, pBufferData );
        }
    }
}

//========================================================================
// radSoundHalBufferWin::GetSoundSampleFormat
//========================================================================
    
IRadSoundHalAudioFormat * radSoundHalBufferWin::GetFormat( void )
{
    return m_refIRadSoundHalAudioFormat;
}

//========================================================================
// radSoundHalBufferWin::LoadAsync
//========================================================================

void radSoundHalBufferWin::LoadAsync
(
	IRadSoundHalDataSource * pIRadSoundHalDataSource,
	unsigned int bufferStartInFrames,
	unsigned int numberOfFrames,
	IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback 
)
{
    // At this time there should really only be one direct sound buffer created and 
    // it should be busy.  Let's verify that.

    rAssert( m_pFreeBufferDataList_Pos == NULL );
    rAssert( m_pFreeBufferDataList_NonPos == NULL );
    rAssert( m_refIRadSoundHalBufferLoadCallback == NULL );

    m_LoadStartInBytes = m_refIRadSoundHalAudioFormat->FramesToBytes( bufferStartInFrames );
    m_refIRadSoundHalBufferLoadCallback = pIRadSoundHalBufferLoadCallback;

    if( m_Streaming == true )
    {
        rAssert( m_pBusyBufferDataList != NULL );
        rAssert( m_pBusyBufferDataList->m_pNext == NULL );
        rAssert( m_pBusyBufferDataList->m_refIDirectSoundBuffer != NULL );
        rAssert( m_pLockedLoadBuffer == NULL );

	    HRESULT hr = m_pBusyBufferDataList->m_refIDirectSoundBuffer->Lock(
		    m_LoadStartInBytes,
		    m_refIRadSoundHalAudioFormat->FramesToBytes( numberOfFrames ),
		    & ( void * ) m_pLockedLoadBuffer,
		    & m_LockedLoadBytes,
		    NULL,
		    NULL,
		    0 );
        rAssert( SUCCEEDED( hr ) );
    }
    else
    {
        m_pLockedLoadBuffer = m_refIRadMemoryObject->GetMemoryAddress( );
        m_LockedLoadBytes = m_refIRadSoundHalAudioFormat->FramesToBytes( numberOfFrames );
    }

    new( "radSoundBufferLoaderWin", RADMEMORY_ALLOC_TEMP ) radSoundBufferLoaderWin(
        static_cast< IRadSoundHalBuffer * >( this ),
        m_pLockedLoadBuffer,
        pIRadSoundHalDataSource,
        m_refIRadSoundHalAudioFormat,
        m_refIRadSoundHalAudioFormat->BytesToFrames( m_LockedLoadBytes ),
        this );
}

//========================================================================
// radSoundHalBufferWin::IsLooping
//========================================================================

bool radSoundHalBufferWin::IsLooping
(
    void
)
{
    return m_Looping;
}   

//========================================================================
// radSoundHalBufferWin::OnBufferLoadComplete
//========================================================================

void radSoundHalBufferWin::OnBufferLoadComplete( unsigned int dataSourceFrames )
{
    rAssert( m_refIRadSoundHalBufferLoadCallback != NULL );

    if( m_Streaming == false )
    {
        rAssert( m_pBusyBufferDataList == NULL );

        /*
        // So copy the data into the only directSound buffer in (if it exists)

        if( m_pBusyBufferDataList != NULL )
        {
            char * pLockedData1;
            unsigned long lockedBytes1;
            char * pLockedData2;
            unsigned long lockedBytes2;

	        HRESULT hr = m_pBusyBufferDataList->m_refIDirectSoundBuffer->Lock
	        (
		        m_LoadStartInBytes,
		        m_refIRadSoundHalAudioFormat->FramesToBytes( dataSourceFrames ),
		        ( void ** ) & pLockedData1,
		        & lockedBytes1,
		        ( void ** ) & pLockedData2,
		        & lockedBytes2,
		        0
	        );
            rAssert( SUCCEEDED( hr ) );
            
            ::radSoundMemCopy( pLockedData1, ( char * ) m_refIRadMemoryObject->GetMemoryAddress( ) + m_LoadStartInBytes, lockedBytes1 );
            ::radSoundMemCopy( pLockedData2, ( char * ) m_refIRadMemoryObject->GetMemoryAddress( ) + m_LoadStartInBytes + lockedBytes1, lockedBytes2 ); 

	        hr = m_pBusyBufferDataList->m_refIDirectSoundBuffer->Unlock
	        (
		        pLockedData1,
		        lockedBytes1,
		        pLockedData2,
	            lockedBytes2
	        );
	        rAssert( SUCCEEDED( hr ) );
        }
        */
    }
    else
    {
        // For streaming sounds we'll have to unlock the direct sound buffer before calling back

        rAssert( m_pBusyBufferDataList != NULL );
        rAssert( m_pBusyBufferDataList->m_pNext == NULL );
        rAssert( m_pFreeBufferDataList_NonPos == NULL );
        rAssert( m_pFreeBufferDataList_Pos == NULL );

        HRESULT hr = m_pBusyBufferDataList->m_refIDirectSoundBuffer->Unlock(
            m_pLockedLoadBuffer,
            m_LockedLoadBytes,
            NULL,
            NULL );
        rAssert( SUCCEEDED( hr ) );

        m_pLockedLoadBuffer = NULL;
        m_LockedLoadBytes = 0;
    }

    if( m_refIRadSoundHalBufferLoadCallback != NULL )
    {
        m_refIRadSoundHalBufferLoadCallback->OnBufferLoadComplete( dataSourceFrames );
        m_refIRadSoundHalBufferLoadCallback = NULL;
    }
}

//========================================================================
// radSoundHalBufferWin::CancelAsyncOperations
//========================================================================

void radSoundHalBufferWin::CancelAsyncOperations( void )
{
    radSoundBufferLoaderWin::CancelOperations( static_cast< IRadSoundHalBuffer * >( this ) );    

    if( m_refIRadSoundHalBufferLoadCallback != NULL )
    {
        rAssert( m_pFreeBufferDataList_NonPos == NULL ); // sanity
        rAssert( m_pFreeBufferDataList_Pos == NULL );

        if( m_Streaming == true && m_pBusyBufferDataList != NULL )
        {
            HRESULT hr = m_pBusyBufferDataList->m_refIDirectSoundBuffer->Unlock(
                m_pLockedLoadBuffer, m_LockedLoadBytes, NULL, NULL );
            rAssert( SUCCEEDED( hr ) );
        }

        m_pLockedLoadBuffer = NULL;
        m_LockedLoadBytes = 0;
        m_refIRadSoundHalBufferLoadCallback = NULL;
    }
}

//========================================================================
// radSoundHalBufferWin::GetMinTransferSizeInFrames
//========================================================================

unsigned int radSoundHalBufferWin::GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType )
{
    rAssert( m_refIRadSoundHalAudioFormat != NULL );

    //
    // Channels of data are eventually dma'd seperately to spu.
    // Therefore, transfers must occur in multiples of the optimal
    // dma multiple * the number of channels.
    //

    return m_refIRadSoundHalAudioFormat->ConvertSizeType( sizeType, 
        radMemorySpace_OptimalMultiple * m_refIRadSoundHalAudioFormat->GetNumberOfChannels( ),
        IRadSoundHalAudioFormat::Bytes );
}

//========================================================================
// radSoundHalBufferWin::CreateBufferData
//========================================================================

void radSoundHalBufferWin::CreateBufferData( BufferData ** ppBufferData, IDirectSoundBuffer * pIDirectSoundBuffer )
{
    rAssert( s_refIRadMemoryPool != NULL );
    rAssert( ppBufferData != NULL );
    rAssert( * ppBufferData == NULL );
    rAssert( pIDirectSoundBuffer != NULL );

    unsigned int numFreePoolAllocations;
    s_refIRadMemoryPool->GetStatus( NULL, & numFreePoolAllocations, NULL );

    if( numFreePoolAllocations == 0 )
    {
        // We're out of pool allocations.  
        // Destroy the least recently used BufferData and try getting memory again.

        BufferData * pFreeLRUBuffer = NULL;
        GetLeastRecentlyUsedFreeBufferData( & pFreeLRUBuffer );

        if( pFreeLRUBuffer != NULL )
        {
            DeleteBufferData( pFreeLRUBuffer );
            CreateBufferData( ppBufferData, pIDirectSoundBuffer );
        }
        rAssertMsg( * ppBufferData != NULL, "radSound: Buffer data memory pool empty.  Increase max allocations with IRadSoundHalSystem::InitializeMemory()" );
    }
    else
    {
        * ppBufferData = ( BufferData * ) s_refIRadMemoryPool->GetMemory( );

        if( * ppBufferData != NULL )
        {
            ( * ppBufferData )->m_pNext = NULL;
            ( * ppBufferData )->m_pPrev = NULL;
            ( * ppBufferData )->m_pLRUNext = NULL;
            ( * ppBufferData )->m_pLRUPrev = NULL;
            ( * ppBufferData )->m_refIDirectSoundBuffer = pIDirectSoundBuffer;
            ( * ppBufferData )->m_pListOwner = NULL;
            radSoundHalBufferWin::DebugInfo::s_Total++;
        }
    }
}

//========================================================================
// radSoundHalBufferWin::DeleteBufferData
//========================================================================

void radSoundHalBufferWin::DeleteBufferData( BufferData * pBufferData )
{
    rAssert( s_refIRadMemoryPool != NULL );
    rAssert( pBufferData != NULL );
    rAssert( pBufferData->m_pNext == NULL );
    rAssert( pBufferData->m_pPrev == NULL );
    rAssert( pBufferData->m_pLRUNext == NULL );
    rAssert( pBufferData->m_pLRUPrev == NULL );
    rAssert( pBufferData->m_pListOwner == NULL );
    rAssert( pBufferData->m_ppHead == NULL );

    pBufferData->m_pNext = NULL;
    pBufferData->m_pPrev = NULL;
    pBufferData->m_pLRUNext = NULL;
    pBufferData->m_pLRUPrev = NULL;
    pBufferData->m_pListOwner = NULL;
    pBufferData->m_ppHead = NULL;
    pBufferData->m_refIDirectSoundBuffer = NULL;
    s_refIRadMemoryPool->FreeMemory( ( void * ) pBufferData );
    radSoundHalBufferWin::DebugInfo::s_Total--;
}

//========================================================================
// radSoundHalBufferWin::AddToList
//========================================================================

void radSoundHalBufferWin::AddToList( BufferData ** ppListHead, BufferData * pBufferData )
{
    rAssert( pBufferData != NULL );

    // If this node is being added to a free list, also add it to the LRU list

    if( ppListHead != & m_pBusyBufferDataList )
    {
        pBufferData->m_pLRUNext = s_pLRUFreeBufferListHead;
        pBufferData->m_pLRUPrev = NULL;

        if( s_pLRUFreeBufferListHead != NULL )
        {
            s_pLRUFreeBufferListHead->m_pLRUPrev = pBufferData;
        }

        s_pLRUFreeBufferListHead = pBufferData;

        if( s_pLRUFreeBufferListTail != NULL )
        {   
            if( s_pLRUFreeBufferListTail->m_pLRUPrev == NULL )
            {
                s_pLRUFreeBufferListTail->m_pLRUPrev = pBufferData;
            }
        }
        else
        {
            s_pLRUFreeBufferListTail = pBufferData;
            rAssert( pBufferData->m_pLRUNext == NULL );
            rAssert( pBufferData->m_pLRUNext == NULL );
            rAssert( pBufferData == s_pLRUFreeBufferListHead );
        }
    }

    // Now add it to the specified list

    pBufferData->m_pNext = * ppListHead;
    pBufferData->m_pPrev = NULL;

    if( ( * ppListHead ) != NULL )
    {
        ( * ppListHead )->m_pPrev = pBufferData;
    }

    ( * ppListHead ) = pBufferData;
    pBufferData->m_ppHead = ppListHead;
    pBufferData->m_pListOwner = this;
    
    // Debug tracking

    if( ppListHead == & m_pFreeBufferDataList_Pos )
    {
        m_DebugInfo.m_FreeCountPos++;
        DebugInfo::s_TotalFreeCount++;
    }
    else if( ppListHead == & m_pFreeBufferDataList_NonPos )
    {
        m_DebugInfo.m_FreeCountNonPos++;
        DebugInfo::s_TotalFreeCount++;
    }
    else
    {
        rAssert( ppListHead == & m_pBusyBufferDataList );
        m_DebugInfo.m_BusyCount++;
        DebugInfo::s_TotalBusyCount++;
    }
}

//========================================================================
// radSoundHalBufferWin::RemoveFromList
//========================================================================

void radSoundHalBufferWin::RemoveFromList( BufferData * pBufferData )
{
    rAssert( pBufferData != NULL );

    if( pBufferData->m_pListOwner != this )
    {
        // A little funny but this makes stats tracking more possible
        pBufferData->m_pListOwner->RemoveFromList( pBufferData );
        return;
    }

    // If this node is being removed from a free list, also remove it from the LRU list

    BufferData ** ppListHead = pBufferData->m_ppHead;

    if( ppListHead != & m_pBusyBufferDataList )
    {
        if( pBufferData->m_pLRUPrev != NULL )
        {
            pBufferData->m_pLRUPrev->m_pLRUNext = pBufferData->m_pLRUNext;                
        }
        else
        {
            rAssert( s_pLRUFreeBufferListHead == pBufferData );
            s_pLRUFreeBufferListHead = pBufferData->m_pLRUNext;
        }

        if( pBufferData->m_pLRUNext != NULL )
        {
            pBufferData->m_pLRUNext->m_pLRUPrev = pBufferData->m_pLRUPrev;
        }
        else
        {
            rAssert( s_pLRUFreeBufferListTail == pBufferData );
            s_pLRUFreeBufferListTail = pBufferData->m_pLRUPrev;
        }
    }

    // Now remove from the specified list

    if( pBufferData->m_pPrev != NULL )
    {
        pBufferData->m_pPrev->m_pNext = pBufferData->m_pNext;
    }
    else
    {
        rAssert( ( * ppListHead ) == pBufferData );
        ( * ppListHead ) = pBufferData->m_pNext;
    }

    if( pBufferData->m_pNext != NULL )
    {
        pBufferData->m_pNext->m_pPrev = pBufferData->m_pPrev;
    }

    pBufferData->m_pPrev = NULL;
    pBufferData->m_pNext = NULL;
    pBufferData->m_pLRUNext = NULL;
    pBufferData->m_pLRUPrev = NULL;
    pBufferData->m_ppHead = NULL;
    pBufferData->m_pListOwner = NULL;

    // Debug tracking

    if( ppListHead == & m_pFreeBufferDataList_Pos )
    {
        m_DebugInfo.m_FreeCountPos--;
        DebugInfo::s_TotalFreeCount--;
    }
    else if( ppListHead == & m_pFreeBufferDataList_NonPos )
    {
        m_DebugInfo.m_FreeCountNonPos--;
        DebugInfo::s_TotalFreeCount--;
    }
    else
    {
        rAssert( ppListHead == & m_pBusyBufferDataList );
        m_DebugInfo.m_BusyCount--;
        DebugInfo::s_TotalBusyCount--;
    }
}

//========================================================================
// radSoundHalBufferWin::GetLeastRecentlyUsedFreeBufferData
//========================================================================

void radSoundHalBufferWin::GetLeastRecentlyUsedFreeBufferData( BufferData ** ppBufferData )
{
    rAssert( * ppBufferData == NULL );

    // Hang on to the LRU list tail then remove it from any lists

    ( * ppBufferData ) = s_pLRUFreeBufferListTail;

    if( * ppBufferData != NULL )
    {
        RemoveFromList( * ppBufferData );
    }
}

//========================================================================
// radSoundHalBufferWin::InitializeDuplicateBufferPool
//========================================================================

void radSoundHalBufferWin::InitializeBufferDataPool( unsigned int maxCount, radMemoryAllocator allocator )
{
    rAssert( s_refIRadMemoryPool == NULL );

    ::radMemoryCreatePool( & s_refIRadMemoryPool, sizeof( BufferData ), maxCount, 0, false, None, allocator, "radSoundHalBufferDataPool" );
    rAssert( s_refIRadMemoryPool != NULL );
}

//========================================================================
// radSoundHalBufferWin::TerminateDuplicateBufferPool
//========================================================================

void radSoundHalBufferWin::TerminateBufferDataPool( void )
{
    rAssert( s_refIRadMemoryPool != NULL );

    unsigned int elementSize, numberFree, numberAllocated;
    s_refIRadMemoryPool->GetStatus( & elementSize, & numberFree, & numberAllocated );
    rAssert( numberAllocated == 0 ); // Not all duplicate buffers were destroyed
    
    // Destroy the Pool
    s_refIRadMemoryPool = NULL;
}

//========================================================================
// ::radSoundCreateBufferWin
//========================================================================

IRadSoundHalBuffer * radSoundHalBufferCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundHalBufferWin", allocator ) radSoundHalBufferWin( );
}


//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "bufferasyncloader.hpp"
#include "buffer.hpp"

//=========================================================================
// radSoundBufferAsyncLoaderXBox::StaticInit
//=========================================================================

IRadMemoryPool * radSoundPoolObject< radSoundBufferAsyncLoaderXBox >::s_pIRadMemoryPool = NULL;
radSoundBufferAsyncLoaderXBox * radLinkedClass< radSoundBufferAsyncLoaderXBox >::s_pLinkedClassHead = NULL;
radSoundBufferAsyncLoaderXBox * radLinkedClass< radSoundBufferAsyncLoaderXBox >::s_pLinkedClassTail = NULL;

//=========================================================================
// radSoundBufferAsyncLoaderXBox::Initialize
//=========================================================================

/* virtual */ void radSoundBufferAsyncLoaderXBox::Initialize
(
    IRadSoundHalDataSource * pIRadSoundHalDataSource,
    unsigned int bufferFrameOffset,
    unsigned int numberOfFrames,
	IRefCount * pIRefCount_Parent,
	void * pBufferData,
    IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
)
{
    //
    // Make sure they passed us valid objects
    //

    rAssert( pIRadSoundHalDataSource != NULL );
    rAssert( pIRefCount_Parent != NULL );
    rAssert( pIRadSoundHalBufferLoadCallback != NULL );

    m_xIRadSoundHalBufferLoadCallback = pIRadSoundHalBufferLoadCallback;
	m_xIRefCount_Parent = pIRefCount_Parent;
	m_xIRadSoundHalDataSource = pIRadSoundHalDataSource;
    m_FramesToLoad = numberOfFrames;
    m_BufferOffset = bufferFrameOffset;
    m_pBuffer = pBufferData;

	m_xIRadSoundHalDataSource->GetFramesAsync(
		static_cast< char * >( pBufferData ) + 
			pIRadSoundHalDataSource->GetFormat( )->FramesToBytes( bufferFrameOffset ),
		radMemorySpace_Main,
		numberOfFrames,
		this
	);
}

//=========================================================================
// radSoundBufferAsyncLoaderXBox::OnReadAsyncComplete
//=========================================================================

/* virtual */ void radSoundBufferAsyncLoaderXBox::OnDataSourceFramesLoaded( unsigned int actualFramesRead )
{
    if ( ! m_Cancelled )
    {
        //
        // Fill the remainder of the request with silence if required
        // 

        if( actualFramesRead < m_FramesToLoad )
        {
            unsigned int offsetInBytes = m_xIRadSoundHalDataSource->GetFormat( )->FramesToBytes( m_BufferOffset + actualFramesRead );
            unsigned int sizeInBytes = m_xIRadSoundHalDataSource->GetFormat( )->FramesToBytes( m_FramesToLoad - actualFramesRead );  
            unsigned char fillChar = ( m_xIRadSoundHalDataSource->GetFormat( )->GetBitResolution( ) == 8 ) ? 128 : 0;

            ::memset(
		        (char*) m_pBuffer + offsetInBytes,
		        fillChar, sizeInBytes );
        }

        m_xIRadSoundHalBufferLoadCallback->OnBufferLoadComplete( actualFramesRead );
    }
}

//=========================================================================
// radSoundBufferAsyncLoaderXBox::radSoundBufferAsyncLoaderXBox
//=========================================================================

radSoundBufferAsyncLoaderXBox::radSoundBufferAsyncLoaderXBox
(
    void
)
	:
	m_RefCount( 0 ),
    m_Cancelled( false ),
    m_FramesToLoad( 0 ),
    m_BufferOffset( 0 ),
    m_pBuffer( NULL )
{
}

//=========================================================================
// radSoundBufferAsyncLoaderXBox::~rDxSoundBUfferAsyncLoader
//=========================================================================

radSoundBufferAsyncLoaderXBox::~radSoundBufferAsyncLoaderXBox
(
    void
)
{
}

void radSoundBufferAsyncLoaderXBox::CancelRequests( IRefCount * pOwner )
{
    radSoundBufferAsyncLoaderXBox * pSearch = radSoundBufferAsyncLoaderXBox::GetLinkedClassHead( );

    while ( pSearch != NULL )
    {
        if ( pSearch->m_xIRefCount_Parent == pOwner )
        {
            pSearch->Cancel( );
        }

        pSearch = pSearch->GetLinkedClassNext( );
    }
}

void radSoundBufferAsyncLoaderXBox::Cancel( void )
{
    m_Cancelled = true;
}

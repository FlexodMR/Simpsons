//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <dolphin.h>
#include <arq.h>

#include <radfile.hpp>
#include <radtime.hpp>

#include <radsound.hpp>

#include "radsoundgcn.hpp"

#include "buffer.hpp"
#include "bufferasyncrequest.hpp"
#include "bufferasyncclearer.hpp"

IRadMemoryPool * radSoundPoolObject< radSoundBufferAsyncClearerGcn >::s_pIRadMemoryPool = NULL;

//============================================================================
// radSoundBufferAsyncClearerGcn::radSoundBufferAsyncClearerGcn
//============================================================================

radSoundBufferAsyncClearerGcn::radSoundBufferAsyncClearerGcn
(
    radSoundBufferGcn * pRadSoundBufferGcn,
    unsigned long clearStartPositionInFrames,
    unsigned long numberOfFramesToClear,
    IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback
)
    :
    radSoundBufferAsyncRequestGcn( pRadSoundBufferGcn ),
    m_CurrentChannel( 0 ),
    m_BytesToClearThisChunk( 0 ),    
    m_BytesClearedThisChannel( 0 ),
    m_xIRadSoundHalBufferClearCallback( pIRadSoundHalBufferClearCallback ),
    m_Cancelled( false )
{
    m_ChannelClearOffsetInBytes = 
        m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( clearStartPositionInFrames )
        / m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );
    
    m_BytesToClearPerChannel =
        m_xRadSoundBufferGcn->GetFormat( )->FramesToBytes( numberOfFramesToClear )
        / m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );
       
    AddRef( );    
    
    radSoundBufferAsyncRequestGcn::Initialize( );
       
}

//============================================================================
// radSoundBufferAsyncClearerGcn::OnBeginLoad
//============================================================================
    
/* virtual */ void radSoundBufferAsyncClearerGcn::OnBeginOperation( void )
{   

    unsigned char fillChar;
    
    if (  m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) == 8 )
    {
        fillChar = PCM_SILENCE_8_BIT;
    }
    else if ( m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) == 16 )
    {
        fillChar = (unsigned char) PCM_SILENCE_16_BIT;
    }
    else
    {
        rAssert( false );
    }
    
    unsigned int fillBytes = m_BytesToClearPerChannel;
    
    if ( fillBytes > s_MainMemoryBufferSize )
    {
        fillBytes = s_MainMemoryBufferSize;
    }
    
    ::memset( s_pMainMemoryTransferBuffer, fillChar, fillBytes );   
   
    ClearNextChunk( );
}

//============================================================================
// radSoundBufferAsyncClearerGcn::ClearNextChunk
//============================================================================

void radSoundBufferAsyncClearerGcn::ClearNextChunk( void )
{
    //
    // How many more bytes to clear this channel
    //
    
    m_BytesToClearThisChunk = m_BytesToClearPerChannel - m_BytesClearedThisChannel;
    
    if ( m_BytesToClearThisChunk > s_MainMemoryBufferSize )
    {
        m_BytesToClearThisChunk = s_MainMemoryBufferSize;
    }
    
    //
    // Determine the DMA parameters.
    //
    
    unsigned int aramStart =
        m_xRadSoundBufferGcn->GetAramStartAddressInBytes( m_CurrentChannel )
        + m_ChannelClearOffsetInBytes + m_BytesClearedThisChannel;
    
    /* rDebugChannelPrintf( radSoundDebugChannel,
        "Clearing At Aram: [0x%x], Bytes:[0x%x], from MM:[0x%x]\n",
        aramStart,
        ::radMemoryRoundUp( m_BytesToClearThisChunk, ARQ_DMA_ALIGNMENT ),
        s_pMainMemoryTransferBuffer ); */
    
    DmaToAram(
        (unsigned long) s_pMainMemoryTransferBuffer,
        aramStart,
        ::radMemoryRoundUp( m_BytesToClearThisChunk, ARQ_DMA_ALIGNMENT ) );
}

//============================================================================
// radSoundBufferAsyncClearerGcn::OnDmaToAramComplete
//============================================================================

/* virtual */ void radSoundBufferAsyncClearerGcn::OnDmaToAramComplete( void )
{
    m_BytesClearedThisChannel += m_BytesToClearThisChunk;
    
    if ( m_BytesClearedThisChannel < m_BytesToClearPerChannel )
    {
        ClearNextChunk( );
    }
    else
    {
        m_CurrentChannel ++;
        
        if ( m_CurrentChannel < m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( ) )
        {
            m_BytesClearedThisChannel = 0;
            
            ClearNextChunk( );
        }
        else
        {
            if ( m_xIRadSoundHalBufferClearCallback != NULL && m_Cancelled == false )
            {
                m_xIRadSoundHalBufferClearCallback->OnBufferClearComplete( );
            }        
                    
            Release( );
            
            /* rDebugChannel( radSoundDebugChannel, "End Clear...\n" ); */
        }
    }
}

void radSoundBufferAsyncClearerGcn::Cancel( void )
{
    m_Cancelled = true; // just finish, but don't call back
}

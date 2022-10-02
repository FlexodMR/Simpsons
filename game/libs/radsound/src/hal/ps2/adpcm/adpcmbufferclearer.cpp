//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include "../iop/iopclient.hpp"
#include "adpcm.hpp"
#include "adpcmbuffer.hpp"
#include "adpcmbufferclearer.hpp"

IRadMemoryPool * radSoundPoolObject< radSoundHalAdpcmBufferClearer >::s_pIRadMemoryPool = NULL;

radSoundHalAdpcmBufferClearer::radSoundHalAdpcmBufferClearer
(
	IRadSoundHalBuffer * pIRadSoundHalBuffer,
	unsigned int startPositionInFrames,
	unsigned int numberOfFrames, 
	IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback 
)
	:
	radSoundHalBufferAsyncRequestAdpcmPs2( pIRadSoundHalBuffer ),
	m_RefCount( 0 ),
    m_Started( false ),
    m_Cancelled( false ),
	m_StartPositionInFrames( startPositionInFrames ),
	m_NumberOfFrames( numberOfFrames ),
	m_xIRadSoundHalBuffer( pIRadSoundHalBuffer ),
	m_xIRadSoundHalBufferClearCallback( pIRadSoundHalBufferClearCallback )
{
	radSoundHalBufferAsyncRequestAdpcmPs2::Initialize( );
}

radSoundHalAdpcmBufferClearer::~radSoundHalAdpcmBufferClearer( void )
{
}

void radSoundHalAdpcmBufferClearer::BeginRequest( void )
{
    if ( m_Cancelled == false )
    {
        m_Started = true;

	    radSoundIopPs2::GetInstance( )->ClearBufferAsync
	    (
		    m_xIRadSoundHalBuffer,
		    m_StartPositionInFrames,
		    m_NumberOfFrames
	    );
    }
}

bool radSoundHalAdpcmBufferClearer::ServiceRequest( void )
{
    bool done;

    if ( m_Started == true )
    {
	    if ( radSoundIopPs2::GetInstance( )->ClearBufferComplete( ) )
	    {
            CallbackClient( );

		    done = true;
	    }
        else
        {
            done = false;
        }
    }
    else
    {
        rAssert( m_Cancelled == true );
        done = true;
    }

	return done;
}

void radSoundHalAdpcmBufferClearer::CallbackClient( void )
{
    if ( m_xIRadSoundHalBufferClearCallback != NULL &&
         m_Cancelled == false )
    {
        if ( m_xIRadSoundHalBufferClearCallback != NULL )
		{
			m_xIRadSoundHalBufferClearCallback->OnBufferClearComplete( );
		}
    }


}
void radSoundHalAdpcmBufferClearer::CancelRequest( void )
{
    m_Cancelled = true;
}

void radSoundHalAdpcmBufferClearer::EndRequest( void )
{
}

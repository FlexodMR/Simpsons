//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "adpcm.hpp"
#include "adpcmasyncrequest.hpp"

/* static */ radSoundHalBufferAsyncRequestAdpcmPs2 *
	radSoundHalBufferAsyncRequestAdpcmPs2::s_pRequestHead = NULL;

radSoundHalBufferAsyncRequestAdpcmPs2::radSoundHalBufferAsyncRequestAdpcmPs2
(
	IRefCount * pIRefCount_Parent
)
	:
	m_pNext( NULL ),
	m_xIRefCount_Parent( pIRefCount_Parent ), // Just hold alive
    m_RefCount( 0 )
{
	//
	// Add ourself to the end of the list
	//

    radSoundHalBufferAsyncRequestAdpcmPs2 * pSearch = s_pRequestHead;
	radSoundHalBufferAsyncRequestAdpcmPs2 * pPrev = NULL;

    while( pSearch != NULL )
    {
		pPrev = pSearch;
        pSearch = pSearch->m_pNext;
    }

	if ( pPrev == NULL )
	{
		s_pRequestHead = this;
	}
	else
	{
		pPrev->m_pNext = this;
	}
}

radSoundHalBufferAsyncRequestAdpcmPs2::~radSoundHalBufferAsyncRequestAdpcmPs2( void )
{
	// rAssert( s_pRequestHead == this );

	s_pRequestHead = m_pNext;
}

//unsigned int gRequestStartTime;


void radSoundHalBufferAsyncRequestAdpcmPs2::Initialize( void )
{

	AddRef( );

	if ( s_pRequestHead == this )
	{
	    //gRequestStartTime = radTimeGetMicroseconds( );
	    
		BeginRequest( );
		Service( );
	}
}

/* static */ void radSoundHalBufferAsyncRequestAdpcmPs2::Service( void )
{
	if ( s_pRequestHead != NULL )
	{
		if ( s_pRequestHead->ServiceRequest( ) == true )
		{
			s_pRequestHead->EndRequest( );
			s_pRequestHead->Release( );

            //unsigned int now = radTimeGetMicroseconds( );
            //unsigned int dif = now - gRequestStartTime;
            
            //rReleasePrintf( "AUDIO: Async Request took: [%d] usec\n", dif );
            
			if ( s_pRequestHead != NULL )
			{
	            //gRequestStartTime = radTimeGetMicroseconds( );
	    			
				s_pRequestHead->BeginRequest( );
				Service( );
			}
		}
	}
}

/* static */ void radSoundHalBufferAsyncRequestAdpcmPs2::CancelAllRequests( IRefCount * pIRefCount_Owner)
{
    radSoundHalBufferAsyncRequestAdpcmPs2 * pSearch = s_pRequestHead;

    while( pSearch != NULL )
    {
        if ( pSearch->m_xIRefCount_Parent == pIRefCount_Owner )
        {
            pSearch->CancelRequest( );
        }
        
        pSearch = pSearch->m_pNext;
    }
}




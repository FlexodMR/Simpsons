//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ADPCMBUFFERLOADER_HPP
#define ADPCMBUFFERLOADER_HPP

#include "adpcm.hpp"
#include <radfile.hpp>
#include "adpcmasyncrequest.hpp"


//=============================================================================
// Class: IRadSoundAdpcmBufferLoaderPs2
//=============================================================================

#define NULL_OFFSET 0xFFFFFFFF

//=============================================================================
// class : IRadSoundAdpcmBufferLoadCallbackPs2
//=============================================================================

class radSoundBufferAsyncLoaderAdpcmPs2
	:
	public IRadSoundHalDataSourceCallback,
	public radSoundHalBufferAsyncRequestAdpcmPs2,
	public radSoundPoolObject< radSoundBufferAsyncLoaderAdpcmPs2 >
{
	public:

        IMPLEMENT_BASEOBJECT( "radSoundBufferAsyncLoaderAdpcmPs2" )

        virtual void AddRef( void ) { radSoundHalBufferAsyncRequestAdpcmPs2::AddRef( ); }
        virtual void Release( void ) { radSoundHalBufferAsyncRequestAdpcmPs2::Release( ); }

        radSoundBufferAsyncLoaderAdpcmPs2
        (
			IRadSoundHalDataSource * pIRadSoundHalDataSource,
			IRadSoundHalBuffer * pIRadSoundHalBuffer,
			unsigned int startPositionInFrames,
			unsigned int numberOfFrames,
			IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
        );

		virtual void OnDataSourceFramesLoaded( unsigned int framesActuallyRead );

	protected:

		virtual void BeginRequest( void );
		virtual bool ServiceRequest( void );
		virtual void EndRequest( void ) { }
        virtual void CancelRequest( void );

    private:

        bool InternalService( void );

		int m_RefCount;

        enum State {  QUEUED, STARTED,
                READING_SOURCE_CHUNK, DONE_READING_SOURCE_CHUNK,
                LOADING_SPU_CHUNK, DONE_LOADING_SPU_CHUNK,
                CLEARING_EXTRA_DATA,
                DONE_LOADING, FINISHED } m_State;

	    unsigned int m_BufferStartInFrames;
		
        unsigned int m_FramesToLoad;
        unsigned int m_FramesLoaded;
        unsigned int m_FramesLoading;
		unsigned int m_FramesToClear;

        bool         m_Cancelled;

		ref< IRadSoundHalBuffer > m_pIRadSoundHalBuffer;
		ref< IRadSoundHalDataSource > m_pIRadSoundHalDataSource;
        ref< IRadSoundHalBufferLoadCallback > m_pIRadSoundHalBufferLoadCallback;
};

#endif
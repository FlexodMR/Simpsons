//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        BufferAsyncLoader.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the  implementation of the rSoundBuffer's
//		Async loader object.  The object handles one of multiple outstanding
//		loads on a single buffer.
//
//=============================================================================

#ifndef BUFFERASYNCLOADER_HPP
#define BUFFERASYNCLOADER_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radsoundobject.hpp>
#include <radlinkedclass.hpp>
#include "radsoundxbox.hpp"



//=============================================================================
// Component: radSoundBufferAsyncLoader
//=============================================================================

struct radSoundBufferAsyncLoaderXBox
	:
	public IRadSoundHalDataSourceCallback,
	public radSoundPoolObject< radSoundBufferAsyncLoaderXBox >,
    public radLinkedClass< radSoundBufferAsyncLoaderXBox >
{
	public:

		virtual void AddRef( void ) { m_RefCount++; }
		virtual void Release( void ) { m_RefCount--; if ( m_RefCount == 0 ) { delete this; } }

    void Initialize(
		IRadSoundHalDataSource * pIRadSoundHalDataSource,
		unsigned int bufferFrameOffset,
        unsigned int numberOfFrames,
        IRefCount * pIRefCount_Parent,
		void * pBufferData,
		IRadSoundHalBufferLoadCallback * pIRadSoundBufferCallback );

	virtual void OnDataSourceFramesLoaded( unsigned int actualFramesRead );

    radSoundBufferAsyncLoaderXBox( void );
    virtual ~radSoundBufferAsyncLoaderXBox( void );

    static void CancelRequests( IRefCount * pOwner );
    void Cancel( void );

	private:

		unsigned int m_RefCount;
        bool m_Cancelled;
        unsigned int m_FramesToLoad;
        unsigned int m_BufferOffset;
        void * m_pBuffer;

		ref< IRadSoundHalDataSource >        m_xIRadSoundHalDataSource;
		ref< IRadSoundHalBufferLoadCallback> m_xIRadSoundHalBufferLoadCallback;
		ref< IRefCount > m_xIRefCount_Parent;
};

#endif // BUFFERASYNCLOADER_HPP

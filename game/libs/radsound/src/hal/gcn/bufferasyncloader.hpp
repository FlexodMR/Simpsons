//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BUFFERASYNCLOADER_HPP
#define BUFFERASYNCLOADER_HPP

//============================================================================
// Include Files
//============================================================================

#include "bufferasyncrequest.hpp"
#include "radsoundgcn.hpp"

//============================================================================
// Class: radSoundBufferAsyncLoader
//============================================================================

class radSoundBufferAsyncLoaderGcn
	:
    public IRadSoundHalDataSourceCallback,
    public radSoundBufferAsyncRequestGcn,
    public radSoundPoolObject< radSoundBufferAsyncLoaderGcn >
{
    public:

	    IMPLEMENT_REFCOUNTED( "radSoundBufferAsyncLoaderGcn" )

	    radSoundBufferAsyncLoaderGcn
	    (
	        radSoundBufferGcn * pRadSoundBufferGcn,
		    IRadSoundHalDataSource * pIRadSoundHalDataSource,
		    unsigned int bufferOffsetInFrames,
		    unsigned int numberOfFrames,
		    IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback
	    );

    protected:

        ~radSoundBufferAsyncLoaderGcn( void );

    private:
    
        virtual void OnBeginOperation( void );
        virtual void OnDmaToAramComplete( void );
	    virtual void OnDataSourceFramesLoaded( unsigned int framesActuallyRead );
        virtual void Cancel( void );
 
        void UnInterleaveData( void );
        void LoadNextFileChunk( void );
        void DmaNextChannel( void );
        void Finish( );    
        
        unsigned int   m_BufferChannelOffsetInBytes;        
        unsigned int   m_TotalBytesToLoad;      
        unsigned int   m_TotalBytesToReport;
        unsigned int   m_CurrentDmaChannel;
        bool	       m_CurrentDmaComplete;
		unsigned int   m_ChunkBytesToLoad;
		unsigned int   m_ChunkBytesLoaded;
        
        bool           m_Cancelled;         

        ref< IRadSoundHalDataSource >          m_xIRadSoundHalDataSource;
        ref< IRadSoundHalBufferLoadCallback >  m_xIRadSoundHalBufferLoadCallback;
};

#endif

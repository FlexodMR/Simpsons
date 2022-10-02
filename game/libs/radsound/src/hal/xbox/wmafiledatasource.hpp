//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        wmafiledatasource.hpp
//
// Subsystem:	RadSound - WMA File Data Source
//
// Description:	This file implements the xbox radsound WMA File Data Source
//
// Revisions:  	April 23, 2002   Creation
//
//=============================================================================

#ifndef WMAFILEDATASOURCE_HPP
#define WMAFILEDATASOURCE_HPP

//=============================================================================
// Included Files
//=============================================================================

#include <radsoundupdatableobject.hpp>
#include <radsound_xbox.hpp>
#include <radfile.hpp>

//=============================================================================
// radSoundWmaFileDataSource
//=============================================================================

struct radSoundWmaFileDataSource
	:
	public IRadSoundWmaFileDataSource,
	public IRadFileCompletionCallback,
	public radSoundUpdatableObject
{

    public:

	    IMPLEMENT_REFCOUNTED( "radSoundWmaFileDataSource" )

	    radSoundWmaFileDataSource( void );
	    virtual ~radSoundWmaFileDataSource( void );
	    
	    // IRadSoundWMAFileDataSource
	    
	    virtual void InitializeFromFile( IRadFile * pIRadFile, unsigned int yieldRate );
        virtual IRadFile * GetFile( void );

	    // IRadSoundHalDataSource

	    virtual IRadSoundHalDataSource::State GetState( void );
	    virtual IRadSoundHalAudioFormat * GetFormat( void );
	    virtual unsigned int GetRemainingFrames( void );
        virtual unsigned int GetAvailableFrames( void );
        
	    virtual void GetFramesAsync(
		    void * pBytes, 
		    radMemorySpace destinationMemorySpace, 
		    unsigned int size, 
		    IRadSoundHalDataSourceCallback * pIRshdsc );

	    // IRadFileCompletionCallback

	    virtual void OnFileOperationsComplete( void * pUserData );
	    
		virtual const char * GetName( void ) { return "WmaFileDataSource"; }	    

	private:

        virtual void Update( unsigned int elapsed );

        void _StateInitialDecodeAndCopy( void );
        void _StateFixupDecode( void );
        void _StateFixupCopy( void );

		enum State { NONE, OPENING_FILE, INITIAL_DECODE_AND_COPY, FIXUP_DECODE, FIXUP_COPY, IDLE, FILE_ERROR };

        State m_State;

        void SetState( State state );

        //
        // Decoder handling
        //

        XMEDIAPACKET m_XMediaPacket;
        HANDLE m_ProcessCompletedEvent;
        unsigned int m_MaxPackets;
        unsigned int m_YieldRate;
        unsigned int m_LookAheadBufferSize;
        unsigned long m_ActualBytesProcessed;

        //
        // The fixup buffer handling
        //

        void * m_pFixupBuffer;
        void * m_pFixupData;
        unsigned int m_FixupBufferSizeInBytes;
        unsigned int m_FixupBytesAvailable;
        ref< IRadMemorySpaceCopyRequest > m_refIRadMemorySpaceCopyRequest;

        //
        // Client buffer handling
        // 

        void * m_pFrameBuffer;
        radMemorySpace m_DestinationMemorySpace;
        unsigned int m_RequestSizeInBytes;
        unsigned int m_RemainingRequestSizeInBytes;

        //
        // References
        //

        ref< XWmaFileMediaObject > m_refXWmaFileMediaObject;
        ref< IRadSoundHalDataSourceCallback > m_refIRadSoundHalDataSourceCallback;
		ref< IRadSoundHalAudioFormat > m_refIRadSoundHalAudioFormat;
		ref< IRadFile > m_refIRadFile;
};

#endif // WMAFILEDATASOURCE_HPP
//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef BUFFER_HPP
#define BUFFER_HPP

//============================================================================
// Include Files
//============================================================================

#include <radsound_hal.hpp>
#include <radlinkedclass.hpp>
#include <radsoundobject.hpp>
#include "radsoundgcn.hpp"

//============================================================================
// Class: radSoundBufferGcn
//============================================================================

class radSoundBufferGcn
	:
	public IRadSoundHalBuffer,
	public radLinkedClass< radSoundBufferGcn >,
	public radSoundObject
{
    public:

        // IRadSoundHalBuffer
        
        virtual void Initialize(
		    IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
            IRadMemoryObject * pIRadMemoryObject,
            unsigned int sizeInFrames,
		    bool looping,
            bool streaming );
    
	    virtual IRadSoundHalAudioFormat * GetFormat( void ) ;
	    virtual IRadMemoryObject * GetMemoryObject( void );
	    virtual bool IsLooping( void );

	    virtual unsigned int GetSizeInFrames( void );
    
	    virtual void LoadAsync(
		    IRadSoundHalDataSource * pIRadSoundHalDataSource,
		    unsigned int bufferStartInFrames,
		    unsigned int numberOfFrames,
		    IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback );

        virtual void ClearAsync( 
            unsigned int startPositionInFrames,
		    unsigned int numberOfFrames,
            IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback );

        virtual void CancelAsyncOperations( void );

        virtual unsigned int GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType );

        virtual void ReSetAudioFormat( IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat );
   
        // Internal

        IMPLEMENT_REFCOUNTED( "radSoundBuffer" )

        radSoundBufferGcn( void );
                
        unsigned long GetAramStartAddressInBytes( unsigned int channel );
        unsigned long GetAramSampleStartInLogicalUnits( unsigned int channel, unsigned int startSampleIndex );
        unsigned long GetAramSampleEndInLogicalUnits( unsigned int channel );

        unsigned long GetAlignedBufferSize( void );        
                
    private:

        ~radSoundBufferGcn( void );

	    bool          m_Looping;
        unsigned int  m_SizeInBytes;

        ref< IRadMemoryObject > m_xIRadMemoryObject;
        ref< IRadSoundHalAudioFormat > m_xIRadSoundHalAudioFormat;
};

#endif // BUFFER_HPP
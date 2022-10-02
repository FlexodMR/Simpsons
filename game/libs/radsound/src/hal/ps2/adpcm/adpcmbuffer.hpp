//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ADPCMBUFFER_HPP
#define ADPCMBUFFER_HPP

#include <radlinkedclass.hpp>
#include <radfile.hpp>
#include <radsoundobject.hpp>
#include "adpcmbufferloader.hpp"

//=============================================================================
// Interface : IRadSoundAdpcmBufferPs2
//=============================================================================

class radSoundBufferAdpcmPs2
    :
    public IRadSoundHalBuffer,
	public radLinkedClass< radSoundBufferAdpcmPs2 >,
    public radSoundObject
{
    public:

        radSoundBufferAdpcmPs2( void );

        IMPLEMENT_REFCOUNTED( "radSoundBufferAdpcmPs2" )

		// IRadSoundHalBuffer

		virtual void Initialize(
			IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
			IRadMemoryObject * pIRadMemoryObject,
			unsigned int sizeInFrames,
			bool looping,
            bool streaming );
    
		virtual IRadSoundHalAudioFormat * GetFormat( void );

		virtual IRadMemoryObject * GetMemoryObject( void );

		virtual bool IsLooping( void );

		virtual unsigned int GetSizeInFrames( void );

		virtual void LoadAsync(
			IRadSoundHalDataSource * pIRadSoundHalDataSource,
			unsigned int startPositionInFrames,
			unsigned int numberOfFrames,
			IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback );

		virtual void ClearAsync( 
			unsigned int startPositionInFrames,
			unsigned int numberOfFrames,
			IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback );

        virtual void CancelAsyncOperations( void );

        virtual unsigned int GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType );

        virtual void ReSetAudioFormat( IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat ) { };

		// Internal

        unsigned int GetStartAddress( void );
        unsigned int GetSizeInBytes( void );

    protected: 
        
        virtual ~radSoundBufferAdpcmPs2( void );

    private: 

		bool TestSamplingRateTruncation( unsigned int samplingRate );


        //======================================================================
        // Data Members
        //======================================================================

        bool m_Looping;
		unsigned int m_SizeInFrames;

		ref< IRadMemoryObject > m_xIRadMemoryObject;
        ref< IRadSoundHalAudioFormat > m_xIRadSoundHalAudioFormat;
};

#endif // ADPCMBUFFER_HPP
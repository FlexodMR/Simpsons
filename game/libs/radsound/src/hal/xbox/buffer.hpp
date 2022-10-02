//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BUFFER_HPP
#define BUFFER_HPP

#include <radlinkedclass.hpp>

#include <radsound.hpp>
#include <radsoundobject.hpp>

 
//============================================================================
// Component: radSoundBufferXBox
//============================================================================

struct radSoundBufferXBox
    :
    public IRadSoundHalBuffer,
	public radLinkedClass< radSoundBufferXBox >,
	public radSoundObject
{
	public:

		IMPLEMENT_REFCOUNTED( "radSoundBufferXBox" )

		radSoundBufferXBox( void );

		// IRadSoundHalBuffer


		virtual void Initialize( IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat,
			IRadMemoryObject * pIRadMemoryObject,
			unsigned int sizeInFrames,
			bool looping,
            bool streaming );

		virtual IRadSoundHalAudioFormat * GetFormat( void );
		virtual IRadMemoryObject * GetMemoryObject( void );
		virtual unsigned int GetSizeInSamples( void );
		virtual unsigned int GetSizeInFrames( void );
		virtual bool IsLooping( void );   

		virtual void LoadAsync(
			IRadSoundHalDataSource * pIRadSoundHalDataSource,
			unsigned int bufferStartInFrames,
			unsigned int numberOfFrames,
			IRadSoundHalBufferLoadCallback * pIRadSoundHalBufferLoadCallback );

		virtual void ClearAsync( 
			unsigned int offsetInFrames, 
            unsigned int sizeInFrames,
			IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback );

        virtual void CancelAsyncOperations( void );

        virtual unsigned int GetMinTransferSize( IRadSoundHalAudioFormat::SizeType sizeType );

        virtual void ReSetAudioFormat( IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat ) { };

		// Internal

		void * GetBufferMemory( void );


	private:

		~radSoundBufferXBox( void );

		unsigned int m_SizeInSamples;
		bool         m_Looping;

		ref< IRadMemoryObject >        m_xIRadMemoryObject_WavData;
		ref< IRadSoundHalAudioFormat > m_xIRadSoundHalAudioFormat;
};

#endif // BUFFER_HPP

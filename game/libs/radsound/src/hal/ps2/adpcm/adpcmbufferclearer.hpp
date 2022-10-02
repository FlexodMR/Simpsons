//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ADPCMBUFFERCLEARER_HPP
#define ADPCMBUFFERCLEARER_HPP

#include "adpcmasyncrequest.hpp"

class radSoundHalAdpcmBufferClearer
	:
	public radSoundHalBufferAsyncRequestAdpcmPs2,
	public radSoundPoolObject< radSoundHalAdpcmBufferClearer >
{
	public:

        virtual void AddRef( void ) { radSoundHalBufferAsyncRequestAdpcmPs2::AddRef( ); }
        virtual void Release( void ) { radSoundHalBufferAsyncRequestAdpcmPs2::Release( ); }

		radSoundHalAdpcmBufferClearer(
			IRadSoundHalBuffer * pIRadSoundHalBuffer,
			unsigned int startPositionInFrames,
			unsigned int numberOfFrames, 
			IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback );

	protected:

		virtual void BeginRequest( void );
		virtual bool ServiceRequest( void );
		virtual void EndRequest( void );
        virtual void CancelRequest( void );

	private:

		virtual ~radSoundHalAdpcmBufferClearer( void );
        void CallbackClient( void );

		int m_RefCount;

        bool m_Started;
        bool m_Cancelled;
		unsigned int m_StartPositionInFrames;
		unsigned int m_NumberOfFrames;

		ref< IRadSoundHalBuffer > m_xIRadSoundHalBuffer;
		ref< IRadSoundHalBufferClearCallback > m_xIRadSoundHalBufferClearCallback;
};

#endif
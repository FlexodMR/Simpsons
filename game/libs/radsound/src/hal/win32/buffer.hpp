//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BUFFER_HPP
#define BUFFER_HPP

//============================================================================
// Include Files
//============================================================================
#include <radlinkedclass.hpp>

#include <radsoundobject.hpp>
#include "radsoundwin.hpp"

//============================================================================
// Component: IRadSoundBufferWin
//============================================================================

class radSoundHalBufferWin
    :
    public IRadSoundHalBuffer,
    public IRadSoundHalBufferLoadCallback,
	public radLinkedClass< radSoundHalBufferWin >,
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

		virtual IRadSoundHalAudioFormat * GetFormat( void );

		virtual unsigned int GetSizeInFrames( void );
		virtual IRadMemoryObject * GetMemoryObject( void );
		virtual bool IsLooping( void );   

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

        virtual void ReSetAudioFormat( IRadSoundHalAudioFormat * pIRadSoundHalAudioFormat ) { };

        // IRadSoundHalBufferLoadCallback

        virtual void OnBufferLoadComplete( unsigned int dataSourceFrames );

		// Internal

		radSoundHalBufferWin( void );


		IMPLEMENT_REFCOUNTED( "radSoundHalBufferWin" )

		unsigned int GetSizeInBytes( void );
        bool IsStreaming( void );

        static void InitializeBufferDataPool( unsigned int maxCount, radMemoryAllocator allocator );
        static void TerminateBufferDataPool( void );

        struct BufferData
        {
            ref< IDirectSoundBuffer > m_refIDirectSoundBuffer;

            BufferData * m_pNext;
            BufferData * m_pPrev;
            BufferData ** m_ppHead;
            BufferData * m_pLRUNext;
            BufferData * m_pLRUPrev;
            radSoundHalBufferWin * m_pListOwner;
        };

		void GetBufferData( bool positional, BufferData ** ppBufferData );
		void FreeBufferData( bool positional, BufferData * pBufferData );

	private:

		virtual ~radSoundHalBufferWin( void );

        void CreateDirectSoundBuffer(  bool support3DSound, IDirectSoundBuffer ** ppIDirectSoundBuffer );
        void ClearDirectSoundBuffer( IDirectSoundBuffer * pIDirectSoundBuffer, 
            unsigned int offsetInSamples, unsigned int sizeInSamples );

        void CreateBufferData( BufferData ** ppBufferData, IDirectSoundBuffer * pIDirectSoundBuffer );
        void DeleteBufferData( BufferData * pBufferData );
        void AddToList( BufferData ** ppListHead, BufferData * pBufferData );
        void RemoveFromList( BufferData * pBufferData );
        void GetLeastRecentlyUsedFreeBufferData( BufferData ** ppBufferData );

		unsigned int m_SizeInFrames;
        unsigned int m_LoadStartInBytes;
        void * m_pLockedLoadBuffer;
        unsigned long m_LockedLoadBytes;

		bool m_Looping;
        bool m_Streaming;

        BufferData * m_pFreeBufferDataList_Pos;
        BufferData * m_pFreeBufferDataList_NonPos;
        BufferData * m_pBusyBufferDataList;
        static BufferData * s_pLRUFreeBufferListHead;
        static BufferData * s_pLRUFreeBufferListTail;

		static ref< IRadMemoryPool >    s_refIRadMemoryPool;
		ref< IRadSoundHalAudioFormat >	m_refIRadSoundHalAudioFormat;
		ref< IRadMemoryObject >			m_refIRadMemoryObject;
        ref< IRadSoundHalBufferLoadCallback > m_refIRadSoundHalBufferLoadCallback;

        struct DebugInfo
        {
            static unsigned int s_Total;
            static unsigned int s_TotalFreeCount;
            static unsigned int s_TotalBusyCount;
            unsigned int m_FreeCountPos;
            unsigned int m_FreeCountNonPos;
            unsigned int m_BusyCount;
        } m_DebugInfo;
};

#endif

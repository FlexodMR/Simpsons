//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef IOPCLIENT_HPP
#define IOPCLIENT_HPP

#include <radthread.hpp>
#include <radsoundobject.hpp>
#include <iopcommon.hpp>

class radSoundIopPs2
	:
    public radSoundObject
{
    public:

        IMPLEMENT_REFCOUNTED( "radSoundIopPs2" )

        static void Initialize(
            unsigned int transferBufferSize,
            unsigned int clearBufferSize,
            radMemoryAllocator allocator );

        static void Terminate( void );
        static radSoundIopPs2 * GetInstance( void );

        radSoundIopPs2(
            unsigned int transferBufferSize,
            unsigned int clearBufferSize );

        ~radSoundIopPs2( void );

 	    void LoadBufferAsync( unsigned int iopTransferBuffer,
		    IRadSoundHalBuffer * pIRadSoundHalBuffer,
		    unsigned int startPositionInFrames,
		    unsigned int numberOfFrames );

        void ClearBufferAsync(
		    IRadSoundHalBuffer * pIRadSoundHalBuffer,
		    unsigned int startPositionInFrames,
		    unsigned int numberOfFrames );

        void DebugVerifySpuRange( 
		    unsigned int spuRangeStart,
		    unsigned int spuRangeSize,
            unsigned int numberOfChannels );

        inline unsigned int GetTransferBufferSize( void );
        inline unsigned int GetTransferBufferAddress( void );
        inline unsigned int GetClearBufferSize( void );
    
        void Service( void );
        bool LoadBufferComplete( void );
        bool ClearBufferComplete( void );
 
        radSoundIopVoiceServerFx_WriteVoiceState_Params * GetWriteCommandPacket( void );
        radSoundEeVoiceServerFx_ReadVoiceState_Params   * GetReadCommandPacket( void );

    private:

        static unsigned int VoiceThreadProc( void * pUserData );
        static unsigned int LoadThreadProc( void * pUserData );
       
        void BindToIopLoadServer( unsigned int clearBufferSize );
        void BindToIopVoiceServer( void );

        static radSoundIopPs2 * s_pTheSoundRpcClient;

        unsigned int m_TransferBufferAddress;
        unsigned int m_TransferBufferSize;
 
        ref< IRadThread >          m_refLoadThread;
        ref< IRadThreadSemaphore > m_refLoadSema;
        ref< IRadThreadMutex >     m_refLoadMutex;
        
        enum LoadThreadState
        {
            LoadThreadState_Loading, LoadThreadState_Clearing, LoadThreadState_Idle
        } loadThreadState;
            
        
        ref< IRadThread >          m_refVoiceThread;
        ref< IRadThreadSemaphore > m_refVoiceSema;
        ref< IRadThreadMutex >     m_refVoiceMutex;
        
        enum VoiceThreadState
        {
            VoiceThreadState_Busy, VoiceThreadState_Idle
        } voiceThreadState;
      
        
        bool terminate;

};

inline unsigned int radSoundIopPs2::GetTransferBufferSize( void )
{
    return m_TransferBufferSize;
}

inline unsigned int radSoundIopPs2::GetTransferBufferAddress( void )
{
    return m_TransferBufferAddress;
}

#endif // IOPCLIENT_HPP
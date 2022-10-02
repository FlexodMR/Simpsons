//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BUFFERASYNCCLEARER_HPP
#define BUFFERASYNCCLEARER_HPP

class radSoundBufferAsyncClearerGcn
    :
    public radSoundBufferAsyncRequestGcn,
    public radSoundPoolObject< radSoundBufferAsyncClearerGcn >
{
    public:
    
        IMPLEMENT_REFCOUNTED( "radSoundBufferAsyncClearerGcn" )
    
        radSoundBufferAsyncClearerGcn(
            radSoundBufferGcn * pRadSoundBufferGcn,
            unsigned long clearStartPositionInFrames,
            unsigned long numberOfFramesToClear,
            IRadSoundHalBufferClearCallback * pIRadSoundHalBufferClearCallback
        );        
  
    private:
    
        virtual void OnBeginOperation( void );
        virtual void OnDmaToAramComplete( void );
        virtual void Cancel( void );
        
        void ClearNextChunk( );
        
        unsigned int m_ChannelClearOffsetInBytes;
        
        unsigned int m_CurrentChannel;
        unsigned int m_BytesToClearThisChunk;
        unsigned int m_BytesClearedThisChannel;
        unsigned int m_BytesToClearPerChannel;
        bool         m_Cancelled;
        
        ref< IRadSoundHalBufferClearCallback > m_xIRadSoundHalBufferClearCallback;
};

#endif // ! BUFFERASYNCCLEARER_HPP
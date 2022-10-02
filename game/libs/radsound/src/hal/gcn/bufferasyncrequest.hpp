//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BUFFERASYNCREQUEST_HPP
#define BUFFERASYNCREQUEST_HPP

#include <radsoundupdatableobject.hpp>

class radSoundBufferAsyncRequestGcn
    :
    public IRefCount
{
    public:
     
        static void Initialize( unsigned long mainMemoryTransferBufferSize, radMemoryAllocator allocator );
        static bool RequestQueueEmpty( void ) { return s_pRequestHead == NULL; }
        static void Service( void );
        static void Terminate( void );
        static void CancelAsyncOperations( IRefCount * pIRefCount_Owner );
    
        radSoundBufferAsyncRequestGcn(
            radSoundBufferGcn * pRadSoundBufferGcn );
            
        virtual ~radSoundBufferAsyncRequestGcn( void );            
        
    protected:
        
        void Initialize( void );
        
        virtual void OnBeginOperation( void ) = 0;
        virtual void OnDmaToAramComplete( void ) = 0;
        virtual void Cancel( void ) = 0;
        
        void DmaToAram(
            unsigned long mainMemoryAddres, unsigned long aramAddress, 
            unsigned long numberOfBytes );       

        ref< radSoundBufferGcn > m_xRadSoundBufferGcn;
        
        static void *             s_pMainMemoryTransferBuffer;
        static void *             s_pMainMemoryInterleaveBuffer;
        static unsigned long      s_MainMemoryBufferSize;        
                
    private:
    
        virtual void Update( void );
        
        radSoundBufferAsyncRequestGcn * m_pRequestNext;		
	    
        ref< IRadMemorySpaceCopyRequest >       m_xIRadMemorySpaceCopyRequest;

        static radSoundBufferAsyncRequestGcn * s_pRequestHead;

        static radMemoryAllocator s_MainMemoryTransferBufferAllocator;     
};

#endif BUFFERASYNCREQUEST_HPP
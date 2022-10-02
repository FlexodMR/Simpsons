//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ipups2.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This declares the ipu decoder class of the FTech movie player
//
// Date:    	May 16, 2002
//
// Notes:       ipuPs2 abstracts the PS2 IPU hardware video decoder.  It 
//              provides an interface for supply, receiving, and processing
//              data through the ipu.
//
//=============================================================================

#ifndef IPU_PS2_HPP
#define IPU_PS2_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <libipu.h>
#include <radmovie2.hpp>
#include "../common/radmovieinterfaces.hpp"

//=============================================================================
// Definitions
//=============================================================================

#define RAD_IPU_HEADER_SIZE 16
#define RAD_IPU_DECODE_FLAG_OFFSET 24
#define RAD_IPU_DECODE_FLAG_MASK 0xff
#define RAD_IPU_DECODE_FLAG_SIZE 8
#define RAD_IPU_FRAME_START_CODE 0x000001B0
#define RAD_IPU_FRAME_START_CODE_SIZE 32
#define RAD_IPU_MOVIE_END_CODE 0x000001B1
#define RAD_IPU_MOIVE_END_CODE_SIZE 32
#define RAD_IPU_MAX_DMA_SIZE ( 1024 * 1024 - 8 * 16 ) // 1MB - 8qwords

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieIpuPs2;

//=============================================================================
// Global Functions
//=============================================================================

//=============================================================================
// Class radMovieVideoDecoderPs2
//=============================================================================

class radMovieIpuPs2 : public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieIpuPs2" )

        //
        // Public static members
        //

        static void Initialize( radMemoryAllocator allocator );
        static void Terminate( void );
        static radMovieIpuPs2 * GetInstance( void );

        //
        // As per usual, service as often as possible
        //
        
        void Service( void );

        //
        // The client is responsible for feeding in data.  The input
        // buffer can be established before or after requesting a 
        // frame to be decoded.  Ideally the input should be established
        // before starting to decode.
        //
    
        void InputAsync( void * pBuffer, unsigned int numBytes );
        bool IsInputRequired( void );

        //
        // The ipu will decode the next frame in the bitstream.
        // It will draw data from the inputBuffer provided above
        // and feed the decoded data into the pOutputBuffer.
        //
        // The function assumes that only one bitstream exists.  It
        // begins decoding each new from where the previous frame ended.
        // 
        // The sequence of the bitstream can be interrupted between
        // frames with the Flush( ) method.
        //
        // The pOutputFrameBuffer must be large enough to contain
        // an entire decoded video frame. (4 * widthInPixels * heightInPixels)
        //
        // Only call DecodeFrameAsync when the ipu is in the IPU_READY State.
        //

        enum IpuState { IPU_READY, IPU_FLAGS, IPU_DECODE, IPU_DECODE_WAIT, IPU_MOVIE_END, IPU_ERROR } m_IpuState;

        void DecodeFrameAsync( void * pOutputFrameBuffer, unsigned int numBytes );
        IpuState GetState( void );

        //
        // Flush the input fifo and internal buffers of 
        // ipu. This must not occur while the ipu is actively 
        // decoding a frame. 
        //
        // Cancels pending InputAysnc( ) requests.
        //
        // Moves the ipu from to the IPU_READY (But don't call this every frame, only
        // when the buffers need flushing, like when the IPU is in the IPU_MOVIE_END
        // state or IPU_ERROR state or when there is a discontinuity in the 
        // bit stream.
        //

        void Flush( void );

        //
        // Dma operations from the ipu to the video output must occur in chunks smaller
        // than 1MB.  This Dma handler function allows that to happen.
        //

        static int DmaFromIpuHandler( int channelNumber, void * pUserData, void * pcAtTimeOfInterrupt );

    private:

        //
        // Constructor / Destructor
        //

        radMovieIpuPs2( void );
        virtual ~radMovieIpuPs2( void );

        //
        // The non-static dma from ipu interrupt handler
        //

        void OnDmaInterruptFromIpu( void );

        //
        // State of ipu
        //

        bool m_IpuFlushed;

        //
        // State of the current decode
        //

        void * m_pOutputBuffer;
        unsigned int m_OutputBufferBytes;
        volatile bool m_IsDmaFromIpuPending;
        int m_DmaFromIpuHandlerId;

        //
        // The singleton
        //

        static ref< radMovieIpuPs2 > s_refTheRadMovieIpuPs2;

        //
        // Private inline methods to control dma
        //

        inline bool IsDmaToIpuBusy( void );
        inline void StopIpuDma( void );
        inline void StartDmaToIpu( void * pBuffer, unsigned int numBytes );
        inline bool IsDmaFromIpuBusy( void );
        inline void StartDmaFromIpu( void ** ppBuffer, unsigned int * pNumBytes );
        inline void EnableDmaFromIpuInterrupt( void );
};

//=============================================================================
// radMovieIpuPs2::IsDmaToIpuBusy
//=============================================================================

bool radMovieIpuPs2::IsDmaToIpuBusy( void )
{
    return ( ( ( * D4_CHCR ) & D_CHCR_STR_M ) > 0 );  // is start bit set?
}

//=============================================================================
// radMovieIpuPs2::StopIpuDma
//=============================================================================

void radMovieIpuPs2::StopIpuDma( void )
{
    //
    // This procedure for stopping dma transfers
    // appeared in v6.0 of the sony EE User's Manual
    //

    // 1. Disable interrupts.
    // 2. Read D_ENABLER.
    // 3. Perform OR between the result of step 2 and 0x00010000.
    // 4. Write the data obtained from the OR operation to D_ENABLEW.
    //    < DMA transfer is suspended. >
    // 5. Perform two or more uncached read operations.
    //    (Reading Dn_CHCR and D_CTRL is appropriate.)
    // 6. Set the STR bit of the Dn_CHCR register (or the DMAE bit of the D_CTRL register) to 0.
    //    (Access other bits as necessary.)
    // 7. Write the data obtained from the read operation in step 2 to D_ENABLEW.
    //    < DMA transfer restarts. >
    // 8. Recover from the interrupt-disabled state.
   

    DI( );

    unsigned int dEnableR = * D_ENABLER;

    * D_ENABLEW = D_ENABLEW_CPND_M | dEnableR;

    unsigned int read0 = * D3_CHCR;
    unsigned int read1 = * D_CTRL;

    * D3_CHCR = 0;    
    * D4_CHCR = 0;    
    * D_ENABLEW = dEnableR;

    EI( );

    m_IsDmaFromIpuPending = false;
}

//=============================================================================
// radMovieIpuPs2::StartDmaToIpu
//=============================================================================

void radMovieIpuPs2::StartDmaToIpu( void * pBuffer, unsigned int numBytes )
{
    rAssert( numBytes < RAD_IPU_MAX_DMA_SIZE );
    rAssert( numBytes > 0 );

    if( ( numBytes % 16 ) != 0 )
    {
        rDebugChannelPrintf( radMovieDebugChannel2, "radMovieIpuPs2::StartDmaToIpu( ) rounding down number of bytes" );
    }

    // It may be necessary to flush the cache before calling

    * D4_MADR = ( unsigned int ) pBuffer; // Transfer start address
    * D4_QWC = numBytes / 16;             // Transfer size in qwords

    asm volatile( "sync.p" );
    FlushCache( WRITEBACK_DCACHE );

    * D4_CHCR = D_CHCR_STR_M;             // Set start bit (ch4 doesn't need dir bit)
}

//=============================================================================
// radMovieIpuPs2::IsDmaFromIpuBusy
//=============================================================================

bool radMovieIpuPs2::IsDmaFromIpuBusy( void )
{
    return ( ( ( * D3_CHCR ) & D_CHCR_STR_M ) > 0 );  // is start bit set?
}

//=============================================================================
// radMovieIpuPs2::StartDmaFromIpu
//=============================================================================

void radMovieIpuPs2::StartDmaFromIpu( void ** ppBuffer, unsigned int * pNumBytes )
{
    rAssert( IsDmaFromIpuBusy( ) == false );
    rAssert( ppBuffer != NULL );
    rAssert( * ppBuffer != NULL );
    rAssert( pNumBytes != NULL );

    if( * pNumBytes > 0 )
    {
        m_IsDmaFromIpuPending = true;

        // Dma's from ipu must occur in chunks smaller than 1MB

        unsigned int numBytes = * pNumBytes;
        void * pDest = * ppBuffer;

        if( * pNumBytes > RAD_IPU_MAX_DMA_SIZE )
        {
            * pNumBytes -= RAD_IPU_MAX_DMA_SIZE;
            * ppBuffer = * ( ( char ** ) ppBuffer ) + RAD_IPU_MAX_DMA_SIZE;
            numBytes = RAD_IPU_MAX_DMA_SIZE;
        }
        else
        {
            * pNumBytes = 0;
        }
        
        // Make sure that interrupts from channel 3 are enabled
        rAssert( ( * D_STAT & D_STAT_CIM3_M ) > 0 );

        * D3_MADR = ( unsigned int ) pDest; // Transfer start address
        * D3_QWC = numBytes / 16;             // Transfer size in qwords
        * D3_CHCR = D_CHCR_STR_M;             // Set start bit (ch4 doesn't need dir bit)
    }
    else
    {
        m_IsDmaFromIpuPending = false;
    }
}

//=============================================================================
// radMovieIpuPs2::EnableDmaFromIpuInterrupt
//=============================================================================

void radMovieIpuPs2::EnableDmaFromIpuInterrupt( void )
{
    // The channel interrupt mask bit is reversed when
    // 1 is written. (CIM3 == 1 ? enable : disable)

    if( ( * D_STAT & D_STAT_CIM3_M ) == 0 )
    {
        * D_STAT = D_STAT_CIM3_M;
    }
}

#endif // IPU_PS2_HPP
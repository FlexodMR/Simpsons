//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        movieplayer.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This file contains the declaration for the Foundation Tech 
//              Movie Player
//
// Date:    	May 16, 2002
//
//
// Notes:       The videodecoderps2 manages the data flow from the disk
//              through the IPU decoder into the output video buffer.
//
//              It works with the ipuPs2 class, which is an abstraction
//              of the IPU decoder hardware
//
//=============================================================================

#ifndef VIDEODECODERPS2_HPP
#define VIDEODECODERPS2_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <libipu.h>
#include <radmovie2.hpp>
#include "../common/radmovieinterfaces.hpp"

//=============================================================================
// Definitions
//=============================================================================

#define PS2_VIDEO_DECODE_ALIGNMENT 16   // ipu dma's must be quadword aligned
#define PS2_VIDEO_DECODE_NUM_PACKETS 16 // Buffers for reading data off disk

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieVideoDecoderPs2;

//=============================================================================
// Class radMovieVideoDecoderPs2
//=============================================================================

class radMovieVideoDecoderPs2 
    : 
    public IRadMovieVideoDecoder,
    public IRadFileCompletionCallback,
    public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieVideoDecoderPs2" )
    
        //
        // Constructor / Destructor
        //

        radMovieVideoDecoderPs2( void );
        virtual ~radMovieVideoDecoderPs2( void );

        //
        // IRadMovieVideoDecoder
        //

        virtual void Initialize( unsigned int maxWidthPixels, 
            unsigned int maxHeightPixels, unsigned int codedVideoBufferSize );

        virtual void SetSource( IRadFile * pIRadFile, unsigned int widthPixels, unsigned int heightPixels, unsigned int startPosition, unsigned int frameRate );
        virtual void Reset( void );

        virtual void * GetLockedVideoFrame( unsigned int * pPresentationTime );
        virtual void UnlockVideoFrame( void );

        virtual IRadMovieVideoDecoder::State GetState( void );
        virtual float GetFrameRate( void );
        virtual unsigned int GetCurrentFrameNumber( void );
        virtual void Service( void );

        //
        // IRadFileCompletionCallback
        //

        virtual void OnFileOperationsComplete( void* pUserData );

    private:

        void AddDataToBuffer( void );
        void AddDataToDecoder( void );
        void MonitorDecoder( void );
        void DecodeNextFrame( void );
        void SetState( IRadMovieVideoDecoder::State state );

        //
        // Some state flags
        //

        bool m_DecoderInputPending;

        ref< IRadFile > m_refIRadFile;
        unsigned int m_FileBytesRemaining;
        unsigned int m_FileReadSize;

        //
        // Members shared by both processes
        //
        
        IRadMovieVideoDecoder::State m_State;

        char * m_pCodedVideoPacket[ PS2_VIDEO_DECODE_NUM_PACKETS ];
        unsigned int m_CodedVideoPacketSize;
        unsigned int m_CurrentFileReadPacket;
        unsigned int m_CurrentDecodePacket;
        bool m_AllPacketsFull;

        //
        // Decoded video output buffer info
        //

        char * m_pDecodedVideoBuffer;
        unsigned int m_DecodedVideoBufferSize; // available memory
        unsigned int m_DecodedVideoFrameSize;  // size of frame

        unsigned int m_FramesDecoded;
        unsigned int m_FrameRate;

        //
        // Keep track of the state of the file source
        //

        enum FileState { FileState_None,            
                         FileState_Initializing, 
                         FileState_Reinitializing,  
                         FileState_Ready, 
                         FileState_WaitingForReset, 
                         FileState_Reading, 
                         FileState_SettingPosition };

        FileState m_FileState;
        void SetFileState( FileState state );
};

#endif // VIDEODECODERPS2_HPP

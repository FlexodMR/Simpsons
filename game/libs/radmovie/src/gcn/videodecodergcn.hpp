//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        videodecodergcn.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This file contains the declaration for the Foundation Tech 
//              Movie Player
//
// Date:    	July 18, 2002
//
//=============================================================================

#ifndef VIDEODECODERGCN_HPP
#define VIDEODECODERGCN_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radoptions.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <radmovie2.hpp>
#include "../common/radmovieinterfaces.hpp"
#include "videodatasourcegcn.hpp"

//=============================================================================
// Definitions
//=============================================================================

#define PS2_VIDEO_DECODE_ALIGNMENT 16  // ipu dma's must be quadword aligned
#define PS2_VIDEO_DECODE_NUM_PACKETS 32 // Buffers for reading data off disk

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieVideoDecoderGcn;

//=============================================================================
// Class radMovieVideoDecoderGcn
//=============================================================================

class radMovieVideoDecoderGcn
    : 
    public IRadMovieVideoDecoder,
    public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieVideoDecoderGcn" )

        //
        // Constructor / Destructor
        //

        radMovieVideoDecoderGcn( void );
        virtual ~radMovieVideoDecoderGcn( void );

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


    private:

        bool AttemptNextDecode( void * pDestination );
        void PerformDecode( void * pDestination );
        void UpdateGOPInfo( void );
        void UpdateRecInfo( void );
        void SetState( IRadMovieVideoDecoder::State state );

        ref< MovieReadBuffer > m_refRadMovieReadBuffer;

        //
        // Because of I, P, and B pictures, we hang on to previously decoded
        // pictures.  These ponters are numbered from oldest to newest.  The 
        // stale picture pointer points to a frame when it needs new data.
        //

        // temp working pointers

        void * m_pPicture0;
        void * m_pPicture1;
        void * m_pPicture2;
        void * m_pStalePicture;

        // base pointers

        void * m_pEncodedPicture;
        void * m_pDecoderWorkBuffer;
        void * m_pPictures[ 3 ];

        unsigned int m_PictureBufferSize;
        unsigned int m_EncodedPictureBufferSize;
        unsigned int m_DecoderWorkBufferSize;
        unsigned int m_FramesDecoded;
        unsigned int m_RecordsLeftInGOP;
        unsigned int m_GOPsLeft;
        unsigned int m_MicrosecondsPerFrame;
        unsigned int m_CurrentTime;

        HVQM4SeqObj m_HVQM4SeqObj;
        HVQM4RecHeader m_HVQM4RecHeader;

        IRadMovieVideoDecoder::State m_State;
};


#endif // ! RAD_MOVIEPLAYER_USE_BINK
#endif // VIDEODECODERGCN_HPP

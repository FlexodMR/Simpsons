//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        movieplayerxbox.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This is the XBox implementation of the movie player
//
// Date:    	July 4, 2002 RWS
//
//=============================================================================

#ifndef MOVIEPLAYERXBOX_HPP
#define MOVIEPLAYERXBOX_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radmovie2.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <xmv.h>
#include <radlinkedclass.hpp>
#include <radtime.hpp>

//=============================================================================
// Definitions
//=============================================================================

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMoviePlayerXBox;

//=============================================================================
// Class radMoviePlayerXBox
//=============================================================================

class radMoviePlayerXBox
    : 
    public IRadMoviePlayer2,
    public radLinkedClass< radMoviePlayerXBox >,
    public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radMoviePlayerXBox" )
    
        //
        // Constructor / Destructor
        //

        radMoviePlayerXBox( void );
        virtual ~radMoviePlayerXBox( void );

        //
        // IRadMoviePlayer
        //

        virtual void Initialize( 
            IRadMovieRenderLoop * pIRadMovieRenderLoop, 
            IRadMovieRenderStrategy * pIRadMovieRenderStrategy );

        virtual bool Render( void );

        virtual void Load( const char * pVideoFileName, unsigned int audioTrackIndex );
        virtual void Unload( void );
        virtual void Play( void );
        virtual void Pause( void );
        virtual void  SetPan( float pan ); 
        virtual float GetPan( void );
        virtual void  SetVolume( float volume );
        virtual float GetVolume( void );
        virtual State GetState( void );
        virtual bool GetVideoFrameInfo(VideoFrameInfo * pFrameInfo);
        virtual float GetFrameRate( void );
        virtual unsigned int GetCurrentFrameNumber( void );

        void Service( void );

    private:

        void SetState( IRadMoviePlayer2::State state );
        
        IRadMoviePlayer2::State m_State;

        XMVDecoder * m_pXMVDecoder;
        IDirectSoundStream * m_pIDirectSoundStream;

        ref< IRadMovieRenderLoop > m_refIRadMovieRenderLoop;
        ref< IRadMovieRenderStrategy > m_refIRadMovieRenderStrategy;
        ref< IRadStopwatch > m_refIRadStopwatch;

        float m_Volume;
        float m_Pan;

        unsigned long m_FramePresentTime;
        unsigned int m_FramesDecoded;

        bool m_IsPresentationOutstanding;
        bool m_SkippingFrames;
        bool m_CheckAudio;

        XMVVIDEO_DESC m_XMVVideoDesc;
};

#endif // ! RAD_MOVIEPLAYER_USE_BINK

#endif // MOVIEPLAYERXBOX_HPP

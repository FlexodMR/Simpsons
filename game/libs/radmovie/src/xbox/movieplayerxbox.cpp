//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        movieplayerxbox.cpp
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This is the XBox implementation of the movie player
//
// Date:    	July 4, 2002 RWS
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "pch.hpp"

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <pddi/xbox/display.hpp>
#include <p3d/pure3d.hpp>
#include <radsoundmath.hpp>
#include "movieplayerxbox.hpp"

//=============================================================================
// Local definitions
//=============================================================================

//
// Current implementation only plays movies of 640 * 480. May change in future. For
// PAL, we use  640 * 528
//
#ifndef PAL
#define VSYNC_PERIOD    20 
#else
#define VSYNC_PERIOD    16  // This is a reference integer  (actually 1000/60)
#endif

//
// If the video of the movie player starts falling behind the audio,
// the movie player will not render frames until it catches up.  This
// value controls how many frames the video can fall behind before
// the catch-up process begins
//

#define RAD_MOVIE_PLAYER_VIDEO_LAG 2 * VSYNC_PERIOD

//=============================================================================
// Global variables
//=============================================================================

unsigned int const radMovie_NoAudioTrack = 0xFFFFFFFF;
bool g_MovieInitialized = false;

//=============================================================================
// Static initialization
//=============================================================================

radMoviePlayerXBox * radLinkedClass< radMoviePlayerXBox >::s_pLinkedClassHead = NULL;
radMoviePlayerXBox * radLinkedClass< radMoviePlayerXBox >::s_pLinkedClassTail = NULL;

//=============================================================================
// radMoviePlayerXBox::radMoviePlayerXBox
//=============================================================================

radMoviePlayerXBox::radMoviePlayerXBox( void )
    :
    radRefCount( 0 ),
    m_State( NoData ),
    m_pXMVDecoder( NULL ),
    m_pIDirectSoundStream( NULL ),
    m_refIRadStopwatch( NULL ),
    m_FramePresentTime( 0 ),
    m_IsPresentationOutstanding( false ),
    m_SkippingFrames( false ),
    m_FramesDecoded( 0 ),
    m_Volume( 1.0f ),
    m_Pan( 0.0f ),
    m_CheckAudio( true )
{
    rAssert( g_MovieInitialized == true );

    ::memset( & m_XMVVideoDesc, 0, sizeof( XMVVIDEO_DESC ) );
}

//=============================================================================
// radMoviePlayerXBox::~radMoviePlayerXBox
//=============================================================================

radMoviePlayerXBox::~radMoviePlayerXBox( void )
{
    if( m_pIDirectSoundStream != NULL )
    {
        m_pIDirectSoundStream->Release( );
        m_pIDirectSoundStream = NULL;
    }

    if( m_pXMVDecoder != NULL )
    {
        m_pXMVDecoder->CloseDecoder( );
        m_pXMVDecoder = NULL;
    }
}

//=============================================================================
// radMoviePlayerXBox::Initialize
//=============================================================================

void radMoviePlayerXBox::Initialize( IRadMovieRenderLoop * pIRadMovieRenderLoop, IRadMovieRenderStrategy * pIRadMovieRenderStrategy )
{
    rAssert( m_refIRadMovieRenderLoop == NULL );
    rAssert( m_refIRadMovieRenderStrategy == NULL );

    m_refIRadMovieRenderLoop = pIRadMovieRenderLoop;
    m_refIRadMovieRenderStrategy = pIRadMovieRenderStrategy;

    ::radTimeCreateStopwatch( & m_refIRadStopwatch, radTimeUnit_Millisecond, GetThisAllocator( ) );
}

//=============================================================================
// radMoviePlayerXBox::Render
//=============================================================================

bool radMoviePlayerXBox::Render( void )
{
    rAssert( m_refIRadMovieRenderStrategy != NULL );
    return m_refIRadMovieRenderStrategy->Render( );
}

//=============================================================================
// radMoviePlayerXBox::Load
//=============================================================================

void radMoviePlayerXBox::Load( const char * pVideoFileName, unsigned int audioTrackIndex )
{
    rAssert( m_pXMVDecoder == NULL );
    rAssert( m_refIRadMovieRenderStrategy != NULL );
    rAssert( D3D__pDevice != NULL );
    rAssert( m_refIRadStopwatch != NULL );
   
    m_FramesDecoded = 0;
    m_IsPresentationOutstanding = false;
    m_SkippingFrames = false;

    //
    // Will audio be used?  If the audio track index is invalid, I'll
    // be friendly and play the movie in silence.  (That may not be 
    // consistent with the other platforms)
    //

    if( audioTrackIndex != radMovie_NoAudioTrack )
    {
    
        // When audio is available, the xmv decoder properly handles
        // synchronization of the audio and video.
        //
        // Create the decoder with no special flags

        HRESULT hr = ::XMVDecoder_CreateDecoderForFile( XMVFLAG_NONE, pVideoFileName, & m_pXMVDecoder );   

        // This means that the file probably wasn't found

        rAssertMsg( hr == S_OK, "radmovie: File probably not found" );  
        rAssert( m_pXMVDecoder != NULL );

        // Get the video descriptor and verify that this is a valid audio track index

        m_pXMVDecoder->GetVideoDescriptor( & m_XMVVideoDesc );
        rAssert( audioTrackIndex < m_XMVVideoDesc.AudioStreamCount );
        
        // Enable and get a hold of the requested audio stream
        //
        // NOTE: I get a reference to the direct sound stream through the 
        // enable audio stream function call.  August2002XDK introduce a bug
        // where this wouldn't work.  I now enable the audio stream and get a 
        // reference using a few function calls...
        //

        // The first stream to be enabled by this function will control the 
        // synchronization of the video (in other words we shouldn't have to call
        // SetSynchronizationStream( ) as well

        hr = m_pXMVDecoder->EnableAudioStream( audioTrackIndex, 0, NULL, NULL );
        rAssert( hr == S_OK );

        m_pXMVDecoder->GetAudioStream( audioTrackIndex, & m_pIDirectSoundStream );
        rAssert( m_pIDirectSoundStream != NULL );
        
        // Make sure the new audio will play back at the correct level

        float volume = GetVolume( );
        float pan = GetPan( );
        m_Volume = 1.0f;
        m_Pan = 0.0f;

        m_CheckAudio = false;

        SetVolume( volume );
        SetPan( pan );

        m_CheckAudio = true;
    }
    else
    {
        // With no audio, the xmv decoder doesn't handle the paused state
        // It's internal timer keeps going and thinks that you've just 
        // been late grabbing the next frame and tries to catch up.  We'll
        // need to handle timing ourselves
        //
        // Create the decoder with flags to tell it that we'll handle timing.
        // It will provide a new frame every time we ask for one.

        HRESULT hr = ::XMVDecoder_CreateDecoderForFile( 
            XMVFLAG_UNSYNCHRONIZED_PLAYBACK,
            pVideoFileName, & m_pXMVDecoder );

        rAssert( hr == S_OK );
        rAssert( m_pXMVDecoder != NULL );

        // Get the video descriptor.

        m_pXMVDecoder->GetVideoDescriptor( & m_XMVVideoDesc );
    }

    //
    // Prepare the render strategy
    //

    m_refIRadMovieRenderStrategy->SetParameters( m_XMVVideoDesc.Width, m_XMVVideoDesc.Height );

    // Reset the stopwatch

    m_refIRadStopwatch->Reset( );

    //
    // Set the state
    //

    SetState( ReadyToPlay );
}

//=============================================================================
// radMoviePlayerXBox::Unload
//=============================================================================

void radMoviePlayerXBox::Unload( void )
{
    if( m_pIDirectSoundStream != NULL )
    {
        HRESULT hr = m_pIDirectSoundStream->Flush( );
        m_pIDirectSoundStream->Release( );
        m_pIDirectSoundStream = NULL;
    }

    if( m_pXMVDecoder != NULL )
    {
        m_pXMVDecoder->CloseDecoder( );
        m_pXMVDecoder = NULL;
    }


    if( m_refIRadMovieRenderStrategy != NULL )
    {
        m_refIRadMovieRenderStrategy->ResetParameters( );
    }

    SetState( NoData );
}

//=============================================================================
// radMoviePlayerXBox::Play
//=============================================================================

void radMoviePlayerXBox::Play( void )
{
    if( m_State == IRadMoviePlayer2::ReadyToPlay )
    {
        if( m_pIDirectSoundStream != NULL )
        {
            // Resume the sound (which controls the video playback rate)

            HRESULT hr = m_pIDirectSoundStream->Pause( DSSTREAMPAUSE_RESUME );
        }
        else
        {
            // Resume the stopwatch (which controls the video playback rate)
                
            m_refIRadStopwatch->Start( );
        }

        SetState( IRadMoviePlayer2::Playing );
    }
    else if( m_State == IRadMoviePlayer2::Loading )
    {
        rAssert( false );  // for now
        SetState( IRadMoviePlayer2::LoadToPlay );
    }
}

//=============================================================================
// radMoviePlayerXBox::Pause
//=============================================================================

void radMoviePlayerXBox::Pause( void )
{
    if( m_State == IRadMoviePlayer2::Playing )
    {
        if( m_pIDirectSoundStream != NULL )
        {
            // Pause the sound (which controls the video playback rate)

            HRESULT hr = m_pIDirectSoundStream->Pause( DSSTREAMPAUSE_PAUSE );
        }
        else
        {
            // Pause the stopwatch (which controls the video playback rate)
            m_refIRadStopwatch->Stop( );
        }

        SetState( IRadMoviePlayer2::ReadyToPlay );
    }
    else if( m_State == IRadMoviePlayer2::LoadToPlay )
    {
        rAssert( false );  // not possible yet
        SetState( Loading );
    }
}

//=============================================================================
// radMoviePlayerXBox::SetPan
//=============================================================================

void  radMoviePlayerXBox::SetPan( float pan )
{
    pan = 1.0f;

    rAssert( pan >= -1.0f && pan <= 1.0f );

    if( m_Pan != pan )
    {
        // Remember this new pan

        m_Pan = pan;

        if( m_pIDirectSoundStream != NULL )
        {

            // Turn analog into left and right using radsound

            float panL = 1.0f;
            float panR = 1.0f;

            if( pan > 0 )
            {
                panL = 1.0f - 1.0f * pan;
            }
            else
            {
                panR = 1.0f + 1.0f * pan;
            }

            float dbL = ::radSoundVolumeAnalogToDb( panL );
            float dbR = ::radSoundVolumeAnalogToDb( panR );

            //
            // I'm only touching the front speakers. I hope
            // that's okay.
            //

            // We don't want to overflow.  -100 dB is plenty quiet.

	        if( dbL < -100.0f )
	        {
		        dbL = -100.0f;
	        }
	        if( dbR < -100.0f )
	        {
		        dbR = -100.0f;
	        }

            signed long xbmbL = static_cast< signed long >( dbL * 100.0f );
            signed long xbmbR = static_cast< signed long >( dbR * 100.0f );
    
            if ( xbmbL > DSBVOLUME_MAX )
            {
                xbmbL = DSBVOLUME_MAX;
            }
            else if ( xbmbL < DSBVOLUME_MIN )
            {
                xbmbL = DSBVOLUME_MIN;
            }
            if ( xbmbR > DSBVOLUME_MAX )
            {
                xbmbR = DSBVOLUME_MAX;
            }
            else if ( xbmbR < DSBVOLUME_MIN )
            {
                xbmbR = DSBVOLUME_MIN;
            }

            DSMIXBINVOLUMEPAIR pair[] = {
                { DSMIXBIN_FRONT_LEFT, xbmbL },
                { DSMIXBIN_FRONT_RIGHT, xbmbR } };

            DSMIXBINS mixbins;
            mixbins.dwMixBinCount = 2;
            mixbins.lpMixBinVolumePairs = pair;

            m_pIDirectSoundStream->SetMixBinVolumes( & mixbins );
        }
    }
}

//=============================================================================
// radMoviePlayerXBox::GetPan
//=============================================================================

float radMoviePlayerXBox::GetPan( void )
{
    return m_Pan;
}

//=============================================================================
// radMoviePlayerXBox::SetVolume
//=============================================================================

void  radMoviePlayerXBox::SetVolume( float volume )
{
    volume = 1.0f;
    if( m_Volume != volume )
    {
        ::radSoundVerifyChangeThreshold( m_CheckAudio, "Volume", m_Volume, volume, radSoundVolumeChangeThreshold );

        // Remember this new volume

        m_Volume = volume;

        if( m_pIDirectSoundStream != NULL )
        {
            // Turn analog into db using radsound's curve

            float dB = radSoundVolumeAnalogToDb( volume );

            // Make sure that dB fits the XBox in mB's

	        if( dB < -100.0f )
	        {
		        dB = -100.0f;
	        }

            signed long mB = static_cast< signed long >( dB * 100.0f );
    
            if ( mB > DSBVOLUME_MAX )
            {
                mB = DSBVOLUME_MAX;
            }
            else if ( mB < DSBVOLUME_MIN )
            {
                mB = DSBVOLUME_MIN;
            }

            m_pIDirectSoundStream->SetVolume( mB );
        }
    }
}

//=============================================================================
// radMoviePlayerXBox::GetVolume
//=============================================================================

float radMoviePlayerXBox::GetVolume( void )
{
    return m_Volume;
}

//=============================================================================
// radMoviePlayerXBox::GetState
//=============================================================================

IRadMoviePlayer2::State radMoviePlayerXBox::GetState( void )
{
    return m_State;
}

//=============================================================================
// radMoviePlayerXBox::GetVideoFrameInfo
//=============================================================================

bool radMoviePlayerXBox::GetVideoFrameInfo(VideoFrameInfo * pFrameInfo)
{
    rAssert( pFrameInfo != NULL );

    if( m_pXMVDecoder != NULL )
    {
        pFrameInfo->Width  = m_XMVVideoDesc.Width;
        pFrameInfo->Height = m_XMVVideoDesc.Height;
        return true;
    }
    else
    {
        return false;
    }
}

//=============================================================================
// radMoviePlayerXBox::GetFrameRate
//=============================================================================

float radMoviePlayerXBox::GetFrameRate( void )
{
    if( m_pXMVDecoder != NULL )
    {
        // I have to force this.  The XMV video description
        // doesn't seem to properly contain this value.
        //
        // return ( float ) m_XMVVideoDesc.FramesPerSecond;
        return 30.0f;
    }
    else
    {
        return 0.0f;
    }
}

//=============================================================================
// radMoviePlayerXBox::Service
//=============================================================================

void radMoviePlayerXBox::Service( void )
{
    State state = m_State;

    switch( state )
    {
    case NoData:
        break;
    case Loading:
        break;
    case LoadToPlay:
        break;
    case ReadyToPlay:
        break;
        case Playing:
        {
            rAssert( m_refIRadMovieRenderStrategy != NULL );
            rAssert( m_pXMVDecoder != NULL );

            //
            // Whether we have audio or not changes how we
            // deal with getting the next frame, because of the owner
            // of synchronization changes.  We'll use this XMVRESULT
            // and set it according to the scenario
            // 

            XMVRESULT xr = XMV_NOFRAME;

            if( m_pIDirectSoundStream != NULL )
            {
                // When we have audio, the decoder takes care of
                // whether a new frame should be presented and sets
                // the XMVRESULT for us

                IDirect3DSurface8 * pIDirect3DSurface8 = NULL;

                m_refIRadMovieRenderStrategy->GetDestination( & pIDirect3DSurface8 );
                rAssert( pIDirect3DSurface8 != NULL );

                HRESULT hr = m_pXMVDecoder->GetNextFrame( 
                    pIDirect3DSurface8, & xr, & m_FramePresentTime );
                rAssert( hr == S_OK );

                if( xr == XMV_NEWFRAME )
                {
                    m_FramesDecoded++;
                }
            
                pIDirect3DSurface8->Release( );
                pIDirect3DSurface8 = NULL;
            }
            else
            {
                //
                // With no audio, only ask for new frames when it's time
                //

                if( m_IsPresentationOutstanding == false )
                {
                    IDirect3DSurface8 * pIDirect3DSurface8 = NULL;

                    m_refIRadMovieRenderStrategy->GetDestination( & pIDirect3DSurface8 );
                    rAssert( pIDirect3DSurface8 != NULL );

                    HRESULT hr = m_pXMVDecoder->GetNextFrame( 
                        pIDirect3DSurface8, & xr, & m_FramePresentTime );
                    rAssert( hr == S_OK );

                    if( xr == XMV_NEWFRAME )
                    {
                        m_IsPresentationOutstanding = true;
                        m_FramesDecoded++;
                    }

                    pIDirect3DSurface8->Release( );
                    pIDirect3DSurface8 = NULL;
                }


                if( m_IsPresentationOutstanding == true )
                {
                    // initiate a render of the new frame.
                    // It's okay for us to fall a little behind the presentation time.  We might
                    // catch up without dropping frames.  If we do fall far enough behind, throw
                    // away frames until we're all the way caught up

                    unsigned int currentTime = m_refIRadStopwatch->GetElapsedTime( );

                    if( ( m_SkippingFrames == false && 
                          currentTime + VSYNC_PERIOD > m_FramePresentTime && 
                          currentTime < m_FramePresentTime + RAD_MOVIE_PLAYER_VIDEO_LAG ) ||
                        ( m_SkippingFrames == true &&
                          currentTime + VSYNC_PERIOD > m_FramePresentTime &&
                          currentTime <= m_FramePresentTime ) )
                    {
                        m_SkippingFrames = false;
                        m_IsPresentationOutstanding = false;
                        xr = XMV_NEWFRAME;
                    }
                    else if( currentTime + VSYNC_PERIOD > m_FramePresentTime )
                    {
                        rTunePrintf( "radMoviePlayer: NOT RENDERING THIS FRAME (must catch up)\n" );
                        rTunePrintf( "current time[ %d ] expected presentation time[%d]\n", currentTime, m_FramePresentTime );

                        //
                        // Not rendering will save us up to a vsync period this round.
                        // Eventually we're bound to catch up
                        //
                    
                        m_SkippingFrames = true;
                        m_IsPresentationOutstanding = false;
                        xr = XMV_NOFRAME;
                    }
                }
            }

            //
            // If we were given a render loop and the frame
            // was updated, now is the time to iterate the loop.
            // Or if the decode failed, we'll have to unload
            //

            if( xr == XMV_NEWFRAME && m_refIRadMovieRenderLoop != NULL )
            {
                m_refIRadMovieRenderLoop->IterateLoop( this );
            }
            else if( xr == XMV_ENDOFFILE || xr == XMV_FAIL )
            {
                Unload( );
            }

            break;
        }
    default:
        rAssert( false );
        return;
    }
}

//=============================================================================
// radMoviePlayerXBox::GetCurrentFrameNumber
//=============================================================================

unsigned int radMoviePlayerXBox::GetCurrentFrameNumber( void )
{

    return m_FramesDecoded;
}

//=============================================================================
// radMoviePlayerXBox::SetState
//=============================================================================

void radMoviePlayerXBox::SetState( IRadMoviePlayer2::State state )
{
    m_State = state;
}

//=============================================================================
// radMoviePlayerCreate2
//=============================================================================

IRadMoviePlayer2 * radMoviePlayerCreate2( radMemoryAllocator alloc )
{
    return new( RADMEMORY_ALLOC_DEFAULT )radMoviePlayerXBox( );
}

//=============================================================================
// radMovieInitialize2
//=============================================================================

void radMovieInitialize2( radMemoryAllocator alloc )
{
    // I know that these functions aren't doing any work 
    // here.  But I want the interface behave the same
    // on all platforms

    rAssert( g_MovieInitialized == false );
    g_MovieInitialized = true;
}

//=============================================================================
// radMovieTerminate2
//=============================================================================

void radMovieTerminate2( void )
{
    // I know that these functions aren't doing any work 
    // here.  But I want the interface behave the same
    // on all platforms

    rAssert( g_MovieInitialized == true );
    g_MovieInitialized = false;
}

//=============================================================================
// radMovieService2
//=============================================================================

void radMovieService2( void )
{
    ref< radMoviePlayerXBox > pNext = radMoviePlayerXBox::GetLinkedClassHead( );

    while( pNext != NULL )
    {
        pNext->Service( );
        pNext = pNext->GetLinkedClassNext( );
    }
}


#endif // ! RAD_MOVIEPLAYER_USE_BINK

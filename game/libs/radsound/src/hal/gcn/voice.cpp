//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//
// File:        voice.cpp
//
// Subsystem:   Radical Sound System
//
// Description: Gamecube implementation of the voice component.
//
//=============================================================================

//======================================================================
// Include Files
//======================================================================

#include <dolphin.h>

#include <radfile.hpp>
#include <radsound_hal.hpp>
#include <radsound_gcn.hpp>
#include <radsoundfile.hpp>
#include "..\common\softwarelistener.hpp"

#include "radsoundgcn.hpp"
#include "buffer.hpp"
#include "voice.hpp"

//======================================================================
// Static Init
//======================================================================

ref< IRadMemoryObject > radSoundVoiceGcn::s_xIRadMemoryObject_SilentBuffer = NULL;
float radSoundVoiceGcn::s_MasterAuxGains[ 2 ] = { 0.0f, 0.0f };     
radSoundVoiceGcn * radLinkedClass< radSoundVoiceGcn >::s_pLinkedClassHead =  NULL;
radSoundVoiceGcn * radLinkedClass< radSoundVoiceGcn >::s_pLinkedClassTail =  NULL;
float radSoundVoiceGcn::s_HardwarePlaybackRate = 32000.0f; // better not to be zero

//
// These flags specify the values that have changed.  We only set the
// hardare during Update( );
//

#define FLAGS_NULL     ( 0 )
#define FLAGS_PLAYING  ( 1 << 0 )
#define FLAGS_ADDRESS  ( 1 << 1 )
#define FLAGS_PITCH    ( 1 << 2 )
#define FLAGS_VOLUME   ( 1 << 3 )
#define FLAGS_PRIORITY ( 1 << 4 )
#define FLAGS_BUFFER   ( 1 << 5 )
#define FLAGS_DROPPED  ( 1 << 6 )

//======================================================================
// radSoundVoiceGcn::Initialize
//======================================================================

void radSoundVoiceGcn::Initialize( void )
{
    // Note that for one-shot samples, the loop-start address
    // (loopAddressHi/Lo) must point to a special sample called the
    // "zero buffer."  This sample must be at least 1,280 bytes long and
    // filled entirely with zeros.  Furthermore, this sample must be
    // 8-byte aligned in ARAM.  This arrangement ensures that the DSP
    // plays silence for the remainder of the frame after a voice
    // finishes.
    
    ::radSoundHalSystemGet( )->GetRootMemoryRegion( )->CreateMemoryObject(
        & s_xIRadMemoryObject_SilentBuffer, 1280, "radSoundHalSystem - Silent Buffer" );
        
    char * pMainMemoryTransferBuffer =
       (char*) ::radMemoryAllocAligned(
           RADMEMORY_ALLOC_TEMP, 1280, ARQ_DMA_ALIGNMENT );
            
    ::radSoundZeroMemory( pMainMemoryTransferBuffer, 1280 );
        
    ref< IRadMemorySpaceCopyRequest > xICopyRequest = radMemorySpaceCopyAsync(
        s_xIRadMemoryObject_SilentBuffer->GetMemoryAddress( ), radMemorySpace_Aram,
        pMainMemoryTransferBuffer, radMemorySpace_Main, 1280 );
        
    while ( xICopyRequest->IsDone( ) == false )
    {
        // Just spin here because we booting up.
    }

    // The silence is in ARAM now so we can delete our temporary main memory
    // buffer.

    ::radMemoryFreeAligned( RADMEMORY_ALLOC_TEMP, pMainMemoryTransferBuffer );
 
}

//======================================================================
// radSoundVoiceGcn::Terminate
//======================================================================

void radSoundVoiceGcn::Terminate( void )
{
    // Free the ARAM buffer (smart pointer calls release);

    s_xIRadMemoryObject_SilentBuffer = NULL;
}
                
//======================================================================
// Component: radSoundVoiceGcn
//======================================================================

radSoundVoiceGcn::radSoundVoiceGcn( void )
    :
    m_Flags( 0 ),
    m_Pan( 0.0f ),
    m_SPan( 1.0f ), // Front
    m_Volume( 1.0f ),
    m_Trim( 1.0f ),
    m_MuteOn( false ),
    m_Pitch( 1.0f ),
    m_LastKnownSamplePosition( 0 ),
    m_Priority( 10 ),
    m_Playing(false)
{        
    m_apVoiceParamBlock[ 0 ] = NULL; // Left (or mono) channel voice
    m_apVoiceParamBlock[ 1 ] = NULL; // Right voice.  If any
    
    m_AuxModes[ 0 ] = radSoundAuxMode_Off;
    m_AuxModes[ 1 ] = radSoundAuxMode_Off;
    
    m_AuxGains[ 0 ] = 0.0f;
    m_AuxGains[ 1 ] = 0.0f;
}

//======================================================================
// radSoundVoiceGcn::~radSoundVoiceGcn
//======================================================================

radSoundVoiceGcn::~radSoundVoiceGcn( void )
{
    // Set the playing flag to false and update ourselves one last time
    // to set the hardware, we only set the hardware during update, and
    // we will stick to this model event during destruction because the
    // voice drop interrupt callback could still get triggered.

    Stop( );

    Update( );

    // If we are positional remove ourselve from the group's list.
    // This is a weak reference so if we don't things will cRaSH.

    if ( m_xRadSoundHalPositionalGroup != NULL )
    {
        m_xRadSoundHalPositionalGroup->RemovePositionalEntity( this );
    }
}

//======================================================================
// radSoundVoiceGcn::GetSilentBufferStartInLogicalUnits
//======================================================================

unsigned int radSoundVoiceGcn::GetSilentBufferStartInLogicalUnits( )
{
    // This function returns the address of the silend buffer in terms
    // of the voice's audio format.  Note that the gamecube voice using
    // different "addressing modes" depending on this format.  The
    // address is always in terms of samples which changes with the type
    // of data played/

    unsigned int silentBufferInSamples;

    if (
        ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM ) ||
        ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM_BIGENDIAN ) )
    {
        silentBufferInSamples =
                (unsigned int) s_xIRadMemoryObject_SilentBuffer->GetMemoryAddress( ) /
                ( m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) / 8 );
    }
    else if ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
    {
        silentBufferInSamples =
                ( unsigned int ) s_xIRadMemoryObject_SilentBuffer->GetMemoryAddress( );
        silentBufferInSamples = silentBufferInSamples * 2 + GCN_ADPCM_FRAME_HEADER_SIZE;
    }
    else
    {
        rAssert( false ); // Unknown audio format.
    }

    return silentBufferInSamples;
}

//======================================================================
// radSoundVoiceGcn::SetBuffer
//======================================================================

/* virtual */ void radSoundVoiceGcn::SetBuffer
(
    IRadSoundHalBuffer * pIRadSoundHalBuffer
)
{
    // Set the new buffer flag, this will trigger a stop, set and
    // restart during the next Update( ) call.

    Stop( );

    m_Flags |= FLAGS_BUFFER;
    
    m_LastKnownSamplePosition = 0;
    
    m_xRadSoundBufferGcn =
        static_cast< radSoundBufferGcn * >( pIRadSoundHalBuffer );
}

//======================================================================
// radSoundVoiceGcn::GetBuffer
//======================================================================

/* virtual */ IRadSoundHalBuffer * radSoundVoiceGcn::GetBuffer
(
    void
)
{
    return m_xRadSoundBufferGcn;    
}

//======================================================================
// radSoundVoiceGcn::Play
//======================================================================

/* virtual */ void radSoundVoiceGcn::Play( void )
{
    // If we were already playing or have nothing to play, simply ignore.

    if ( m_Playing == false && m_xRadSoundBufferGcn != NULL )
    {
        // Wern't already plaing so set the playing flag.

        m_Playing = true;

        m_Flags |= FLAGS_PLAYING | FLAGS_VOLUME | FLAGS_PITCH | FLAGS_ADDRESS;
    }
}

/* virtual */ void radSoundVoiceGcn::Stop( void )
{
    // If we were already stopped, don't do anything

    if ( m_Playing == true )
    {
        #ifdef RAD_DEBUG

        extern bool g_VoiceStoppingPlayingSilence;

        if ( g_VoiceStoppingPlayingSilence == false )
        {
            if ( ( m_Trim * m_Volume ) > 0.0f )
            {
                rDebugPrintf( "radsound: TRC Violation: Voice stopped while playing and (trim * volume) > 0.0f\n" );
            }
        }

        #endif // RAD_DEBUG

        m_Playing = false;

        m_Flags |= FLAGS_PLAYING;
    }
}

void radSoundVoiceGcn::SetVoicePriority_Di( void )
{
    // User has changed the priority while the voice is playing,
    // just convert to gamecube values and call the hardware function

    rAssert( m_xRadSoundBufferGcn != NULL );

    unsigned int channels = m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );

    for( unsigned int channel = 0; channel < channels ; channel ++ )
    {
        ::AXSetVoicePriority ( m_apVoiceParamBlock[ channel ], ConvertPriority( m_Priority ) );
    }

}

//======================================================================
// radSoundVoiceGcn::SetVoicePitches
//======================================================================

void radSoundVoiceGcn::SetVoicePitches_Di( void )
{
    // Interrupts are disabled coming into this function.

    float pitchAdjust;

    if ( m_xRadSoundHalPositionalGroup == NULL )
    {
        pitchAdjust = m_Pitch;
    }
    else
    {
        pitchAdjust = m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PitchAdjust * m_Pitch;
    }
    
    float ratio =
        ( pitchAdjust * (float)m_xRadSoundBufferGcn->GetFormat( )->
            GetSampleRate( ) ) / s_HardwarePlaybackRate;
    
    if( m_Pitch > 4.0f )
    {
        ratio = 4.0f;
    }
    else if( m_Pitch < 1 / 512 )
    {
        ratio = 1 / 512;
    }

    for
    (
        unsigned int channel = 0;
        channel < m_xRadSoundBufferGcn->GetFormat( )->
            GetNumberOfChannels( );
        channel ++
    )
    {
        AXSetVoiceSrcRatio( m_apVoiceParamBlock[ channel ], ratio );
    }
}

//======================================================================
// radSoundVoiceGcn::SetVoiceVolumes
//======================================================================

#define atoh(x) radSoundVolumeAnalogToHardwareGcn(x)

void radSoundVoiceGcn::SetVoiceVolumes_Di( void )
{
    if ( m_apVoiceParamBlock[ 0 ] != NULL )
    {
        //
        // Clear out our structures.
        //
            
        AXPBMIX mix[ 2 ];
        ::radSoundZeroMemory( & mix[ 0 ], sizeof( mix[ 0 ] ) );
        ::radSoundZeroMemory( & mix[ 1 ], sizeof( mix[ 1 ] ) );         

        bool calculateSurround =
            ::radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Surround; 
                
        float muteVol = m_MuteOn ? 0.0f : 1.0f;
        float panVolLAmp;
        float panVolRAmp;
        
        float positionalAnalogSurroundAmp;
        float positionalAnalogAmp;
        
        float occlusionMult = 1.0f;  // multiplier
        float obstructionMult = 1.0f;

        if ( m_xRadSoundHalPositionalGroup == NULL )
        {
            positionalAnalogAmp = 1.0f;
            positionalAnalogSurroundAmp = 0.0f;
            
            ::radSoundPanToVolumePower( m_Pan, & panVolLAmp, & panVolRAmp );          
            panVolLAmp = radSoundPowerToAmplitude( panVolLAmp );
            panVolRAmp = radSoundPowerToAmplitude( panVolRAmp );                 
          
        }
        else
        {
    
            positionalAnalogAmp =
                m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_VolumeAdjust;
                
            ::radSoundPanToVolumePowerConstant(
                m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_PanAdjust,
                    & panVolLAmp, & panVolRAmp );
            
            panVolLAmp = radSoundPowerToAmplitude( panVolLAmp );
            panVolRAmp = radSoundPowerToAmplitude( panVolRAmp );

            occlusionMult = 1.0f - m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_Occlusion;
            obstructionMult = 1.0f - m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_Obstruction;

            if ( calculateSurround == true )
            {                
                float surroundAmp = 1.0f - ( ( m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_FrontBackPanAdjust + 1.0f ) / 2.0f );
                     
                positionalAnalogSurroundAmp = surroundAmp * positionalAnalogAmp;
                positionalAnalogAmp = ( 1.0f - surroundAmp ) * positionalAnalogAmp;
                // positionalAnalogSurroundAmp *= NEG_THREE_DB_IN_AMPLITUDE;
            }
            else
            {
                positionalAnalogSurroundAmp = 0.0f;
            }  
        }
        
        float volumeAmp = ::radSoundVolumeAnalogToAmplitude( m_Volume );
    
        float preFaderMonoAmp =     ::radSoundVolumeAnalogToAmplitude( m_Trim * muteVol );
        float preFaderLAmp =        panVolLAmp * preFaderMonoAmp;
        float preFaderRAmp =        panVolRAmp * preFaderMonoAmp;
        
        float postFaderMonoAmp =    preFaderMonoAmp * volumeAmp;
        float postFaderLAmp =       preFaderLAmp    * volumeAmp;
        float postFaderRAmp =       preFaderRAmp    * volumeAmp;
                      
        if ( m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( ) == 1 )
        {
            // Dry voice gets obstructed and occluded
            mix[ 0 ].vL = atoh( positionalAnalogAmp * postFaderLAmp * obstructionMult * occlusionMult );
            mix[ 0 ].vR = atoh( positionalAnalogAmp * postFaderRAmp * obstructionMult * occlusionMult );
            
            if ( calculateSurround )
            {
                mix[ 0 ].vS = atoh( positionalAnalogSurroundAmp * postFaderMonoAmp * obstructionMult * occlusionMult );
            }
             
            //
            // If effect installed calculate aux volumes, if not
            // we have already zeroed the struct.
            //
            
            if( m_xRadSoundHalPositionalGroup != NULL )
            {
                // Positional voices listen to the effect specified in positional info
                unsigned envAux = m_xRadSoundHalPositionalGroup->m_RadSoundHalPositionalInformation.m_EnvAuxSend;

                // wet voice gets occluded
                // Determine which aux to use

                if( envAux == 0 )
                {
                    // Aux A

                    mix[ 0 ].vAuxAL = atoh( positionalAnalogAmp * postFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ envAux ] * occlusionMult ) );
                    mix[ 0 ].vAuxAR = atoh( positionalAnalogAmp * postFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ envAux ] * occlusionMult ) );
                
                    if ( calculateSurround )
                    {
                        mix[ 0 ].vAuxAS = atoh(
                            positionalAnalogSurroundAmp * postFaderMonoAmp *
                                ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ envAux ] * occlusionMult ) );
                    }  
                }
                else
                {
                    // Aux B

                    mix[ 0 ].vAuxBL = atoh( positionalAnalogAmp * postFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ envAux ] * occlusionMult ) );
                    mix[ 0 ].vAuxBR = atoh( positionalAnalogAmp * postFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ envAux ] * occlusionMult ) );
                
                    if ( calculateSurround )
                    {
                        mix[ 0 ].vAuxBS = atoh(
                            positionalAnalogSurroundAmp * postFaderMonoAmp *
                                ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ envAux ] * occlusionMult ) );
                    }  
                }
            }
            else
            {
                // Mono aux a  (Here we are not positional)

                if
                (
                    ( ::radSoundHalSystemGet( )->GetNumAuxSends( ) > 0 ) &&
                    ( ::radSoundHalSystemGet( )->GetAuxEffect( 0 ) != NULL )
                )
                {
                    if ( m_AuxModes[ 0 ] == radSoundAuxMode_PreFader )
                    {
                        mix[ 0 ].vAuxAL = atoh( positionalAnalogAmp * preFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                        mix[ 0 ].vAuxAR = atoh( positionalAnalogAmp * preFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                    
                        if ( calculateSurround )
                        {
                            mix[ 0 ].vAuxAS = atoh(
                                positionalAnalogSurroundAmp * preFaderMonoAmp *
                                    ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                        }

                    }
                    else if
                    (
                       ( m_AuxModes[ 0 ] == radSoundAuxMode_PostFader ) ||
                       ( m_AuxModes[ 0 ] == radSoundAuxMode_PostFaderDirect )
                    )
                    {
                        mix[ 0 ].vAuxAL = atoh( positionalAnalogAmp * postFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                        mix[ 0 ].vAuxAR = atoh( positionalAnalogAmp * postFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                    
                        if ( calculateSurround )
                        {
                            mix[ 0 ].vAuxAS = atoh(
                                positionalAnalogSurroundAmp * postFaderMonoAmp *
                                    ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                        }                    
                    }
                }
            
                // Mono aux b
            
                if
                (
                     ( ::radSoundHalSystemGet( )->GetNumAuxSends( ) > 1 ) &&
                     ( ::radSoundHalSystemGet( )->GetAuxEffect( 1 ) != NULL )
                )
                {               
                    if ( m_AuxModes[ 1 ] == radSoundAuxMode_PreFader )
                    {
                        mix[ 0 ].vAuxBL = atoh( positionalAnalogAmp * preFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                        mix[ 0 ].vAuxBR = atoh( positionalAnalogAmp * preFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                    
                        if ( calculateSurround )
                        {
                            mix[ 0 ].vAuxBS = atoh( positionalAnalogSurroundAmp * preFaderMonoAmp *::radSoundVolumeAnalogToAmplitude(  s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                        }

                    }
                    else if
                    (
                       ( m_AuxModes[ 1 ] == radSoundAuxMode_PostFader ) ||
                       ( m_AuxModes[ 1 ] == radSoundAuxMode_PostFaderDirect )
                    )
                    {
                        mix[ 0 ].vAuxBL = atoh( positionalAnalogAmp * postFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                        mix[ 0 ].vAuxBR = atoh( positionalAnalogAmp * postFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                    
                        if ( calculateSurround )
                        {
                            mix[ 0 ].vAuxBS = atoh(
                                positionalAnalogSurroundAmp * postFaderMonoAmp *
                                    ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                        }
                    }
                }
            }

            // 
            //
            // Convert everything to mono if mono mode
            //

            if ( ::radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Mono )
            {
              mix[ 0 ].vL =       ( mix[ 0 ].vL + mix[ 0 ].vR ) / 2;
              mix[ 0 ].vR =       mix[ 0 ].vL;
              mix[ 0 ].vAuxAL =   ( mix[ 0 ].vAuxAL + mix[ 0 ].vAuxAR ) / 2;
              mix[ 0 ].vAuxAR =   mix[ 0 ].vAuxAL;
              mix[ 0 ].vAuxBL =   ( mix[ 0 ].vAuxBL + mix[ 0 ].vAuxBR ) / 2;
              mix[ 0 ].vAuxBR =   mix[ 0 ].vAuxBL;
            }                           
                       
            AXSetVoiceMix( m_apVoiceParamBlock[ 0 ], & ( mix[ 0 ] ) );                   
        }
        else
        {
            rAssert( m_xRadSoundHalPositionalGroup == NULL );

            mix[ 0 ].vL = atoh( positionalAnalogAmp * postFaderLAmp * obstructionMult * occlusionMult );
            mix[ 0 ].vR = 0;
            mix[ 1 ].vL = 0;
            mix[ 1 ].vR = atoh( positionalAnalogAmp * postFaderRAmp * obstructionMult * occlusionMult );

            if ( calculateSurround )
            {
                mix[ 0 ].vS = atoh( positionalAnalogSurroundAmp * postFaderMonoAmp );
                mix[ 1 ].vS = mix[ 0 ].vS;
            }

            // Stereo aux a

            if
            (
                    ( ::radSoundHalSystemGet( )->GetNumAuxSends( ) > 0 ) &&
                    ( ::radSoundHalSystemGet( )->GetAuxEffect( 0 ) != NULL )
            )
            {            
                if ( m_AuxModes[ 0 ] == radSoundAuxMode_PreFader )
                {
                    mix[ 0 ].vAuxAL = atoh( positionalAnalogAmp * preFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                    mix[ 0 ].vAuxAR = 0;
                    
                    mix[ 1 ].vAuxAL = 0;
                    mix[ 1 ].vAuxAR = atoh( positionalAnalogAmp * preFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                
                    if ( calculateSurround )
                    {
                        mix[ 0 ].vAuxAS = atoh( positionalAnalogSurroundAmp * preFaderMonoAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                        mix[ 1 ].vAuxAS = mix[ 0 ].vAuxAS;
                    }
                }
                else if
                (
                    ( m_AuxModes[ 0 ] == radSoundAuxMode_PostFader ) ||
                    ( m_AuxModes[ 0 ] == radSoundAuxMode_PostFaderDirect )
                )
                {
                    mix[ 0 ].vAuxAL = atoh( positionalAnalogAmp * postFaderLAmp *::radSoundVolumeAnalogToAmplitude(  s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
                    mix[ 0 ].vAuxAR = 0;
                    mix[ 1 ].vAuxAL = 0;
                    mix[ 1 ].vAuxAR = atoh( positionalAnalogAmp * postFaderRAmp *::radSoundVolumeAnalogToAmplitude(  s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );
    
                    if ( calculateSurround )
                    {
                        mix[ 0 ].vAuxAS = atoh( positionalAnalogSurroundAmp * postFaderMonoAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 0 ] * m_AuxGains[ 0 ] ) );                
                        mix[ 1 ].vAuxAS = mix[ 0 ].vAuxAS;
                    }            
                }
            }
            
            // Stereo aux b
        
            if
            (
                    ( ::radSoundHalSystemGet( )->GetNumAuxSends( ) > 1 ) &&
                    ( ::radSoundHalSystemGet( )->GetAuxEffect( 1 ) != NULL )
            )
            {            
                if ( m_AuxModes[ 1 ] == radSoundAuxMode_PreFader )
                {
                    mix[ 0 ].vAuxBL = atoh( positionalAnalogAmp * preFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                    mix[ 0 ].vAuxBR = 0;
                
                    mix[ 1 ].vAuxBL = 0;
                    mix[ 1 ].vAuxBR = atoh( positionalAnalogAmp * preFaderRAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
    
                    if ( calculateSurround )
                    {
                        mix[ 0 ].vAuxBS = atoh( positionalAnalogSurroundAmp * preFaderMonoAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                        mix[ 1 ].vAuxBS = mix[ 0 ].vAuxBS;
                    }
                }
                else if
                (
                    ( m_AuxModes[ 1 ] == radSoundAuxMode_PostFader ) ||
                    ( m_AuxModes[ 1 ] == radSoundAuxMode_PostFaderDirect )
                )
                {
                    mix[ 0 ].vAuxBL = atoh( positionalAnalogAmp * postFaderLAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                    mix[ 0 ].vAuxBR = 0;
                
                    mix[ 1 ].vAuxBL = 0;
                    mix[ 1 ].vAuxBR = atoh( positionalAnalogAmp * postFaderRAmp *::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );               
                
                    if ( calculateSurround )
                    {
                        mix[ 0 ].vAuxBS = atoh( positionalAnalogSurroundAmp * postFaderMonoAmp * ::radSoundVolumeAnalogToAmplitude( s_MasterAuxGains[ 1 ] * m_AuxGains[ 1 ] ) );
                        mix[ 1 ].vAuxBS = mix[ 0 ].vAuxBS;
                    }
                
                }
            }            
                
            if ( ::radSoundHalSystemGet( )->GetOutputMode( ) == radSoundOutputMode_Mono )
            {      
               mix[ 0 ].vL = mix[ 0 ].vL / 2;
               mix[ 0 ].vR = mix[ 0 ].vL;
               mix[ 1 ].vR = mix[ 1 ].vR / 2;
               mix[ 1 ].vL = mix[ 1 ].vR; 
                                   
               mix[ 0 ].vAuxAL = mix[ 0 ].vAuxAL / 2;
               mix[ 0 ].vAuxAR = mix[ 0 ].vAuxAR; 
               mix[ 1 ].vAuxAR = mix[ 1 ].vAuxAR / 2;
               mix[ 1 ].vAuxAL = mix[ 1 ].vAuxAR;
                              
               mix[ 0 ].vAuxBL = mix[ 0 ].vAuxBL / 2;
               mix[ 0 ].vAuxBR = mix[ 0 ].vAuxBL;
               mix[ 1 ].vAuxBR = mix[ 1 ].vAuxBR / 2;
               mix[ 1 ].vAuxBL = mix[ 1 ].vAuxBR;
            }            
                       
            AXSetVoiceMix( m_apVoiceParamBlock[ 0 ], & ( mix[ 0 ] ) );                      
            AXSetVoiceMix( m_apVoiceParamBlock[ 1 ], & ( mix[ 1 ] ) );             
        }
    }
}
        
//======================================================================
// radSoundVoiceGcn::SetVoiceAddreses
//======================================================================

void radSoundVoiceGcn::SetVoicePosition_Di( void )
{   
    rAssert( m_LastKnownSamplePosition < m_xRadSoundBufferGcn->GetFormat( )->FramesToSamples( m_xRadSoundBufferGcn->GetSizeInFrames( ) ) );
    
    const unsigned int totalChannelCount = m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( );

    for ( unsigned int channel = 0; channel < totalChannelCount; channel ++ )
    {       
        //
        // Setup hardware for voice
        //
        AXPBADDR    addr;

        // Get ARAM address in logical unit
        unsigned int currentAddress = m_xRadSoundBufferGcn->GetAramSampleStartInLogicalUnits( channel, m_LastKnownSamplePosition );
        unsigned int sampleEnd      = m_xRadSoundBufferGcn->GetAramSampleEndInLogicalUnits( channel );
        unsigned int loopStart;
        
        rAssert( currentAddress <= sampleEnd );

        //
        // Setup hardware for audio format
        //
        if
        (
         ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM ) ||
         ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::PCM_BIGENDIAN )
        )
        {
            if ( m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) == 8 )
            {
                addr.format  = AX_PB_FORMAT_PCM8;
            }
            else if ( m_xRadSoundBufferGcn->GetFormat( )->GetBitResolution( ) == 16 )
            {
                addr.format = AX_PB_FORMAT_PCM16;
            }
            else
            {
                rAssert( false );
            }
        }
        else if ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
        {
            addr.format = AX_PB_FORMAT_ADPCM;
        }
        else
        {
            rAssert( false );
        }                

        // setup looping
        if ( m_xRadSoundBufferGcn->IsLooping( ) == false )
        {
            // set loopStart to silent buffer
            loopStart       = GetSilentBufferStartInLogicalUnits( );
            addr.loopFlag   = AXPBADDR_LOOP_OFF;
        }
        else
        {
            loopStart       = m_xRadSoundBufferGcn->GetAramSampleStartInLogicalUnits( channel, 0 );
            addr.loopFlag   = AXPBADDR_LOOP_ON;
        }

        /* rDebugPrintf( "Voice: Current: [0x%x] Loop: [0x%x] End: [0x%x]\n",
            currentAddress, loopStart, sampleEnd ); */

        // convert to AX readable format
        addr.endAddressHi       = sampleEnd >> 16;
        addr.endAddressLo       = sampleEnd & 0xFFFF;
        addr.currentAddressHi   = currentAddress >> 16;
        addr.currentAddressLo   = currentAddress & 0xFFFF;
        addr.loopAddressHi      = (unsigned short) ( loopStart >> 16 );
        addr.loopAddressLo      = (unsigned short) ( loopStart & 0xFFFF );

        AXSetVoiceAddr(m_apVoiceParamBlock[ channel ], &addr);

        //
        // Setup ADPCM voice if needed
        //
        if ( m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( ) == IRadSoundHalAudioFormat::GCNADPCM )
        {
            AXPBADPCM       axAdpcm;
            AXPBADPCMLOOP   axLoop;
            const radSoundHalAdpcmInfoGcn * pAdpcmHeader =
                static_cast< IRadSoundHalAudioFormatGcn * >( m_xRadSoundBufferGcn->GetFormat( )->GetCustomEncodingInfo( ) )
                    ->GetAdpcmInfo( channel );

            memcpy( axAdpcm.a, pAdpcmHeader->coef, sizeof( axAdpcm.a ) );
            axAdpcm.gain              = pAdpcmHeader->gain;
            axAdpcm.pred_scale        = pAdpcmHeader->pred_scale;
            axAdpcm.yn1               = pAdpcmHeader->yn1;
            axAdpcm.yn2               = pAdpcmHeader->yn2;

            axLoop.loop_pred_scale    = pAdpcmHeader->loop_pred_scale;
            axLoop.loop_yn1           = pAdpcmHeader->loop_yn1;
            axLoop.loop_yn2           = pAdpcmHeader->loop_yn2;

            // ADPCM coefficients
            AXSetVoiceAdpcm( m_apVoiceParamBlock[ channel ], & axAdpcm );

            // ADPCM loop context
            if ( m_xRadSoundBufferGcn->IsLooping( ) )
            {
                // AXSetVoiceAdpcmLoop( m_apVoiceParamBlock[ channel ], & axLoop );
            }
        }
    }
}

//======================================================================
// radSoundVoiceGcn::IsPlaying
//======================================================================

/* virtual */ bool radSoundVoiceGcn::IsPlaying( void )
{
    return m_Playing;
}

//======================================================================
// radSoundVoiceGcn::SetPlaybackPositionInSamples
//======================================================================

/* virtual */ void radSoundVoiceGcn::SetPlaybackPositionInSamples( unsigned int position )
{
    if ( m_xRadSoundBufferGcn != NULL )
    {
        rAssert( position < m_xRadSoundBufferGcn->GetFormat( )->FramesToSamples( m_xRadSoundBufferGcn->GetSizeInFrames( ) ) );
    }
    
    m_LastKnownSamplePosition = position;
    m_Flags |= FLAGS_ADDRESS;
        
}

//======================================================================
// radSoundVoiceGcn::GetPlaybackPositionInSamples
//======================================================================

/* virtual */ unsigned int radSoundVoiceGcn::GetPlaybackPositionInSamples( void )
{
    return m_LastKnownSamplePosition;
}

/* virtual */ void radSoundVoiceGcn::GetVoicePosition_Di( void )
{
    rAssert( HaveVoices_Di( ) == true );

    // find out hardware position
    // First get the upper half of the position

    unsigned int HWPos;
    HWPos =  ( m_apVoiceParamBlock[ 0 ]->pb.addr.currentAddressHi ) << 16;
    HWPos += ( m_apVoiceParamBlock[ 0 ]->pb.addr.currentAddressLo );
    
    // Logical Units is the same as hardware position

    unsigned int aramStartPos = m_xRadSoundBufferGcn->GetAramSampleStartInLogicalUnits( 0, 0 );

    if ( HWPos < aramStartPos )
    {
        //
        // Hopefully we are playing in the silence buffer here,
        // so we are really at the end of the sample so just return
        // that information
        //
        m_LastKnownSamplePosition = m_xRadSoundBufferGcn->GetFormat( )->FramesToSamples( m_xRadSoundBufferGcn->GetSizeInFrames( ) ) - 1;
    }
    else
    {
        IRadSoundHalAudioFormat::Encoding encoding = m_xRadSoundBufferGcn->GetFormat( )->GetEncoding( );

        HWPos -= aramStartPos;

        if ( encoding == IRadSoundHalAudioFormat::GCNADPCM )
        {
            HWPos = ( HWPos * 14 ) / 16;
        }



       // Now subtract the start of the buffer

        unsigned int sizeInSamples =
            m_xRadSoundBufferGcn->GetFormat( )->FramesToSamples(
                m_xRadSoundBufferGcn->GetSizeInFrames( ) );

        rAssert( HWPos < sizeInSamples );

        /* rDebugPrintf( "Voice (samples) Pos: [%d], bufferSize: [%d].\n", 
            HWPos, sizeInSamples ); */

        m_LastKnownSamplePosition =  HWPos;
    }

}

//======================================================================
// radSoundVoiceGcn::SetPan
//======================================================================

/* virtual */ void radSoundVoiceGcn::SetPan( float pan )
{
    rAssert( pan >= -1.0f );
    rAssert( pan <= 1.0f );
    
    if ( pan != m_Pan )
    {
        m_Pan = pan;
    
        m_Flags |= FLAGS_VOLUME;
    }
}

//======================================================================
// radSoundVoiceGcn::GetPan
//======================================================================

/* virtual */ float radSoundVoiceGcn::GetPan( void )
{
    return m_Pan;
}

//======================================================================
// radSoundVoiceGcn::SetSPan
//======================================================================

/* virtual */ void radSoundVoiceGcn::SetSPan( float span )
{
    rAssert( span >= -1.0f );
    rAssert( span <= 1.0f );
    
    if ( span != m_SPan )
    {
        m_SPan = span;
    
        m_Flags |= FLAGS_VOLUME;
    }
}

//======================================================================
// radSoundVoiceGcn::GetPan
//======================================================================

/* virtual */ float radSoundVoiceGcn::GetSPan( void )
{
    return m_SPan;
}

//======================================================================
// radSoundVoiceGcn::SetAuxMode
//======================================================================

void radSoundVoiceGcn::SetAuxMode( unsigned int aux, radSoundAuxMode mode )
{
    rAssert( aux < 2 );
    rAssert( m_xRadSoundHalPositionalGroup == NULL );
    
    if ( m_AuxModes[ aux ] != mode && m_xRadSoundHalPositionalGroup == NULL )
    {
        m_AuxModes[ aux ] = mode;
        
        m_Flags |= FLAGS_VOLUME;
    }
}

//======================================================================
// radSoundVoiceGcn::GetAuxMode
//======================================================================

radSoundAuxMode radSoundVoiceGcn::GetAuxMode( unsigned int aux )
{
    rAssert( aux < 2 );
    
    return m_AuxModes[ aux ];
}

//======================================================================
// radSoundVoiceGcn::SetAuxGain
//======================================================================

void  radSoundVoiceGcn::SetAuxGain( unsigned int aux, float gain )
{
    ::radSoundVerifyAnalogVolume( gain );

    rAssert( aux < 2 );
    rAssert( gain >= 0.0f );
    rAssert( gain <= 1.0f );
    rAssert( m_xRadSoundHalPositionalGroup == NULL );
    
    if ( m_AuxGains[ aux ] != gain && m_xRadSoundHalPositionalGroup == NULL )
    {
        ::radSoundVerifyChangeThreshold(
            m_Playing, "AuxGain", m_AuxGains[ aux ], gain, radSoundVolumeChangeThreshold );

        m_AuxGains[ aux ] = gain;
        
        m_Flags |= FLAGS_VOLUME;  
    }
}

//======================================================================
// radSoundVoiceGcn::GetAuxGain
//======================================================================

float radSoundVoiceGcn::GetAuxGain( unsigned int aux )
{
    rAssert( aux < 2 );
    
    return m_AuxGains[ aux ];
}
        
//======================================================================
// radSoundVoiceGcn::SetPitch
//======================================================================

/* virtual */ void radSoundVoiceGcn::SetPitch( float pitch )
{
    ::radSoundVerifyAnalogPitch( pitch );

    rAssert( pitch >= 0.0f );
    
    if ( m_Pitch != pitch )
    {
        m_Pitch = pitch;

        m_Flags |= FLAGS_PITCH;
    }
}

//======================================================================
// radSoundVoiceGcn::GetPitch
//======================================================================

/* virtual */ float radSoundVoiceGcn::GetPitch( void )
{
    return m_Pitch;
}   

//======================================================================
// radSoundVoiceGcn::SetVolume
//======================================================================

/* virtual */ void radSoundVoiceGcn::SetVolume( float volume )
{
    ::radSoundVerifyAnalogVolume( volume );

    rAssert( volume >= 0.0f );
    rAssert( volume <= 1.0f );
    
    if ( m_Volume != volume )
    {   
        ::radSoundVerifyChangeThreshold(
            m_Playing, "Volume", m_Volume, volume, radSoundVolumeChangeThreshold );

        m_Volume = volume;
    
        m_Flags |= FLAGS_VOLUME;
    }
}

//======================================================================
// radSoundVoiceGcn::SetVolume
//======================================================================

float radSoundVoiceGcn::GetVolume( void )
{
    return m_Volume;
}

//======================================================================
// radSoundVoiceGcn::SetTrim
//======================================================================

void radSoundVoiceGcn::SetTrim( float trim )
{
    rAssert( trim >= 0.0f );
    rAssert( trim <= 1.0f );
    
    if ( m_Trim != trim )
    {
        ::radSoundVerifyChangeThreshold(
            m_Playing, "Trim", m_Trim, trim, radSoundVolumeChangeThreshold );

        m_Trim = trim;
        
        m_Flags |= FLAGS_VOLUME;
    }
}

//======================================================================
// radSoundVoiceGcn::GetTrim
//======================================================================

float radSoundVoiceGcn::GetTrim( void )
{
    return m_Trim;
}

//======================================================================
// radSoundVoiceGcn::SetMuted
//======================================================================

void radSoundVoiceGcn::SetMuted( bool muteOn )
{
    if ( m_MuteOn != muteOn )
    {
        m_MuteOn = muteOn;
        
        m_Flags |= FLAGS_VOLUME;
    }
}

//======================================================================
// radSoundVoiceGcn::GetMuted
//======================================================================

bool radSoundVoiceGcn::GetMuted( void )
{
    return m_MuteOn;
}

//======================================================================
// radSoundVoiceGcn::SetPositional
//======================================================================

/* virtual */ void  radSoundVoiceGcn::SetPositionalGroup(
    IRadSoundHalPositionalGroup * pIRadSoundHalPositionalGroup
)
{
    if ( m_xRadSoundHalPositionalGroup != static_cast< radSoundHalPositionalGroup * >( pIRadSoundHalPositionalGroup ) )
    {
        if ( m_xRadSoundHalPositionalGroup != NULL )
        {
            m_xRadSoundHalPositionalGroup->RemovePositionalEntity( this );
        }

        m_xRadSoundHalPositionalGroup = static_cast< radSoundHalPositionalGroup * >(
            pIRadSoundHalPositionalGroup );

        if ( m_xRadSoundHalPositionalGroup != NULL )
        {
            m_xRadSoundHalPositionalGroup->AddPositionalEntity( this );
        }

        // Must recalculate for this group.

        m_Flags |= FLAGS_VOLUME;
        m_Flags |= FLAGS_PITCH;               
    }
}

//======================================================================
// radSoundVoiceGcn::GetPositional
//======================================================================

IRadSoundHalPositionalGroup * radSoundVoiceGcn::GetPositionalGroup( void )
{
    return m_xRadSoundHalPositionalGroup;
}

//======================================================================
// radSoundVoiceGcn::ApplySettings
//======================================================================

/* virtual */ void radSoundVoiceGcn::OnApplyPositionalSettings( void )
{
    m_Flags |= FLAGS_VOLUME;
    m_Flags |= FLAGS_PITCH;
}

/* static */ void radSoundVoiceGcn::SetMasterAuxGain( unsigned int aux, float masterGain )
{
    if ( s_MasterAuxGains[ aux ] != masterGain )
    {
        s_MasterAuxGains[ aux ] = masterGain;
        
        radSoundVoiceGcn * pSearch = GetLinkedClassHead( );
        
        while( pSearch != NULL )
        {
            if ( pSearch->m_xRadSoundHalPositionalGroup == NULL )
            {
                pSearch->m_Flags |= FLAGS_VOLUME;
            }
            
            pSearch = pSearch->GetLinkedClassNext( );
        }
    }
}

/* static */ void radSoundVoiceGcn::AXVoiceDropCallback( AXVPB * pAxvpb )
{
    rDebugPrintf( "radSoundVoiceGcn::DSP is dropping voices\n" );

    radSoundVoiceGcn * pThis = (radSoundVoiceGcn *) pAxvpb->userContext;

    rAssert( pThis != NULL );

    if ( pThis->m_apVoiceParamBlock[ 0 ] == pAxvpb )
    {
        pThis->m_apVoiceParamBlock[ 0 ] = NULL;
    }
    else if ( pThis->m_apVoiceParamBlock[ 1 ] == pAxvpb )
    {
        pThis->m_apVoiceParamBlock[ 1 ] = NULL;
    }
    else
    {
        rAssert( 0 );
    }

    pThis->m_Flags = FLAGS_DROPPED;
}

//======================================================================
// radSoundVoiceGcn::SetPriority
//======================================================================

void radSoundVoiceGcn::SetPriority( unsigned int priority )
{
    rAssert( priority >= 0 );
    rAssert( priority <= 10 );

    if ( m_Priority != priority )
    {
        m_Priority = priority;

        m_Flags |= FLAGS_PRIORITY;
    }
}

//======================================================================
// radSoundVoiceGcn::GetPriority
//======================================================================

unsigned radSoundVoiceGcn::GetPriority( void )
{
    return m_Priority;
}

void radSoundVoiceGcn::Update ( void )
{
    // This function is the ONLY function that can call AXFunctions, period.
    // the AX functions must be called with interrupts disabled because
    // gamecube voices can be dropped at any time.
    //
    // We disable and enable interrupts here, centrally.

    int wasEnabled = OSDisableInterrupts( );

    if ( m_Flags != NULL )
    {
        // Voices were dropped here, free up voices.

        if ( m_Flags & FLAGS_DROPPED )
        {
            m_Playing = false;

            if ( HaveVoices_Di( ) )
            {
                FreeVoices_Di( );
            }
            
            // Don't try to start the voice again or we might
            // overload the system again.
        }
        else
        {
            if ( m_Flags & FLAGS_BUFFER )
            {
                if ( HaveVoices_Di( ) )
                {
                    FreeVoices_Di( );
                }
            }

            if ( m_Flags & FLAGS_PLAYING )
            {
                if ( m_Playing == true )
                {
                    if ( HaveVoices_Di( ) == true )
                    {
                        FreeVoices_Di( );
                    }

                    if ( ! CaptureVoices_Di( ) )
                    {
                        m_Playing = false;
                    }
                }
                else
                {
                    if ( HaveVoices_Di( ) == true )
                    {
                        FreeVoices_Di( );
                    }                                     
                }
            }

            if ( HaveVoices_Di( ) )
            {
                if ( m_Flags & FLAGS_ADDRESS )
                {
                    SetVoicePosition_Di( );
                }

                if ( m_Flags & FLAGS_PITCH )
                {
                    SetVoicePitches_Di( );
                }

                if ( m_Flags & FLAGS_VOLUME )
                {
                    SetVoiceVolumes_Di( );
                }

                if ( m_Flags & FLAGS_PRIORITY )
                {
                    SetVoicePriority_Di( );
                }

                if ( m_Flags & FLAGS_PLAYING )
                {
                    StartVoices_Di( );
                }
            }
        }
    }

    m_Flags = FLAGS_NULL;
    
    if ( m_Playing == true )
    {
        rAssert( HaveVoices_Di( ) == true );
    }

    if ( HaveVoices_Di( ) )
    {
        rAssert( m_Playing == true );

        GetVoicePosition_Di( );
        
		if ( AreVoicesPlaying_Di( ) == false )
		{
            m_Playing = false;

            m_Flags |= FLAGS_PLAYING;   
		}
    }

    ::OSRestoreInterrupts( wasEnabled );
}

bool radSoundVoiceGcn::AreVoicesPlaying_Di( void )
{
	rAssert( HaveVoices_Di( ) );
	
	return( m_apVoiceParamBlock[ 0 ]->pb.state == AX_PB_STATE_RUN );
}
//======================================================================
// radSoundVoiceGcn::radSoundHalVoiceCreate
//======================================================================

IRadSoundHalVoice * radSoundHalVoiceCreate( radMemoryAllocator allocator )
{
    return new ( "radSoundVoiceGcn", allocator ) radSoundVoiceGcn( );
}

void radSoundVoiceGcn::StartVoices_Di( void )
{
    rAssert( HaveVoices_Di( ) == true );

    for
    (
        unsigned int channel = 0;
        channel < m_xRadSoundBufferGcn->GetFormat( )->
            GetNumberOfChannels( );
        channel ++
    )
    {
        AXSetVoiceState( m_apVoiceParamBlock[ channel ], AX_PB_STATE_RUN );
    } 
}



//======================================================================
// radSoundVoiceGcn::FreeVoices_Di
//======================================================================

void radSoundVoiceGcn::FreeVoices_Di( void )
{
    rAssert( HaveVoices_Di( ) == true );

    for( unsigned int channel = 0; channel < 2; channel ++ )
    {
        if ( m_apVoiceParamBlock[ channel ] != NULL )
        {
            AXSetVoiceState( m_apVoiceParamBlock[ channel ], AX_PB_STATE_STOP );
            AXFreeVoice( m_apVoiceParamBlock[ channel ] );

            m_apVoiceParamBlock[ channel ] = NULL;
        }
    }
}

bool radSoundVoiceGcn::HaveVoices_Di( void )
{
    if ( m_apVoiceParamBlock[ 0 ] != NULL ||
         m_apVoiceParamBlock[ 1 ] != NULL )
    {
        return true;
    }

    return false;
}

//======================================================================
// radSoundVoiceGcn::CaptureVoices
//======================================================================

bool radSoundVoiceGcn::CaptureVoices_Di( void )
{
    rAssert( HaveVoices_Di( ) == false );
    
    float ratio = ( m_Pitch * (float)m_xRadSoundBufferGcn->GetFormat( )->GetSampleRate( ) ) / s_HardwarePlaybackRate;
    unsigned long intRatio = ratio * 0xFFFF;
    
    AXPBSRC src;
    
    src.ratioHi = (unsigned short) ( intRatio >> 16 );
    src.ratioLo = (unsigned short) ( 0xFFFF & intRatio );
    
    AXPBVE axpbve;
    
    axpbve.currentVolume        = 32767; // max volume of volume envelope
    axpbve.currentDelta         = 0;
    for( unsigned int channel = 0; channel < m_xRadSoundBufferGcn->GetFormat( )->GetNumberOfChannels( ); channel ++ )
    {
        m_apVoiceParamBlock[ channel ] = AXAcquireVoice(
            ConvertPriority( m_Priority ),
            (AXVoiceCallback) AXVoiceDropCallback,
            (unsigned int) this );

        if ( m_apVoiceParamBlock[ channel ] == NULL )
        {
            rDebugPrintf( "radSoundVoiceGcn: Failed to acquire voice(s)\n" );
            
            if ( channel == 1 )
            {
                FreeVoices_Di( );
            }
           
            return false;
        }
        
        rAssert( m_apVoiceParamBlock[ channel ] != NULL );
                   
        AXSetVoiceSrcType(m_apVoiceParamBlock[ channel ], AX_SRC_TYPE_LINEAR ); // PCM ??           
        AXSetVoiceSrc( m_apVoiceParamBlock[ channel ], & src );
        AXSetVoiceVe( m_apVoiceParamBlock[ channel ], & axpbve );  
    }
    
    return true;
}

void radSoundVoiceGcn::OnOutputModeChanged( void )
{
    
    radSoundVoiceGcn * pVoiceSearch = GetLinkedClassHead( );
    
    while ( pVoiceSearch != NULL )
    {
        pVoiceSearch->m_Flags |= FLAGS_VOLUME;
            
        pVoiceSearch = pVoiceSearch->GetLinkedClassNext( );
    }
}

void radSoundVoiceGcn::OnAuxEffectChanged( void )
{    
    radSoundVoiceGcn * pVoiceSearch = GetLinkedClassHead( );
    
    while ( pVoiceSearch != NULL )
    {
        pVoiceSearch->m_Flags |= FLAGS_VOLUME;
            
        pVoiceSearch = pVoiceSearch->GetLinkedClassNext( );
    }
}

void radSoundVoiceGcn::UpdateAll( void )
{    
    radSoundVoiceGcn * pVoiceSearch = GetLinkedClassHead( );
    
    while ( pVoiceSearch != NULL )
    {
        pVoiceSearch->Update( );
            
        pVoiceSearch = pVoiceSearch->GetLinkedClassNext( );
    }
} 
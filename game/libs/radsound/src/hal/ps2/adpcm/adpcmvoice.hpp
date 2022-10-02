//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ADPCMVOICE_HPP
#define ADPCMVOICE_HPP

//============================================================================
// Include Files
//============================================================================

#include <radlinkedclass.hpp>
#include <radsoundobject.hpp>
#include "..\..\common\softwarepositionalgroup.hpp"
#include "..\..\..\..\inc\radsoundmath.hpp"
#include "adpcm.hpp"
#include "adpcmbuffer.hpp"

//============================================================================
// Forward Declarations
//============================================================================

struct radSoundVoiceAdpcmPs2;


inline radSoundVoiceAdpcmPs2 * radSoundVoiceAdpcmPs2Create( radMemoryAllocator allocator );

//============================================================================
// Class: radSoundVoiceAdpcmPs2
//============================================================================

struct radSoundVoiceAdpcmPs2
    :
	public IRadSoundHalVoice,
    public radSoundHalPositionalEntity,
	public radLinkedClass< radSoundVoiceAdpcmPs2 >,
    public radSoundObject
{

    //============================================================================
    // radSoundVoiceAdpcmPs2 Methods
    //============================================================================

    public:

		IMPLEMENT_REFCOUNTED( "radSoundVoiceAdpcmPs2" )

        radSoundVoiceAdpcmPs2( void );
        ~radSoundVoiceAdpcmPs2( void );

		// IRadSoundHalVoice

		virtual void SetPriority( unsigned int priority );
		virtual unsigned int GetPriority( void );
        
		virtual void SetBuffer( IRadSoundHalBuffer * pIRadSoundHalBuffer );
		virtual IRadSoundHalBuffer * GetBuffer( void );

		virtual void Play( void );
		virtual void Stop( void );
		virtual bool IsPlaying( void );

		virtual void SetPlaybackPositionInSamples( unsigned int position );
		virtual unsigned int GetPlaybackPositionInSamples( void );

		inline void SetVolume( float volume );
		inline float GetVolume( void );
			
		inline void SetTrim( float trim );
		inline float GetTrim( void );
			
		inline void SetMuted( bool muteOn );
		inline bool GetMuted( void );

		inline void  SetPan( float pan );
		inline float GetPan( void );

		inline void SetPitch( float pitch );
		inline float GetPitch( void );
			
		virtual void SetAuxMode( unsigned int aux, radSoundAuxMode mode );
		virtual radSoundAuxMode GetAuxMode( unsigned int aux );

		inline void  SetAuxGain( unsigned int aux, float gain );
		inline float GetAuxGain( unsigned int aux ); 

		virtual void SetPositionalGroup( IRadSoundHalPositionalGroup * pIRshpg );
		virtual IRadSoundHalPositionalGroup * GetPositionalGroup( void );
        
		// IRadSoundHalPositionalEntity

		virtual void OnApplyPositionalSettings( void );

		// Internal

        void SetVoiceVolumes( void );

        static inline void ServiceAll( void );

    private:

        void Service( void );

        void SetVoicePitches( void );
		void SetVoiceEffects( void );

        void SetVoiceLoopAddresses( void );
        void SetStartAddressInSamples( unsigned int samples );
        unsigned int GetVoiceSwitchMask( unsigned int voiceNumberArray[ 2 ] );
        bool IsHardwarePlaying( void );
        void StopAndFreeHardwareVoices( void );
        
		bool GetCoreVoices( unsigned int core, unsigned int * pVoices, unsigned int numVoices );
		unsigned int GetCoreWithMostFreeVoices( void );
		unsigned int GetNumberOfUsedCoreVoices( unsigned int core );

        bool GetHardwareVoices( void );
        void FreeHardwareVoices( void );

		unsigned int GetLeadVoice( unsigned int * pCore );

		bool AttemptVoiceKill( unsigned int core ); // returns true if action was taken
		bool HasVoiceOnCore( unsigned int core );

        float OcclusionAnalogToMultiplier( float occlAnalog );
        float ObstructionAnalogToMultiplier( float obstAnalog );
        void CalculateSurroundMultipliers( float * pLSurround, float * pRSurround );
        void CaculateSurroundPanAmpFactor( float pan, float span, float * lFactorAmp, float * rFactorAmp );

		unsigned int m_Priority;

        bool m_Playing;
		bool m_HaveVoices;

        float m_Trim;
        float m_MuteFactor;
        float m_Volume;
        float m_Pan;
        float m_Pitch;

		float m_AuxGains[ 2 ];
		radSoundAuxMode m_AuxModes[ 2 ];

        unsigned int m_PreviousQuadrant;

        unsigned int m_LastPlaybackPosition;

        unsigned int m_pHardwareVoiceNumberArrayDry[ 2 ];
        unsigned int m_DryCore; 
		
		unsigned int m_pHardwareVoiceNumberArrayCoreEffect[ 2 ][ 2 ];

        unsigned int m_ReadStamp;
        bool m_ReadSynch;

		ref< radSoundHalPositionalGroup > m_xRadSoundHalPositionalGroup;

        ref< radSoundBufferAdpcmPs2 > m_xRadSoundBufferAdpcmPs2;
};

//========================================================================
// radSoundVoiceAdpcmPs2::ServiceAll
//========================================================================

inline void radSoundVoiceAdpcmPs2::ServiceAll( void )
{
    radSoundVoiceAdpcmPs2 * pVoice = GetLinkedClassHead( );

    while( pVoice )
    {
        pVoice->Service( );

        pVoice = pVoice->GetLinkedClassNext( );
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetPrioirty
//========================================================================

inline void radSoundVoiceAdpcmPs2::SetPriority( unsigned int priority )
{
	m_Priority = priority;
}

//========================================================================
// radSoundVoiceAdpcmPs2::GetPriority
//========================================================================

inline unsigned int radSoundVoiceAdpcmPs2::GetPriority( void )
{
	return m_Priority;
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetPitch
//========================================================================

inline void radSoundVoiceAdpcmPs2::SetPitch( float pitch )
{
	radSoundVerifyAnalogPitch( pitch );

    if ( m_Pitch != pitch )
    {
        m_Pitch = pitch;

        if ( m_xRadSoundHalPositionalGroup == NULL )
        {
            SetVoicePitches( );
        }
    } 
}

//========================================================================
// radSoundVoiceAdpcmPs2::GetPitch
//========================================================================

inline float radSoundVoiceAdpcmPs2::GetPitch( void )
{
    return m_Pitch;
} 

//============================================================================
// radSoundVoiceAdpcmPs2::GetMuted
//============================================================================

inline bool radSoundVoiceAdpcmPs2::GetMuted( void )
{
     return m_MuteFactor == 0.0f ? false : true;
}

//============================================================================
// radSoundVoiceAdpcmPs2::SetMuted
//============================================================================

inline void radSoundVoiceAdpcmPs2::SetMuted( bool mute )
{
    m_MuteFactor = mute ? 0.0f : 1.0f;

    if ( m_xRadSoundHalPositionalGroup == NULL )
    {
        SetVoiceVolumes( );
    }
}


//============================================================================
// radSoundVoiceAdpcmPs2::
//============================================================================

inline void  radSoundVoiceAdpcmPs2::SetTrim( float trim  )
{
    ::radSoundVerifyAnalogVolume( trim );

    if ( m_Trim != trim )
    {
        radSoundVerifyChangeThreshold( m_Playing, "Trim", m_Trim, trim, radSoundVolumeChangeThreshold );

        m_Trim = trim;

        if ( m_xRadSoundHalPositionalGroup == NULL )
        {
            SetVoiceVolumes( );
        }
    }
}

//============================================================================
// radSoundVoiceAdpcmPs2::
//============================================================================

inline float radSoundVoiceAdpcmPs2::GetTrim( void )
{
    return m_Trim;
}

//============================================================================
// radSoundVoiceAdpcmPs2::SetPan
//============================================================================

inline void radSoundVoiceAdpcmPs2::SetPan( float pan )
{
	radSoundVerifyAnalogPan( pan );

	m_Pan = pan;

    if ( m_xRadSoundHalPositionalGroup == NULL )
    {
        SetVoiceVolumes( );
    }
}

//============================================================================
// radSoundVoiceAdpcmPs2::GetPan
//============================================================================

inline float radSoundVoiceAdpcmPs2::GetPan( void )
{
    return m_Pan;
}

//========================================================================
// radSoundVoiceAdpcmPs2::
//========================================================================

inline void radSoundVoiceAdpcmPs2::SetAuxGain( unsigned int aux, float gain )
{
    ::radSoundVerifyAnalogVolume( gain );

	rAssert( aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) );
    rAssertMsg( m_xRadSoundHalPositionalGroup == NULL, 
        "Postional voices cannot control aux sends\n" );

	if 
    ( 
        aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) &&
        m_xRadSoundHalPositionalGroup == NULL 
    )
	{	
		if ( m_AuxGains[ aux ] != gain )
		{
			m_AuxGains[ aux ] = gain;

			SetVoiceEffects( );
		}
	}
}

//========================================================================
// radSoundVoiceAdpcmPs2::
//========================================================================

inline float radSoundVoiceAdpcmPs2::GetAuxGain( unsigned int aux )
{
	rAssert( aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) );
    rAssertMsg( m_xRadSoundHalPositionalGroup == NULL, 
        "Postional voices cannot control aux sends\n" );

	if 
    ( 
        aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) &&
        m_xRadSoundHalPositionalGroup == NULL    
    )
	{
		return m_AuxGains[ aux ];
	}

	return 0.0f;
}

//========================================================================
// radSoundVoiceAdpcmPs2::
//========================================================================

inline void radSoundVoiceAdpcmPs2::SetAuxMode( unsigned int aux, radSoundAuxMode mode )
{
	Stop( ); // Just to be safe, kill everything...work on this later

	rAssert( aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) );
    rAssertMsg( m_xRadSoundHalPositionalGroup == NULL, 
        "Postional voices cannot control aux sends\n" );

	if 
    ( 
        aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) &&
        m_xRadSoundHalPositionalGroup == NULL
    )
	{
		rWarning( mode >= radSoundAuxMode_Off );
		rWarning( mode <= radSoundAuxMode_PostFaderDirect );

		if ( mode < radSoundAuxMode_Off )
		{
			mode = radSoundAuxMode_Off;
		}
		else if ( mode > radSoundAuxMode_PostFaderDirect )
		{
			mode = radSoundAuxMode_PostFaderDirect;
		}

		if ( m_AuxModes[ aux ] != mode )
		{
			m_AuxModes[ aux ] = mode;

			SetVoiceEffects( );
		}
	}
}

//========================================================================
// radSoundVoiceAdpcmPs2::GetAuxMode
//========================================================================

inline radSoundAuxMode radSoundVoiceAdpcmPs2::GetAuxMode( unsigned int aux )
{
	rAssert( aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) );
    rAssertMsg( m_xRadSoundHalPositionalGroup == NULL, 
        "Postional voices cannot control aux sends\n" );

	if 
    ( 
        aux < ::radSoundHalSystemGet( )->GetNumAuxSends( ) &&
        m_xRadSoundHalPositionalGroup == NULL
    )
	{
		return m_AuxModes[ aux ];
	}

	return radSoundAuxMode_Off;
}

//========================================================================
// radSoundVoiceAdpcmPs2::SetVolume
//========================================================================

inline void radSoundVoiceAdpcmPs2::SetVolume
(
    float volume
)
{    
	::radSoundVerifyAnalogVolume( volume );

    if ( m_Volume != volume )
    {
        radSoundVerifyChangeThreshold( m_Playing, "Volume", m_Volume, volume, radSoundVolumeChangeThreshold );

	    m_Volume = volume;

        //
        // Pan is just a volume change so call our function to set the hardware
        // voice volumes taking m_Volume and m_Pan into account.
        //

        if ( m_xRadSoundHalPositionalGroup == NULL )
        {
            SetVoiceVolumes( );
        }
    }
}

//========================================================================
// radSoundVoiceAdpcmPs2::GetVolume
//========================================================================

inline float radSoundVoiceAdpcmPs2::GetVolume
(
    void
)
{
    return m_Volume;
}



#endif

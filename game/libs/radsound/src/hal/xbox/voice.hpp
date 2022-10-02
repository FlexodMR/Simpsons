//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef RADSOUNDVOICE_HPP
#define RADSOUNDVOICE_HPP

//============================================================================
// Include Files
//============================================================================

#include <radsound_hal.hpp>
#include <radlinkedclass.hpp>
#include "buffer.hpp"
#include "positionalgroup.hpp"
#include "effect.hpp"

//============================================================================
// Definitions
//============================================================================

#define RSDVOICE_OUTPUT_MAX   4  // <= DSMIXBIN_ASSIGNEMENT_MAX /2

//============================================================================
// Component: radSoundVoiceXBox
//============================================================================

struct radSoundVoiceXBox
    :
	public IRadSoundHalVoice,
	public radSoundHalPositionalEntity,
	public radLinkedClass< radSoundVoiceXBox >,
	public radSoundObject
{
	public:

        static void Initialize( radMemoryAllocator allocator );
        static void Terminate( void );
        static void ReleaseVoiceToPool( ref< IDirectSoundBuffer > & refIDsb );
        static void Service( void );

        radSoundVoiceXBox( void );

        IMPLEMENT_REFCOUNTED( "radSoundVoiceXBox" )

        // IRadSoundHalVoice

	    void SetPriority( unsigned int priority );
	    unsigned int GetPriority( void );

        void SetBuffer ( IRadSoundHalBuffer * pIRadSoundHalBuffer );
        IRadSoundHalBuffer * GetBuffer( void );

        void Play( void );
        void Stop( void );
        bool IsPlaying( void );

        void SetPlaybackPositionInSamples( unsigned int positionInSamples );
        unsigned int GetPlaybackPositionInSamples( void );

        void  SetVolume ( float decibels );
        float GetVolume ( void );

	    void SetTrim( float trim );
	    float GetTrim( void );

	    void SetMuted( bool muted );
	    bool GetMuted( void );
        
        void  SetPan ( float pan );
        float GetPan( void );

        void  SetPitch ( float pitch );
        float GetPitch( void );

	    void  SetAuxMode( unsigned int aux, radSoundAuxMode mode );
	    radSoundAuxMode GetAuxMode( unsigned int aux );

        void  SetAuxGain( unsigned int aux, float gain );
	    float GetAuxGain( unsigned int aux );

        void SetPositionalGroup( IRadSoundHalPositionalGroup * pIRadSoundHalPositionalGroup );
	    IRadSoundHalPositionalGroup * GetPositionalGroup( void );

        // radSoundHalPositionalEntity

		void OnApplyPositionalInfo( void );

        // internal to radsound
        
        void OnSetAuxEffect( unsigned int auxNumber, IRadSoundHalEffect * pRadSoundEffect );

	private:

        virtual ~radSoundVoiceXBox ( void );
		bool IsHardwarePlaying( void );

		void SetVoiceVolume( void );
        void SetVoiceOutputs( void );
        void CreateDirectSoundBuffer( void );
        void PopulateDsMixBins( DSMIXBINS * pDsMixBins, DSMIXBINVOLUMEPAIR * pDsMixBinVolumePairs );
        
        bool         m_Playing;
		unsigned int m_Priority;
		float m_Pitch;
		float m_Pan;
		float m_Volume;
		float m_Trim;
		float m_MuteFactor;

		unsigned int m_LastPlaybackPositionInBytes;

        struct OutputSendState
        {
            float           m_Gain;
            radSoundAuxMode m_Mode;
            unsigned long   m_pDsMixBin[ 2 ];
        };
        OutputSendState                   m_refOutputSendState[ RSDVOICE_OUTPUT_MAX ];
        
		ref< radSoundBufferXBox >		  m_refRadSoundBufferXBox;
		ref< IDirectSoundBuffer >		  m_refIDirectSoundBuffer; 
		ref< IRadSoundHalAudioFormat >	  m_refIRadSoundHalAudioFormat;
		ref< radSoundHalPositionalGroup > m_refRadSoundHalPositionalGroup;
};

//
// We maintain a pool of releasing voices.  We can't Stop(), then Release()
// a direct sound buffer without blocking, so we delay the release
// until the voice has stopped.
//

struct radSoundReleasingVoiceNode
    :
    public radLinkedClass< radSoundReleasingVoiceNode >,
    public radSoundPoolObject< radSoundReleasingVoiceNode >
{
    ref< IDirectSoundBuffer > m_refIDirectSoundBuffer;
};

#endif // VOICE_HPP

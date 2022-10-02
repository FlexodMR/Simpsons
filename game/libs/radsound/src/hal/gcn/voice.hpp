//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef VOICE_HPP
#define VOICE_HPP

//======================================================================
// Include Files
//======================================================================

#include <radsound_hal.hpp>
#include <radlinkedclass.hpp>
#include <radsoundobject.hpp>
#include <softwarepositionalgroup.hpp>
#include <buffer.hpp>

//======================================================================
// Component: radSoundVoice
//======================================================================

class radSoundVoiceGcn
	:
	public IRadSoundHalVoice,
    public radSoundHalPositionalEntity,
    public radLinkedClass< radSoundVoiceGcn >,    
	public radSoundObject
{
	public:

    	radSoundVoiceGcn( );
	
        IMPLEMENT_REFCOUNTED( "radSoundVoice" )

        void SetPriority( unsigned int priority );
        unsigned int GetPriority( void );
        
	    void SetBuffer( IRadSoundHalBuffer * pIRadSoundHalBuffer );
	    IRadSoundHalBuffer * GetBuffer( void );

	    void Play( void );
	    void Stop( void );
	    bool IsPlaying( void );

	    void SetPlaybackPositionInSamples( unsigned int position );
	    unsigned int GetPlaybackPositionInSamples( void );

	    void SetVolume( float volume );
	    float GetVolume( void );
	    
	    void SetTrim( float trim );
	    float GetTrim( void );
	    
	    void SetMuted( bool muteOn );
	    bool GetMuted( void );
	    
	    void SetPan( float panDB );
	    float GetPan( void );
	    void SetSPan( float span );
	    float GetSPan( void );
	    void SetPitch( float pitch );
	    float GetPitch( void );
	    
    	void SetAuxMode( unsigned int aux, radSoundAuxMode mode );
    	radSoundAuxMode GetAuxMode( unsigned int aux );

    	void  SetAuxGain( unsigned int aux, float gain );
    	float GetAuxGain( unsigned int aux ); 
    
	    virtual void SetPositionalGroup( IRadSoundHalPositionalGroup * pIRshpg );
	    virtual IRadSoundHalPositionalGroup * GetPositionalGroup( void );
	    
	    static void Initialize( void );
	    static void Terminate( void );
	    
	    static void SetMasterAuxGain( unsigned int aux, float MasterGain );
        static void OnOutputModeChanged( void );
        static void OnAuxEffectChanged( void );
        static void UpdateAll( void );
	    
        static float s_HardwarePlaybackRate;
        
	protected:
	
		~radSoundVoiceGcn( void );
	
	private:

        void Update( void );
        static void AXVoiceDropCallback( AXVPB * pAxvpb );	
	    unsigned int GetSilentBufferStartInLogicalUnits( );
	    static void SilentBufferDmaCallback( ARQRequest * pRequest );
   
        bool CaptureVoices_Di( void );
        void FreeVoices_Di( void );
        bool HaveVoices_Di( void );
        void StartVoices_Di( void );
        void SetVoicePriority_Di( void );
		void SetVoiceVolumes_Di( void );
		void SetVoicePitches_Di( void );
		void SetVoicePosition_Di( void );
        void GetVoicePosition_Di( void );
        bool AreVoicesPlaying_Di( void );	
        
        inline unsigned ConvertPriority( unsigned int radsoundvalue );
                    	
		virtual void OnApplyPositionalSettings( void ); 	
   	
        unsigned int m_Flags;

        unsigned int m_Priority;
        bool  m_Playing;
	    float m_Pan;
	    float m_SPan;
	    float m_Volume;
	    float m_Trim;
	    float m_Pitch;
	    bool  m_MuteOn;
	    unsigned int m_LastKnownSamplePosition;	    	    
	    radSoundAuxMode m_AuxModes[ 2 ];
	    float           m_AuxGains [ 2 ];    


	    AXVPB * m_apVoiceParamBlock[ 2 ];
	        
        ref< radSoundHalPositionalGroup >  m_xRadSoundHalPositionalGroup;
	    ref< radSoundBufferGcn >           m_xRadSoundBufferGcn;
	    
	    static float s_MasterAuxGains[ 2 ];	    
	    static ref< IRadMemoryObject > s_xIRadMemoryObject_SilentBuffer;
};

inline unsigned int radSoundVoiceGcn::ConvertPriority( unsigned int value )
{
    return ( ( ( AX_PRIORITY_NODROP - AX_PRIORITY_LOWEST ) * value ) / 10 ) + AX_PRIORITY_LOWEST;
}

#endif // VOICE_HPP
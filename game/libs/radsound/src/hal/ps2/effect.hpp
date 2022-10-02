//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef EFFECT_HPP
#define EFFECT_HPP

#include <radsoundobject.hpp>
#include "radsound_ps2.hpp"

#define NULL_CORE			0xFFFFFFFF
#define DIRTY_MODE			( 0x01 << 0 )
#define DIRTY_PARAMS		( 0x01 << 1 )
#define DIRTY_GAIN          ( 0x01 << 2 )
#define DIRTY_ENABLED		( 0x01 << 4 )

#define DIRTY_ALL       ( 0xFFFFFFFF )
#define DIRTY_NONE      ( 0x00000000 )

class radSoundEffectPs2
	:
	public IRadSoundEffectPs2,
	public radSoundObject
{

	public:

		IMPLEMENT_REFCOUNTED( "radSoundEffectPs2" )

        //
        // IRadSoundHalEffect
        //

        virtual void Attach( unsigned int auxSend );
        virtual void Detach( void );
        virtual void Update( void );
        virtual void SetMasterGain( float masterGain );
        virtual float GetMasterGain( void );

		//
		// IRadSoundEffectPs2
		//

		virtual void SetMode( IRadSoundEffectPs2::Mode mode );
		virtual IRadSoundEffectPs2::Mode GetMode( void );

		virtual void SetDelay( float delayTime );
		virtual float GetDelayTime( void );

		virtual void SetFeedback( float feedBack );
		virtual float GetFeedback( void );

		virtual void SetGain( float gain );
		virtual float GetGain( void );

		virtual void SetEnabled( bool enabled );
		virtual bool GetEnabled( void );

		//
		// Private Stuff
		//

		radSoundEffectPs2( void );
		virtual ~radSoundEffectPs2( void );
				
		inline unsigned int GetCore( void );
		
	private:

		struct EffectModeInfo
		{
			IRadSoundEffectPs2::Mode m_Mode;
			unsigned int m_SonyDefine;
			unsigned int m_Bytes;
		};

		static EffectModeInfo        s_aEffectModeInfo[];
		static unsigned int		     s_NumberOfEffectModes;
			
		void SetHardware( void );

		EffectModeInfo * FindSonyModeInfo( void );

		IRadSoundEffectPs2::Mode m_Mode;

		float        m_Delay;
		float        m_FeedBack;
		float        m_Gain;
		float        m_MasterGain;
		float		 m_Enabled;

		unsigned int m_DirtyFlags;

		unsigned int m_Core;
};

inline unsigned int radSoundEffectPs2::GetCore( void )
{
	rAssert( m_Core != NULL_CORE );

	return m_Core;
}

#endif // EFFECT_HPP
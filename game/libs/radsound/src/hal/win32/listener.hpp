//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        listener.hpp
//
// Subsystem:	Radical Sound System
//
// Description:	Listener object for positional sound
//
// Creation TH RS
//
//=============================================================================

#ifndef LISTENER_HPP
#define LISTENER_HPP


//============================================================================
// Include Files
//============================================================================

#include "radsoundwin.hpp"
#include "positionalgroup.hpp"
#include "../common/rolloff.hpp"
#include <eax.h>

//============================================================================
// Component: radSoundHalListener
//============================================================================

struct radSoundHalListener
	:
    public IRadSoundHalListener,
    public radSoundObject
{
	public:

		IMPLEMENT_REFCOUNTED( "radSoundHalListener" )

		static void Initialize( radMemoryAllocator allocator, IDirectSound3DListener * pIDirectSound3DListener );
		static radSoundHalListener * GetInstance( void );
		static void Terminate( void );

		virtual void SetPosition( radSoundVector * pPos );
		virtual void GetPosition( radSoundVector * pPos );
		virtual void SetOrientation( radSoundVector * pOrientationFront, radSoundVector * pOrientationTop );
		virtual void GetOrientation( radSoundVector * pOrientationFront, radSoundVector * pOrientationTop );
		virtual void SetVelocity( radSoundVector * pVelocity );
		virtual void GetVelocity( radSoundVector * pVelocity );
		virtual void SetDistanceFactor( float distanceFactor );
		virtual float GetDistanceFactor( void );
		virtual void SetDopplerFactor( float doppleFactor );
		virtual float GetDopplerFactor( void );
		virtual void SetRollOffFactor( float rollOffFactor );
		virtual float GetRollOffFactor( void );
        virtual void  SetEnvEffectsEnabled( bool enabled );
        virtual bool  GetEnvEffectsEnabled( void );
        virtual void  SetEnvironmentAuxSend( unsigned int auxsend );
        virtual unsigned int GetEnvironmentAuxSend( void );

        void SetEaxListenerProperties( EAXLISTENERPROPERTIES * pEaxListenerProperties );
		void UpdatePositionalSettings( void );

	private:

		radSoundHalListener( IDirectSound3DListener * pIDirectSound3DListener );
		~radSoundHalListener( void );

		static radSoundHalListener * s_pTheRadSoundHalListener;

		DS3DLISTENER m_Ds3dListener;

		ref< IDirectSound3DListener > m_xIDirectSound3DListener;
        ref< IKsPropertySet > m_xIKsPropertySet;

        bool m_EnvEffectsEnabled;
        unsigned int m_EnvAuxSend;
        
		float m_RolloffFactor;
        float m_pRollOffTable[ STD_ROLL_OFF_TABLE_NUM_POINTS ];

        bool m_IsEaxListenerClean;
        EAXLISTENERPROPERTIES m_EaxListenerProperties;
};

#endif // LISTENER_HPP
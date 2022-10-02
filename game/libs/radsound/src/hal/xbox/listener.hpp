//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        listener.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	Listener object for positional sound
//
// Creation TH
// Modified RS 10-April-2001
//
//=============================================================================

#if defined RAD_WIN32 || defined RAD_XBOX
#pragma warning ( disable : 4291 )
#endif

//============================================================================
// Include Files
//============================================================================

#include <xtl.h>
#include <dsound.h>

#include <stdio.h>
#include <radsound.hpp>
#include <radobject.hpp>
#include <radtime.hpp>
#include "radsoundxbox.hpp"
#include "positionalgroup.hpp"
#include "../common/rolloff.hpp"

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
		static radSoundHalListener * GetInstance( void ) { return s_pTheDxSoundListener; }
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

		void UpdatePositionalSettings( void );
        void OnSetEnvEffect( unsigned int auxNumber, const DSI3DL2LISTENER * pDsI3DL2Listener );

	private:

		radSoundHalListener( IDirectSound3DListener * pIDirectSound3DListener );
		~radSoundHalListener( void );

		static radSoundHalListener * s_pTheDxSoundListener;

		radSoundVector m_Position;
		radSoundVector m_Velocity;
		radSoundVector m_OrientationFront;
		radSoundVector m_OrientationTop;

		float m_RollOffFactor;
		float m_DopplerFactor;
		float m_DistanceFactor;

        bool m_EnvEffectsEnabled;
        unsigned int m_EnvAuxSend;

        float s_pRollOffTable[ STD_ROLL_OFF_TABLE_NUM_POINTS ];

		ref< IDirectSound3DListener > m_xIDirectSound3DListener;
};


//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef RADSOUNDHALPOSITIONALGROUP_HPP
#define RADSOUNDHALPOSITIONALGROUP_HPP

#include <radlinkedclass.hpp>
#include <radsound_hal.hpp>
#include <radsoundobject.hpp>

struct radSoundHalPositionalGroup;

struct radSoundHalPositionalEntity
{
	public:

		virtual void OnApplyPositionalInfo( void ) = 0;

	private: friend struct radSoundHalPositionalGroup;

		radSoundHalPositionalEntity * m_pNext;
		radSoundHalPositionalEntity * m_pPrev;
};

struct radSoundHalPositionalGroup
	:
	public IRadSoundHalPositionalGroup,
	public radLinkedClass< radSoundHalPositionalGroup >,
	public radSoundObject
{
	public:

		IMPLEMENT_REFCOUNTED( "radSoundHalPositionalGroup" )
		
		radSoundHalPositionalGroup( void );
		virtual ~radSoundHalPositionalGroup( void );

		void AddPositionalEntity( radSoundHalPositionalEntity * pRadSoundHalPositionalEntity );
		void RemovePositionalEntity( radSoundHalPositionalEntity * pRadSoundHalPositionalEntity );

		void UpdatePositionalSettings( void );

		// IRadSoundHalPositionalGroup

		virtual void  SetPosition( radSoundVector * pPosition );
		virtual void  GetPosition( radSoundVector * pPosition );
		virtual void  SetVelocity( radSoundVector * pVelocity );
		virtual void  GetVelocity( radSoundVector * pVelocity );
		virtual void  SetOrientation( radSoundVector * pFront, radSoundVector * pTop );
		virtual void  GetOrientation( radSoundVector * pFront, radSoundVector * pTop );
		virtual void  SetMinMaxDistance( float min, float max );
		virtual void  GetMinMaxDistance( float * pMin, float * pMax );
		virtual void  SetConeOutsideVolume( float ov );
		virtual float GetConeOutsideVolume( void );
		virtual void  SetConeAngles( float in, float out );
		virtual void  GetConeAngles( float * pIn, float * pOut );

#ifndef FTECH_PRE_DEC_XDK
        virtual void  SetDistanceFactor( float distanceFactor );
        virtual float GetDistanceFactor( void );
        virtual void  SetRolloffFactor( float rolloffFactor );
        virtual float GetRolloffFactor( void );
        virtual void  SetDopplerFactor( float dopplerFactor );
        virtual float GetDopplerFactor( void );
#endif // FTECH_PRE_DEC_XDK

        virtual void  SetOcclusion( float occl );
        virtual float GetOcclusion( void );
        virtual void  SetObstruction( float obst );
        virtual float GetObstruction( void );

		DS3DBUFFER m_Ds3dBuffer;
        DSI3DL2BUFFER m_DsI3dl2Buffer;

		radSoundHalPositionalEntity * m_pRadSoundHalPositionalEntity_Head;
};

#endif // RADSOUNDHALPOSITIONALGROUP_HPP
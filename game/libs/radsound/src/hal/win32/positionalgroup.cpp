//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "radsoundwin.hpp"
#include "positionalgroup.hpp"
#include "../common/rolloff.hpp"

//========================================================================
// radSoundHalPositionalGroup::radSoundHalPositionalGroup
//========================================================================

radSoundHalPositionalGroup::radSoundHalPositionalGroup( void )
	:
	m_pRadSoundHalPositionalEntity_Head( NULL ),
	m_VolumeRolloffFactor( 1.0f )
{
	::radSoundZeroMemory( & m_Ds3dBuffer, sizeof( m_Ds3dBuffer ) );

	m_Ds3dBuffer.dwSize = sizeof( m_Ds3dBuffer );
	m_Ds3dBuffer.dwMode = DS3DMODE_NORMAL;

	m_Ds3dBuffer.vPosition.x = 0.0f;
	m_Ds3dBuffer.vPosition.y = 0.0f;
	m_Ds3dBuffer.vPosition.z = 0.0f;

	m_Ds3dBuffer.vVelocity.x = 0.0f;
	m_Ds3dBuffer.vVelocity.y = 0.0f;
	m_Ds3dBuffer.vVelocity.z = 0.0f;

	m_Ds3dBuffer.vConeOrientation.x = 0.0f;
	m_Ds3dBuffer.vConeOrientation.y = 0.0f;
	m_Ds3dBuffer.vConeOrientation.z = 1.0f;

	m_Ds3dBuffer.lConeOutsideVolume = DS3D_DEFAULTCONEOUTSIDEVOLUME;
	m_Ds3dBuffer.dwInsideConeAngle = DS3D_DEFAULTCONEANGLE;
	m_Ds3dBuffer.dwOutsideConeAngle = DS3D_DEFAULTCONEANGLE;

	m_Ds3dBuffer.flMinDistance = 1.0f;
	m_Ds3dBuffer.flMaxDistance = 100.0f;
}

//========================================================================
// radSoundHalPositionalGroup::~radSoundHalPositionalGroup
//========================================================================

radSoundHalPositionalGroup::~radSoundHalPositionalGroup( void )
{
	rAssert( m_pRadSoundHalPositionalEntity_Head == NULL );
}

//========================================================================
// radSoundHalPositionalGroup::SetPosition
//========================================================================

void radSoundHalPositionalGroup::SetPosition
(
    radSoundVector * pPosition
)
{
	rAssert( pPosition != NULL );

	m_Ds3dBuffer.vPosition = *((D3DVECTOR*) pPosition);
}

//========================================================================
// radSoundHalPositionalGroup::GetPosition
//========================================================================

void radSoundHalPositionalGroup::GetPosition
(
    radSoundVector * pPosition
)
{
    rAssert( pPosition != NULL );

	*pPosition = *((radSoundVector*)&(m_Ds3dBuffer.vPosition));
}

//========================================================================
// radSoundHalPositionalGroup::SetVelocity
//========================================================================

void radSoundHalPositionalGroup::SetVelocity
(
    radSoundVector * pVelocity
)
{
	rAssert( pVelocity != NULL );

	#ifdef RAD_DEBUG
	
		if ( pVelocity->GetLength( ) > 100.0f )
		{
			rDebugPrintf( "This radSoundPositionalGroup is going really really fast\n" );
		}
	
	#endif

	m_Ds3dBuffer.vVelocity = *((D3DVECTOR*) pVelocity);


}

//========================================================================
// radSoundHalPositionalGroup::GetVelocity
//========================================================================

void radSoundHalPositionalGroup::GetVelocity
(
    radSoundVector * pVelocity
)
{
    rAssert( pVelocity != NULL );

	*pVelocity = *((radSoundVector*)&(m_Ds3dBuffer.vVelocity));
}

//========================================================================
// radSoundHalPositionalGroup::SetOrientationFront
//========================================================================

void radSoundHalPositionalGroup::SetOrientation
(
    radSoundVector * pOrientationFront, radSoundVector * pOrientationTop
)
{	
	rAssert( pOrientationFront != NULL );
	rAssert( pOrientationTop != NULL );

	m_Ds3dBuffer.vConeOrientation = *((D3DVECTOR*) pOrientationFront );
}
   
//========================================================================
// radSoundHalPositionalGroup::GetOrientationFront
//========================================================================

void radSoundHalPositionalGroup::GetOrientation
(
    radSoundVector * pOrientationFront,
	radSoundVector * pOrientationTop
)
{
	if ( pOrientationTop != NULL )
	{
		pOrientationTop->SetElements( 0.0f, 1.0f, 0.0f );
	}
	
	if ( pOrientationFront != NULL )
	{
		*pOrientationFront = *((radSoundVector*) &(m_Ds3dBuffer.vConeOrientation));
	}
}

//========================================================================
// radSoundHalPositionalGroup::SetInsideConeAngle
//========================================================================

void radSoundHalPositionalGroup::SetConeAngles
(
    float insideConeAngle,
    float outsideConeAngle
)
{


    m_Ds3dBuffer.dwInsideConeAngle =  ::radSoundFloatToUInt( insideConeAngle );
    m_Ds3dBuffer.dwOutsideConeAngle = ::radSoundFloatToUInt( outsideConeAngle );
}

//========================================================================
// radSoundHalPositionalGroup::GetInsideConeAngle
//========================================================================

void radSoundHalPositionalGroup::GetConeAngles
(
    float * pIca,
    float * pOca
)
{
    if ( pIca != NULL )
    {    
        *pIca = ::radSoundUIntToFloat( m_Ds3dBuffer.dwInsideConeAngle );
    }
    
    if ( pOca != NULL )
    {
        *pOca = ::radSoundUIntToFloat( m_Ds3dBuffer.dwOutsideConeAngle );
    }
}

//========================================================================
// radSoundHalPositionalGroup::SetConeOutsideVolume
//========================================================================

void radSoundHalPositionalGroup::SetConeOutsideVolume
(
    float coneOutsideVolume
)
{
	signed long hardwareVol =
		::radSoundVolumeDbToHardwareWin(
			::radSoundVolumeAnalogToDb( coneOutsideVolume ) );

	m_Ds3dBuffer.lConeOutsideVolume = hardwareVol;
}

//========================================================================
// radSoundHalPositionalGroup::GetConeOutsideVolume
//========================================================================

float radSoundHalPositionalGroup::GetConeOutsideVolume
(
    void
)
{
	return radSoundVolumeDbToAnalog(
		::radSoundVolumeHardwareToDbWin( m_Ds3dBuffer.lConeOutsideVolume ) );
}

//========================================================================
// radSoundHalPositionalGroup::SetMaxDistance
//========================================================================

void radSoundHalPositionalGroup::SetMinMaxDistance
(
    float minDistance,
    float maxDistance
)
{
	// Kept here only for reference.  Windows rolloff calculation sucks
	// so we'll do it ourselves
	m_Ds3dBuffer.flMinDistance = minDistance;
	m_Ds3dBuffer.flMaxDistance = maxDistance;
}

//========================================================================
// radSoundHalPositionalGroup::GetMaxDistance
//========================================================================

void radSoundHalPositionalGroup::GetMinMaxDistance
(
    float * pMinDistance,
    float * pMaxDistance

)
{
	if ( pMinDistance != NULL )
	{
		* pMinDistance = m_Ds3dBuffer.flMinDistance;
	}

	if ( pMaxDistance != NULL )
	{
		* pMaxDistance = m_Ds3dBuffer.flMaxDistance;
	}
}

//========================================================================
// radSoundHalPositionalGroup::AddPositionalEnity
//========================================================================

void radSoundHalPositionalGroup::AddPositionalEntity
(
	radSoundHalPositionalEntity * pRadSoundHalPositionalEntity
)
{
	rAssert( pRadSoundHalPositionalEntity );

    pRadSoundHalPositionalEntity->m_pNext = m_pRadSoundHalPositionalEntity_Head;

    if ( pRadSoundHalPositionalEntity->m_pNext != NULL )
    {
        pRadSoundHalPositionalEntity->m_pNext->m_pPrev = pRadSoundHalPositionalEntity;
    }

    pRadSoundHalPositionalEntity->m_pPrev = NULL;

	m_pRadSoundHalPositionalEntity_Head = pRadSoundHalPositionalEntity;

}

//========================================================================
// radSoundHalPositionalGroup::RemovePositionalEntity
//========================================================================

void radSoundHalPositionalGroup::RemovePositionalEntity
(
	radSoundHalPositionalEntity * pRadSoundHalPositionalEntity
)
{
	rAssert( pRadSoundHalPositionalEntity );

    if ( pRadSoundHalPositionalEntity->m_pPrev != NULL )
    {
        pRadSoundHalPositionalEntity->m_pPrev->m_pNext =
			pRadSoundHalPositionalEntity->m_pNext;
    }
    else
    {
        m_pRadSoundHalPositionalEntity_Head = pRadSoundHalPositionalEntity->m_pNext;
    }

    if ( pRadSoundHalPositionalEntity->m_pNext != NULL )
    {
        pRadSoundHalPositionalEntity->m_pNext->m_pPrev = pRadSoundHalPositionalEntity->m_pPrev;
    }
}

//========================================================================
// radSoundHalPositionalGroup::UpdatePositionalSettings
//========================================================================

void radSoundHalPositionalGroup::UpdatePositionalSettings( radSoundVector * pListenerPosition, float listenerRolloffFactor )
{
	// Calculate the current volume rolloff factor

	float distToListener = pListenerPosition->GetDistanceBetween( * ( ( radSoundVector * ) & ( m_Ds3dBuffer.vPosition ) ) );
	m_VolumeRolloffFactor = ::radSoundHalCalcualteRollOff( m_Ds3dBuffer.flMinDistance, m_Ds3dBuffer.flMaxDistance, distToListener );
	m_VolumeRolloffFactor = m_VolumeRolloffFactor * listenerRolloffFactor;

	radSoundHalPositionalEntity * p = m_pRadSoundHalPositionalEntity_Head;

	while ( p != NULL )
	{
		p->OnApplyPositionalInfo( );

		p = p->m_pNext;
	}
}

//========================================================================
// ::radSoundhalPositionalGroupCreate
//========================================================================

IRadSoundHalPositionalGroup * radSoundHalPositionalGroupCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundHalPositionalGroup", allocator ) radSoundHalPositionalGroup( );
}


//========================================================================
// Static member definitions
//========================================================================

radSoundHalPositionalGroup * radLinkedClass< radSoundHalPositionalGroup >::s_pLinkedClassHead = NULL;
radSoundHalPositionalGroup * radLinkedClass< radSoundHalPositionalGroup >::s_pLinkedClassTail = NULL;
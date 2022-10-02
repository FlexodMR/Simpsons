//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "radsoundxbox.hpp"
#include "positionalgroup.hpp"

radSoundHalPositionalGroup::radSoundHalPositionalGroup( void )
	:
	m_pRadSoundHalPositionalEntity_Head( NULL )
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


#ifndef FTECH_PRE_DEC_XDK
//
// NOTE:
//
// If you are using a pre-December 2001 version of the Xbox XDK
// Define FTECH_PRE_DEC_XDK to ignore these new factors
//
	m_Ds3dBuffer.flDistanceFactor = DS3D_DEFAULTDISTANCEFACTOR;
	m_Ds3dBuffer.flRolloffFactor =  DS3D_DEFAULTROLLOFFFACTOR;
	m_Ds3dBuffer.flDopplerFactor =  DS3D_DEFAULTDOPPLERFACTOR;
#endif // FTECH_PRE_DEC_XDK

	SetMinMaxDistance( DS3D_DEFAULTMINDISTANCE, 100.0f ); // A minimum distance of 0 is now illegal
	SetConeOutsideVolume( 0.0f );
	SetConeAngles( 360.0f, 360.0f );

    m_DsI3dl2Buffer.lDirect               = DirectSoundDefaultI3DL2Buffer.lDirect;
    m_DsI3dl2Buffer.lDirectHF             = DirectSoundDefaultI3DL2Buffer.lDirectHF;
    m_DsI3dl2Buffer.lRoom                 = DirectSoundDefaultI3DL2Buffer.lRoom;
    m_DsI3dl2Buffer.lRoomHF               = DirectSoundDefaultI3DL2Buffer.lRoomHF;
    m_DsI3dl2Buffer.flRoomRolloffFactor   = DirectSoundDefaultI3DL2Buffer.flRoomRolloffFactor;
    m_DsI3dl2Buffer.Obstruction.lHFLevel  = DirectSoundDefaultI3DL2Buffer.Obstruction.lHFLevel;
    m_DsI3dl2Buffer.Obstruction.flLFRatio = DirectSoundDefaultI3DL2Buffer.Obstruction.flLFRatio;
    m_DsI3dl2Buffer.Occlusion.lHFLevel    = DirectSoundDefaultI3DL2Buffer.Occlusion.lHFLevel;
    m_DsI3dl2Buffer.Occlusion.flLFRatio   = DirectSoundDefaultI3DL2Buffer.Occlusion.flLFRatio;
}

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
			rDebugString( "radSoundHalPositionalGroup: Velocity > 341.0f!\n" );
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
		::radSoundVolumeDbToHardwareXBox(
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
		::radSoundVolumeHardwareToDbXBox( m_Ds3dBuffer.lConeOutsideVolume ) );
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
        *pMinDistance = m_Ds3dBuffer.flMinDistance;
	}

	if ( pMaxDistance != NULL )
	{
        *pMaxDistance = m_Ds3dBuffer.flMaxDistance;
	}
}

#ifndef FTECH_PRE_DEC_XDK
//
// NOTE:
//
// If you are using a pre-December 2001 version of the Xbox XDK
// Define FTECH_PRE_DEC_XDK to ignore these new functions
//

//========================================================================
// radSoundHalPositionalGroup::SetDistanceFactor
//========================================================================

void radSoundHalPositionalGroup::SetDistanceFactor( float distanceFactor )
{
    // If you are using a pre-December 2001 version of the Xbox XDK
    // Define FTECH_PRE_DEC_XDK to ignore these new functions
    m_Ds3dBuffer.flDistanceFactor = distanceFactor;
}

//========================================================================
// radSoundHalPositionalGroup::GetDistanceFactor
//========================================================================

float radSoundHalPositionalGroup::GetDistanceFactor( void )
{
    // If you are using a pre-December 2001 version of the Xbox XDK
    // Define FTECH_PRE_DEC_XDK to ignore these new functions
    return m_Ds3dBuffer.flDistanceFactor;
}

//========================================================================
// radSoundHalPositionalGroup::SetRolloffFactor
//========================================================================

void radSoundHalPositionalGroup::SetRolloffFactor( float rolloffFactor )
{
    // If you are using a pre-December 2001 version of the Xbox XDK
    // Define FTECH_PRE_DEC_XDK to ignore these new functions
    m_Ds3dBuffer.flRolloffFactor = rolloffFactor;
}

//========================================================================
// radSoundHalPositionalGroup::GetRolloffFactor
//========================================================================

float radSoundHalPositionalGroup::GetRolloffFactor( void )
{
    // If you are using a pre-December 2001 version of the Xbox XDK
    // Define FTECH_PRE_DEC_XDK to ignore these new functions
    return m_Ds3dBuffer.flRolloffFactor;
}

//========================================================================
// radSoundHalPositionalGroup::SetDopplerFactor
//========================================================================

void radSoundHalPositionalGroup::SetDopplerFactor( float dopplerFactor )
{
    // If you are using a pre-December 2001 version of the Xbox XDK
    // Define FTECH_PRE_DEC_XDK to ignore these new functions
    m_Ds3dBuffer.flDopplerFactor = dopplerFactor;
}

//========================================================================
// radSoundHalPositionalGroup::GetDopplerFactor
//========================================================================

float radSoundHalPositionalGroup::GetDopplerFactor( void )
{
    // If you are using a pre-December 2001 version of the Xbox XDK
    // Define FTECH_PRE_DEC_XDK to ignore these new functions
    return m_Ds3dBuffer.flDopplerFactor;
}
#endif // FTECH_PRE_DEC_XDK

//========================================================================
// radSoundHalPositionalGroup::SetOcclusion
//========================================================================

void radSoundHalPositionalGroup::SetOcclusion( float occl )
{
    ::radSoundVerifyAnalogVolume( occl );

    // Our max 1.0f value is equal to their min -10000mB value
    m_DsI3dl2Buffer.Occlusion.lHFLevel = ( long )( occl * DSI3DL2BUFFER_MINOCCLUSION );
}

//========================================================================
// radSoundHalPositionalGroup::GetOcclusion
//========================================================================

float radSoundHalPositionalGroup::GetOcclusion( void ) 
{
    // Our max 1.0f value is equal to their min -10000mB value
    float occl = ( float )( m_DsI3dl2Buffer.Occlusion.lHFLevel / DSI3DL2BUFFER_MINOCCLUSION );

    ::radSoundVerifyAnalogVolume( occl );

    return occl;
}

//========================================================================
// radSoundHalPositionalGroup::SetObstruction
//========================================================================

void radSoundHalPositionalGroup::SetObstruction( float obst ) 
{
    ::radSoundVerifyAnalogVolume( obst );

    // Our max 1.0f value is equal to their min -10000mB value
    m_DsI3dl2Buffer.Obstruction.lHFLevel = ( long )( obst * DSI3DL2BUFFER_MINOBSTRUCTION );
}

//========================================================================
// radSoundHalPositionalGroup::GetObstruction
//========================================================================

float radSoundHalPositionalGroup::GetObstruction( void )
{
    // Our max 1.0f value is equal to their min -10000mB value
    float occl = ( float )( m_DsI3dl2Buffer.Obstruction.lHFLevel / DSI3DL2BUFFER_MINOBSTRUCTION );

    ::radSoundVerifyAnalogVolume( occl );

    return occl;
}

//========================================================================
// radSoundHalPositionalGroup::AddPositionalEntity
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
// radSoundHalPositionalGroup::UpdatePostionalSettings
//========================================================================

void radSoundHalPositionalGroup::UpdatePositionalSettings( void )
{
	radSoundHalPositionalEntity * p = m_pRadSoundHalPositionalEntity_Head;

	while ( p != NULL )
	{
		p->OnApplyPositionalInfo( );

		p = p->m_pNext;
	}
}

//========================================================================
// ::radSoundHalPositionalGroupCreate
//========================================================================

IRadSoundHalPositionalGroup * radSoundHalPositionalGroupCreate( radMemoryAllocator allocator )
{
	return new ( "radSoundHalPositionalGroup", allocator ) radSoundHalPositionalGroup( );
}

radSoundHalPositionalGroup * radLinkedClass< radSoundHalPositionalGroup >::s_pLinkedClassHead = NULL;
radSoundHalPositionalGroup * radLinkedClass< radSoundHalPositionalGroup >::s_pLinkedClassTail = NULL;
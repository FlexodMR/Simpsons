//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "waveInfo.hpp"

//===========================================================================
// 
//  CWaveInfo
// 
//===========================================================================

CWaveInfo::CWaveInfo()
:   mBirth( 0.0 ),
    mLife( 1.0 ),
    mCenter( MPoint( 0.0, 0.0, 0.0 ) ),
    mNormal( MVector( 1.0, 0.0, 0.0 ) ),
    mWavelength( 1.0 ),
    mDistance( 1.0 ),
    mAmplitude( 0.2 )
{
//    clog << "New raindrop:" << endl;
//    clog << "         time: " << mBirth << endl;
//    clog << "         life: " << mLife << endl;
//    clog << "       center: " << mCenter << endl;
//    clog << "     distance: " << mDistance << endl;
//    clog << "   wavelength: " << mWavelength << endl;
//    clog << "    amplitude: " << mAmplitude << endl;

    mNormal.normalize();

    if ( mWavelength <= 0.0F )
    {
        mWavelength = 1.0F;
    }
}

CWaveInfo::~CWaveInfo()
{
}

CWaveInfo::CWaveInfo( const CWaveInfo& other )
{
    *this = other;
}

CWaveInfo& CWaveInfo::operator = ( const CWaveInfo& other )
{
    mBirth = other.mBirth;
    mLife = other.mLife;
    mCenter = other.mCenter;
    mNormal = other.mNormal;
    mWavelength = other.mWavelength;
    mDistance = other.mDistance;
    mAmplitude = other.mAmplitude;

    return *this;
}


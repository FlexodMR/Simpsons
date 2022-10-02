//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     27 May, 2002
// Modified:    27 May, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "procedural.hpp"

#include "uvInfo.hpp"

#include <maya/MFloatArray.h>
#include <math.h>

#include <iostream.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CProcedural::CProcedural( const CWaveInfo& info )
:   mInfo( info )
{
}

CProcedural::~CProcedural()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CProcedural::CProcedural( const CProcedural& other )
{
    *this = other;
}

CProcedural& CProcedural::operator = ( const CProcedural& other )
{
    mInfo = other.mInfo;
    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

bool CProcedural::IsAlive( double now ) const
{
    return ( ( now >= mInfo.mBirth ) && ( ( mInfo.mLife < 0.0 ) || ( now < ( mInfo.mBirth + mInfo.mLife ) ) ) );
}

void CProcedural::NormalizeUVs( MFloatArray& u, MFloatArray& v )
{
    CUVInfo uvInfo;
    uvInfo.Clear( u[0], v[0] );

    size_t i;
    for ( i = 1; i < u.length(); i++ )
    {
        uvInfo.Add( u[i], v[i] );
    }

    float allU = uvInfo.m_maxU - uvInfo.m_minU;
    float allV = uvInfo.m_maxV - uvInfo.m_minV;

    double normalU = ( fmod( allU, 1.0 ) > 0.5 ? ceil( allU ) : floor( allU ) );
    double normalV = ( fmod( allV, 1.0 ) > 0.5 ? ceil( allV ) : floor( allV ) );

    double scaleU = normalU / allU;
    double scaleV = normalV / allV;

    float centerU = ( uvInfo.m_minU + uvInfo.m_maxU ) / 2.0F;
    float centerV = ( uvInfo.m_minV + uvInfo.m_maxV ) / 2.0F;

    for ( i = 0; i < u.length(); i++ )
    {
        u[i] = ( ( u[i] - centerU ) * (float)scaleU ) + centerU;
        v[i] = ( ( v[i] - centerV ) * (float)scaleV ) + centerV;
    }

}

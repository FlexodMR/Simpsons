//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "raindrop.hpp"

#include <math.h>
#include <iostream.h>

const float PI = 3.14159F;

//===========================================================================
// frand
//===========================================================================
// Description: Returns a random float between 0.0 and 1.0.
//
//  Parameters: (void)
//
//      Return: (float): Random float between 0.0 and 1.0.
//
//===========================================================================
float frand( void )
{
    return ((float) rand()) / ((float)RAND_MAX);                    // 0.0 - 1.0
}

//===========================================================================
// 
//  CRaindrop
// 
//===========================================================================

CProceduralRaindrop::CProceduralRaindrop( const CWaveInfo& info )
:   CProcedural( info )
{
}

CProceduralRaindrop::CProceduralRaindrop( const CProceduralRaindrop& other )
:   CProcedural( other )
{
    *this = other;
}

CProceduralRaindrop::~CProceduralRaindrop()
{
}

CProceduralRaindrop& CProceduralRaindrop::operator = ( const CProceduralRaindrop& other )
{
    CProcedural::operator = ( other );

    return *this;
}

double CProceduralRaindrop::Seam( double outTime ) const
{
    double seam = 0.0;

    if ( ( mInfo.mBirth + mInfo.mLife ) > outTime )
    {
        seam = mInfo.mLife - ( ( mInfo.mBirth + mInfo.mLife ) - outTime );
    }

    return seam;
}

void CProceduralRaindrop::ComputeUV( double now, double factor, MFloatArray& u, MFloatArray& v )
{
    // Are we within lifetime of this drop?
    if ( ( now > mInfo.mBirth ) && ( ( mInfo.mLife < 0.0 ) || ( now < ( mInfo.mBirth + mInfo.mLife ) ) ) )
    {
        size_t i;
        for ( i = 0; i < u.length(); i++ )
        {
            MPoint      uv( u[i], v[i], 0.0 );

            // Is this point within radius of this drop?
            MVector vector = MVector( uv - mInfo.mCenter );
            if ( vector.length() < mInfo.mDistance )
            {
                // Amplitude based on time remaining in life.
                double amplitude = mInfo.mAmplitude;
                if ( mInfo.mLife > 0.0 )  // If infinite life, no decrease in amplitude
                {
                    amplitude *= 1.0 - ( ( now - mInfo.mBirth ) / mInfo.mLife );
                }

                // Amplitude based on distance from origin w/r/t effect distance
                amplitude *= 1.0 - ( vector.length() / mInfo.mDistance );

                // And finally, user factor.
                amplitude *= factor;

                // Wave travels one wavelength per time unit.

                // Has the wave passed this point yet?
    //            double waveTravel = ( ( now - mInfo.mBirth ) * mInfo.mWavelength ) - vector.length();
                double waveTravel = ( ( now - mInfo.mBirth ) /* * mInfo.mWavelength */ ) - vector.length();
            
                if ( waveTravel > 0.0 ) //  + ( vector.length() / mWavelength );
                {
    //                double radians = waveTravel * PI;
                    double radians = ( waveTravel / mInfo.mWavelength ) * PI * 2;

                    uv = vector * (float)sin( radians ) * amplitude;

                    u[i] = u[i] + (float)uv[0];
                    v[i] = v[i] + (float)uv[1];
                }
            }
        }
    }
}


//===========================================================================
// 
//  CRaindropCollection
// 
//===========================================================================

CRaindropCollection::CRaindropCollection()
:   mNumRaindrops( 0 ),
    mNumSeamlessRaindrops( 0 )
{
}

CRaindropCollection::~CRaindropCollection()
{
    Clear();
}

void CRaindropCollection::Clear( void )
{
    mRaindrops.Clear();
    mNumRaindrops = 0;
    mNumSeamlessRaindrops = 0;
}

unsigned int CRaindropCollection::NumRaindrops( void ) const
{
    return mNumRaindrops + mNumSeamlessRaindrops;
}

unsigned int CRaindropCollection::NumNaturalRaindrops( void ) const
{
    return mNumRaindrops;
}

unsigned int CRaindropCollection::NumSeamlessRaindrops( void ) const
{
    return mNumSeamlessRaindrops;
}

CProceduralRaindrop* CRaindropCollection::Raindrop( unsigned int index ) const
{
    if ( index >= mRaindrops.NumItems() ) return NULL;

    return mRaindrops( index );
}

void CRaindropCollection::AddRaindrop( double seconds, double maxLife, const CUVInfo& uvInfo )
{
    CreateRaindrop( seconds, maxLife, uvInfo );
    mNumRaindrops++;
}

void CRaindropCollection::CreateRaindrop( double seconds, double maxLife, const CUVInfo& uvInfo )
{
    CWaveInfo                   info;

    info.mBirth = seconds;
    info.mLife = frand() * maxLife;
    double u = uvInfo.m_minU + frand() * ( uvInfo.m_maxU - uvInfo.m_minU );
    double v = uvInfo.m_minV + frand() * ( uvInfo.m_maxV - uvInfo.m_minV );
    info.mCenter = MPoint( u, v, 0.0 );
    info.mDistance = ( ( frand() * ( uvInfo.m_maxU - uvInfo.m_minU ) ) + ( frand() * ( uvInfo.m_maxV - uvInfo.m_minV ) ) ) / 2.0;
    info.mWavelength = frand() + frand();

    // Make a reasonable life cycle if long timeline
    info.mLife = __min( info.mLife, 4.0 );

    mRaindrops.AddItem( CProceduralRaindrop( info ) );
}

void CRaindropCollection::CreateSeamless( double inTime, double outTime, unsigned int numRaindrops, const CUVInfo& uvInfo )
{
    Clear();

    double maxLife = outTime - inTime;

    while ( numRaindrops-- )
    {
        double seconds = ( frand() * maxLife ) + inTime;

        CreateRaindrop( seconds, maxLife, uvInfo );

//        clog << "+ Create raindrop, [" << mRaindrops(mNumRaindrops)->mInfo.mBirth << ":" << mRaindrops(mNumRaindrops)->mInfo.mLife << "]" << endl;

        mNumRaindrops++;
    }

    // Now find any raindrops that overlap the end frame
    for ( numRaindrops = 0; numRaindrops < mNumRaindrops; numRaindrops++ )
    {
        CProceduralRaindrop* pRaindrop = mRaindrops(numRaindrops);
        double seam = pRaindrop->Seam( outTime );
        if ( seam > 0.0 )
        {
            // Create a reciprocal raindrop that launches the appropriate amount
            // BEFORE inTime.
            double seconds = inTime - seam;

            CProceduralRaindrop     preRain( *pRaindrop );

//            clog << "   ++ Create SEAMLESS raindrop, remap [" << preRain.mInfo.mBirth << ":" << preRain.mInfo.mLife << "] to " << seconds << endl;

            preRain.mInfo.mBirth = seconds;
            mRaindrops.AddItem( preRain );
            mNumSeamlessRaindrops++;
        }
    }
}

void CRaindropCollection::Flush( double seconds )
{
    unsigned int numRaindrops = mRaindrops.NumItems();

    while ( numRaindrops-- )
    {
        if ( !mRaindrops(numRaindrops)->IsAlive( seconds ) )
        {
            mRaindrops.DeleteItem( numRaindrops );
        }
    }

    mNumRaindrops = mRaindrops.NumItems();
    mNumSeamlessRaindrops = 0;
}

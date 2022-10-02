//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "wave.hpp"

#include <math.h>
#include <iostream.h>

const float PI = 3.14159F;

CProceduralWave::CProceduralWave( const CWaveInfo& info )
:     CProcedural( info )
{
//    clog << "New Wave:" << endl;
//    clog << "         time: " << mInfo.mBirth << endl;
//    clog << "         life: " << mInfo.mLife << endl;
//    clog << "       center: " << mInfo.mCenter << endl;
//    clog << "       normal: " << mInfo.mNormal << endl;
//    clog << "     distance: " << mInfo.mDistance << endl;
//    clog << "   wavelength: " << mInfo.mWavelength << endl;
//    clog << "    amplitude: " << mInfo.mAmplitude << endl;
}

CProceduralWave::CProceduralWave( const CProceduralWave& other )
:   CProcedural( other )
{
    *this = other;
}

CProceduralWave::~CProceduralWave()
{
}

CProceduralWave& CProceduralWave::operator = ( const CProceduralWave& other )
{
    CProcedural::operator = ( other );

    return *this;
}

void CProceduralWave::ComputeUV( double now, double factor, MFloatArray& u, MFloatArray& v )
{
    // Are we within lifetime of this drop?
    if ( ( now > mInfo.mBirth ) && ( ( mInfo.mLife < 0.0 ) || ( now < ( mInfo.mBirth + mInfo.mLife ) ) ) )
    {
        size_t i;
        for ( i = 0; i < u.length(); i++ )
        {
            MVector     uv( u[i], v[i], 0.0 );

            // Is this point within radius of this drop?
            MVector vector = MVector( uv - mInfo.mCenter );
            double distance = fabs( mInfo.mNormal * vector );   // dot product.
            if ( distance < mInfo.mDistance )
            {
    //            clog << "   -> Compute Raindrop @ { " << mCenter[0] << ", " << mCenter[1] << " }: [ " << u << ", " << v << " ] -> [ ";

                // Amplitude based on time remaining in life.
                double amplitude = mInfo.mAmplitude;
                if ( mInfo.mLife > 0.0 )  // If infinite life, no decrease in amplitude
                {
                    amplitude *= 1.0 - ( ( now - mInfo.mBirth ) / mInfo.mLife );
                }

                // Amplitude based on distance from origin w/r/t effect distance
                amplitude *= 1.0 - ( distance / mInfo.mDistance );

                // And finally, user factor.
                amplitude *= factor;

                // Wave travels one wavelength per time unit.

                // Add number of wavelengths travelled to distance based on time.
    //            double numWaves = ( ( now - mBirth ) * mWavelength ) + ( distance / mWavelength );
                double waveTravel = ( ( now - mInfo.mBirth ) /* * mInfo.mWavelength */ ) - distance;
            
                if ( waveTravel > 0.0 ) //  + ( vector.length() / mWavelength );
                {
                    double radians = ( waveTravel / mInfo.mWavelength ) * PI * 2;

                    uv = mInfo.mNormal * (float)sin( radians ) * amplitude;
                    u[i] = u[i] + (float)uv[0];
                    v[i] = v[i] + (float)uv[1];
                }

    //            clog << u << ", " << v << " ]" << endl;
            }
        }
    }
}

void CProceduralWave::MakeSeamless( double startTime, double endTime, double timeAmplitude )
{
//    clog << "MAKE SEAMLESS -> Birth adjusted from " << mInfo.mBirth << " to ";

    // First, Birth must be startTime - distance
    mInfo.mBirth = startTime - ( mInfo.mDistance / timeAmplitude );

//    clog << mInfo.mBirth << "; wavelength adjusted from " << mInfo.mWavelength << " to ";

    // Secondly, Wavelength must be division of time in seconds
    double factor = ( endTime - startTime ) / mInfo.mWavelength;
    factor = ( fmod( factor, 1.0 ) > 0.5 ? ceil( factor ) : floor( factor ) );
    
    mInfo.mWavelength = ( endTime - startTime ) / factor;

//    clog << mInfo.mWavelength << endl;
}

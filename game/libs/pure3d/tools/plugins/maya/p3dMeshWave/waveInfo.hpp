//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     23 May, 2002
//
// Component:   p3dMeshWave.mll
//
// Description: Provides an information structure to Wave and Raindrop
//              classes.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __WAVEINFO_H  
#define __WAVEINFO_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MPoint.h>
#include <maya/MVector.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Inlines
//===========================================================================

//===========================================================================
// 
//  CWaveInfo
// 
//===========================================================================

class CWaveInfo
{
public:
    CWaveInfo();
    ~CWaveInfo();

    CWaveInfo( const CWaveInfo& other );
    CWaveInfo&              operator = ( const CWaveInfo& other );

public:
    double                      mBirth;
    double                      mLife;
    MPoint                      mCenter;
    MVector                     mNormal;
    double                      mWavelength;
    double                      mDistance;
    double                      mAmplitude;
};

#endif // __WAVEINFO_H  

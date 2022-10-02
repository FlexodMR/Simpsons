//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     31 July, 2002
// Modified:    31 July, 2002
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

// Recompilation protection flag.
#ifndef __P3DDECAYRANGECONSTANTS_HPP_
#define __P3DDECAYRANGECONSTANTS_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MColor.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const double kTwoPi = 6.283185307179586476925286766559;
const double kOneOverSqrtThree = 0.57735026918962576450914878050196;

namespace DecayRange
{

    enum DecayRangeModeEnum
    {
        kDecayModeSphere = 0,
        kDecayModeCube
    };

    const double kGlManipRadius = 1.0;
    const double kGlArrowRadius = 4.0;
    const double kGlArrowHeight = 12.0;

    const MColor kGlManipColourX( 1.0f, 0.2f, 0.2f );
    const MColor kGlManipColourY( 0.2f, 1.0f, 0.2f );
    const MColor kGlManipColourZ( 0.2f, 0.2f, 1.0f );
    const MColor kGlManipSphere( 1.0f, 1.0f, 0.2f );

    const MColor kGLManipColourRotateY( 0.0f, 1.0f, 0.0f );
}

//===========================================================================
// Interface Definitions
//===========================================================================

#endif // __P3DDECAYRANGECONSTANTS_HPP_

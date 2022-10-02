//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     15 October, 2002
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

#include "animOptimization.hpp"
#include "plugValue.hpp"

#include <tlAnimation.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CAnimOptimization::CAnimOptimization( void )
:   mEnable( false ),
    mThresholdPos( DEFAULT_VECTOR_ANIMATION_TOLERANCE ),         // If custom isn't set, use default from tlAnimation.hpp
    mThresholdRot( DEFAULT_QUAT_ANIMATION_TOLERANCE ),           // If custom isn't set, use default from tlAnimation.hpp
    mThresholdColour( DEFAULT_COLOUR_ANIMATION_TOLERANCE ),      // If custom isn't set, use default from tlAnimation.hpp
    mThresholdFloat( DEFAULT_FLOAT_ANIMATION_TOLERANCE ),        // If custom isn't set, use default from tlAnimation.hpp
    mThresholdVector( DEFAULT_VECTOR_ANIMATION_TOLERANCE )       // If custom isn't set, use default from tlAnimation.hpp
{
}

CAnimOptimization::CAnimOptimization( const MObject& node )
:   mEnable( false ),
    mThresholdPos( DEFAULT_VECTOR_ANIMATION_TOLERANCE ),         // If custom isn't set, use default from tlAnimation.hpp
    mThresholdRot( DEFAULT_QUAT_ANIMATION_TOLERANCE ),           // If custom isn't set, use default from tlAnimation.hpp
    mThresholdColour( DEFAULT_COLOUR_ANIMATION_TOLERANCE ),      // If custom isn't set, use default from tlAnimation.hpp
    mThresholdFloat( DEFAULT_FLOAT_ANIMATION_TOLERANCE ),        // If custom isn't set, use default from tlAnimation.hpp
    mThresholdVector( DEFAULT_VECTOR_ANIMATION_TOLERANCE )       // If custom isn't set, use default from tlAnimation.hpp
{
    Initialize( node );
}

CAnimOptimization::~CAnimOptimization()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void CAnimOptimization::Initialize( const MObject& node )
{
    PlugValue( node, "p3dUseCustomAnimOptimization",  mEnable );
    // Assign custom threshold values only if Custom Optimization is enabled.
    if ( mEnable )
    {
        PlugValue( node, "p3dAnimOptThresholdPos",        mThresholdPos );
        PlugValue( node, "p3dAnimOptThresholdRot",        mThresholdRot );
        PlugValue( node, "p3dAnimOptThresholdColour",     mThresholdColour );
        PlugValue( node, "p3dAnimOptThresholdFloat",      mThresholdFloat );
        PlugValue( node, "p3dAnimOptThresholdVector",     mThresholdVector );
    }

}


//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     15 October, 2002
// Modified:    15 October, 2002
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
#ifndef __ANIMOPTIMIZATION_HPP_
#define __ANIMOPTIMIZATION_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MObject.h>
#include <maya/MPlug.h>
#include <maya/MFnDependencyNode.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CAnimOptimization

{
// Constructor / Destructor
public:
    CAnimOptimization( void );
    CAnimOptimization( const MObject& node );
    ~CAnimOptimization();

public:
    void                        Initialize( const MObject& node );

    bool                        Enable(void) const              { return mEnable; }
    float                       ThresholdPos(void) const        { return mThresholdPos; }
    float                       ThresholdRot(void) const        { return mThresholdRot; }
    float                       ThresholdColour(void) const     { return mThresholdColour; }
    float                       ThresholdFloat(void) const      { return mThresholdFloat; }
    float                       ThresholdVector(void) const     { return mThresholdVector; }

protected:
    // No protected members.

private:
    bool                        mEnable;
    float                       mThresholdPos;
    float                       mThresholdRot;
    float                       mThresholdColour;
    float                       mThresholdFloat;
    float                       mThresholdVector;

};

//===========================================================================
// Inlines
//===========================================================================

#endif // __ANIMOPTIMIZATION_HPP_

//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     10 July, 2002
// Modified:    10 July, 2002
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
#ifndef __MAYARAMP_H  
#define __MAYARAMP_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MObject.h>
#include <maya/MColorArray.h>
#include <maya/MFloatArray.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CMayaRamp
{
public:
    CMayaRamp( const MObject& ramp );
    ~CMayaRamp();

// Constructor / Destructor
public:
    enum MayaRampTypeEnum
    {
        kTypeV = 0,
        kTypeU,
        kTypeDiagonal,
        kTypeRadial,
        kTypeCircular,
        kTypeBox,
        kTypeUV,
        kTypeFourCorner,
        kTypeTartan
    };

    enum MayaRampInterpolationEnum
    {
        kInterpolationNone = 0,
        kInterpolationLinear,
        kInterpolationExponentialUp,
        kInterpolationExponentialDown,
        kInterpolationSmooth,
        kInterpolationBump,
        kInterpolationSpike
    };

    void                        AddColor( MColor& color, float position );

    void                        GetColorAt( float position, MColor& color ) const;

    void                        SetObject( const MObject& ramp );

    void                        Clear( void );

protected:
    // No protected members.

private:
    MayaRampTypeEnum            mType;
    MayaRampInterpolationEnum   mInterpolation;    
    MColorArray                 mColors;
    MFloatArray                 mPositions;

    void                        Evaluate( const MColor& low, const MColor& high, float ratio, MColor& result ) const;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __MAYARAMP_H  

//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     16 August, 2002
//
// Component:   MFnAnimCurveUtility -> library
//
// Description: Helper class for Maya's MFnAnimCurve class, because there
//              doesn't seem to be any way to duplicate an animCurve with
//              all of its keys, tangents, etc.  That's what this class
//              was designed for.
//
// Constraints:
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MFNANIMCURVEUTILITY_H_
#define __MFNANIMCURVEUTILITY_H_

//===========================================================================
// Nested Includes
//===========================================================================

#include "MAnimCurveKey.hpp"

#include <maya/MFnAnimCurve.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class MFnAnimCurveUtility : public MFnAnimCurve
{
// Constructor / Destructor
public:
    MFnAnimCurveUtility();
    ~MFnAnimCurveUtility();

public:
    MObject                     createDuplicate(    const MObject& srcAnim,
                                                    MPlug& plug,
                                                    MDGModifier * modifier,
                                                    MStatus * ReturnStatus );

    MObject                     createDuplicate(    const MString& srcAnimName,
                                                    MPlug& plug,
//                                                    const MObject & destNode,
//                                                    const MObject & destAttribute,
                                                    MDGModifier * modifier,
                                                    MStatus * ReturnStatus );

protected:
    // No protected members.
    MStatus                     ReadData( const MObject& srcAnim );
    MStatus                     WriteData( MObject& destAnim );

private:
    void                                        Clear();

    MFnAnimCurve::AnimCurveType                 mAnimCurveType;
    MFnAnimCurve::InfinityType                  mInfinityType[2];
    bool                                        mbIsWeighted;

    MAnimCurveKey*                              mKeys;
    unsigned int                                mNumKeys;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __MFNANIMCURVEUTILITY_H_

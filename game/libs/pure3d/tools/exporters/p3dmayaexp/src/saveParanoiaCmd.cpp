//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     20 Nov 2002
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

#include "saveParanoiaCmd.hpp"

#include <maya/MFnAttribute.h>
#include <maya/MItDag.h>
#include <maya/MObject.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MString.h>

#include <maya/MGlobal.h>

#include <iostream>
#include <assert.h>

using namespace std;

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

saveParanoiaCmd::saveParanoiaCmd()
{
}

saveParanoiaCmd::~saveParanoiaCmd()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Local Functions
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void* saveParanoiaCmd::creator( void )
{
    return new saveParanoiaCmd;
}

MStatus saveParanoiaCmd::doIt( const MArgList& args )
{
    MStatus                     status;

    const unsigned int kNumAttributes = 31;

    const char* kAttributes[kNumAttributes] =
    {
        "hasVertexAnimation",
        "hasVertexColourAnimation",
        "hasVertexNormalAnimation",
        "hasVertexPositionAnimation",
        "hasVertexUVAnimation",
        "vertexColourAnimationType",
        "vertexColourInterpolate",
        "vertexColourThreshold",
        "vertexNormalAnimationType",
        "vertexNormalInterpolate",
        "vertexNormalThreshold",
        "vertexPositionInterpolate",
        "vertexPositionThreshold",
        "vertexUVInterpolate",
        "vertexUVThreshold",
        "vertexUV0Interpolate",
        "vertexUV1Interpolate",
        "vertexUV2Interpolate",
        "vertexUV3Interpolate"

        "p3dDrawOrder",
        "p3dUseCustomAnimOptimization",
        "p3dAnimOptThresholdColour",
        "p3dAnimOptThresholdFloat",
        "p3dAnimOptThresholdVector",
        "canRoll",
        "canSlide",
        "canBounce",
        "canSpin",
        "isDynamic",
        "areaTag",
        "stringData"

    };

    // These must match the associated long names above.
    const char* kShortAttributes[kNumAttributes] =
    {
        "vanm",
        "canm",
        "nanm",
        "panm",
        "uanm",
        "vcat",
        "vcin",
        "vcth",
        "vnat",
        "vnin",
        "vnth",
        "vpin",
        "vpth",
        "vuin",
        "vuth",
        "vu0i",
        "vu1i",
        "vu2i",
        "vu3i"

        "pdo",
        "auco",
        "aotc",
        "aotf",
        "aotv",
        "roll",
        "slid",
        "bnce",
        "spin",
        "dy",
        "area",
        "sd"
    };

    int attributeCount[kNumAttributes];

    unsigned a, b;
    bool bResult = true;

    MItDag                      itDag( MItDag::kDepthFirst, MFn::kMesh );

    int numDags = 0;
    MStringArray badDagNames;
    MStringArray badAttributes;

    for ( /* nothing */; !itDag.isDone(); itDag.next() )
    {
        MObject here = itDag.item();

        MFnDependencyNode       fnDependNode( here );
        unsigned numAttr = fnDependNode.attributeCount();

        for ( b = 0; b < kNumAttributes; b++ ) attributeCount[b] = 0;

        for ( a = 0; a < numAttr; a++ )
        {
            MObject attr = fnDependNode.attribute( a );
            MFnAttribute        fnAttr( attr );
            for ( b = 0; b < kNumAttributes; b++ )
            {
                if ( fnAttr.name() == kAttributes[b] || fnAttr.name() == kShortAttributes[b] )
                {
                    attributeCount[b]++;
                }
            }
        }

        for ( b = 0; b < kNumAttributes; b++ )
        {
            if ( attributeCount[b] > 1 )
            {
                bResult = false;
                badDagNames.append( fnDependNode.name() );
                badAttributes.append( kAttributes[b] );
                break;
            }
        }

        numDags++;
    }

#ifndef RAD_DEBUG
#ifndef NDEBUG
#pragma message( ">>> ---------------  Use NDEBUG in ToolsRelease to suppress assertions" )
#endif
#endif

    assert ( bResult && "BE AFRAID! Object attributes are possibly CORRUPT!" );

    setResult( bResult );

    if ( bResult )
    {
        cout << "saveParanoia: Checked " << numDags << " objects -- OK." << endl;
    }
    else
    {
        cout << "saveParanoia:" << endl;
        for ( a = 0; a < badDagNames.length(); a++ )
        {
            cout << "\t!! Suspect node/attribute: " << badDagNames[a].asChar() << "." << badAttributes[a].asChar() << " !!" << endl;
        }
    }

    return status;
}

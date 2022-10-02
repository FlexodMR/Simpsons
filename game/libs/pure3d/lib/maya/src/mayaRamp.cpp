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
//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaRamp.hpp"

#include <maya/MFnDependencyNode.h>
#include <maya/MPlug.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMayaRamp::CMayaRamp( const MObject& ramp )
{
    SetObject( ramp );
}

CMayaRamp::~CMayaRamp()
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

void CMayaRamp::Clear( void )
{
    mType = CMayaRamp::kTypeV;
    mInterpolation = CMayaRamp::kInterpolationNone;
    mColors.clear();
    mPositions.clear();
}

void CMayaRamp::SetObject( const MObject& ramp )
{
    Clear();

    if ( ramp.apiType() == MFn::kRamp )
    {
        int iType;
        MFnDependencyNode       fnDependNode( ramp );
        MPlug type = fnDependNode.findPlug( "type" );
        type.getValue( iType );
        mType = (MayaRampTypeEnum)iType;

        int iInterp;
        MPlug interp = fnDependNode.findPlug( "interpolation" );
        interp.getValue( iInterp );
        mInterpolation = (MayaRampInterpolationEnum)iInterp;

        MPlug cel = fnDependNode.findPlug( "cel" );
        int numCel = cel.numElements();
        for ( int c = 0; c < numCel; c++ )
        {
            float fep;
            MPlug ep = cel[c].child(0);
            ep.getValue( fep );

            float r, g, b;
            cel[c].child(1).child(0).getValue( r );
            cel[c].child(1).child(1).getValue( g );
            cel[c].child(1).child(2).getValue( b );

            AddColor( MColor(r,g,b), fep );
        }
    }
}

void CMayaRamp::AddColor( MColor& color, float position )
{
    // Insertion sort
    unsigned int numColors = mColors.length();

    if ( ( numColors == 0 ) || ( position > mPositions[numColors-1] ) )
    {
        mColors.append( color );
        mPositions.append( position );
        return;
    }

    unsigned int index = numColors;
    while ( index-- )
    {
        if ( mPositions[index] < position ) break;
    }
    index++;

    assert ( index < mColors.length() );

    mColors.insert( color, index );
    mPositions.insert( position, index );    
}

void CMayaRamp::GetColorAt( float position, MColor& result ) const
{
    position = __min( 1.0F, __max( 0.0F, position ) );

    // Positions are guaranteed to be in order
    unsigned int index;
    unsigned int low, high;
    high = mColors.length() - 1;
    low = 0;

    index = high;
    while ( index-- )
    {
        if ( mPositions[index] < position )
        {
            break;
        }
        high = index;
    }

    if ( mPositions[high] < position ) low = high;
    else low = high-1;
    if ( low > high ) low = high;

    float ratio = 0.0F;
    float range = mPositions[high] - mPositions[low];
    if ( range > 0 ) ratio = ( position - mPositions[low] ) / range;

//Position 0.507937 is between #0 (0) & #1 (0.51}
//  -> Evaluate [0.2, 0.2, 0.2, 1] <-> [0.6, 0.6, 0.6, 1] == [0.403175, 0.403175, 0.403175, 1]

    Evaluate( mColors[low], mColors[high], ratio, result );
}

void CMayaRamp::Evaluate( const MColor& low, const MColor& high, float ratio, MColor& result ) const
{
    switch ( mInterpolation )
    {
        case kInterpolationLinear:
        {
            result = low + ( ( high - low ) * ratio );
            break;
        }
        default:
        {
            result = low;
            break;
        }
    }
}
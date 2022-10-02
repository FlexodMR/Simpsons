//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     13 February, 2002
//
// Component:   
//
// Description: Stores the start- and end-frame for an animation range.
//              These may be defined from the Animation panel accessed from
//              the Export Prefs dialog.
//
//              The class also stores the tlFrameController and 
//              tlMultiController pointers allocated by the Exporter. This
//              is done to allow Animated Object Factories access to
//              rebuild the controller lists while preserving multiple
//              animation ranges.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

/* **************************************************************************
 *
 *   THIS CLASS HAS BEEN DISABLED!
 * 
 *   It will be redesigned to manage AnimNodes (instead of AnimNodes
 *   managing AnimRanges.
 *
 * **************************************************************************

//===========================================================================
// Includes
//===========================================================================

#include <string.h>
#include <iostream.h>

#include "animRange.hpp"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

AnimRange::AnimRange( int start, int end, const char* name )
:   mName( NULL ),
    mStart( start ), 
    mEnd( end ),
    mMultiController( NULL )
{
    SetName( name );
}

AnimRange::~AnimRange()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

AnimRange::AnimRange( const AnimRange& other )
{
    *this = other;
}


AnimRange& AnimRange::operator = ( const AnimRange& other )
{
    mStart = other.mStart; 
    mEnd = other.mEnd;
    SetName( other.mName );

    mFrameControllers.ZeroCount();
    int f;
    for ( f = 0; f < other.mFrameControllers.Count(); f++ )
    {
        mFrameControllers.Append( other.mFrameControllers[f] );
    }

    mMultiController = other.mMultiController;

    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

bool AnimRange::operator == ( const AnimRange& other )
{
    return ( mStart == other.mStart ) && ( mEnd == other.mEnd ) && ( 0 == strcmp( mName, other.mName ) );
}

//===========================================================================
// Member Functions
//===========================================================================

void AnimRange::Clear( void )
{
    mStart = 0;
    mEnd = 30;
    delete [] mName;
    mName = NULL;
    // tlFrameControllers and tlMultiController stored as pointers; 
    // not allocated here, no need to delete.. just clear the pointer list.
    mFrameControllers.ZeroCount();
    mMultiController = NULL;
}

void AnimRange::SetName( const char* name )
{
    if ( name == mName ) return;

    delete [] mName;

    if ( name != NULL )
    {
        mName = new char [ strlen( name ) + 1 ];
        strcpy( mName, name );
    }
}

 * **************************************************************************
 *
 *   THIS CLASS HAS BEEN DISABLED!
 * 
 *   It will be redesigned to manage AnimNodes (instead of AnimNodes
 *   managing AnimRanges.
 *
 * **************************************************************************/

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

// Recompilation protection flag.
#ifndef __ANIMRANGE_HPP_
#define __ANIMRANGE_HPP_

/* **************************************************************************
 *
 *   THIS CLASS HAS BEEN DISABLED!
 * 
 *   It will be redesigned to manage AnimNodes (instead of AnimNodes
 *   managing AnimRanges.
 *
 * **************************************************************************

//===========================================================================
// Nested Includes
//===========================================================================
#include "tlMultiController.hpp"
#include "tlFrameController.hpp"
#include "tlTable.hpp"

#include <stdio.h>      // NULL

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class AnimRange
{
// Constructor / Destructor
public:
    AnimRange( int start = 0, int end = 30, const char* name = NULL );
    AnimRange( const AnimRange& other );
    virtual ~AnimRange();

public:

    void                                        SetName( const char* name );

    const char*                                 Name( void ) const;         // INLINE
    int                                         Start( void ) const;        // INLINE
    int                                         End( void ) const;          // INLINE

    unsigned int                                NumFrames( void ) const;    // INLINE
    // Added to allow Animated Object Factories access to
    // Frame Controllers per Animation Range.
    void                                        AddFrameController( tlFrameController* pFC );     // INLINE
    tlTable<tlFrameController*>*                GetFrameControllers( void );                      // INLINE

    void                                        SetMultiController( tlMultiController* pMC );     // INLINE
    tlMultiController*                          GetMultiController( void );

    void                                        Clear( void );

    AnimRange&                                  operator = ( const AnimRange& other );
    bool                                        operator == ( const AnimRange& other );

protected:
    // No protected members.

private:
    char*                                       mName;
    int                                         mStart;
    int                                         mEnd;

    tlMultiController*                          mMultiController;
    tlTable<tlFrameController*>                 mFrameControllers;

};

//===========================================================================
// Inlines
//===========================================================================

inline
const char* AnimRange::Name( void ) const
{
    return mName;
}

inline
int AnimRange::Start( void ) const
{
    return mStart;
}

inline
int AnimRange::End( void ) const
{
    return mEnd;
}

inline
void AnimRange::AddFrameController( tlFrameController* pFC )
{
    mFrameControllers.Append( pFC );
}

inline
tlTable<tlFrameController*>* AnimRange::GetFrameControllers( void )
{
    return &mFrameControllers;
}

inline
void AnimRange::SetMultiController( tlMultiController* pMC )
{
    mMultiController = pMC;
}

inline
tlMultiController* AnimRange::GetMultiController( void )
{
    return mMultiController;
}

inline
unsigned int AnimRange::NumFrames( void ) const
{
    return ( mEnd - mStart + 1 );
}

 * **************************************************************************
 *
 *   THIS CLASS HAS BEEN DISABLED!
 * 
 *   It will be redesigned to manage AnimNodes (instead of AnimNodes
 *   managing AnimRanges.
 *
 * **************************************************************************/

#endif // __ANIMRANGE_HPP_

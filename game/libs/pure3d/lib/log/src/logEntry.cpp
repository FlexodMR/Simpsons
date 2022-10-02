//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     14 March, 2002
//
// Component:   Log library.
//
// Description: Log Entry used by the Log.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/logEntry.h"
#include <string.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CLogEntry::CLogEntry( const char* pEntry )
:   mEntry( NULL ),
    mTime( 0 )
{
    SetEntry( pEntry );

    // Add Time at which entry was made.
    mTime = time(NULL);
}

CLogEntry::~CLogEntry()
{
    delete [] mEntry;
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CLogEntry::CLogEntry( const CLogEntry& other )
:   mEntry( NULL ),
    mTime( 0 )
{
    *this = other;
}

CLogEntry& CLogEntry::operator = ( const CLogEntry& other )
{
    SetEntry( other.mEntry );
    mTime = other.mTime;    
    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void CLogEntry::SetEntry( const char* pEntry )
{
    if ( mEntry == pEntry ) return;

    if ( mEntry )
    {
        delete [] mEntry;
        mEntry = NULL;
    }

    mEntry = new char [ strlen( pEntry ) + 1 ];
    strcpy( mEntry, pEntry );
}

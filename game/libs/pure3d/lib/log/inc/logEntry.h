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

// Recompilation protection flag.
#ifndef __LOGENT_H_ 
#define __LOGENT_H_  

//===========================================================================
// Nested Includes
//===========================================================================

#include <time.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CLogEntry
{
public:
    const char*                 Entry( void ) const;
    time_t                      Time( void ) const;

    CLogEntry&                  operator = ( const CLogEntry& other );

// Constructor / Destructor
public:
    CLogEntry( const char* pEntry );
    CLogEntry( const CLogEntry& other );
    virtual ~CLogEntry();

protected:
    void                        SetEntry( const char* pEntry );
    
private:
    char*                       mEntry;
    time_t                      mTime;

};

//===========================================================================
// Inlines
//===========================================================================

inline
const char* CLogEntry::Entry( void ) const
{
    return mEntry;
}

inline
time_t CLogEntry::Time( void ) const
{
    return mTime;
}

#endif // __LOGENT_H_

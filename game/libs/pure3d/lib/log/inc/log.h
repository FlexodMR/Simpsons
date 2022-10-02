//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 27, 2001
//
// Component:   All kids love Log.
//
// Description: A simple class for status logging.  Will grow as I find
//              more uses for it.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __LOG_H  
#define __LOG_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "logEntry.h"
#include <listarray/listarray.hpp>
#include <iostream>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const char* gpDefaultTitle = "Log Results";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: A simple class for status logging.  Will grow as I find
//              more uses for it.
//
// Constraints:
//
//===========================================================================

class CLog
{
public:
    virtual bool                Add( const CLogEntry& entry );

    unsigned int                NumEntries( void ) const;

    CLogEntry*                  Entry( unsigned int index ) const;

    void                        ShowTime( bool bShowTime = true );

    virtual void                Clear( void );

    virtual const char*         AsChar( bool bShowTime = false );
    virtual const char*         Printable( bool bShowTime = false );

    bool                        ImportFile( const char* filepath );
    void                        ShowDialog( HINSTANCE hInstance, HWND hwnd, const char* pTitle = gpDefaultTitle );

    static void                 CleanUp( void );

    friend std::ostream&        operator << ( std::ostream& os, const CLog& log );

// Constructor / Destructor
public:
    CLog();
    ~CLog();

protected:
    // No protected members.

private:
    CListArray<CLogEntry*>      mEntries;          // Array of log entries.

    static bool                 mbShowTime;
    static char*                mAsChar;
    static char*                mPrintable;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __LOG_H  

//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the utility functions
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include <direct.h>
#include "Util.h"
#include <windows.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// IsFileReadOnly
//===========================================================================
// Description: Is file read only?
//
// Constraints:    None
//
// Parameters:    filename - the name of the file to test
//
// Return:      bool - whether it is or not
//
//===========================================================================
bool IsFileReadOnly( const char* filename )
{
    // See if the file exists and is readonly
    DWORD returnValue = ::GetFileAttributes( filename );
    if( returnValue  != 0xFFFFFFFF )
    {
        return ( returnValue & FILE_ATTRIBUTE_READONLY );
    }
    else
    {   
        DWORD errorCode = ::GetLastError();
 
        //the file wasn't even found - what directory are we in?
        char directoryName[ 256 ] = "";
        ::getcwd( directoryName, 256 );
        assert( returnValue != 0xFFFFFFFF );
    }
    return false;
}

//===========================================================================
// IsFileExist
//===========================================================================
// Description: Is file exist?
//
// Constraints:    None
//
// Parameters:    filename - the name of the file to test
//
// Return:      bool - whether it is or not
//
//===========================================================================
bool IsFileExist( const char* filename )
{
    // See if the file exists
    return( ::GetFileAttributes( filename ) != 0xFFFFFFFF );
}

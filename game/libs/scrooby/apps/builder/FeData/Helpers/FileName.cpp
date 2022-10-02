//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the FileName class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "FileName.h"
#include <string.h>


//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// FileName::FileName
//===========================================================================
// Description: FileName's constructor
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      Nothing
//
//===========================================================================

FileName::FileName() :
m_FileName()
{
}


//===========================================================================
// FileName::FileName
//===========================================================================
// Description: FileName's copy constructor
//
// Constraints:    None
//
// Parameters:    right - The FileName to copy from.
//
// Return:      Nothing
//
//===========================================================================

FileName::FileName( const FileName &right ) :
m_FileName()
{
    right.Get( m_FileName );
    FixSlashes();
}



//===========================================================================
// FileName::~FileName
//===========================================================================
// Description: FileName's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

FileName::~FileName()
{
}


//===========================================================================
// FileName::operator =
//===========================================================================
// Description: FileName's equals operator.
//
// Constraints:    None
//
// Parameters:    right - The FileName to copy from.
//
// Return:      A copy of this class
//
//===========================================================================

const FileName & FileName::operator = ( const FileName &right )
{
    right.Get( m_FileName );
    FixSlashes();
    return *this;
}


//===========================================================================
// FileName::Set
//===========================================================================
// Description: This is used to set the FileName.
//
// Constraints:    None
//
// Parameters:    newFileName - The initilization string.
//
// Return:      true if successfull, false otherwise.
//
//===========================================================================

bool FileName::Set( const PascalCString &newFileName )
{
    m_FileName = newFileName;
    FixSlashes();
    return true;
}


//===========================================================================
// FileName::Get
//===========================================================================
// Description: This is used to get the FileName.
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      Constant reference to the filename
//
//===========================================================================
const PascalCString& FileName::Get() const
{
    return this->m_FileName;
}

//===========================================================================
// FileName::Get
//===========================================================================
// Description: This is used to get the FileName.
//
// Constraints:    None
//
// Parameters:    fileName - The location the string should go.
//
// Return:      Nothing
//
//===========================================================================
bool FileName::Get( PascalCString &fileName ) const
{
    fileName = m_FileName;
    return true;
}


//===========================================================================
// FileName::GetPath
//===========================================================================
// Description: This is used to get path of the file
//
// Constraints:    None
//
// Parameters:    pathName - The location the string should go.
//
// Return:      Nothing
//
//===========================================================================

bool FileName::GetPath( PascalCString &pathName )
{
    int lastSlash = m_FileName.Length();
    const char* fullFileName = m_FileName;
    for( int i=lastSlash; i>0; i-- )
    {
        if( (fullFileName[ i ] == g_GoodSlashChar) ||
            (fullFileName[ i ] == g_BadSlashChar) )
        {
            // We want to include the slash!
            lastSlash = i + 1;
            break;
        }
    }
    pathName = m_FileName.SubString( 0, lastSlash );
    return true;
}

//===========================================================================
// FileName::IsCompliantPS2
//===========================================================================
// Description: This checks to see if a filename is valid within the 8.3 
//                format of the PS2
//
// Constraints:    None
//
// Parameters:    filename - filename to try
//
// Return:      true - if this file can be burned to a PS2 CD
//                false - this file won't fit on the PS2 disk
//
//===========================================================================
bool FileName::IsCompliantPS2( const char* filename )
{
    //this is directly copied out of the runtime file AsyncFileLoader.cpp

    //directory size =    11
    //filename size =    8
    //extension size =    3
    //no spaces allowed

    const int maxDirectoryLength = 11;
    const int maxFilenameLength = 8;
    const int maxExtensionLength = 3;

    bool seenTheDot = false;

    int i;
    int max = strlen( filename );
    int currentCount = 0;
    for( i = 0; i < max; i++ )
    {
        if( ( filename[ i ] == '/' ) || ( filename[ i ] == '\\' ) )
        {
            //we've seen a slash, so this was a directory name
            if( currentCount > maxDirectoryLength )
            {
                return false;
            }
            else
            {
                seenTheDot = false; //handle the ../ cases
                currentCount = 0;
            }
        }
        else if( filename[ i ] == '.' )
        {
            //we've just seen the filename
            seenTheDot = true;
            if( currentCount > maxFilenameLength )
            {
                return false;
            }
            else
            {
                currentCount = 0;
            }
        }
        else if( filename[ i ] == ' ' )
        {
            return false;
        }
        else
        {
            currentCount++;
        }
    }

    //now we've seen all the characters in the file
    if( seenTheDot == true )
    {
        //the file had an extension, check if it was too large
        if( currentCount > maxExtensionLength )
        {
            return false;
        }
    }
    else
    {
        //there was no extension
        if( currentCount > maxFilenameLength )
        {
            return false;
        }
    }
    return true;
}

//===========================================================================
// FileName::operator==
//===========================================================================
// Description: This compares two files names.
//
// Constraints:    None
//
// Parameters:    right - The file name to compare with.
//
// Return:      true  - if the file names are the same.
//              false - otherwise
//
//===========================================================================

bool FileName::operator==( const FileName& right ) const
{
    if( m_FileName.Length() == right.m_FileName.Length() )
    {
        // Compare the two strings ignoring case. If they are equal 
        // (according to the standard Windows rules for comparison) then 
        // _strnicmp will return 0.
        return _stricmp( m_FileName, right.m_FileName ) == 0;
    }
    else
    {
        // The two strings lengths are different so there is no
        // way that they are equal. This is a very fast check and
        // is much cheaper than doing the actual string comparison.
        return false;
    }
}


//===========================================================================
// FileName::operator!=
//===========================================================================
// Description: This compares two files names.
//
// Constraints:    None
//
// Parameters:    right - The file name to compare with.
//
// Return:      true  - if the file names are the different.
//              false - otherwise
//
//===========================================================================

bool FileName::operator!=( const FileName& right ) const
{
    return !(*this == right );
}


//===========================================================================
// FileName::FixSlashes
//===========================================================================
// Description: This converts all the slashes so that they are compatible 
//              with Unix.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void FileName::FixSlashes()
{
    m_FileName.Replace( g_BadSlashString, g_GoodSlashString );
}


} // End NameSpace

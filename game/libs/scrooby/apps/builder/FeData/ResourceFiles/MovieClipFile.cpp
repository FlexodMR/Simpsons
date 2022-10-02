//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieClipFile class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MovieClipFile.h"
#include "..\Helpers\OutputMessage.h"

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
// MovieClipFile::MovieClipFile
//===========================================================================
// Description: MovieClipFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

MovieClipFile::MovieClipFile( FileName &fileName ) : 
ResourceFile( fileName )
{
}


//===========================================================================
// MovieClipFile::~MovieClipFile
//===========================================================================
// Description: MovieClipFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieClipFile::~MovieClipFile()
{
}


//===========================================================================
// MovieClipFile::Load
//===========================================================================
// Description: This is used to load the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - there is enough memory
//              false - if there is not enough memory to load the picture.
//
//===========================================================================

bool MovieClipFile::Load()
{
    g_OutputMessage.Add( "MovieClipFile::Load: This should never have been called!",
                         DebugOutputMessage );

    // Return false, because an MovieClipFile can never be loaded. 
    return false;
}


//===========================================================================
// MovieClipFile::Reload
//===========================================================================
// Description: This is used to reload the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the file was the correct type and loaded fine
//              false - otherwise
//
//===========================================================================

bool MovieClipFile::Reload()
{
    return Load();
}


//===========================================================================
// MovieClipFile::GetWidth
//===========================================================================
// Description: This returns the width of the image.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the width of the image.
//
//===========================================================================

int MovieClipFile::GetWidth()
{
    g_OutputMessage.Add( "MovieClipFile::GetWidth: This should never have been called!",
                         DebugOutputMessage );
    
    return g_DefaultMovieClipWidth;
}


//===========================================================================
// MovieClipFile::GetHeight
//===========================================================================
// Description: This returns the height of the image.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the height of the image.
//
//===========================================================================

int MovieClipFile::GetHeight()
{
    g_OutputMessage.Add( "MovieClipFile::GetHeight: This should never have been called!",
                         DebugOutputMessage );

    return g_DefaultMovieClipHeight;
}


} // End NameSpace

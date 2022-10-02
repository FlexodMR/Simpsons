//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ImageFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ImageFile.h"
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
// ImageFile::ImageFile
//===========================================================================
// Description: ImageFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

ImageFile::ImageFile( FileName &fileName ) : 
ResourceFile( fileName )
{
}


//===========================================================================
// ImageFile::~ImageFile
//===========================================================================
// Description: ImageFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ImageFile::~ImageFile()
{
}


//===========================================================================
// ImageFile::Load
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

bool ImageFile::Load()
{
    g_OutputMessage.Add( "ImageFile::Load: This should never have been called!",
                         DebugOutputMessage );

    // Return false, because an ImageFile can never be loaded.  One of it's
    // children must be loaded.
    return false;
}


//===========================================================================
// ImageFile::Reload
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

bool ImageFile::Reload()
{
    return Load();
}


//===========================================================================
// ImageFile::GetWidth
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

int ImageFile::GetWidth()
{
    g_OutputMessage.Add( "ImageFile::GetWidth: This should never have been called!",
                         DebugOutputMessage );
    
    return g_DefaultImageWidth;
}


//===========================================================================
// ImageFile::GetHeight
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

int ImageFile::GetHeight()
{
    g_OutputMessage.Add( "ImageFile::GetHeight: This should never have been called!",
                         DebugOutputMessage );

    return g_DefaultImageHeight;
}


} // End NameSpace
